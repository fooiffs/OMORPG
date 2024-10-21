scope IResources
  // 옵션 리소스
  struct OptionResource extends IResource
  // super.id => 이 옵션의 id값
    boolean isBooleanType

    static method Create takes integer id, boolean isBoolType returns thistype
      local thistype this = IResource.create(thistype.typeid)
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
    static integer ALL_PLAYING_COUNT = 0
    // super.id => 이 플레이어의 id 값 1~12
    boolean isPlaying
    CharacterResource character
    OptionResource array options[MAX_OPTION_MENU_COUNT]

    private static PlayerResource array privatePlayerResource [MAX_PLAYER_COUNT]

    static method operator [] takes integer input returns thistype
      if ( input <= 0 or MAX_PLAYER_COUNT <= input ) then
        // call MsgAll("오류/P.R[" + I2S(input) + "]는 설정 범위(1~"+I2S(MAX_PLAYER_COUNT-1)+")를 벗어납니다.")
        return 0
      elseif ( privatePlayerResource[input] == 0 ) then
        if ( GetPlayerController(Player(input-1)) == MAP_CONTROL_USER ) and ( GetPlayerSlotState(Player(input-1)) == PLAYER_SLOT_STATE_PLAYING ) then
          set privatePlayerResource[input] = Create(input)
        else
          call MsgAll("오류/P.R[" + I2S(input) + "]는 설정되지 않았습니다.")
          return 0
        endif
      endif
      return privatePlayerResource[input]
    endmethod
    static method Create takes integer playerId returns thistype
      local thistype this = IResource.create(thistype.typeid)
      set this.id = playerId
      set this.isPlaying = true
      return this
    endmethod

    static method onInit takes nothing returns nothing
      local integer loopA = 1
      local integer loopB = 1
      loop
        if ( GetPlayerController(Player(loopA-1)) == MAP_CONTROL_USER ) and ( GetPlayerSlotState(Player(loopA-1)) == PLAYER_SLOT_STATE_PLAYING ) then
          set ALL_PLAYING_COUNT = ALL_PLAYING_COUNT + 1
          call MsgAll("Checker1 - " + I2S(ALL_PLAYING_COUNT))
          set privatePlayerResource[loopA] = PlayerResource.Create(loopA)
          set loopB = 1
          loop
            // call MsgAll("Checker1/"+I2S(loopA))
            set privatePlayerResource[loopA].options[loopB] = OptionResource.Create(HotkeyData[loopB].BaseValue, HotkeyData[loopB].IsBoolType)
            // call MsgAll("Checker2/"+I2S(loopA))
            set loopB = loopB + 1
            exitwhen MAX_OPTION_MENU_COUNT <= loopB 
          endloop
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
    StatResource  array Stats [MAX_STAT_COUNT]
    SlotResource  array Slots [MAX_SLOT_COUNT]
    SkillResource array Skills[MAX_SKILL_COUNT]

    static method Create takes unit u, integer input returns thistype
      local CharacterResource this = IResource.create(CharacterResource.typeid)
      local integer loopA = 1
      set this.id = input
      set this.Unit = u
      set this.playerId = GetPlayerId(GetOwningPlayer(u))+1
      loop
        exitwhen MAX_SLOT_COUNT <= loopA
        call SkillResource.Input(this, loopA, loopA*2)
        set this.Slots[loopA] = SlotResource.Input(loopA, Skills[loopA])
        set loopA = loopA + 1
      endloop
      // set loopA = 1
      // loop
      //   set this.Stats[loopA] = StatResource.Create(this, loopA)
      //   exitwhen MAX_STAT_COUNT <= loopA
      //   set loopA = loopA + 1
      // endloop
      return this
    endmethod
    method LevelUp takes integer input returns nothing
      if ( Unit == null ) then
        call Msg(Player(playerId-1), "오류/렙업/유닛 없음")
        return
      endif
      set Level = Level+input
      call SetHeroLevel(Unit, Level, true)
    endmethod

    method Remove takes nothing returns nothing
      if ( Unit != null ) then
        call RemoveUnit(Unit)
        set udg_hero[playerId] = null
        call this.deallocate()
      endif
    endmethod

    public method TryDestroySlot takes integer inputSlot returns nothing
      if ( 0 < inputSlot and Slots[inputSlot] != 0 ) then
        call Slots[inputSlot].destroy()
      endif
    endmethod

  endstruct

  struct StatResource extends IResource
    // super.id => 이 스텟의이 스텟의 종류 id 값.
    private CharacterResource owner
    private integer baseValue = 0
    private integer addValue = 0
    
    static method Create takes CharacterResource inputCharacter, integer inputSubTypeId returns thistype
      local thistype this = IResource.create(thistype.typeid)
      set this.owner = inputCharacter
      set this.id = inputSubTypeId
      return this
    endmethod
  endstruct
  struct SlotResource extends IResource
    // super.id => 이 슬롯의 id

    // 이 슬롯에 연결된 스킬
    private SkillResource skill
    
    static method Input takes integer inputSlot, SkillResource inputSkill returns thistype
      local thistype this = IResource.create(thistype.typeid)
      if ( 0 < inputSlot ) and ( 0 < inputSkill ) then
        set this.id = inputSlot
        set this.skill = inputSkill

        call ChangeSkillIcon(inputSkill.GetPlayerId(), inputSkill.id, inputSlot)
        call ChangeObjectData(EXGetUnitAbility(inputSkill.GetUnit(), SlotData[inputSlot].GetSkillCode(PlayerResource[inputSkill.GetPlayerId()].options[EHotkeyMenu.SubMenuSmartMode].id == 1 )))

        call inputSkill.TryDestroySlot(inputSlot)
      else
        call MsgAll("오류/Slots["+I2S(inputSlot)+"].Input("+I2S(inputSkill)+")")
        return 0
      endif
      return this
    endmethod
      private static method ChangeSkillIcon takes integer playerId, integer characterId, integer slot returns nothing
        if ( 0 < slot and GetLocalPlayer() == Player(playerId-1) ) then
          call DzFrameSetTexture(Quickmenu_Backdrops[slot+7], IfEmpty(TreeMainCoreData[characterId].iconPath[slot], "ReplaceableTextures\\CommandButtons\\BTNReplay-Pause.blp"), 0)
          // 아래는 아이템 칸 변경
          // call DzFrameSetTexture(Quickmenu_Backdrops[slot], TexturePath, 0)
        endif
      endmethod
      private method ChangeObjectData takes ability abil returns nothing
        // UI 형태 변경
        call ChangeTargetingUI(abil, SkillData[skill.id].TypeUI)
        
        // 캐스팅 시간(CAST, 101)를 변경 (1레벨) - 10ms, 1/100초
        call EXSetAbilityDataReal(abil, 1, 101, skill.GetLastCastingTime()*0.01)

        // 쿨다운 시간(COOL, 105)를 변경 (1레벨) - 10ms, 1800이면 18초
        call EXSetAbilityDataReal(abil, 1, 101, skill.GetLastCoolDownTime()*0.01)

        // 소모마나(COST, 104)를 변경 (1레벨) - 소숫점 생략하니까 나누기 10
        call EXSetAbilityDataInteger(abil, 1, 104, skill.GetLastCostMana()/10)

        // 툴팁 변경(UBERTIP, 218)를 변경 (1레벨) - 현재 값을 기준으로.
        call EXSetAbilityDataString(abil, 1, 218, skill.GetCurrentTooltips(true))

        // 새로고침
        call IncUnitAbilityLevel(skill.GetUnit(), SlotData[this.id].GetSkillCode(( PlayerResource[skill.GetPlayerId()].options[EHotkeyMenu.SubMenuSmartMode].id == 1 )))
        call DecUnitAbilityLevel(skill.GetUnit(), SlotData[this.id].GetSkillCode(( PlayerResource[skill.GetPlayerId()].options[EHotkeyMenu.SubMenuSmartMode].id == 1 )))
      endmethod
        private method ChangeTargetingUI takes ability abil, integer input returns nothing
          local boolean isSmartMode = ( PlayerResource[skill.GetPlayerId()].options[EHotkeyMenu.SubMenuSmartMode].id == 1 )
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
            call SetAiblityTagetingUIsWithRange(abil, 2, 3, skill.GetLastRange())
          else
            call MsgAll("오류/S.R.CTUI[" + I2S(input) + "]는 설정 범위(1~5)를 벗어납니다.")
            return
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
  endstruct
  struct SkillResource extends IResource
    // super.id => 이 스킬의 id 값 1~205

    private CharacterResource owner
    private integer level = 0

    private integer lastDamage = 0
    private integer lastDistance = 0
    private integer lastRange = 0
    private integer lastDuration = 0
    private integer lastCostMana = 0
    private integer lastCastingTime = 0
    private integer lastCooldownTime = 0
    
    public static method Input takes CharacterResource inputCharacter, integer inputId, integer inputLevel returns nothing
      local thistype this = IResource.create(thistype.typeid)
      set this.id = inputId
      set this.level = inputLevel

      call this.InitVariables(inputLevel)
      // call ChangeLevel(inputLevel)

      if ( inputCharacter.Skills[inputId] != 0 ) then
        call inputCharacter.Skills[inputId].destroy()
      endif
      set inputCharacter.Skills[inputId] = this

      // call MsgAll("생성/S.R.C[" + I2S(this.owner.playerId) + "][" + I2S(this.slot) + "],id=" + I2S(this.id) + ",lv=" + I2S(this.level))
    endmethod
      private method InitVariables takes integer inputLevel returns nothing
        local boolean isChangable = ( 2 <= inputLevel )
        local string detail       = SkillData[this.id].Detail
        local string detailChange = null
        if ( JNStringContains(detail, "#") ) then
          if ( isChangable ) then
            set detailChange = SkillData[this.id].ValueChange
          endif
          if ( JNStringContains(detail, "#CastingTime") ) then
            if ( isChangable ) and ( JNStringContains(detailChange, "~CastingTime") ) then
              set .lastCastingTime = SkillData[this.id].CastingTime + ( SkillData[this.id].CastingTimeAdd * (inputLevel-1) )
            else
              set .lastCastingTime = SkillData[this.id].CastingTime
            endif
          else
            set .lastCastingTime = 0
          endif
          if ( JNStringContains(detail, "#Damage") ) then
            if ( isChangable ) and ( JNStringContains(detailChange, "~Damage") ) then
              set .lastDamage = SkillData[this.id].Damage + ( SkillData[this.id].DamageAdd * (inputLevel-1) )
            else
              set .lastDamage = SkillData[this.id].Damage
            endif
          else
            set .lastDamage = 0
          endif
          if ( JNStringContains(detail, "#Distance") ) then
            if ( isChangable ) and ( JNStringContains(detailChange, "~Distance") ) then
              set .lastDistance = SkillData[this.id].Distance + ( SkillData[this.id].DistanceAdd * (inputLevel-1) )
            else
              set .lastDistance = SkillData[this.id].Distance
            endif
          else
            set .lastDistance = 0
          endif
          if ( JNStringContains(detail, "#Range") ) then
            if ( isChangable ) and ( JNStringContains(detailChange, "~Range") ) then
              set .lastRange = SkillData[this.id].Range + ( SkillData[this.id].RangeAdd * (inputLevel-1) )
            else
              set .lastRange = SkillData[this.id].Range
            endif
          else
            set .lastRange = 0
          endif
          if ( JNStringContains(detail, "#Duration") ) then
            if ( isChangable ) and ( JNStringContains(detailChange, "~Range") ) then
              set .lastDuration = SkillData[this.id].Duration + ( SkillData[this.id].DurationAdd * (inputLevel-1) )
            else
              set .lastDuration = SkillData[this.id].Duration
            endif
          else
            set .lastDuration = 0
          endif
          if ( JNStringContains(detail, "#Mana") ) then
            if ( isChangable ) and ( JNStringContains(detailChange, "~Mana") ) then
              set .lastCostMana = SkillData[this.id].CostMana + ( SkillData[this.id].CostManaAdd * (inputLevel-1) )
            else
              set .lastCostMana = SkillData[this.id].CostMana
            endif
          else
            set .lastCostMana = 0
          endif
          if ( JNStringContains(detail, "#CoolDown") ) then
            if ( isChangable ) and ( JNStringContains(detailChange, "~CoolDown") ) then
              set .lastCooldownTime = SkillData[this.id].CoolTime + ( SkillData[this.id].CoolTimeAdd * (inputLevel-1) )
            else
              set .lastCooldownTime = SkillData[this.id].CoolTime
            endif
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
        set detail = null
        set detailChange = null
      endmethod

    public method GetLevel takes nothing returns integer
      return .level
    endmethod
    public method GetPlayerId takes nothing returns integer
      return .owner.playerId
    endmethod
    public method GetUnit takes nothing returns unit
      return .owner.Unit
    endmethod
    public method TryDestroySlot takes integer inputSlot returns nothing
      call .owner.TryDestroySlot(inputSlot)
    endmethod
    public method GetLastDamage takes nothing returns integer
      return lastDamage
    endmethod
    public method GetLastDistance takes nothing returns integer
      return lastDistance
    endmethod
    public method GetLastRange takes nothing returns integer
      return lastRange
    endmethod
    public method GetLastDuration takes nothing returns integer
      return lastDuration
    endmethod
    public method GetLastCostMana takes nothing returns integer
      return lastCostMana
    endmethod
    public method GetLastCastingTime takes nothing returns integer
      return lastCastingTime
    endmethod
    public method GetLastCoolDownTime takes nothing returns integer
      return lastCooldownTime
    endmethod

    // 툴팁 변경
    public method GetCurrentTooltips takes boolean displayAsPercentage returns string
      local string tempString = SkillData[this.id].Detail
        // => "#Distance거리를 찌르며 돌진하며 #Damage% 데미지를 가합니다."

      if ( not displayAsPercentage ) and ( JNStringContains(tempString, "#Damage%") ) then
        set tempString = JNStringReplace(tempString, "#Damage%", ESkillTree.ProcessI2S(this.lastDamage*this.owner.Stats[EStatType.AttackPower], true, 2, false))
          // => 300거리를 찌르며, 1273 데미지를 가합니다.
      endif

      set tempString = JNStringReplace(tempString, "#CastingTime", ESkillTree.ProcessI2S(this.lastCastingTime, true, 2, true)+"초")
      set tempString = JNStringReplace(tempString, "#Damage", I2S(this.lastDamage))
        // => 300거리를 찌르며, 100% 데미지를 가합니다. (기본)
      set tempString = JNStringReplace(tempString, "#Distance", I2S(this.lastDistance))
      set tempString = JNStringReplace(tempString, "#Range", I2S(this.lastRange))
      set tempString = JNStringReplace(tempString, "#Duration", ESkillTree.ProcessI2S(this.lastDuration, true, 2, true)+"초")
      set tempString = JNStringReplace(tempString, "#Mana", ESkillTree.ProcessI2S(this.lastCostMana, true, 1, false))
      set tempString = JNStringReplace(tempString, "#CoolDown", ESkillTree.ProcessI2S(this.lastCooldownTime, true, 2, true)+"초")
      return tempString
    endmethod
  endstruct
  
  // 인터페이스 이하 Line들이 참조가 되지 않아 아래에 설정.
  interface IResource
    
    // 주석 처리를 위해 새로운 구조체 생성.
    static if false then
      
        // 자식이 사용하는 값을 지정()
        integer id
        
          PlayerResource        => 이 플레이어의  id. GetPlayerId(id)+1     [MAX_PLAYER_COUNT]    {static}
          ㄴ OptionResource     => 이 옵션 종류   id. EHotkeyMenu.id        [MAX_OPTION_MENU_COUNT]
          ㄴ CharacterResource  => 이 캐릭터의    id. ECharacter.id.        [MAX_CHARACTER_COUNT]
            ㄴ StatResource      => 이 스텟의 종류 id. EStatType.id.         [MAX_STAT_COUNT]
            ㄴ SlotResource      => 이 슬롯의 번호 id. SlotData[id]로 사용    [MAX_SLOT_COUNT]
            ㄴ SkillResource      => 이 스킬의 스킬 id. SkillData[id]로 사용  [MAX_SKILL_COUNT]
    endif
    
    integer id
    static method create takes nothing
  endinterface
endscope