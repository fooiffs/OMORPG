library DataBase
// 추가한 시간: 24.08.31 03:08:00
// 추가한 시간: 24.09.16 13:30:00
// 추가한 시간: 24.09.23 10:35:00+
  globals
    hashtable hash = InitHashtable()
    /* 모든 배열은 1 시작, +1 */
    constant integer MAX_PLAYER_COUNT = 12+1
    constant integer MAX_CHARACTER_COUNT = 6+1
    constant integer MAX_STAT_COUNT = 32+1
    constant integer MAX_SKILL_COUNT = 205+1      /* 배열 1 시작, +1 */
    constant integer MAX_OPTION_MENU_COUNT = 28+1
    constant integer MAX_SKILL_SLOT = 8+1
    
    private PlayerData array privatePlayerData [MAX_PLAYER_COUNT]
    private SkillData array privateSkillData [MAX_SKILL_COUNT]
    private StatData array privateStatData [MAX_STAT_COUNT]
  endglobals
  struct OptionResource
  endstruct
  struct StatData
    string lastName = ""

    private static method GetName takes integer input returns string
      if ( input == 1 ) then
        return "파워"
      elseif ( input == 2 ) then
        return "집중"
      elseif ( input == 3 ) then
        return "활력"
      elseif ( input == 4 ) then
        return "공격력"
      elseif ( input == 5 ) then
        return "공격속도"
      elseif ( input == 6 ) then
        return "치명타 기회"
      elseif ( input == 7 ) then
        return "치명타 증폭"
      elseif ( input == 8 ) then
        return "흡혈 고정값"
      elseif ( input == 9 ) then
        return "흡혈 비례값"
      elseif ( input == 10 ) then
        return "근접 방어"
      elseif ( input == 11 ) then
        return "근접 감소"
      elseif ( input == 12 ) then
        return "근접 차단"
      elseif ( input == 13 ) then
        return "원격 방어"
      elseif ( input == 14 ) then
        return "원격 감소"
      elseif ( input == 15 ) then
        return "원격 차단"
      elseif ( input == 16 ) then
        return "주술 지속 감소"
      elseif ( input == 17 ) then
        return "주술 차단"
      elseif ( input == 18 ) then
        return "이동속도"
      elseif ( input == 19 ) then
        return "체력 회복"
      elseif ( input == 20 ) then
        return "체력 회복 증폭"
      elseif ( input == 21 ) then
        return "마나 회복"
      elseif ( input == 22 ) then
        return "마나 회복 증폭"
      elseif ( input == 23 ) then
        return "기술 증폭"
      elseif ( input == 24 ) then
        return "기술 가속"
      elseif ( input == 25 ) then
        return "마법 데미지"
      elseif ( input == 26 ) then
        return "마법 증폭"
      elseif ( input == 27 ) then
        return "마법 가속"
      elseif ( input == 28 ) then
        return "마법 시전 가속"
      elseif ( input == 29 ) then
        return "능력 레벨"
      elseif ( input == 30 ) then
        return "골드 드랍률"
      elseif ( input == 31 ) then
        return "아이템 드랍률"
      elseif ( input == 32 ) then
        return "경험치 획득률"
      else
        return "스탯" + I2S(input)
      endif
    endmethod
    static method operator [] takes integer input returns thistype
      if ( input <= 0 or MAX_STAT_COUNT <= input ) then
        call BJDebugMsg("오류9-3B, 스텟(" + I2S(input) + ")는 설정값("+I2S(MAX_STAT_COUNT)+")보다 큽니다.")
        return 0
      elseif ( privateStatData[input] == 0 ) then
          set privateStatData[input] = create()
          set privateStatData[input].lastName = GetName(input)
      endif
      return privateStatData[input]
    endmethod
  endstruct
  struct PlayerData
    integer id
    boolean isPlaying
    CharacterResource character
    OptionResource array options[28]

    static method operator [] takes integer input returns thistype
      if ( input <= 0 or MAX_PLAYER_COUNT <= input ) then
        call BJDebugMsg("오류9-2B, 플레이어(" + I2S(input) + ")는 설정값("+I2S(MAX_PLAYER_COUNT)+")보다 큽니다.")
        return 0
      elseif ( privatePlayerData[input] == 0 ) then
        set privatePlayerData[input] = create()
        set privatePlayerData[input].id = input
        set privatePlayerData[input].isPlaying = true
      endif
      return privatePlayerData[input]
    endmethod
  endstruct
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
    string IconPath
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
      if ( input <= 0 or MAX_SKILL_COUNT <= input ) then
        call BJDebugMsg("오류9-1B, 스킬(" + I2S(input) + ")는 설정값("+I2S(MAX_SKILL_COUNT)+")보다 큽니다.")
        return 0
      elseif ( privateSkillData[input] == 0 ) then
        call BJDebugMsg("오류9-1A, 스킬(" + I2S(input) + ")는 설정되지 않았습니다.")
        return 0
      else
        return privateSkillData[input]
      endif
    endmethod
    static method getFromKey takes integer input returns thistype
      if ( MAX_SKILL_COUNT <= input ) then
        call BJDebugMsg("오류8, [생성] 스킬(" + I2S(input) + ")는 설정값("+I2S(MAX_SKILL_COUNT)+")보다 큽니다.")
        return 0
      elseif ( privateSkillData[input] == 0 ) then
        set privateSkillData[input] = create()
      endif
      return privateSkillData[input]
    endmethod
  endstruct
endlibrary