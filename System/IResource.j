native JNStringInsert takes string str, integer index, string val returns string
native JNStringContains takes string str, string sub returns boolean
native EXGetUnitAbilityByIndex takes unit u, integer index returns ability
native EXSetAbilityDataString takes ability abil, integer level, integer data_type, string value returns boolean

globals
  constant integer ABILITY_DATA_ART               = 204 //아이콘 경로 string     ('aart')    // +
endglobals
interface IResource
  // EMainType mainTypeId /* => this.getType() == (method).typeid */
  integer value
  
  // static method create takes nothing /* 굳이 없어도 되는듯. 있어도 오류 검사 안함 */
  // method GetValue takes nothing returns integer
  // method SetValue takes integer newValue returns nothing
  // method AddValue takes integer addValue returns nothing
endinterface
struct StatResource extends IResource
  // super.value => 이 스텟의 실제 값.
  private CharacterResource owner
  private integer subTypeId = 0
  private integer addValue = 0
  static method Create takes CharacterResource inputCharacter, integer inputSubTypeId returns StatResource
    local StatResource this = IResource.create(StatResource.typeid)
    set this.owner = inputCharacter
    set this.subTypeId = inputSubTypeId
    return this
  endmethod
endstruct
struct CharacterResource extends IResource
  // super.value => 이 캐릭터의 Player id 1~32
  unit Unit
  integer Level
  integer changeLevel
  SkillResource array Skills[MAX_SKILL_SLOT]
  StatResource array Stats[MAX_STAT_COUNT]

  static method Create takes unit u returns thistype
    local CharacterResource this = IResource.create(CharacterResource.typeid)
    local integer loopA = 1
    set this.Unit = u
    set this.value = GetPlayerId(GetOwningPlayer(u))+1
    loop
      call BJDebugMsg("999")
      set this.Skills[loopA] = SkillResource.Create(this, loopA, 0, 0)
      exitwhen MAX_SKILL_SLOT <= loopA
      set loopA = loopA + 1
    endloop
    set loopA = 1
    loop
      call BJDebugMsg("999-2")
      set this.Stats[loopA] = StatResource.Create(this, loopA)
      exitwhen MAX_STAT_COUNT <= loopA
      set loopA = loopA + 1
    endloop
    return this
  endmethod
endstruct
struct SkillResource extends IResource
  // super.value => 이 스킬의 id 값 1~205

  private static string tempString = "" /* 인터페이스에 만들면 하위에 못쓰니 여기서 생성 */

  // int id => this.value

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

  // id = value
  method ChangeIcon takes integer playerId, integer slot, string iconPath returns nothing
    call EXSetAbilityDataString(EXGetUnitAbilityByIndex(PlayerData[playerId].character.Unit, slot), 1, ABILITY_DATA_ART, iconPath)
  endmethod
  method InitValues takes nothing returns nothing
    set tempString = SkillData[this.value].Detail
    if ( JNStringContains(tempString, "#") ) then
      if ( JNStringContains(tempString, "#CastingTime") ) then
        set .lastCastingTime = SkillData[this.value].CastingTime
      else
        set .lastCastingTime = 0
      endif
      if ( JNStringContains(tempString, "#Damage%") ) then
        set .lastDamage = SkillData[this.value].Damage
      elseif ( JNStringContains(tempString, "#Damage") ) then
        set .lastDamage = SkillData[this.value].Damage
      else
        set .lastDamage = 0
      endif
      if ( JNStringContains(tempString, "#Distance") ) then
        set .lastDistance = SkillData[this.value].Distance
      else
        set .lastDistance = 0
      endif
      if ( JNStringContains(tempString, "#Range") ) then
        set .lastRange = SkillData[this.value].Range
      else
        set .lastRange = 0
      endif
      if ( JNStringContains(tempString, "#Duration") ) then
        set .lastDuration = SkillData[this.value].Duration
      else
        set .lastDuration = 0
      endif
      if ( JNStringContains(tempString, "#Mana") ) then
        set .lastCostMana = SkillData[this.value].CostMana
      else
        set .lastCostMana = 0
      endif
      if ( JNStringContains(tempString, "#CoolDown") ) then
        set .lastCooldownTime = SkillData[this.value].CoolTime
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
  method ChangeBaseID takes integer id returns nothing
    set this.value = id
    call ChangeIcon(this.owner.value, this.slot, SkillData[this.value].IconPath)
    call InitValues()
  endmethod
  private method UpdateValues takes nothing returns nothing
    set tempString = SkillData[this.value].ValueChange
    if ( JNStringContains(tempString, "~") ) then
      if ( JNStringContains(tempString, "~CastingTime") ) then
        set .lastCastingTime = SkillData[this.value].CastingTime + ( SkillData[this.value].CastingTimeAdd * (level-1) )
      endif
      if ( JNStringContains(tempString, "~Damage") ) then
        set .lastDamage = SkillData[this.value].Damage + ( SkillData[this.value].DamageAdd * (level-1) )
      endif
      if ( JNStringContains(tempString, "~Distance") ) then
        set .lastDistance = SkillData[this.value].Distance + ( SkillData[this.value].DistanceAdd * (level-1) )
      endif
      if ( JNStringContains(tempString, "~Range") ) then
        set .lastRange = SkillData[this.value].Range + ( SkillData[this.value].RangeAdd * (level-1) )
      endif
      if ( JNStringContains(tempString, "~Duration") ) then
        set .lastDuration = SkillData[this.value].Duration + ( SkillData[this.value].DurationAdd * (level-1) )
      endif
      if ( JNStringContains(tempString, "~Mana") ) then
        set .lastCostMana = SkillData[this.value].CostMana + ( SkillData[this.value].CostManaAdd * (level-1) )
      endif
      if ( JNStringContains(tempString, "~CoolDown") ) then
        set .lastCooldownTime = SkillData[this.value].CoolTime + ( SkillData[this.value].CoolTimeAdd * (level-1) )
      endif
    endif
  endmethod
  method ChangeLevel takes integer newLevel returns nothing
    set this.level = newLevel
    call UpdateValues()
  endmethod
  static method Create takes CharacterResource inputCharacter, integer slot, integer id, integer level returns SkillResource
    local SkillResource this = IResource.create(SkillResource.typeid)
    set this.owner = inputCharacter
    set this.slot = slot
    call ChangeBaseID(id)
    if ( 2 <= level ) then
      call ChangeLevel(level)
    endif
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
    return SkillData[this.value].Name
  endmethod
  method GetNameWithRank takes integer inputLevel returns string
    return SkillData[this.value].Name + ConvertLevelToRank(inputLevel)
  endmethod

  // static 가공 왼쪽으로 몇자리, 소숫점 표시, 추가 문자열
  private static method ProcessI2S takes integer input, boolean isRoundUp, integer cutLength, integer insertDotPos returns string
    if ( isRoundUp ) then
      set input = input + 5
    endif
    set cutLength = StringLength(I2S(input)) - cutLength
    if ( insertDotPos <= 0 ) then
      return SubString(I2S(input),0,cutLength)
    else
      return JNStringInsert(SubString(I2S(input),0,cutLength), cutLength-insertDotPos, ".")
    endif
  endmethod

  method GetDescription takes boolean displayAsPercentage returns string
    set tempString = SkillData[this.value].Detail
      // => "#Distance거리를 찌르며 돌진하며 #Damage% 데미지를 가합니다."

    if ( JNStringContains(tempString, "#Damage%") ) and ( not displayAsPercentage ) then
      set tempString = JNStringReplace(tempString, "#Damage%", ProcessI2S(this.lastDamage*this.owner.Stats[EStatType.AttackPower], true, 2, 0))
        // => 300거리를 찌르며, 1273 데미지를 가합니다.
    endif

    set tempString = JNStringReplace(tempString, "#CastingTime", ProcessI2S(this.lastCastingTime, true, 2, 1)+"초")
    set tempString = JNStringReplace(tempString, "#Damage", I2S(this.lastDamage))
      // => 300거리를 찌르며, 100% 데미지를 가합니다. (기본)
    set tempString = JNStringReplace(tempString, "#Distance", I2S(this.lastDistance))
    set tempString = JNStringReplace(tempString, "#Range", I2S(this.lastRange))
    set tempString = JNStringReplace(tempString, "#Duration", ProcessI2S(this.lastDuration, true, 2, 1) + "초")
    set tempString = JNStringReplace(tempString, "#Mana", ProcessI2S(this.lastCostMana, true, 1, 0))
    set tempString = JNStringReplace(tempString, "#CoolDown", ProcessI2S(this.lastCooldownTime, true, 2, 1)+"초")
    return tempString
  endmethod
  static method GetInfoRequire takes integer playerId, integer skillId, integer currentLevel returns string
    if ( currentLevel == 0 ) then
      if ( PlayerData[playerId].character.changeLevel < SkillData[skillId].RequireLevel ) then
        return "변신레벨 " + I2S(SkillData[skillId].RequireLevel) + " 이상 필요"
      else
        return "습득이 가능합니다"
      endif
    else
      set tempString = SkillData[skillId].ValueUse
      if ( JNStringContains(tempString, "#Mana") ) then
        if ( JNStringContains(tempString, "#CoolDown") ) then
          return "마나소모 " + ProcessI2S(SkillData[skillId].CostMana, true, 1, 0) +", 쿨다운 " + ProcessI2S(SkillData[skillId].CoolTime, true, 1, 1) + "초"
        else
          return "마나소모 " + ProcessI2S(SkillData[skillId].CostMana, true, 1, 0)
        endif
      elseif ( JNStringContains(tempString, "#CoolDown") ) then
        return "쿨다운 " + ProcessI2S(SkillData[skillId].CoolTime, true, 1, 1) + "초"
      else
        return "오류/GIR/" +I2S(playerId) + "/" + I2S(skillId) + "/" + I2S(currentLevel) + "/" + tempString
      endif
    endif
  endmethod
  method GetInfoNextLevel takes nothing returns string
    .
    다음레벨(1P) : 마나소모 +2, 쿨다운 -1초
    최대 레벨입니다.
    .ValueChange =>


    IF(ISBLANK(INDEX($L286:$Y286,MATCH($O$6,$L$6:$Y$6,0))),"","~CastingTime"),
IF(ISBLANK(INDEX($L286:$Y286,MATCH($U$6,$L$6:$Y$6,0))),"","~Damage"),
IF(ISBLANK(INDEX($L286:$Y286,MATCH($M$6,$L$6:$Y$6,0))),"","~Distance"),
IF(ISBLANK(INDEX($L286:$Y286,MATCH($W$6,$L$6:$Y$6,0))),"","~Range"),
IF(ISBLANK(INDEX($L286:$Y286,MATCH($Q$6,$L$6:$Y$6,0))),"","~Duration"),
IF(ISBLANK(INDEX($L286:$Y286,MATCH($Y$6,$L$6:$Y$6,0))),"","~Mana"),
IF(ISBLANK(INDEX($L286:$Y286,MATCH($S$6,$L$6:$Y$6,0))),"","~CoolDown")))

    if ( currentLevel == 0 ) then
      if ( PlayerData[playerId].character.changeLevel < SkillData[skillId].RequireLevel ) then
        return "변신레벨 " + I2S(SkillData[skillId].RequireLevel) + " 이상 필요"
      else
        return "습득이 가능합니다"
      endif
    else
      set tempString = SkillData[skillId].ValueUse
      if ( JNStringContains(tempString, "#Mana") ) then
        if ( JNStringContains(tempString, "#CoolDown") ) then
          return "마나소모 " + ProcessI2S(SkillData[skillId].CostMana, true, 1, 0) +", 쿨다운 " + ProcessI2S(SkillData[skillId].CoolTime, true, 1, 1) + "초"
        else
          return "마나소모 " + ProcessI2S(SkillData[skillId].CostMana, true, 1, 0)
        endif
      elseif ( JNStringContains(tempString, "#CoolDown") ) then
        return "쿨다운 " + ProcessI2S(SkillData[skillId].CoolTime, true, 1, 1) + "초"
      else
        return "오류/GIR/" +I2S(playerId) + "/" + I2S(skillId) + "/" + I2S(currentLevel) + "/" + tempString
      endif
    endif
  endmethod
endstruct
scope tempValue initializer Init

  private function DelayedInit takes nothing returns nothing
    call BJDebugMsg("1.1")
    set bj_lastCreatedUnit = CreateUnit(Player(0), 'hfoo', 0, 0, 0)
    call BJDebugMsg("1.2")
    set PlayerData[1].character = CharacterResource.Create(bj_lastCreatedUnit) /* 9-1B 오류 18개 */
    call BJDebugMsg("1.3")
    set PlayerData[1].character.Skills[1] = SkillResource.Create(PlayerData[1].character, 1, 9, 1)
    call BJDebugMsg("1.4")

    call BJDebugMsg(PlayerData[1].character.Skills[1].GetNameWithRank(7) + "\n and " + SkillResource.GetInfoRequire(1, 9, 2))
  endfunction
  private function Init takes nothing returns nothing
    call TimerStart(CreateTimer(), 0.5, false, function DelayedInit)
  endfunction
endscope