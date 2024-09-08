function DebugEffect takes string modelPath, real x, real y returns nothing
  if ( x == 0. or y == 0. ) then
    call BJDebugMsg("DebugEffect/ERROR 0")
  elseif ( modelPath == "1" ) then
    call AddSpecialEffect("units\\human\\Peasant\\Peasant.mdl", x, y)
  elseif ( modelPath == "2" ) then
    call AddSpecialEffect("units\\orc\\Grunt\\Grunt.mdl", x, y)
  elseif ( modelPath == "3" ) then
    call AddSpecialEffect("units\\undead\\Ghoul\\Ghoul.mdl", x, y)
  endif
endfunction

library Hunting initializer Init requires ETile
  globals
    private region tempRegion = null
    private rect array PlayerRect
    private trigger tempEnterTrigger = CreateTrigger()
    private trigger DyingTrigger = CreateTrigger()
    private effect array PlayerDecorationEffects
    private integer array PlayerDecorationNumber
    
    private constant integer MAX_ROW = 10
    private constant integer MAX_COL = 8
  endglobals
  
  private constant function EStageMaxWave takes integer stage returns integer
    if ( stage == 1 ) then
      return 2
    endif
    return 0
  endfunction
  private function RectAddEvent takes rect r, integer num, integer exitWhere returns nothing
    set tempRegion = CreateRegion()
    call RegionAddRect(tempRegion, r)
    call SaveInteger(hash, GetHandleId(tempRegion), StringHash("rectNumber"), num)
    call TriggerRegisterEnterRegion(tempEnterTrigger, tempRegion, null)
    if ( exitWhere == bj_KEYEVENTKEY_LEFT ) then
      call SaveReal(hash, StringHash("rectExitX"), num, GetRectMinX(r) - bj_CELLWIDTH)
      call SaveReal(hash, StringHash("rectExitY"), num, GetRectCenterY(r))
    elseif ( exitWhere == bj_KEYEVENTKEY_RIGHT ) then
      call SaveReal(hash, StringHash("rectExitX"), num, GetRectMaxX(r) + bj_CELLWIDTH)
      call SaveReal(hash, StringHash("rectExitY"), num, GetRectCenterY(r))
    elseif ( exitWhere == bj_KEYEVENTKEY_DOWN ) then
      call SaveReal(hash, StringHash("rectExitX"), num, GetRectCenterX(r))
      call SaveReal(hash, StringHash("rectExitY"), num, GetRectMinY(r) - bj_CELLWIDTH)
    elseif ( exitWhere == bj_KEYEVENTKEY_UP ) then
      call SaveReal(hash, StringHash("rectExitX"), num, GetRectCenterX(r))
      call SaveReal(hash, StringHash("rectExitY"), num, GetRectMaxY(r) + bj_CELLWIDTH)
    else
      call BJDebugMsg("Hunting/Add/Exit error")
    endif
    call RemoveRect(r)
  endfunction
  private function isEnterHero takes nothing returns boolean
    return (GetEnteringUnit() == udg_hero[GetPlayerId(GetOwningPlayer(GetEnteringUnit()))+1])
  endfunction
  private function DecorationLoc takes real x, real y, real probability, integer terrainType returns boolean
    if ( GetRandomReal(0., 1.) <= probability ) then
      if ( terrainType == ETile.BLIGHT ) then
        call SetBlight(Player(PLAYER_NEUTRAL_AGGRESSIVE), x, y, 0., true) /* shift를 눌렀을때 비활성화 되면서 방갈 유발 이슈 */
      else
        call SetTerrainType(x, y, ETile.CITY_DIRT_ROUGH, -1, 1, 1)
      endif
      return true
    else
      return false
    endif
  endfunction
  private function DecorationAll takes rect r, integer terrainType returns nothing
    //해당 지점에 지역 크기(10)의 구역을 설정
    if ( terrainType == ETile.BLIGHT ) then
      call SetTerrainType(GetRectCenterX(r), GetRectCenterY(r), ETile.CITY_DIRT, -1, MAX_ROW/2+1, 1)
      call SetBlightRect(Player(PLAYER_NEUTRAL_AGGRESSIVE), r, true)
    else
      call SetTerrainType(GetRectCenterX(r), GetRectCenterY(r), terrainType, -1, MAX_ROW/2+1, 1)
      call SetBlightRect(Player(PLAYER_NEUTRAL_AGGRESSIVE), r, false)
    endif
  endfunction
  
  private function DecorationRect takes integer pNumber, integer rectNumber returns nothing
    local integer row = 0 /* 128x128x 10x8 (모서리 포함 11x9) */
    local integer col = 0
    if ( rectNumber == 1 ) then
      /*  .CITY_DIRT_ROUGH 거친 흙 30% / 블라이트 10% / .CITY_DIRT 일반 흙 */
      call DecorationAll(PlayerRect[pNumber], ETile.CITY_DIRT) /* 기본 지형 */
      loop
        set row = 0
        loop
          if ( not DecorationLoc(GetRectMinX(PlayerRect[pNumber])+bj_CELLWIDTH*row, GetRectMinY(PlayerRect[pNumber])+bj_CELLWIDTH*col, .3, ETile.CITY_DIRT_ROUGH) ) then /* 30%로 거친 땅 생성 */
          
            // 실패시 10/70%로 블라이트 생성
            call DecorationLoc(GetRectMinX(PlayerRect[pNumber])+bj_CELLWIDTH*row, GetRectMinY(PlayerRect[pNumber])+bj_CELLWIDTH*col, .14, ETile.BLIGHT)
          endif
          exitwhen row >= MAX_ROW /* 0~10 즉 모서리 포함 11회 반복. */
          set row = row + 1
        endloop
        exitwhen col >= MAX_COL
        set col = col + 1
      endloop
    endif
  endfunction
  private function CharacterMoveIn takes integer pNumber, real combineX, real combineY returns nothing
    call SetUnitPosition(udg_hero[pNumber], GetRectCenterX(PlayerRect[pNumber])+combineX, GetRectCenterY(PlayerRect[pNumber])+combineY)
    call SetUnitFacing(udg_hero[pNumber], 0)
    if (GetLocalPlayer() == Player(pNumber-1)) then
      call PanCameraToTimed(GetRectCenterX(PlayerRect[pNumber]), GetRectCenterY(PlayerRect[pNumber]), 0.)
    endif
  endfunction
  
  private function DecorationScale takes string s1, string s2 returns real
    if ( s1 == "1.00" and s2 == "1.00" ) then
      return 1.00
    else
      return GetRandomReal(S2R(s1),S2R(s2))
    endif
  endfunction
  private function DecorationDoodadLoc takes integer pNumber, real x, real y, real probability, integer objectId, integer objectId2, boolean top returns boolean
    set PlayerDecorationNumber[pNumber] = PlayerDecorationNumber[pNumber] + 1
    if ( GetRandomReal(0., 1.) <= probability ) then
      set PlayerDecorationEffects[pNumber*10+PlayerDecorationNumber[pNumber]] = AddSpecialEffect(EXExecuteScript("(require'jass.slk').doodad[" + I2S(objectId)+"].file"), x, y)
      if ( top ) then
        call EXEffectMatRotateZ(PlayerDecorationEffects[pNumber*10+PlayerDecorationNumber[pNumber]], bj_UNIT_FACING)
      else
        call EXEffectMatRotateZ(PlayerDecorationEffects[pNumber*10+PlayerDecorationNumber[pNumber]], 90.)
      endif
      call EXSetEffectSize(PlayerDecorationEffects[pNumber*10+PlayerDecorationNumber[pNumber]], DecorationScale(EXExecuteScript("(require'jass.slk').doodad[" + I2S(objectId)+"].minScale"), EXExecuteScript("(require'jass.slk').doodad[" + I2S(objectId)+"].maxScale")))
      return true
    elseif ( objectId2 != 0 ) then
      set PlayerDecorationEffects[pNumber*10+PlayerDecorationNumber[pNumber]] = AddSpecialEffect(EXExecuteScript("(require'jass.slk').doodad[" + I2S(objectId2)+"].file"), x, y)
      if ( top ) then
        call EXEffectMatRotateZ(PlayerDecorationEffects[pNumber*10+PlayerDecorationNumber[pNumber]], bj_UNIT_FACING)
      else
        call EXEffectMatRotateZ(PlayerDecorationEffects[pNumber*10+PlayerDecorationNumber[pNumber]], 90.)
      endif
      call EXSetEffectSize(PlayerDecorationEffects[pNumber*10+PlayerDecorationNumber[pNumber]], DecorationScale(EXExecuteScript("(require'jass.slk').doodad[" + I2S(objectId2)+"].minScale"), EXExecuteScript("(require'jass.slk').doodad[" + I2S(objectId2)+"].maxScale")))
    endif
    return false
  endfunction
  /*function ClearDoodadAll takes nothing returns nothing
    call RemoveDestructable( GetEnumDestructable() )
  endfunction*/
  private function ClearDoodad takes integer pNumber returns nothing
    local integer loopA = PlayerDecorationNumber[pNumber]
    loop
      exitwhen loopA <= 0
      call EXSetEffectSize(PlayerDecorationEffects[pNumber*10+loopA], 0.)
      call DestroyEffect(PlayerDecorationEffects[pNumber*10+loopA])
      set loopA = loopA - 1
    endloop
    set PlayerDecorationNumber[pNumber] = 0
    //call EnumDestructablesInRect(PlayerRect[pNumber], null, function ClearDoodadAll)
  endfunction
  private function DecorationDoodad takes integer pNumber, integer rectNumber returns nothing
    call ClearDoodad(pNumber)
    if ( rectNumber == 1 ) then
      /* 10포인트 y-0.25, x1.5 3.5 5.5 7.5 9.5
        *      y+0.25, x0.5 2.5 4.5 6.5 8.5 */
      /* 일반 : 50% 펜스D019, 50%가로등D00Q, / 모서리는 40% 가로등, 20%씩: 자판기D01B, 공중전화D00E, 자전거D01F */
      call DecorationDoodadLoc(pNumber, GetRectMinX(PlayerRect[pNumber])+bj_CELLWIDTH*3.5, GetRectMaxY(PlayerRect[pNumber])-bj_CELLWIDTH*0.25, .5, 'D019', 'D00Q', true)
      call DecorationDoodadLoc(pNumber, GetRectMinX(PlayerRect[pNumber])+bj_CELLWIDTH*5.5, GetRectMaxY(PlayerRect[pNumber])-bj_CELLWIDTH*0.25, .5, 'D019', 'D00Q', true)
      call DecorationDoodadLoc(pNumber, GetRectMinX(PlayerRect[pNumber])+bj_CELLWIDTH*7.5, GetRectMaxY(PlayerRect[pNumber])-bj_CELLWIDTH*0.25, .5, 'D019', 'D00Q', true)
      call DecorationDoodadLoc(pNumber, GetRectMinX(PlayerRect[pNumber])+bj_CELLWIDTH*2.5, GetRectMinY(PlayerRect[pNumber])+bj_CELLWIDTH*0.25, .5, 'D019', 'D00Q', false)
      call DecorationDoodadLoc(pNumber, GetRectMinX(PlayerRect[pNumber])+bj_CELLWIDTH*4.5, GetRectMinY(PlayerRect[pNumber])+bj_CELLWIDTH*0.25, .5, 'D019', 'D00Q', false)
      call DecorationDoodadLoc(pNumber, GetRectMinX(PlayerRect[pNumber])+bj_CELLWIDTH*6.5, GetRectMinY(PlayerRect[pNumber])+bj_CELLWIDTH*0.25, .5, 'D019', 'D00Q', false)
      
      if ( not DecorationDoodadLoc(pNumber, GetRectMinX(PlayerRect[pNumber])+bj_CELLWIDTH*1.5, GetRectMaxY(PlayerRect[pNumber])-bj_CELLWIDTH*0.25, .4, 'D00Q', 0, true) ) then
        if ( not DecorationDoodadLoc(pNumber, GetRectMinX(PlayerRect[pNumber])+bj_CELLWIDTH*1.5, GetRectMaxY(PlayerRect[pNumber])-bj_CELLWIDTH*0.25, .33, 'D01B', 0, true) ) then
        call DecorationDoodadLoc(pNumber, GetRectMinX(PlayerRect[pNumber])+bj_CELLWIDTH*1.5, GetRectMaxY(PlayerRect[pNumber])-bj_CELLWIDTH*0.25, .33, 'D00E', 'D01F', true)
        endif
      endif
      if ( not DecorationDoodadLoc(pNumber, GetRectMinX(PlayerRect[pNumber])+bj_CELLWIDTH*9.5, GetRectMaxY(PlayerRect[pNumber])-bj_CELLWIDTH*0.25, .4, 'D00Q', 0, true) ) then
        if ( not DecorationDoodadLoc(pNumber, GetRectMinX(PlayerRect[pNumber])+bj_CELLWIDTH*9.5, GetRectMaxY(PlayerRect[pNumber])-bj_CELLWIDTH*0.25, .33, 'D01B', 0, true) ) then
        call DecorationDoodadLoc(pNumber, GetRectMinX(PlayerRect[pNumber])+bj_CELLWIDTH*9.5, GetRectMaxY(PlayerRect[pNumber])-bj_CELLWIDTH*0.25, .33, 'D00E', 'D01F', true)
        endif
      endif
      if ( not DecorationDoodadLoc(pNumber, GetRectMinX(PlayerRect[pNumber])+bj_CELLWIDTH*0.5, GetRectMinY(PlayerRect[pNumber])+bj_CELLWIDTH*0.25, .4, 'D00Q', 0, false) ) then
        if ( not DecorationDoodadLoc(pNumber, GetRectMinX(PlayerRect[pNumber])+bj_CELLWIDTH*0.5, GetRectMinY(PlayerRect[pNumber])+bj_CELLWIDTH*0.25, .33, 'D01B', 0, false) ) then
        call DecorationDoodadLoc(pNumber, GetRectMinX(PlayerRect[pNumber])+bj_CELLWIDTH*0.5, GetRectMinY(PlayerRect[pNumber])+bj_CELLWIDTH*0.25, .33, 'D00E', 'D01F', false)
        endif
      endif
      if ( not DecorationDoodadLoc(pNumber, GetRectMinX(PlayerRect[pNumber])+bj_CELLWIDTH*8.5, GetRectMinY(PlayerRect[pNumber])+bj_CELLWIDTH*0.25, .4, 'D00Q', 0, false) ) then
        if ( not DecorationDoodadLoc(pNumber, GetRectMinX(PlayerRect[pNumber])+bj_CELLWIDTH*8.5, GetRectMinY(PlayerRect[pNumber])+bj_CELLWIDTH*0.25, .33, 'D01B', 0, false) ) then
        call DecorationDoodadLoc(pNumber, GetRectMinX(PlayerRect[pNumber])+bj_CELLWIDTH*8.5, GetRectMinY(PlayerRect[pNumber])+bj_CELLWIDTH*0.25, .33, 'D00E', 'D01F', false)
        endif
      endif
    endif
  endfunction
  
  private function AddDyingEvent takes integer pNumber, unit u returns nothing
    call SaveInteger(hash, GetHandleId(u), StringHash("pNumber"), pNumber)
    call SaveInteger(hash, pNumber, StringHash("mCount"), LoadInteger(hash, pNumber, StringHash("mCount"))+1)
    call TriggerRegisterUnitEvent(DyingTrigger, u, EVENT_UNIT_DEATH)
    call BJDebugMsg("added : " + GetUnitName(u) + "/" + I2S(LoadInteger(hash, pNumber, StringHash("mCount"))) + " at " + I2S(GetHandleId(DyingTrigger)))
  endfunction
  private function AngleToUnit takes real x, real y, unit unitB returns real
    return bj_RADTODEG * Atan2(GetWidgetY(unitB) - y, GetWidgetX(unitB) - x)
  endfunction
  private function CreateMonster takes integer pNumber, integer count, integer monsterType, real x, real y, real angle returns nothing
    if ( angle < 0 ) then
      set angle = GetRandomDirectionDeg()
    elseif ( angle == 0. ) then
      set angle = AngleToUnit(GetRectCenterX(PlayerRect[pNumber])+x, GetRectCenterY(PlayerRect[pNumber])+y, udg_hero[pNumber])
    endif
    loop
      exitwhen count <= 0
      call AddDyingEvent(pNumber, CreateUnit(Player(PLAYER_NEUTRAL_AGGRESSIVE), monsterType, GetRectCenterX(PlayerRect[pNumber])+x, GetRectCenterY(PlayerRect[pNumber])+y, angle))
      set count = count - 1
    endloop
  endfunction
  private function CreateMonsters takes integer pNumber, integer rectNumber, integer wave returns nothing
    if ( rectNumber == 1 ) then
      if ( wave == 1 ) then
        call CreateMonster(pNumber, 2, 'nban', 300, 0, 0) /* -1도: 랜덤, 0도 : 플레이어 보기(생성 지점 기준), 그 외: 해당 각도 */
      elseif ( wave == 2 ) then
        call CreateMonster(pNumber, 1, 'nenf', 300, 0, 0)
      endif
    endif
  endfunction
  private function KillAll takes nothing returns nothing
    call RemoveUnit(GetEnumUnit())
  endfunction
  private function ClearRectUnits takes rect r returns nothing
    local group g = CreateGroup()
    call GroupEnumUnitsInRect(g, r, null)
    call ForGroup(g, function KillAll)
    call DestroyGroup(g)
    set g = null
  endfunction
  private function EnterAction takes nothing returns nothing
    local integer rectNumber = LoadInteger(hash, GetHandleId(GetTriggeringRegion()), StringHash("rectNumber"))
    local integer pNumber = GetPlayerId(GetOwningPlayer(GetEnteringUnit()))+1
    if ( rectNumber < 1 ) or ( pNumber < 1 ) then
      call BJDebugMsg("Bug/Hunting/Action/enter value 0 : " + I2S(rectNumber) + "//" + I2S(pNumber))
    else
      call ClearRectUnits(PlayerRect[pNumber])
      call SaveInteger(hash, pNumber, StringHash("rectNumber"), rectNumber)
      call SaveInteger(hash, pNumber, StringHash("currentWave"), 1)
      call SaveInteger(hash, pNumber, StringHash("mCount"), 0)
      
      call CharacterMoveIn(pNumber, -400., 0)     /* 캐릭 이동 : 센터 기준 -400, 0 위치 */
      call DecorationRect(pNumber, rectNumber)    /* 지형 칠하기 */
      call CreateMonsters(pNumber, rectNumber, 1)   /* 몬스터 생성 */
      call DecorationDoodad(pNumber, rectNumber)  /* 장식물 한번 더 꾸미기 */
    endif
  endfunction
  private function RectSetup takes rect r1, rect r2, integer max returns nothing
    local integer i = 3
    // 초기설정 - 
    local real length = GetRectMaxX(r1) - GetRectMinX(r1)
    local real space = GetRectMinX(r2) - GetRectMaxX(r1)
    if ( r1 == null ) or ( r2 == null ) then
      if ( r1 == null ) and ( r2 == null ) then
        call BJDebugMsg("Bug/Hunting/RectSetup/r1 r2 null")
      elseif ( r1 == null ) then
        call BJDebugMsg("Bug/Hunting/RectSetup/r1 null")
      else
        call BJDebugMsg("Bug/Hunting/RectSetup/r2 null")
      endif
    elseif ( MAX_ROW != length/bj_CELLWIDTH ) or ( MAX_COL != (GetRectMaxY(r1) - GetRectMinY(r1))/bj_CELLWIDTH ) then
      call BJDebugMsg("Bug/Hunting/RectSetup/MAX ROW/COL != " + R2SW(length/bj_CELLWIDTH,2,0) + "//" + R2SW((GetRectMaxY(r1) - GetRectMinY(r1))/bj_CELLWIDTH,2,0) )
    else
      set PlayerRect[1] = r1
      set PlayerRect[2] = r2
      
      // 3부터 실행
      loop
        set PlayerRect[i] = Rect(GetRectMaxX(PlayerRect[i-1])+space, GetRectMinY(r1), GetRectMaxX(PlayerRect[i-1])+space+length, GetRectMaxY(r1))
        exitwhen i >= max
        set i = i + 1
      endloop
    endif
  endfunction
  private function CharacterMoveTo takes integer pNumber, real x, real y returns nothing
    call SetUnitPosition(udg_hero[pNumber], x, y)
    if ( GetLocalPlayer() == Player(pNumber-1) ) then
      call PanCameraToTimed(x, y, 0.)
    endif
  endfunction
  private function Clear takes integer pNumber, integer stage returns nothing
    call CharacterMoveTo(pNumber, LoadReal(hash, StringHash("rectExitX"), stage), LoadReal(hash, StringHash("rectExitY"), stage))
    if ( stage == 1 ) then
      call SetPlayerState(Player(pNumber-1), PLAYER_STATE_RESOURCE_GOLD, GetPlayerState(Player(pNumber-1), PLAYER_STATE_RESOURCE_GOLD) + 100)
      call AddHeroXP(udg_hero[pNumber], 50, false)
      
    else
      call BJDebugMsg("Hunting/Clear/ERROR 0")
    endif
  endfunction
  private function MonsterDying takes nothing returns nothing
    local unit u = GetTriggerUnit()
    local integer pNumber = LoadInteger(hash, GetHandleId(u), StringHash("pNumber"))
    local integer mCount = LoadInteger(hash, pNumber, StringHash("mCount")) - 1
    local integer rectNumber = LoadInteger(hash, pNumber, StringHash("rectNumber"))
    local integer currentWave = LoadInteger(hash, pNumber, StringHash("currentWave"))
    call SaveInteger(hash, pNumber, StringHash("mCount"), mCount)
    
    call BJDebugMsg("pNumber:" + I2S(pNumber)+"/mCount:"+I2S(mCount)+"/rectNumber:"+I2S(rectNumber)+"/currentWave:"+I2S(currentWave))
    if ( mCount <= 0 ) then
      if ( currentWave < EStageMaxWave(rectNumber) ) then   /* 웨이브 더있으면 웨이브 +1 후 다음 유닛 생성*/
        set currentWave = currentWave + 1
        call SaveInteger(hash, pNumber, StringHash("currentWave"), currentWave)
        call CharacterMoveIn(pNumber, -400., 0)
        call CreateMonsters(pNumber, rectNumber, currentWave)
      else                          /* 클리어 */
        call Clear(pNumber, rectNumber)
      endif
    endif
  endfunction
  private function Init takes nothing returns nothing
    // 이벤트 추가
    call RectAddEvent(gg_rct_Hunting_Enter_01_Down, 1, bj_KEYEVENTKEY_DOWN)
    call RectAddEvent(gg_rct_Hunting_Enter_02, 2, bj_KEYEVENTKEY_LEFT)
    set tempRegion = null /* 임시 변수 null 처리 */
    
    // 조건, 액션
    call TriggerAddCondition(tempEnterTrigger, Condition(function isEnterHero))
    call TriggerAddAction(tempEnterTrigger, function EnterAction)
    
    call TriggerAddAction(DyingTrigger, function MonsterDying)
    
    // 구역 설정, 2개의 위치에 따라 max까지 반복
    call RectSetup(gg_rct_Player_Hunting_Rect_01, gg_rct_Player_Hunting_Rect_02, bj_MAX_PLAYERS)
    // 메모리 반환
    set tempEnterTrigger = null
    //set DyingTrigger = null *해당이름 계속 사용하니 null 처리 안함*
  endfunction
endlibrary