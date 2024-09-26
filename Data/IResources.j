native JNStringInsert takes string str, integer index, string val returns string
native JNStringContains takes string str, string sub returns boolean
// native EXGetUnitAbilityByIndex takes unit u, integer index returns ability
// native EXSetAbilityDataString takes ability abil, integer level, integer data_type, string id returns boolean
// native EXSetAbilityState takes ability abil, integer state_type, real id returns boolean
native EXGetAbilityDataInteger takes ability abil, integer level, integer data_type returns integer
native EXSetAbilityDataInteger takes ability abil, integer level, integer data_type, integer id returns boolean
native EXSetAbilityDataReal takes ability abil, integer level, integer data_type, real value returns boolean
native EXGetUnitAbility takes unit u, integer abilcode returns ability
scope IResources
  // 옵션 리소스
  struct OptionResource extends IResource
  // super.id => 이 옵션의 id값
    boolean isBooleanType

    static method Create takes integer id, boolean isBoolType returns thistype
      local OptionResource this = IResource.create(OptionResource.typeid)
      set this.id = id
      set this.isBooleanType = isBoolType
      return this
    endmethod
    method Click takes integer input returns nothing
      if ( this.isBooleanType ) then
        if ( this.id == 0 ) then
          set this.id = 1
        else
          set this.id = 0
        endif
      else
        set this.id = this.id + input
      endif
    endmethod
  endstruct
  struct PlayerResource extends IResource
    // super.id => 이 플레이어의 id 값 1~12
    boolean isPlaying
    CharacterResource character
    OptionResource array options[MAX_OPTION_MENU_COUNT]

    private static PlayerResource array privatePlayerResource [MAX_PLAYER_COUNT]

    static method operator [] takes integer input returns thistype
      if ( input <= 0 or MAX_PLAYER_COUNT <= input ) then
        call MsgAll("오류/P.R[" + I2S(input) + "]는 설정 범위(1~"+I2S(MAX_PLAYER_COUNT-1)+")를 벗어납니다.")
        return 0
      elseif ( privatePlayerResource[input] == 0 ) then
        call MsgAll("오류/P.R[" + I2S(input) + "]는 설정되지 않았습니다.")
        return 0
      endif
      return privatePlayerResource[input]
    endmethod

    static method onInit takes nothing returns nothing
      local integer loopA = 1
      loop
        if ( GetPlayerController(Player(loopA-1)) == MAP_CONTROL_USER ) and ( GetPlayerSlotState(Player(loopA-1)) == PLAYER_SLOT_STATE_PLAYING ) then
          set privatePlayerResource[loopA] = IResource.create(PlayerResource.typeid)
          set privatePlayerResource[loopA].id = loopA
          set privatePlayerResource[loopA].isPlaying = true
        endif
        exitwhen MAX_PLAYER_COUNT-1 <= loopA
        set loopA = loopA + 1
      endloop
    endmethod
  endstruct

  struct CharacterResource extends IResource
    unit Unit
    integer playerId
    integer Level
    integer changeLevel
    private integer id
    SlotResource array Skills[MAX_SKILL_SLOT]
    StatResource array Stats[MAX_STAT_COUNT]

    static method Create takes unit u, integer input returns thistype
      local CharacterResource this = IResource.create(CharacterResource.typeid)
      local integer loopA = 1
      set this.id = input
      set this.Unit = u
      set this.playerId = GetPlayerId(GetOwningPlayer(u))+1
      loop
        exitwhen MAX_SKILL_SLOT <= loopA
        set this.Skills[loopA] = SlotResource.Create(this, loopA, loopA*2, 1)
        set loopA = loopA + 1
      endloop
      set loopA = 1
      loop
        set this.Stats[loopA] = StatResource.Create(this, loopA)
        exitwhen MAX_STAT_COUNT <= loopA
        set loopA = loopA + 1
      endloop
      return this
    endmethod
  endstruct

  struct StatResource extends IResource
    // super.id => 이 스텟의이 스텟의 종류 id 값.
    private CharacterResource owner
    private integer baseValue = 0
    private integer addValue = 0
    
    static method Create takes CharacterResource inputCharacter, integer inputSubTypeId returns StatResource
      local StatResource this = IResource.create(thistype.typeid)
      set this.owner = inputCharacter
      set this.id = inputSubTypeId
      return this
    endmethod
  endstruct
  struct SlotResource extends IResource
    // super.id => 이 스킬의 id 값 1~205

    private static string tempString = "" /* 인터페이스에 만들면 하위에 못쓰니 여기서 생성 */

    private CharacterResource owner
    private integer slot = 0
    private integer level = 0
    private integer lastDamage = 0
    private integer lastDistance = 0
    private integer lastRange = 0
    private integer lastDuration = 0
    private integer lastCostMana = 0
    private integer lastCastingTime = 0
    private integer lastCooldownTime = 0


    static method ChangeSlotIcon takes integer slot, boolean isSkill, string TexturePath returns nothing
      //아이콘 텍스처 설정
      if ( isSkill and 0 < slot and slot < MAX_SKILL_SLOT ) then
        call DzFrameSetTexture(Frame_ButtonsBackDrop[slot+7], TexturePath, 0)
      elseif ( not isSkill and 0 < slot and slot <= 7 ) then
        call DzFrameSetTexture(Frame_ButtonsBackDrop[slot], TexturePath, 0)
      elseif ( isSkill ) then
        call MsgAll("오류/슬롯["+I2S(slot)+"]변경/스킬")
      else
        call MsgAll("오류/슬롯["+I2S(slot)+"]변경/아이템")
      endif
    endmethod

    // id = id
    static method ChangeIcon takes integer playerId, integer slot, string iconPath returns nothing
      if ( GetLocalPlayer() == Player(playerId-1) ) then
        call ChangeSlotIcon(slot, true, iconPath)
      endif
    endmethod
    method Initids takes nothing returns nothing
      set tempString = SkillData[this.id].Detail
      if ( JNStringContains(tempString, "#") ) then
        if ( JNStringContains(tempString, "#CastingTime") ) then
          set .lastCastingTime = SkillData[this.id].CastingTime
        else
          set .lastCastingTime = 0
        endif
        // if ( JNStringContains(tempString, "#Damage%") ) then
        //   set .lastDamage = SkillData[this.id].Damage
        // else
        if ( JNStringContains(tempString, "#Damage") ) then
          set .lastDamage = SkillData[this.id].Damage
        else
          set .lastDamage = 0
        endif
        if ( JNStringContains(tempString, "#Distance") ) then
          set .lastDistance = SkillData[this.id].Distance
        else
          set .lastDistance = 0
        endif
        if ( JNStringContains(tempString, "#Range") ) then
          set .lastRange = SkillData[this.id].Range
        else
          set .lastRange = 0
        endif
        if ( JNStringContains(tempString, "#Duration") ) then
          set .lastDuration = SkillData[this.id].Duration
        else
          set .lastDuration = 0
        endif
        if ( JNStringContains(tempString, "#Mana") ) then
          set .lastCostMana = SkillData[this.id].CostMana
        else
          set .lastCostMana = 0
        endif
        if ( JNStringContains(tempString, "#CoolDown") ) then
          set .lastCooldownTime = SkillData[this.id].CoolTime
        else
          set .lastCooldownTime = 0
        endif
      else
        set .lastCastingTime = 0
        set .lastDamage = 0
        set .lastDistance = 0
        set .lastRange = 0
        set .lastDuration = 0
        set .lastCostMana = 0
        set .lastCooldownTime = 0
      endif
    endmethod
    private method Updateids takes nothing returns nothing
      set tempString = SkillData[this.id].ValueChange
      if ( JNStringContains(tempString, "~") ) then
        if ( JNStringContains(tempString, "~CastingTime") ) then
          set .lastCastingTime = SkillData[this.id].CastingTime + ( SkillData[this.id].CastingTimeAdd * (level-1) )
        endif
        if ( JNStringContains(tempString, "~Damage") ) then
          set .lastDamage = SkillData[this.id].Damage + ( SkillData[this.id].DamageAdd * (level-1) )
        endif
        if ( JNStringContains(tempString, "~Distance") ) then
          set .lastDistance = SkillData[this.id].Distance + ( SkillData[this.id].DistanceAdd * (level-1) )
        endif
        if ( JNStringContains(tempString, "~Range") ) then
          set .lastRange = SkillData[this.id].Range + ( SkillData[this.id].RangeAdd * (level-1) )
        endif
        if ( JNStringContains(tempString, "~Duration") ) then
          set .lastDuration = SkillData[this.id].Duration + ( SkillData[this.id].DurationAdd * (level-1) )
        endif
        if ( JNStringContains(tempString, "~Mana") ) then
          set .lastCostMana = SkillData[this.id].CostMana + ( SkillData[this.id].CostManaAdd * (level-1) )
        endif
        if ( JNStringContains(tempString, "~CoolDown") ) then
          set .lastCooldownTime = SkillData[this.id].CoolTime + ( SkillData[this.id].CoolTimeAdd * (level-1) )
        endif
      endif
    endmethod
    method ChangeLevel takes integer newLevel returns nothing
      set this.level = newLevel
      if ( 2 <= level ) then
        call Updateids()
      endif
    endmethod
    private method SetAiblityTagetingUIs takes ability abil, real dataB, real dataC returns nothing
      // 목표물 종류(DATA_B, 109)를 변경 (1레벨)
        // 즉시(0) , 유닛 타겟(1) , 지점 타겟(2) , 유닛 또는 지점(3)
      // call EXSetAbilityState(abil, 109, dataB)
      call EXSetAbilityDataReal(abil, 1, 109, dataC)
      
      // UI보기(DATA_C, 110)를 변경 (1레벨)
        // 안보임(0) , 보임(1) , 타겟팅 이미지(2) , =1+2(3), = 피지컬 스펠(??)(4추정), 유니버설 스펠(면역무시)(8), 유니크 캐스트(여러마리-혼자시전)(16)
      // call EXSetAbilityState(abil, 110, dataB)
      call EXSetAbilityDataReal(abil, 1, 110, dataC)

      // 사거리(107) : 생략, 기본값 500
    endmethod
    private method SetAiblityTagetingUIsWithRange takes ability abil, real dataB, real dataC, real area returns nothing
      call SetAiblityTagetingUIs(abil, dataB, dataC)
      
      // 범위(AREA, 106)를 변경 (1레벨)
      call EXSetAbilityDataReal(abil, 1, 106, area)
    endmethod
    
    private method ChangeTargetingUI takes ability abil, integer input returns nothing
      local boolean isSmartMode = ( PlayerResource[this.owner.id].options[EHotkeyMenu.SubMenuSmartMode].id == 1 )
      if ( input == ESkillTypeUI.UN_CLICKABLE ) then
        // 즉발, 숨김(단축키X)
        call SetAiblityTagetingUIs(abil, 0, 0)
      elseif ( input == ESkillTypeUI.IMMEDIATELY ) then
        // 즉발, 보임(단축키O)
        call SetAiblityTagetingUIs(abil, 0, 1)
      elseif ( input == ESkillTypeUI.SOLO_TARGET ) then
        // 유닛 타겟, 보임+타겟팅
        call SetAiblityTagetingUIs(abil, 1, 3)
      elseif ( input == ESkillTypeUI.LOCATION_WITH_DIRECTION ) then
        // 지점 타겟, 보임+타겟팅
        call SetAiblityTagetingUIs(abil, 2, 3)
      elseif ( input == ESkillTypeUI.LOCATION_WITH_RANGE ) then
        // 범위 타겟, 보임+타겟팅+범위
        call SetAiblityTagetingUIsWithRange(abil, 2, 3, this.lastRange)
      else
        call MsgAll("오류/S.R.CTUI[" + I2S(input) + "]는 설정 범위(1~5)를 벗어납니다.")
        return
      endif
    endmethod
    private method ChangeObjectData takes ability abil returns nothing
      // UI 형태 변경
      call ChangeTargetingUI(abil, SkillData[this.id].TypeUI)
      
      // 캐스팅 시간(CAST, 101)를 변경 (1레벨) - 10ms, 1/100초
      call EXSetAbilityDataReal(abil, 1, 101, this.lastCastingTime*0.01)

      // 쿨다운 시간(COOL, 105)를 변경 (1레벨) - 10ms, 1800이면 18초
      call EXSetAbilityDataReal(abil, 1, 101, this.lastCooldownTime*0.01)

      // 소모마나(COST, 104)를 변경 (1레벨) - 소숫점 생략하니까 나누기 10
      call EXSetAbilityDataInteger(abil, 1, 104, this.lastCostMana/10)

      // 새로고침?
      // call IncUnitAbilityLevel(유닛, '')
      // call DecUnitAbilityLevel(유닛, '')
    endmethod
    method ChangeBaseID takes integer id, integer level returns nothing
      set this.id = id
      set SkillData[this.id].IconPath = "ReplaceableTextures\\CommandButtons\\BTNReplay-Pause.blp"
      call ChangeIcon(this.owner.id, this.slot, SkillData[this.id].IconPath)
      call Initids()
      call ChangeLevel(level)
      call ChangeObjectData(EXGetUnitAbility(this.owner.Unit, SlotData[this.slot].GetSkillCode(( PlayerResource[this.owner.id].options[EHotkeyMenu.SubMenuSmartMode].id == 1 ))))
    endmethod
    static method Create takes CharacterResource inputCharacter, integer slot, integer id, integer level returns thistype
      local SlotResource this = IResource.create(SlotResource.typeid)
      set this.owner = inputCharacter
      set this.slot = slot
      call ChangeBaseID(id, level)

      call MsgAll("생성/S.R.C[" + I2S(this.owner.id) + "][" + I2S(this.slot) + "],id=" + I2S(this.id) + ",lv=" + I2S(this.level))
      return this
    endmethod

    private static method ConvertLevelToRank takes integer level returns string
      if ( level == 0 ) then
        return " [미습득]"
      elseif ( level == 1 ) then
        return " - F Rank"
      elseif ( level == 2 ) then
        return " - D Rank"
      elseif ( level == 3 ) then
        return " - D+ Rank"
      elseif ( level == 4 ) then
        return " - C Rank"
      elseif ( level == 5 ) then
        return " - C+ Rank"
      elseif ( level == 6 ) then
        return " - B Rank"
      elseif ( level == 7 ) then
        return " - B+ Rank"
      elseif ( level == 8 ) then
        return " - A Rank"
      elseif ( level == 9 ) then
        return " - A+ Rank"
      elseif ( level == 10 ) then
        return " - S Rank"
      endif
      return " - Over Rank"
    endmethod
    method GetName takes nothing returns string
      return SkillData[this.id].Name
    endmethod
    method GetNameWithRank takes integer inputLevel returns string
      return SkillData[this.id].Name + ConvertLevelToRank(inputLevel)
    endmethod

    // static 가공 왼쪽으로 몇자리, 소숫점 표시, 추가 문자열
    private static method ProcessI2S takes integer input, boolean isRoundUp, integer cutLength, boolean hasDot returns string
      if ( isRoundUp ) then
        set input = input + 5
      endif
      set cutLength = StringLength(I2S(input)) - cutLength
      if ( hasDot ) then
        return JNStringInsert(SubString(I2S(input),0,cutLength), cutLength-1, ".")
      else
        return SubString(I2S(input),0,cutLength)
      endif
    endmethod

    method GetDescription takes boolean displayAsPercentage returns string
      set tempString = SkillData[this.id].Detail
        // => "#Distance거리를 찌르며 돌진하며 #Damage% 데미지를 가합니다."

      if ( JNStringContains(tempString, "#Damage%") ) and ( not displayAsPercentage ) then
        set tempString = JNStringReplace(tempString, "#Damage%", ProcessI2S(this.lastDamage*this.owner.Stats[EStatType.AttackPower], true, 2, false))
          // => 300거리를 찌르며, 1273 데미지를 가합니다.
      endif

      set tempString = JNStringReplace(tempString, "#CastingTime", ProcessI2S(this.lastCastingTime, true, 2, true)+"초")
      set tempString = JNStringReplace(tempString, "#Damage", I2S(this.lastDamage))
        // => 300거리를 찌르며, 100% 데미지를 가합니다. (기본)
      set tempString = JNStringReplace(tempString, "#Distance", I2S(this.lastDistance))
      set tempString = JNStringReplace(tempString, "#Range", I2S(this.lastRange))
      set tempString = JNStringReplace(tempString, "#Duration", ProcessI2S(this.lastDuration, true, 2, true)+"초")
      set tempString = JNStringReplace(tempString, "#Mana", ProcessI2S(this.lastCostMana, true, 1, false))
      set tempString = JNStringReplace(tempString, "#CoolDown", ProcessI2S(this.lastCooldownTime, true, 2, true)+"초")
      return tempString
    endmethod
    static method GetInfoRequire takes integer playerId, integer skillId, integer currentLevel returns string
      if ( currentLevel == 0 ) then
        if ( PlayerResource[playerId].character.changeLevel < SkillData[skillId].RequireLevel ) then
          return "변신레벨 " + I2S(SkillData[skillId].RequireLevel) + " 이상 필요"
        else
          return "습득이 가능합니다"
        endif
      else
        set tempString = SkillData[skillId].ValueUse
        if ( JNStringContains(tempString, "#Mana") ) then
          if ( JNStringContains(tempString, "#CoolDown") ) then
            return "마나소모 " + ProcessI2S(SkillData[skillId].CostMana, true, 1, false) +", 쿨다운 " + ProcessI2S(SkillData[skillId].CoolTime, true, 1, true) + "초"
          else
            return "마나소모 " + ProcessI2S(SkillData[skillId].CostMana, true, 1, false)
          endif
        elseif ( JNStringContains(tempString, "#CoolDown") ) then
          return "쿨다운 " + ProcessI2S(SkillData[skillId].CoolTime, true, 1, true) + "초"
        else
          return "오류/GIR/" +I2S(playerId) + "/" + I2S(skillId) + "/" + I2S(currentLevel) + "/" + tempString
        endif
      endif
    endmethod
    static method AddCommaIfFilled takes string head returns string
      if ( head == "" ) then
        return " : "
      else
        return head + ", "
      endif
    endmethod
    static method AddZeroIfShort takes integer inputLength, boolean isNegative returns string
      if ( isNegative ) then
        set inputLength = inputLength - 1
      endif
      if ( inputLength <= 2 ) then
        return "0."
      else
        return "."
      endif
    endmethod
    static method AddSignalIfPositive takes boolean isPositive returns string
      if ( isPositive ) then
        return "+"
      else
        return ""
      endif
    endmethod
    private static method AddSignal takes integer input, integer cutLength, boolean hasDot returns string
      set cutLength = StringLength(I2S(input)) - cutLength
      if ( hasDot ) then
        return AddSignalIfPositive(0 <= input) + JNStringInsert(SubString(I2S(input),0,cutLength), cutLength-1, AddZeroIfShort(cutLength, input < 0))
      else
        return AddSignalIfPositive(0 <= input) + SubString(I2S(input),0,cutLength)
      endif
    endmethod
    private static method ConvertLevelToPoint takes integer skillLevel returns integer
      if ( skillLevel <= 1 ) then
        return 0
      elseif ( skillLevel <= 6 ) then
        return 1
      elseif ( skillLevel <= 9 ) then
        return 2
      elseif ( skillLevel == 10 ) then
        return 3
      endif
      return 999
    endmethod
    static method GetInfoNextLevel takes integer skillId, integer currentLevel returns string
      local string getString = SkillData[skillId].ValueChange
      set tempString = ""
      if ( 1 <= currentLevel and currentLevel <= 10 ) then
        if ( JNStringContains(getString, "~") ) then
          if ( JNStringContains(getString, "~CastingTime") ) then
            set tempString = AddCommaIfFilled(tempString) + "시전시간 " + AddSignal(SkillData[skillId].CastingTimeAdd, 1, true) + "초"
          endif
          if ( JNStringContains(getString, "~Damage") ) then
            set tempString = AddCommaIfFilled(tempString) + "데미지 " + AddSignal(SkillData[skillId].DamageAdd, 0, false)
            if ( JNStringContains(SkillData[skillId].Detail, "#Damage%") ) then
              set tempString = tempString + "%"
            endif
          endif
          if ( JNStringContains(getString, "~Distance") ) then
            set tempString = AddCommaIfFilled(tempString) + "거리 " + AddSignal(SkillData[skillId].DistanceAdd, 0, false)
          endif
          if ( JNStringContains(getString, "~Range") ) then
            set tempString = AddCommaIfFilled(tempString) + "범위 " + AddSignal(SkillData[skillId].RangeAdd, 0, false)
          endif
          if ( JNStringContains(getString, "~Duration") ) then
            set tempString = AddCommaIfFilled(tempString) + "지속시간 " + AddSignal(SkillData[skillId].DurationAdd, 1, true) + "초"
          endif
          if ( JNStringContains(getString, "~Mana") ) then
            set tempString = AddCommaIfFilled(tempString) + "마나소모 " + AddSignal(SkillData[skillId].CostManaAdd, 0, true)
          endif
          if ( JNStringContains(getString, "~CoolDown") ) then
            set tempString = AddCommaIfFilled(tempString) + "쿨다운 " + AddSignal(SkillData[skillId].CoolTimeAdd, 1, true) + "초"
          endif
        endif
        set tempString = "다음레벨(" + I2S(ConvertLevelToPoint(currentLevel+1)) + "P)" + tempString
      endif
      return tempString
    endmethod
  endstruct
  
  // 인터페이스 이하에 참조가 되지 않아 아래에 설정.
  interface IResource
    
    // 주석 처리를 위해 새로운 구조체 생성.
    static if false then
      
        // 자식이 사용하는 값을 지정()
        integer id
        
          PlayerResource        => 이 플레이어의  id. GetPlayerId(id)+1     [MAX_PLAYER_COUNT]    {static}
          ㄴ OptionResource     => 이 옵션 종류   id. EHotkeyMenu.id        [MAX_OPTION_MENU_COUNT]
          ㄴ CharacterResource  => 이 캐릭터의    id. ECharacter.id.        [MAX_CHARACTER_COUNT]
            ㄴ StatResource      => 이 스텟의 종류 id. EStatType.id.         [MAX_STAT_COUNT]
            ㄴ SlotResource      => 이 스킬의 스킬 id. SkillData[id]로 사용  [MAX_SKILL_COUNT]

    endif
    
    integer id
    static method create takes nothing
  endinterface
endscope