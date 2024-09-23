native JNStringInsert takes string str, integer index, string val returns string
native JNStringContains takes string str, string sub returns boolean

interface IResource
  EMainType mainTypeId
  integer value

  method GetValue takes nothing returns integer
  method SetValue takes integer newValue returns nothing
  method AddValue takes integer addValue returns nothing
endinterface

struct SkillResource extends IResource
  public integer number
  public integer level
  private string lastDetail = ""
  private integer lastDamage = 0
  private integer lastDistance = 0
  private integer lastRange = 0
  private integer lastDuration = 0
  private integer lastCostMana = 0
  private integer lastCastingTime = 0
  private integer lastCooldownTime = 0

  method GetValue takes nothing returns integer
    return this.value
  endmethod
  method SetValue takes integer newValue returns nothing
    set this.value = newValue
  endmethod
  method AddValue takes integer addValue returns nothing
    set this.value = this.value + addValue
  endmethod

  static method Create takes integer number, integer level returns SkillResource
    local SkillResource this = SkillResource.allocate()
    set this.number = number
    set this.level = level
    if ( level == 1 ) then
      call this.DefaultValue()
    else
      call this.RefreshValue(level)
    endif
    return this
  endmethod
  method GetName takes nothing returns string
    return SkillData[this.number].Name
  endmethod
  method GetDetail takes boolean isUpdated returns string
    if .lastDetail == "" or isUpdated then
      call RefreshValue(this.level)
      call RefreshDetail()
    endif
    return .lastDetail
  endmethod
  private method DefaultValue takes nothing returns nothing
    set this.lastDetail = SkillData[number].Detail
    if ( JNStringContains(this.lastDetail, "#") ) then
      if ( JNStringContains(.lastDetail, "#CastingTime") ) then
        set .lastCastingTime = SkillData[this.number].CastingTime
      endif
      if ( JNStringContains(.lastDetail, "#Damage") ) then
        set .lastDamage = SkillData[this.number].Damage
      endif
      if ( JNStringContains(.lastDetail, "#Distance") ) then
        set .lastDistance = SkillData[this.number].Distance
      endif
      if ( JNStringContains(.lastDetail, "#Range") ) then
        set .lastRange = SkillData[this.number].Range
      endif
      if ( JNStringContains(.lastDetail, "#Duration") ) then
        set .lastDuration = SkillData[this.number].Duration
      endif
      if ( JNStringContains(.lastDetail, "#Mana") ) then
        set .lastCostMana = SkillData[this.number].CostMana
      endif
      if ( JNStringContains(.lastDetail, "#CoolDown") ) then
        set .lastCooldownTime = SkillData[this.number].CoolTime
      endif
    endif
  endmethod
  private method RefreshValue takes integer level returns nothing
    local string changeValue = SkillData[this.number].ValueChange
    if ( JNStringContains(changeValue, "~") ) then
      if ( JNStringContains(changeValue, "~CastingTime") ) then
        set .lastCastingTime = SkillData[this.number].CastingTime + ( SkillData[this.number].CastingTimeAdd * (level-1) )
      endif
      if ( JNStringContains(changeValue, "~Damage") ) then
        set .lastDamage = SkillData[this.number].Damage + ( SkillData[this.number].DamageAdd * (level-1) )
      endif
      if ( JNStringContains(changeValue, "~Distance") ) then
        set .lastDistance = SkillData[this.number].Distance + ( SkillData[this.number].DistanceAdd * (level-1) )
      endif
      if ( JNStringContains(changeValue, "~Range") ) then
        set .lastRange = SkillData[this.number].Range + ( SkillData[this.number].RangeAdd * (level-1) )
      endif
      if ( JNStringContains(changeValue, "~Duration") ) then
        set .lastDuration = SkillData[this.number].Duration + ( SkillData[this.number].DurationAdd * (level-1) )
      endif
      if ( JNStringContains(changeValue, "~Mana") ) then
        set .lastCostMana = SkillData[this.number].CostMana + ( SkillData[this.number].CostManaAdd * (level-1) )
      endif
      if ( JNStringContains(changeValue, "~CoolDown") ) then
        set .lastCooldownTime = SkillData[this.number].CoolTime + ( SkillData[this.number].CoolTimeAdd * (level-1) )
      endif
    endif
    set changeValue = null
  endmethod
  private method RoundI2S takes integer input, boolean isSecond returns string
    local integer length = StringLength(I2S(input))
    if ( isSecond ) then
      return JNStringInsert(SubString(I2S(input+5),0,length-2), length-3, ".") + "s"
    else
      return SubString(I2S(input+5),0,length-1)
    endif
  endmethod
  private method RefreshDetail takes nothing returns nothing
    set .lastDetail = SkillData[this.number].Detail
    if ( JNStringContains(.lastDetail, "#") ) then
      set .lastDetail = JNStringReplace(.lastDetail, "#CastingTime", RoundI2S(this.lastCastingTime, true))
      set .lastDetail = JNStringReplace(.lastDetail, "#Damage", I2S(this.lastDamage))
      set .lastDetail = JNStringReplace(.lastDetail, "#Distance", I2S(this.lastDistance))
      set .lastDetail = JNStringReplace(.lastDetail, "#Range", I2S(this.lastRange))
      set .lastDetail = JNStringReplace(.lastDetail, "#Duration", RoundI2S(this.lastRange, true))
      set .lastDetail = JNStringReplace(.lastDetail, "#Mana", RoundI2S(this.lastCostMana, false))
      set .lastDetail = JNStringReplace(.lastDetail, "#CoolDown", RoundI2S(this.lastCooldownTime, true))
    endif
  endmethod
endstruct

scope tempValue initializer Init

  private function DelayedInit takes nothing returns nothing
    local SkillResource temp = SkillResource.Create(1, 1)
    call BJDebugMsg(temp.GetDetail(true))
  endfunction
  private function Init takes nothing returns nothing
    call TimerStart(CreateTimer(), 0.5, false, function DelayedInit)
  endfunction
endscope