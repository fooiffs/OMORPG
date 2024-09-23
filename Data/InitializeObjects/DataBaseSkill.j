library DataBaseSkill initializer Init
// 추가한 시간: 24.08.31 03:08:00
// 추가한 시간: 24.09.16 13:30:00
// 추가한 시간: 24.09.23 10:35:00+
  globals
    hashtable hash = InitHashtable()
    constant integer MAX_PLAYER_COUNT = 12
    constant integer MAX_CHARACTER_COUNT = 6
    constant integer MAX_STAT_COUNT = 32
    constant integer MAX_SKILL_COUNT = 205+1      /* 배열 1 시작, +1 */
    constant integer MAX_OPTION_MENU_COUNT = 28
    
    SkillData array publicSkillData [MAX_SKILL_COUNT]
  endglobals
  struct SkillData
    integer Character
    integer TypeMain
    integer TypeTree
    integer RequireLevel
    integer TypeCore
    integer TypeUI
    string Name
    string Detail
    string ValueUse
    string ValueChange
    integer Distance
    integer DistanceAdd
    integer CastingTime
    integer CastingTimeAdd
    integer Duration
    integer DutationAdd
    integer CoolTime
    integer CoolTimeAdd
    integer Damage
    integer DamageAdd
    integer Range
    integer RangeAdd
    integer CostMana
    integer CostManaAdd

    static method operator [] takes integer input returns thistype
      if ( MAX_SKILL_COUNT <= input ) then
        call BJDebugMsg("Get9 : " + I2S(input) + " is over MAX_SKILL_COUNT[" + I2S(MAX_SKILL_COUNT) + "]")
        return 0
      elseif ( publicSkillData[input] == 0 ) then
        call BJDebugMsg("Get9 : " + I2S(input) + " is 0")
        return 0
      else
        return publicSkillData[input]
      endif
    endmethod
    static method getFromKey takes integer input returns thistype
      if ( MAX_SKILL_COUNT < input ) then
          call BJDebugMsg("Get8 : " + I2S(input) + " is over MAX_SKILL_COUNT[" + I2S(MAX_SKILL_COUNT) + "]")
          return 0
      elseif ( publicSkillData[input] == 0 ) then
          set publicSkillData[input] = create()
      endif
      return publicSkillData[input]
    endmethod
  endstruct

  private function delayedInit takes nothing returns nothing
    local integer index = 1
    local string tempString = ""
    call BJDebugMsg("Start2")

    loop
      exitwhen ( MAX_SKILL_COUNT <= index )
      set tempString = ""
      set tempString = tempString + I2S(SkillData[index].Character) + "/"
      set tempString = tempString + I2S(SkillData[index].TypeMain) + "/"
      set tempString = tempString + I2S(SkillData[index].TypeTree) + "/"
      set tempString = tempString + I2S(SkillData[index].RequireLevel) + "/"
      set tempString = tempString + I2S(SkillData[index].TypeCore) + "/"
      set tempString = tempString + I2S(SkillData[index].TypeUI) + "/"
      set tempString = tempString + SkillData[index].Name + "/"
      set tempString = tempString + SkillData[index].Detail + "/"
      if ( SkillData[index].ValueUse != "" ) then
          set tempString = tempString + SkillData[index].ValueUse + "/"
      endif
      if ( SkillData[index].ValueChange != "" ) then
          set tempString = tempString + SkillData[index].ValueChange + "/"
      endif
      if ( SkillData[index].Distance+SkillData[index].DistanceAdd != 0 ) then
          set tempString = tempString + I2S(SkillData[index].Distance) + "~" + I2S(SkillData[index].DistanceAdd) + "/"
      endif
      if ( SkillData[index].CastingTime+SkillData[index].CastingTimeAdd != 0 ) then
          set tempString = tempString + I2S(SkillData[index].CastingTime) + "~" + I2S(SkillData[index].CastingTimeAdd) + "/"
      endif
      if ( SkillData[index].Duration+SkillData[index].DutationAdd != 0 ) then
          set tempString = tempString + I2S(SkillData[index].Duration) + "~" + I2S(SkillData[index].DutationAdd) + "/"
      endif
      if ( SkillData[index].CoolTime+SkillData[index].CoolTimeAdd != 0 ) then
          set tempString = tempString + I2S(SkillData[index].CoolTime) + "~" + I2S(SkillData[index].CoolTimeAdd) + "/"
      endif
      if ( SkillData[index].Damage+SkillData[index].DamageAdd != 0 ) then
          set tempString = tempString + I2S(SkillData[index].Damage) + "~" + I2S(SkillData[index].DamageAdd) + "/"
      endif
      if ( SkillData[index].Range+SkillData[index].RangeAdd != 0 ) then
          set tempString = tempString + I2S(SkillData[index].Range) + "~" + I2S(SkillData[index].RangeAdd) + "/"
      endif
      if ( SkillData[index].CostMana+SkillData[index].CostManaAdd != 0 ) then
          set tempString = tempString + I2S(SkillData[index].CostMana) + "~" + I2S(SkillData[index].CostManaAdd) + "."
      endif
      
      call DisplayTimedTextToPlayer(GetLocalPlayer(), 0., 0., 7., "No." + I2S(index) + " = " + tempString)

      set index = index + 1

      call 
    endloop
  endfunction
  private function Init takes nothing returns nothing
      call BJDebugMsg("Start")
      call TimerStart(CreateTimer(), .1, false, function delayedInit)
  endfunction
endlibrary