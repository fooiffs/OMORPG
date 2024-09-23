library DataBaseSkill
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
    
    private SkillData array privateSkillData [MAX_SKILL_COUNT]
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
    integer DurationAdd
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
      elseif ( privateSkillData[input] == 0 ) then
        call BJDebugMsg("Get9 : " + I2S(input) + " is 0")
        return 0
      else
        return privateSkillData[input]
      endif
    endmethod
    static method getFromKey takes integer input returns thistype
      if ( MAX_SKILL_COUNT < input ) then
          call BJDebugMsg("Get8 : " + I2S(input) + " is over MAX_SKILL_COUNT[" + I2S(MAX_SKILL_COUNT) + "]")
          return 0
      elseif ( privateSkillData[input] == 0 ) then
          set privateSkillData[input] = create()
      endif
      return privateSkillData[input]
    endmethod
  endstruct
endlibrary