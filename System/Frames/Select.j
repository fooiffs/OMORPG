scope Select initializer Init
    globals
      private boolean array PreLoad
      public integer array NowSelect
  
      private unit array SelectedUnit
      private boolean array SelectBol
      private integer array SelectCount
      
      private integer array Frame_SelectStars
      private integer array Frame_SelectSkills
      
      private integer array SlotLv
      private integer array SlotPlayTime
  
      public constant string DEFAULT_DATA = "0'0/1_0'1.2500/2_0'0/3_0'0/4_0'0/5_0'0/6_0'0/"
                                           //Last Slot
                                             //플탐All
                                               //1번슬롯_
                                                  //_플탐
                                                   //Lv.
                                                     //.경험치
      public real startXX = -9696.
      public real startYY = 4288.
    endglobals
  
    private constant function F2In takes integer frame returns integer
    //아이템/스킬/메뉴의 n번째 값인지 반환
      if ( frame == Frame_Buttons[1] or frame == Frame_Buttons[8] or frame == Frame_Buttons[16] or frame == Frame_SelectSkills[1] or frame == Frame_SelectBack[8] ) then
        return 1
      elseif ( frame == Frame_Buttons[2] or frame == Frame_Buttons[9] or frame == Frame_Buttons[17] or frame == Frame_SelectSkills[3] or frame == Frame_SelectBack[10] ) then
        return 2
      elseif ( frame == Frame_Buttons[3] or frame == Frame_Buttons[10] or frame == Frame_Buttons[18] or frame == Frame_SelectSkills[5] or frame == Frame_SelectBack[12] ) then
        return 3
      elseif ( frame == Frame_Buttons[4] or frame == Frame_Buttons[11] or frame == Frame_Buttons[19] or frame == Frame_SelectSkills[7] or frame == Frame_SelectBack[14] ) then
        return 4
      elseif ( frame == Frame_Buttons[5] or frame == Frame_Buttons[12] or frame == Frame_Buttons[20]                                  or frame == Frame_SelectBack[16]  ) then
        return 5
      elseif ( frame == Frame_Buttons[6] or frame == Frame_Buttons[13] or frame == Frame_Buttons[21]                                  or frame == Frame_SelectBack[18]  ) then
        return 6
      elseif ( frame == Frame_Buttons[7] or frame == Frame_Buttons[14] or frame == Frame_Buttons[22] ) then
        return 7
      elseif (                              frame == Frame_Buttons[15] or frame == Frame_Buttons[23] ) then
        return 8
      endif
     return 0
    endfunction
    private constant function F2It takes integer frame returns integer
    //아이템/스킬/메뉴인지 반환(1=FRAME_TYPE_ITEM/2=FRAME_TYPE_SKILL/3=FRAME_TYPE_MENU)
      if ( frame == Frame_Buttons[1] or frame == Frame_Buttons[2] or frame == Frame_Buttons[3] or frame == Frame_Buttons[4] or frame == Frame_Buttons[5] or frame == Frame_Buttons[6] or frame == Frame_Buttons[7] ) then
        return FRAME_TYPE_ITEM
      elseif ( frame == Frame_Buttons[8] or frame == Frame_Buttons[9] or frame == Frame_Buttons[10] or frame == Frame_Buttons[11] or frame == Frame_Buttons[12] or frame == Frame_Buttons[13] or frame == Frame_Buttons[14] or frame == Frame_Buttons[15] ) then
        return FRAME_TYPE_SKILL
      elseif ( frame == Frame_Buttons[16] or frame == Frame_Buttons[17] or frame == Frame_Buttons[18] or frame == Frame_Buttons[19] or frame == Frame_Buttons[20] or frame == Frame_Buttons[21] or frame == Frame_Buttons[22] or frame == Frame_Buttons[23] ) then
        return FRAME_TYPE_MENU
      elseif ( frame == Frame_SelectSkills[1] or frame == Frame_SelectSkills[3] or frame == Frame_SelectSkills[5] or frame == Frame_SelectSkills[7] ) then
        return FRAME_TYPE_PRESKILL
      elseif ( frame == Frame_SelectBack[8] or frame == Frame_SelectBack[10] or frame == Frame_SelectBack[12] or frame == Frame_SelectBack[14] or frame == Frame_SelectBack[16] or frame == Frame_SelectBack[18] ) then
        return FRAME_TYPE_CHARACTER
      endif
     return 0
    endfunction
  
    public constant function I2U takes integer i returns integer
      if ( i == 1 ) then
        return 'H000'
      elseif ( i == 2 ) then
        return 'H001'
      elseif ( i == 3 ) then
        return 'H002'
      elseif ( i == 4 ) then
        return 'H003'
      elseif ( i == 5 ) then
        return 'H005'
      elseif ( i == 6 ) then
        return 'H004'
      else
        return 0
      endif
    endfunction
    // 유닛 선택 해제 시 갱신 함수
    private function Deselected takes nothing returns nothing
      if GetLocalPlayer() == GetTriggerPlayer() then
        call DzFrameShow(Frame_Sub, false)
      endif
      set SelectedUnit[GetPlayerId(GetTriggerPlayer()) + 1] = null
    endfunction
    public function Data_Select takes integer i returns string
      if ( i == 1 ) then
        return "쿠로사키 이치고'Ichigo Kurosaki'주인공. 유령을 보는 고교생.'카라쿠라 마을의 사신대행.'4'2'2'3'2'|cffff8000근접 물리 |cffd5d500[힘]'참백도(참월)'SkillTree_ichi_00.blp'SkillTree_ichi_05.blp'SkillTree_ichi_06.blp'SkillTree_ichi_11.blp'특성 스킬'검압 - 스킬 추가데미지'블루트베네 - 피격데미지 감소'월아천충'참격의 순간에 자신의 영압을 방출해 참격을 거대화.'강화시 데미지&범위 증가'천쇄참월'호로의 힘으로 월아천충을 쏘아낸다.'강화시 대상 출혈'무월'잠재능력을 모두 해방시켜 참격을 발사합니다.'강화시 출혈효과 폭발 추가데미지"
      elseif ( i == 2 ) then
        return "쿠치키 루키아'Rukia Kuchiki'더블 주인공이자 여주인공.'학교 성적은 국어 빼고 최하위.'3'3'3'5'4'|cff0080c0근접 마법 |cffd5d500[기술]'귀도, 참백도(수백설)'SkillTree_rukia_00.blp'SkillTree_rukia_02.blp'SkillTree_rukia_03.blp'SkillTree_rukia_04.blp'특성 스킬'영하 18도 - 주변 적을 베고 빙결'변신류 - 적 공속 감소, 아군 공속 증가'시작의 춤, 월백'주변을 속박시키고 표식을 생성합니다.'표식을 생성하고, 다른 스킬로 추가효과 가능'다음의 춤, 백련'춤을 추고, 주변 방해효과 폭발시켜 데미지를 가함.'강화시 표식을 폭발시켜 추가데미지'세번째 춤, 백도'상대를 관통시켜 얼립니다.'일직선상으로 냉기를 뿜어내, 적에게 데미지를 가함.'강화시 오한에 걸린 적 관통"
      elseif ( i == 3 ) then
        return "이시다 우류'Uryu Ishida'이치고와 같은 학교, 전교 석차 1위.'호로를 멸하는 퀸시의 후예.'5'0'1'2'3'|cffff8000원거리 물리 |cffd5d500[속도]'영자병장(은령호작)'SkillTree_Uryu_01.blp'SkillTree_Uryu_02.blp'SkillTree_Uryu_06.blp'SkillTree_Uryu_13.blp'특성스킬'은통 - 저장된 은통으로 마나회복 혹은 스킬사용 함.'산령수투 - 공격시 영압 소모해 추가데미지'하일리히 프파일'퀸시의 영자병장, 빛의 화살로 데미지를 가함.'강화시 추가데미지'리히트레겐'넓은 범위에 화살을 쏘아서 광역 공격을 함.'강화시 광역 대상 추가데미지'슈프렝거'퀸시 크로스 진에 농축 영자를 폭발시켜 속박&데미지.'강화시 속박대신 스턴"
      elseif ( i == 4 ) then
        return "이노우에 오리히메'Orihime Inoue'히로인, 기계치이자 돌머리.'머리핀(순순육화)을 항상 착용하고 다님.'2'5'5'2'5'|cff0080c0원거리 마법 |cffd5d500[마음]'머리핀(순순육화)'SkillTree_Inooue_21.blp'SkillTree_Inooue_01.blp'SkillTree_Inooue_12.blp'SkillTree_Inooue_13.blp'특성스킬'사상의거절 - 주변 쿨다운 감소 10%'더블캐스팅 - 스킬이 콤보로 변경되어, 추가효과 적용.'츠바키(고천참순)'츠바키를 날려 최대체력에 비례한 데미지를 가함.'강화시 출혈 및 최대체력 추가데미지'쌍천귀순'슌오우(벚꽃)+아야메(붓꽃), 퀵슬롯 등록해 사용.'매 초마다 주변의 잃은 체력을 회복합니다.'삼천결순'히나기쿠+바이곤+리리, 퀵슬롯에 등록해 사용.'삼각형 방패로 외부 공격 거절, 의지에 따라 방어력 상승."
      elseif ( i == 5 ) then
        return "아바라이 렌지'Renji Abarai'호정 13대의 6번대 부대장.'루키아와 소꿉친구이며 이치고와 대립.'4'2'1'4'4'|cffff8000근접 물리 |cffd5d500[기술]'참백도(사미환)'SkillTree_Renji_01.blp'SkillTree_Renji_03.blp'SkillTree_Renji_05.blp'SkillTree_Renji_07.blp'특성스킬'슌센벤, 박치기 등 추가스킬'변신류 - 이동속도와 데미지 증가'사미환'전방을 향해 검을 휘두르고, 조각을 남깁니다.'강화시 출혈효과 및 범위 증가'비아절교'주변 조각을 쏘아붙여 공격합니다. 조각당 데미지 증가'강화시 마비(누적시 스턴) 추가'비골대포'영압덩어리를 발사해 상대를 밀어냅니다.'강화시 화상적용, 상위스킬 시아철포"
      elseif ( i == 6 ) then
        return "사도 야스토라'Yasutora Sado'별명 차드, 멕시코 혼혈, 전교 11등.'우수한 성적과 상냥한 마음씨를 가짐.'3'4'4'3'2'|cffff8000근접 물리 |cffd5d500[힘]'오른팔과 왼팔'SkillTree_Sado_00.blp'SkillTree_Sado_01.blp'SkillTree_Sado_03.blp'SkillTree_Sado_02.blp'특성 스킬'대쉬 - 브링거 라이트'변신류 - 적 방어 감소, 본인 방어 증가'엘디렉토'전방에 주먹으로 영압을 발사해 데미지를 가함.'강화시 범위 증가 및 쿨다운 감소'슬래머'지면을 강타해 지진으로 적들을 둔화시킴.'강화시 범위 증가 및 넉백 적용'방어'방어 자세를 취해, 일정시간 피해를 감소시킵니다.'강화시 자동시전"
      endif
      return ""
    endfunction
    private constant function U2I takes unit u returns integer
      if ( u == gg_unit_H000_0011 ) then
        return 1
      elseif ( u == gg_unit_H001_0010 ) then
        return 2
      elseif ( u == gg_unit_H002_0009 ) then
        return 3
      elseif ( u == gg_unit_H003_0008 ) then
        return 4
      elseif ( u == gg_unit_H005_0003 ) then
        return 5
      elseif ( u == gg_unit_H004_0007 ) then
        return 6
      else
        return 0
      endif
    endfunction
    private function SetStars takes integer startnum, integer val, string texture returns nothing
     local integer i = 0
      loop
        if ( val > i ) then
          call DzFrameSetTexture(Frame_SelectStars[startnum+i], texture, 0)
        else
          call DzFrameSetTexture(Frame_SelectStars[startnum+i], "Select_stars0.tga", 0)
        endif
        exitwhen i >= 4
        set i = i + 1
      endloop
    endfunction
    private function ViewInfo takes string s, boolean Continue returns nothing
      //이름 영어 설명x2
      call DzFrameSetText(Frame_SelectText[2], JNStringSplit(s,"'",0))
      call DzFrameSetText(Frame_SelectText[3], JNStringSplit(s,"'",1))
      call DzFrameSetText(Frame_SelectText[4], JNStringSplit(s,"'",2))
      call DzFrameSetText(Frame_SelectText[5], JNStringSplit(s,"'",3))
      //별표
      call SetStars(1, S2I(JNStringSplit(s,"'",4)), "Select_stars1.tga")
      call SetStars(6, S2I(JNStringSplit(s,"'",5)), "Select_stars1.tga")
      call SetStars(11, S2I(JNStringSplit(s,"'",6)), "Select_stars1.tga")
      call SetStars(16, S2I(JNStringSplit(s,"'",7)), "Select_stars1.tga")
      call SetStars(21, S2I(JNStringSplit(s,"'",8)), "Select_stars2.tga")
          
      //피해, 무기, 스킬아이콘
      if ( SubString(JNStringSplit(s,"'",9),0,10) == "|cffff8000" ) then
        call DzFrameSetTexture(Frame_SelectBack[3], "Select_BackRed.blp", 0)
        call DzFrameSetTexture(Frame_SelectBack[4], "Select_BackRedRed.blp", 0)
        if ( Continue ) then
          call DzFrameSetTexture(Frame_SelectBack[6], "Select_ContinueRed.blp", 0)
        else
          call DzFrameSetTexture(Frame_SelectBack[6], "Select_StartRed.blp", 0)
        endif
      else
        call DzFrameSetTexture(Frame_SelectBack[3], "Select_BackBlue.blp", 0)
        call DzFrameSetTexture(Frame_SelectBack[4], "Select_BackBlueBlue.blp", 0)
        if ( Continue ) then
          call DzFrameSetTexture(Frame_SelectBack[6], "Select_ContinueBlue.blp", 0)
        else
          call DzFrameSetTexture(Frame_SelectBack[6], "Select_StartBlue.blp", 0)
        endif
      endif
      call DzFrameSetText(Frame_SelectText[12], JNStringSplit(s,"'",9))
      call DzFrameSetText(Frame_SelectText[14], JNStringSplit(s,"'",10))
  
      call DzFrameSetTexture(Frame_SelectSkills[2], JNStringSplit(s,"'",11), 0)
      call DzFrameSetTexture(Frame_SelectSkills[4], JNStringSplit(s,"'",12), 0)
      call DzFrameSetTexture(Frame_SelectSkills[6], JNStringSplit(s,"'",13), 0)
      call DzFrameSetTexture(Frame_SelectSkills[8], JNStringSplit(s,"'",14), 0)
          
      call DzFrameShow(Frame_SelectBack[1], true)
      call DzFrameShow(Frame_SelectText[16], false)
    endfunction
    // 유닛 선택수 초기화 함수
    private function Selected_Inter takes nothing returns nothing
      local timer t = GetExpiredTimer()
      local integer tid = GetHandleId(t)
      local integer pid = LoadInteger(hash, tid, StringHash("pid"))
      set SelectBol[pid] = false
      set SelectCount[pid] = 0
      call FlushChildHashtable(hash, tid)
      call DestroyTimer(t)
      set t = null
    endfunction
    // 유닛 선택 시 갱신 함수
    private function Selected takes nothing returns nothing
      local player p = GetTriggerPlayer()
      local integer pid = GetPlayerId(p) + 1
      local unit u = GetTriggerUnit()
      local timer t
      if ( PreLoad[pid] ) then /* 시작하기 전 선택창 */
        if ( U2I(u) > 0 ) then
          set NowSelect[pid] = U2I(u)
          if ( GetLocalPlayer() == p ) then
          
            call ViewInfo(Data_Select(U2I(u)), ( S2I(JNStringSplit(JNStringSplit(LoadStr(hash, pid, StringHash("Data")),"/",U2I(u)),"'",1)) > 0 ))
            call ClearSelection()
          endif
        endif
      else
        set SelectCount[pid] = SelectCount[pid] + 1
        if ( SelectCount[pid] > 1 ) then /* 한 번에 여러명 선택 시 메인 프레임 숨기기 */
          if ( GetLocalPlayer() == p ) then
            call DzFrameShow(Frame_Sub, false)
          endif
        elseif ( SelectedUnit[pid] != null and SelectedUnit[pid] != u ) then
          if ( GetLocalPlayer() == p ) then
            call DzFrameShow(Frame_Sub, false)
          endif
        else /* 표시, 일반유닛도 표시 */
          if GetLocalPlayer() == GetTriggerPlayer() then
            call DzFrameShow(Frame_Sub, true)
          endif
        endif
        if not SelectBol[pid] then
          set SelectBol[pid] = true
          set t = CreateTimer()
          call SaveInteger(hash, GetHandleId(t), StringHash("pid"), pid)
          call TimerStart(t, 0, false, function Selected_Inter)
        endif
        set SelectedUnit[pid] = u
      endif
     set u = null
     set t = null
    endfunction
    public function ButtonClick takes nothing returns nothing
      local integer f = DzGetTriggerUIEventFrame()
      //debug call BJDebugMsg("Clicked : " + I2S(F2In(f)) + "번째 " + FI2S(F2It(f)))
      if ( F2It(f) == FRAME_TYPE_CHARACTER ) then
        set NowSelect[GetPlayerId(DzGetTriggerUIEventPlayer())+1] = F2In(f)
      endif
      if ( GetLocalPlayer() == DzGetTriggerUIEventPlayer() ) then
        if ( F2It(f) == FRAME_TYPE_MENU ) then
          call PushKey_MenuClick(F2In(f))
        else
          call StopSound(gg_snd_MouseClick1, false, false)
          call StartSound(gg_snd_MouseClick1)
        endif
        
        if ( F2It(f) == FRAME_TYPE_CHARACTER ) then
          call ViewInfo(Data_Select(F2In(f)), ( S2I(JNStringSplit(JNStringSplit(LoadStr(hash, GetPlayerId(DzGetTriggerUIEventPlayer())+1, StringHash("Data")),"/",F2In(f)),"'",1)) > 0 ))
        endif
      endif
    endfunction
      
    private function ButtonJustUp takes nothing returns nothing
      local integer f = DzGetTriggerUIEventFrame()
      if ( GetLocalPlayer() == DzGetTriggerUIEventPlayer() ) then
        //call BJDebugMsg("Mouse Up: " + I2S(F2In(f)) + "번째 " + FI2S(F2It(f)) +"="+JNStringSplit(Data_Select(NowSelect[GetPlayerId(DzGetTriggerUIEventPlayer())+1]),"'",12+3*F2In(f)))
        set f = 12+3*F2In(f)
        call DzFrameSetText(Frame_SelectText[16], "|cffd5d500"+JNStringSplit(Data_Select(NowSelect[GetPlayerId(DzGetTriggerUIEventPlayer())+1]),"'",f))
        call DzFrameSetText(Frame_SelectText[17], JNStringSplit(Data_Select(NowSelect[GetPlayerId(DzGetTriggerUIEventPlayer())+1]),"'",f+1))
        call DzFrameSetText(Frame_SelectText[18], JNStringSplit(Data_Select(NowSelect[GetPlayerId(DzGetTriggerUIEventPlayer())+1]),"'",f+2))
        
        call DzFrameShow(Frame_SelectText[16], true)
      endif
    endfunction
    private function ButtonJustDown takes nothing returns nothing
      local integer f = DzGetTriggerUIEventFrame()
      if ( GetLocalPlayer() == DzGetTriggerUIEventPlayer() ) then
        call DzFrameShow(Frame_SelectText[16], false)
      endif
    endfunction
    function Msg takes player p, string msg returns nothing
      call DisplayTimedTextToPlayer(p,0,0,6.,msg)
    endfunction
    
    private function DataSync2 takes nothing returns nothing
      //To CreateUnit
      set GetServerPlayer = DzGetTriggerSyncPlayer()
      set NowSelect[GetPlayerId(DzGetTriggerSyncPlayer())+1] = S2I(DzGetTriggerSyncData())
      call TriggerExecute(gg_trg_Load_End)
      call PortraitEditor_Change()
    endfunction
    
    private function ButtonStart takes nothing returns nothing
      local integer f = GetPlayerId(DzGetTriggerUIEventPlayer())+1
      set PreLoad[f] = false
      if ( I2U(NowSelect[f]) == 0 ) then
        set PreLoad[f] = true
        call Msg(DzGetTriggerUIEventPlayer(), "올바른 캐릭터를 선택 후, 시작하기를 눌러주세요")
      else
        if ( GetLocalPlayer() == DzGetTriggerUIEventPlayer() ) then
          call DzSyncData("Select", I2S(NowSelect[f]))
          call DzFrameShow(Frame_SelectBack[0], false)
          call DzFrameShow(Frame_SelectBack[1], false)
          call DzFrameShow(Frame_Info[0], false)
          call ResetToGameCamera(0.)
          call SetCameraBoundsToRect(bj_mapInitialPlayableArea)
          call PanCameraTo(startXX, startYY)
          call EnablePreSelect(true, true)
          call DzFrameShow(DzFrameGetMinimap(), true)
        endif
      endif
    endfunction
    private function CameraBounds takes real x, real y returns nothing
      call SetCameraBounds(x, y, x, y, x, y, x, y)
    endfunction
    private function MakeSelect takes integer no, integer point, real x, real y, real xx, real yy, string texture returns integer
      set Frame_SelectBack[no] = DzCreateFrameByTagName("BACKDROP", "", Frame_SelectBack[1], "", no)
      call DzFrameSetAbsolutePoint(Frame_SelectBack[no], point, x, y)
      call DzFrameSetSize(Frame_SelectBack[no], xx, yy)
      call DzFrameSetTexture(Frame_SelectBack[no], texture, 0)
      return no + 1
    endfunction
    private function MakeStars takes integer no, integer parent, integer point, integer point2, real x, real y, real size, string texture returns integer
      set Frame_SelectStars[no] = DzCreateFrameByTagName("BACKDROP", "", parent, "", no)
      call DzFrameSetPoint(Frame_SelectStars[no], point, parent, point2, x, y)
      call DzFrameSetSize(Frame_SelectStars[no], size, size)
      call DzFrameSetTexture(Frame_SelectStars[no], texture, 0)
      return no + 1
    endfunction
    private function MakeSelectText takes integer no, integer parent, integer point, integer point2, real x, real y, real size, string text returns integer
      set Frame_SelectText[no] = DzCreateFrameByTagName("TEXT", "", parent, "", no)
      if ( size != 0. ) then
        call DzFrameSetFont(Frame_SelectText[no], "Fonts\\DFHeiMd.ttf", size, 0)
      endif
      call DzFrameSetPoint(Frame_SelectText[no], point, parent, point2, x, y)
      call DzFrameSetText(Frame_SelectText[no], text)
      return no+1
    endfunction
      
  
    private function CreateSelectIcon takes integer types, real x, real y, real w, real h, string IconTexture returns nothing
        set Frame_SelectBack[types]=DzCreateFrameByTagName("BACKDROP", "", Frame_SelectBack[0], "", 0)
        call DzFrameSetAbsolutePoint(Frame_SelectBack[types], JN_FRAMEPOINT_CENTER, x, y)
        call DzFrameSetSize(Frame_SelectBack[types], w, h)
        call DzFrameSetTexture(Frame_SelectBack[types], IconTexture, 0)
    endfunction
    private function CreateSelectButton takes integer types returns nothing
      set Frame_SelectBack[types]=DzCreateFrameByTagName("BUTTON", "", Frame_SelectBack[types-1], "ScoreScreenTabButtonTemplate", 0)
      call DzFrameSetAllPoints(Frame_SelectBack[types], Frame_SelectBack[types-1])
      call DzFrameSetScriptByCode(Frame_SelectBack[types], JN_FRAMEEVENT_MOUSE_UP, function ButtonClick, false)
    endfunction
    
    private function CreateSelectIcon2 takes integer types, integer parent, integer point, integer point2, real x, real y, real size, string IconTexture returns integer
      set Frame_SelectSkills[types]=DzCreateFrameByTagName("BUTTON", "", Frame_SelectBack[1], "ScoreScreenTabButtonTemplate", 0)
      call DzFrameSetScriptByCode(Frame_SelectSkills[types], JN_FRAMEEVENT_MOUSE_ENTER, function ButtonJustUp, false)
      call DzFrameSetScriptByCode(Frame_SelectSkills[types], JN_FRAMEEVENT_MOUSE_LEAVE, function ButtonJustDown, false)
      call DzFrameSetPoint(Frame_SelectSkills[types], point, parent, point2, x, y)
      call DzFrameSetSize(Frame_SelectSkills[types], size, size)
        
      set types = types + 1
      //배경
      set Frame_SelectSkills[types]=DzCreateFrameByTagName("BACKDROP", "", Frame_SelectSkills[types-1], "", 0)
      call DzFrameSetAllPoints(Frame_SelectSkills[types], Frame_SelectSkills[types-1])
      call DzFrameSetTexture(Frame_SelectSkills[types], IconTexture, 0)
      return types + 1
    endfunction
    private function CreateSelect takes nothing returns nothing
     local integer Text = 1
       
      call SetCameraField(CAMERA_FIELD_ROTATION, 90., 0.)
      call SetCameraField(CAMERA_FIELD_ANGLE_OF_ATTACK, 325., 0.)
      call SetCameraField(CAMERA_FIELD_TARGET_DISTANCE, 1024, 0.)
      call SetCameraField(CAMERA_FIELD_FIELD_OF_VIEW, 70., 0.)
      call SetCameraField(CAMERA_FIELD_FARZ, 5000., 0.)
      call CameraBounds(-9664., 5440.)
         
      //체력바
      call EnablePreSelect(false, false)
      set Frame_SelectBack[0] = DzCreateFrameByTagName("TEXT", "", DzGetGameUI(), "", 0)
      call DzFrameSetFont(Frame_SelectBack[0], "Fonts\\MoonEpi2.ttf", .030, 1)
      call DzFrameSetAbsolutePoint(Frame_SelectBack[0], JN_FRAMEPOINT_CENTER, .4, .55)
      if ( GetRandomReal(0.,99.) <= 33. ) then
        call DzFrameSetText(Frame_SelectBack[0], "|cffFF7CBFThe Only My Own RPG")
      elseif ( GetRandomReal(0.,66.) <= 33. ) then
        call DzFrameSetText(Frame_SelectBack[0], "|cff28FF0DThe Only My Own RPG")
      else
        call DzFrameSetText(Frame_SelectBack[0], "|cff0085FFThe Only My Own RPG")
      endif
      set Text = MakeSelectText(1, Frame_SelectBack[0], JN_FRAMEPOINT_TOPRIGHT, JN_FRAMEPOINT_BOTTOMRIGHT, 0., 0., 0., "나만의 알피지")
      call DzFrameSetFont(Frame_SelectText[1], "Fonts\\MoonEpi2.ttf", .0136, 0)
      
      set Frame_SelectBack[1] = DzCreateFrameByTagName("TEXT", "", DzGetGameUI(), "", 0)
       
      //call DzFrameSetTexture(Frame_SelectBack[0], "ui\\Title-R.blp", 0)
      call MakeSelect(2, JN_FRAMEPOINT_TOPLEFT, .05, .45, .18, .25, "Select_Back.blp")
      set Text = MakeSelectText(Text, Frame_SelectBack[2], JN_FRAMEPOINT_TOP, JN_FRAMEPOINT_TOP, 0., -.013, .015, "T"+I2S(Text)+"DarkElf Mage")
      set Text = MakeSelectText(Text, Frame_SelectBack[2], JN_FRAMEPOINT_TOPRIGHT, JN_FRAMEPOINT_TOPRIGHT, -.020, -.035, .010, "T"+I2S(Text)+"다크엘프 마법사")
      
      set Text = MakeSelectText(Text, Frame_SelectBack[2], JN_FRAMEPOINT_TOPLEFT, JN_FRAMEPOINT_TOPLEFT, .020, -.050, .008, "T"+I2S(Text)+"마법사는 강력한 마법 공격과 디버프를 사용해")
      set Text = MakeSelectText(Text, Frame_SelectText[Text-1], JN_FRAMEPOINT_TOPLEFT, JN_FRAMEPOINT_BOTTOMLEFT, 0., 0., .008, "T"+I2S(Text)+"적을 괴롭히고 다대다 전투에 강한 직업입니다.")
      
      set Text = MakeSelectText(Text, Frame_SelectBack[2], JN_FRAMEPOINT_TOPLEFT, JN_FRAMEPOINT_TOPLEFT, .020, -.080, .012, "공격")
      call MakeStars(1, Frame_SelectText[Text-1], JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .040, 0., .020, "Select_stars1.tga")
      call MakeStars(2, Frame_SelectStars[1], JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_RIGHT, 0., 0., .020, "Select_stars1.tga")
      call MakeStars(3, Frame_SelectStars[2], JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_RIGHT, 0., 0., .020, "Select_stars1.tga")
      call MakeStars(4, Frame_SelectStars[3], JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_RIGHT, 0., 0., .020, "Select_stars1.tga")
      call MakeStars(5, Frame_SelectStars[4], JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_RIGHT, 0., 0., .020, "Select_stars1.tga")
      set Text = MakeSelectText(Text, Frame_SelectText[Text-1], JN_FRAMEPOINT_TOPLEFT, JN_FRAMEPOINT_BOTTOMLEFT, 0., -.02, .012, "방어")
      call MakeStars(6, Frame_SelectText[Text-1], JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .040, 0., .020, "Select_stars1.tga")
      call MakeStars(7, Frame_SelectStars[6], JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_RIGHT, 0., 0., .020, "Select_stars1.tga")
      call MakeStars(8, Frame_SelectStars[7], JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_RIGHT, 0., 0., .020, "Select_stars1.tga")
      call MakeStars(9, Frame_SelectStars[8], JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_RIGHT, 0., 0., .020, "Select_stars1.tga")
      call MakeStars(10, Frame_SelectStars[9], JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_RIGHT, 0., 0., .020, "Select_stars0.tga")
      set Text = MakeSelectText(Text, Frame_SelectText[Text-1], JN_FRAMEPOINT_TOPLEFT, JN_FRAMEPOINT_BOTTOMLEFT, 0., -.02, .012, "보조")
      call MakeStars(11, Frame_SelectText[Text-1], JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .040, 0., .020, "Select_stars1.tga")
      call MakeStars(12, Frame_SelectStars[11], JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_RIGHT, 0., 0., .020, "Select_stars1.tga")
      call MakeStars(13, Frame_SelectStars[12], JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_RIGHT, 0., 0., .020, "Select_stars1.tga")
      call MakeStars(14, Frame_SelectStars[13], JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_RIGHT, 0., 0., .020, "Select_stars0.tga")
      call MakeStars(15, Frame_SelectStars[14], JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_RIGHT, 0., 0., .020, "Select_stars0.tga")
      set Text = MakeSelectText(Text, Frame_SelectText[Text-1], JN_FRAMEPOINT_TOPLEFT, JN_FRAMEPOINT_BOTTOMLEFT, 0., -.02, .012, "방해")
      call MakeStars(16, Frame_SelectText[Text-1], JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .040, 0., .020, "Select_stars1.tga")
      call MakeStars(17, Frame_SelectStars[16], JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_RIGHT, 0., 0., .020, "Select_stars1.tga")
      call MakeStars(18, Frame_SelectStars[17], JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_RIGHT, 0., 0., .020, "Select_stars0.tga")
      call MakeStars(19, Frame_SelectStars[18], JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_RIGHT, 0., 0., .020, "Select_stars0.tga")
      call MakeStars(20, Frame_SelectStars[19], JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_RIGHT, 0., 0., .020, "Select_stars0.tga")
      set Text = MakeSelectText(Text, Frame_SelectText[Text-1], JN_FRAMEPOINT_TOPLEFT, JN_FRAMEPOINT_BOTTOMLEFT, 0., -.02, .012, "난이도")
      call MakeStars(21, Frame_SelectText[Text-1], JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .040, 0., .020, "Select_stars2.tga")
      call MakeStars(22, Frame_SelectStars[21], JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_RIGHT, 0., 0., .020, "Select_stars0.tga")
      call MakeStars(23, Frame_SelectStars[22], JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_RIGHT, 0., 0., .020, "Select_stars0.tga")
      call MakeStars(24, Frame_SelectStars[23], JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_RIGHT, 0., 0., .020, "Select_stars0.tga")
      call MakeStars(25, Frame_SelectStars[24], JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_RIGHT, 0., 0., .020, "Select_stars0.tga")
        
      call MakeSelect(3, JN_FRAMEPOINT_TOPLEFT, .6, .4, .20, .23, "Select_BackRed.blp")
      set Text = MakeSelectText(Text, Frame_SelectBack[3], JN_FRAMEPOINT_TOPLEFT, JN_FRAMEPOINT_TOPLEFT, .02, -.02, .010, "|cff8f8f8f피해 유형")
      set Text = MakeSelectText(Text, Frame_SelectText[Text-1], JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .07, 0., .015, "T"+I2S(Text)+"|cff0080c0마법 데미지")
      set Text = MakeSelectText(Text, Frame_SelectBack[3], JN_FRAMEPOINT_TOPLEFT, JN_FRAMEPOINT_TOPLEFT, .02, -.04, .010, "|cff8f8f8f사용(전용)무기")
      set Text = MakeSelectText(Text, Frame_SelectText[Text-1], JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .07, 0., .012, "T"+I2S(Text)+"[완드] [지팡이]")
        
      call MakeSelect(4, JN_FRAMEPOINT_TOPLEFT, .62, .34, .16, .12, "Select_BackRedRed.blp")
      set Text = MakeSelectText(Text, Frame_SelectBack[4], JN_FRAMEPOINT_TOPLEFT, JN_FRAMEPOINT_TOPLEFT, .01, -.01, .010, "|cff8f8f8f주요 스킬 보기")
      call CreateSelectIcon2(1, Frame_SelectBack[4], JN_FRAMEPOINT_TOP, JN_FRAMEPOINT_TOPLEFT, .024, -.03, .0275, "war3mapImported\\frame_kakao.blp")
      call CreateSelectIcon2(3, Frame_SelectBack[4], JN_FRAMEPOINT_TOP, JN_FRAMEPOINT_TOPLEFT, .061, -.03, .0275, "war3mapImported\\frame_kakao.blp")
      call CreateSelectIcon2(5, Frame_SelectBack[4], JN_FRAMEPOINT_TOP, JN_FRAMEPOINT_TOPLEFT, .099, -.03, .0275, "war3mapImported\\frame_kakao.blp")
      call CreateSelectIcon2(7, Frame_SelectBack[4], JN_FRAMEPOINT_TOP, JN_FRAMEPOINT_TOPLEFT, .136, -.03, .0275, "war3mapImported\\frame_kakao.blp")
        
      set Text = MakeSelectText(Text, Frame_SelectBack[4], JN_FRAMEPOINT_TOPLEFT, JN_FRAMEPOINT_TOPLEFT, .01, -.08, .012, "T"+I2S(Text)+"|cffd5d500분노의 소용돌이 |cffff8000Lv.1")
      
      set Text = MakeSelectText(Text, Frame_SelectText[Text-1], JN_FRAMEPOINT_TOPLEFT, JN_FRAMEPOINT_BOTTOMLEFT, 0., -.005, .008, "T"+I2S(Text)+"창을 크게 휘둘러 주위의 적들에게 공격력의")
      set Text = MakeSelectText(Text, Frame_SelectText[Text-1], JN_FRAMEPOINT_TOPLEFT, JN_FRAMEPOINT_BOTTOMLEFT, 0., 0., .008, "T"+I2S(Text)+"|cffff800060%|r만큼 마법피해를 최대 |cffff80003|r회 입힙니다.")
  
      set Frame_SelectBack[5]=DzCreateFrameByTagName("BUTTON", "", Frame_SelectBack[1], "ScoreScreenTabButtonTemplate", 0)
      call DzFrameSetPoint(Frame_SelectBack[5], JN_FRAMEPOINT_TOP, Frame_SelectBack[4], JN_FRAMEPOINT_BOTTOM, 0., -.005)
      call DzFrameSetSize(Frame_SelectBack[5], .11, .03)
      call DzFrameSetScriptByCode(Frame_SelectBack[5], JN_FRAMEEVENT_MOUSE_UP, function ButtonStart, true)
      
      //시작하기
      set Frame_SelectBack[6]=DzCreateFrameByTagName("BACKDROP", "", Frame_SelectBack[5], "", 0)
      call DzFrameSetAllPoints(Frame_SelectBack[6], Frame_SelectBack[5])
      call DzFrameSetTexture(Frame_SelectBack[6], "Select_StartRed.blp", 0)
    endfunction
    public function I2T takes integer i returns string
      if ( i <= 0 ) then
        return ""
      elseif ( i < 100 ) then
        return I2S(i) + "분"
      elseif ( i < 600 ) then /* 10시간 */
        return R2SW(i/60.,1,2) + "시간"
      else/* if ( i < 6000 ) then /* 100시간 */ */
        return R2SW(i/60.,2,1) + "시간"
      /*elseif ( i < 14400 ) then /* 10일 */
        return I2S(i/1440)+"D"+I2S(ModuloInteger(i,1440)/60)+"H"
      else
        return R2SW(i/1440.,2,2) + "D"*/
      endif
    endfunction
    private function CreateSelectBottom takes nothing returns nothing
     local integer i = 1
      //아래쪽
      loop
        call CreateSelectIcon(5+i*2, i*.12, .1, .1, .04, "Select_SlotBack75.blp")
        call MakeSelectText(16+i*3, Frame_SelectBack[5+i*2], JN_FRAMEPOINT_TOPLEFT, JN_FRAMEPOINT_TOPLEFT, .005, -.005, .010, JNStringSplit(JNStringSplit(Data_Select(i),"'",0)," ",1)+" Lv00")
        call MakeSelectText(17+i*3, Frame_SelectBack[5+i*2], JN_FRAMEPOINT_TOPRIGHT, JN_FRAMEPOINT_TOPRIGHT, -.005, -.005, .009, " ")
        call MakeSelectText(18+i*3, Frame_SelectBack[5+i*2], JN_FRAMEPOINT_BOTTOMRIGHT, JN_FRAMEPOINT_BOTTOMRIGHT, -.01, .008, .013, "이어하기")
        
        call CreateSelectButton(6+i*2)
        exitwhen i >= Save_MAX_CHARACTER
        set i = i + 1
      endloop
    endfunction
    private function CreateSelectBottom2 takes player p, string Input returns nothing
     local string s
     local integer i = 1
      //아래쪽
      loop
        set s = JNStringSplit(Input,"/",i)
        if ( S2I(JNStringSplit(JNStringSplit(s,"'",1),".",0)) > 0 ) then
          if ( GetLocalPlayer() == p ) then
            call DzFrameSetTexture(Frame_SelectBack[5+i*2], "Select_SlotBack75.blp", 0)
            call DzFrameSetFont(Frame_SelectText[16+i*3], "Fonts\\DFHeiMd.ttf", .010, 0)
            call DzFrameSetText(Frame_SelectText[16+i*3], JNStringSplit(JNStringSplit(Data_Select(i),"'",0)," ",1)+" Lv"+JNStringSplit(JNStringSplit(s,"'",1),".",0))
            call DzFrameSetFont(Frame_SelectText[17+i*3], "Fonts\\DFHeiMd.ttf", .009, 0)
            call DzFrameSetText(Frame_SelectText[17+i*3], I2T(S2I(JNStringSplit(JNStringSplit(s,"'",0),"_",1))))
            call DzFrameSetFont(Frame_SelectText[18+i*3], "Fonts\\DFHeiMd.ttf", .013, 0)
            call DzFrameSetText(Frame_SelectText[18+i*3], "이어하기")
          endif
        else
          if ( GetLocalPlayer() == p ) then
            call DzFrameSetTexture(Frame_SelectBack[5+i*2], "Select_SlotBack50.blp", 0)
            call DzFrameSetFont(Frame_SelectText[16+i*3], "Fonts\\DFHeiMd.ttf", .009, 0)
            call DzFrameSetText(Frame_SelectText[16+i*3], JNStringSplit(Data_Select(i),"'",0) + " (신규)")
            call DzFrameSetText(Frame_SelectText[17+i*3], "")
            call DzFrameSetFont(Frame_SelectText[18+i*3], "Fonts\\DFHeiMd.ttf", .008, 0)
            call DzFrameSetText(Frame_SelectText[18+i*3], "미리보기")
          endif
        endif
        
        exitwhen i >= Save_MAX_CHARACTER
        set i = i + 1
      endloop
    endfunction
    constant function IsEmpty takes string s returns boolean
      return ( s == "" ) or ( s == null )
    endfunction
    public function GetSaveData takes player p, string Input returns nothing
      if ( IsEmpty(Input) ) then
        set Input = DEFAULT_DATA
      endif
      call SaveStr(hash, GetPlayerId(p)+1, StringHash("Data"), Input)
      call CreateSelectBottom2(p, Input)
     /* 1_시간'레벨.경험치  / 2_시간'레벨.경험치 ... */
    endfunction
      
    private function Init takes nothing returns nothing
     local integer i = 0
     local trigger trg
      call CreateSelect()
      call CreateSelectBottom()
      
      call DzFrameShow(Frame_SelectBack[1], false) /* 전체 선택 프레임 without 최상단 나만의 알피지 txt */
      call DzFrameShow(Frame_SelectText[16], false) /* 스킬 설명부분 */
      
      set i = bj_MAX_PLAYERS-1
      set trg = CreateTrigger()
      loop
        call TriggerRegisterPlayerUnitEvent(trg, Player(i), EVENT_PLAYER_UNIT_DESELECTED, null)
        set PreLoad[i+1] = true
        exitwhen i <= 0
        set i = i - 1
      endloop
      call TriggerAddAction(trg, function Deselected)
    
      set i = bj_MAX_PLAYERS-1
      set trg = CreateTrigger()
      loop
        call TriggerRegisterPlayerUnitEvent(trg, Player(i), EVENT_PLAYER_UNIT_SELECTED, null)
        exitwhen i <= 0
        set i = i - 1
      endloop
      call TriggerAddAction(trg, function Selected)
      
      set trg = CreateTrigger()
      call DzTriggerRegisterSyncData(trg, "Select", false)
      call TriggerAddAction(trg, function DataSync2)
      
      set trg = null
    endfunction
  endscope