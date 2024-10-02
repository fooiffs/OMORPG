scope GlobalInitializer
  globals
    // 전역 설정, 초기 설정 관련 scope, like DataBase  
    hashtable hash = InitHashtable()
    constant integer MAX_PLAYER_COUNT = 12 + 1
    constant integer MAX_CHARACTER_COUNT = 6 + 1 /* Save에도 연동됨 */
    constant integer MAX_STAT_COUNT = 32 + 1
    constant integer MAX_SKILL_COUNT = 205 + 1 /* 배열 1 시작, +1 */
    constant integer MAX_OPTION_MENU_COUNT = 30 + 1
    constant integer MAX_SKILL_SLOT = 8 + 1
    constant real StoreX = 1280.
    constant real StoreY = 1024.

    // 지역 설정  
    private SkillData array privateSkillData[MAX_SKILL_COUNT]
    private StatData array privateStatData[MAX_STAT_COUNT]
    private SlotData array privateSkillSlotData[MAX_SKILL_SLOT]
    private HotkeyData array privateHotkeyData[MAX_OPTION_MENU_COUNT]
    private CharacterData array privateCharacterData[MAX_CHARACTER_COUNT]
    private TreeMainCoreData array privateTreeMainData[MAX_CHARACTER_COUNT]

    // 캐릭터
    unit gg_unit_H005_0003 = null
    unit gg_unit_H004_0007 = null
    unit gg_unit_H003_0008 = null
    unit gg_unit_H002_0009 = null
    unit gg_unit_H001_0010 = null
    unit gg_unit_H000_0011 = null

    // 저장
    constant integer MAX_SAVE_INVENTORY = 49 +1
    constant integer MAX_SAVE_EQUIP = 16 +1
    constant integer MAX_SAVE_CHARACTER = 6 
  endglobals
  function IsEmpty takes string s returns boolean
    return (s == "") or (s == null)
  endfunction
  function IsVaild takes string s returns boolean
    return(s != "") and (s != null)
  endfunction
  function IfEmpty takes string s, string s2 returns string
    if (s != "") and (s != null ) then
      return s
    else
      return s2
    endif
  endfunction
  function AddCommaIfFilled takes string head returns string
    if ( head == "" ) then
      return " : "
    else
      return head + ", "
    endif
  endfunction
  function AddZeroIfShort takes integer inputLength, boolean isNegative returns string
    if ( isNegative ) then
      set inputLength = inputLength - 1
    endif
    if ( inputLength <= 2 ) then
      return "0."
    else
      return "."
    endif
  endfunction
  function AddSignalIfPositive takes boolean isPositive returns string
    if ( isPositive ) then
      return "+"
    else
      return ""
    endif
  endfunction
  function AddSignal takes integer input, integer cutLength, boolean hasDot returns string
    set cutLength = StringLength(I2S(input)) - cutLength
    if ( hasDot ) then
      return AddSignalIfPositive(0 <= input) + JNStringInsert(SubString(I2S(input),0,cutLength), cutLength-1, AddZeroIfShort(cutLength, input < 0))
    else
      return AddSignalIfPositive(0 <= input) + SubString(I2S(input),0,cutLength)
    endif
  endfunction

  function Msg takes player p, string msg returns nothing
    call DisplayTimedTextToPlayer(p, 0, 0, 6., msg)
  endfunction
  function MsgAll takes string msg returns nothing
    call DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, 6., msg)
  endfunction
  function Bufftt takes texttag t returns nothing
    call SetTextTagVelocity(t, 0., .009)
    call SetTextTagPermanent(t, false)
    call SetTextTagLifespan(t, 3.)
    call SetTextTagFadepoint(t, 1.)
  endfunction
 
  struct StatData
    string Name = ""
    static method Create takes string name returns thistype
      local thistype this = thistype.create()
      set this.Name = name
      return this
    endmethod
    static method operator[] takes integer input returns thistype
      if ( input <= 0 or MAX_STAT_COUNT <= input ) then
        call MsgAll("오류9-3B, 스텟(" + I2S(input) + ")는 설정값(1~" + I2S(MAX_STAT_COUNT) + ")을 벗어납니다")
        return 0
      elseif ( privateStatData[input] == 0 ) then
        call MsgAll("오류9-3C, 스텟(" + I2S(input) + ")는 설정되지 않았습니다")
        return 0
      endif
      return privateStatData[input]
    endmethod
    static method onInit takes nothing returns nothing
      set privateStatData[EStatType.MainPower]              = StatData.Create("파워")
      set privateStatData[EStatType.MainFocus]              = StatData.Create("집중")
      set privateStatData[EStatType.MainVitality]           = StatData.Create("활력")
      set privateStatData[EStatType.AttackPower]            = StatData.Create("공격력")
      set privateStatData[EStatType.AttackSpeedPercent]     = StatData.Create("공격속도")
      set privateStatData[EStatType.CriticalChance]         = StatData.Create("치명타 기회")
      set privateStatData[EStatType.CriticalMultiplier]     = StatData.Create("치명타 증폭")
      set privateStatData[EStatType.LifeSteal]              = StatData.Create("흡혈 고정값")
      set privateStatData[EStatType.LifeStealPercent]       = StatData.Create("흡혈 비례값")
      set privateStatData[EStatType.MeleeDefense]           = StatData.Create("근접 방어")
      set privateStatData[EStatType.MeleeReduce]            = StatData.Create("근접 감소")
      set privateStatData[EStatType.MeleeEvationChance]     = StatData.Create("근접 차단")
      set privateStatData[EStatType.RangedDefense]          = StatData.Create("원격 방어")
      set privateStatData[EStatType.RangedReduce]           = StatData.Create("원격 감소")
      set privateStatData[EStatType.RangeImmuneChance]      = StatData.Create("원격 차단")
      set privateStatData[EStatType.MysticReduce]           = StatData.Create("주술 지속 감소")
      set privateStatData[EStatType.MysticDispellChance]    = StatData.Create("주술 차단")
      set privateStatData[EStatType.MovementSpeedPercent]   = StatData.Create("이동속도")
      set privateStatData[EStatType.HpRegenPerSecond]       = StatData.Create("체력 회복")
      set privateStatData[EStatType.HpRegenMultiplier]      = StatData.Create("체력 회복 증폭")
      set privateStatData[EStatType.MpRegenPerSecond]       = StatData.Create("마나 회복")
      set privateStatData[EStatType.MpRegenMultiplier]      = StatData.Create("마나 회복 증폭")
      set privateStatData[EStatType.PhysicalMultiplier]     = StatData.Create("기술 증폭")
      set privateStatData[EStatType.PhysicalCooldownReduce] = StatData.Create("기술 가속")
      set privateStatData[EStatType.MagicalPower]           = StatData.Create("마법 데미지")
      set privateStatData[EStatType.MagicalMultiplier]      = StatData.Create("마법 증폭")
      set privateStatData[EStatType.MagicalCooldownReduce]  = StatData.Create("마법 가속")
      set privateStatData[EStatType.MagicalCastingReduce]   = StatData.Create("마법 시전 가속")
      set privateStatData[EStatType.AilibtyLevelAdd]        = StatData.Create("능력 레벨")
      set privateStatData[EStatType.GoldDropMultiplier]     = StatData.Create("골드 드랍률")
      set privateStatData[EStatType.ItemDropMultiplier]     = StatData.Create("아이템 드랍률")
      set privateStatData[EStatType.ExperienceMultiplier]   = StatData.Create("경험치 획득률")
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
    // string IconPath --- 모든 스킬이 아이콘이 있지 않으니 생략.
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

    private static string array ranks[12]

    static method operator[] takes integer input returns thistype
      if ( input <= 0 or MAX_SKILL_COUNT <= input ) then
        call MsgAll("오류/SkillData[" + I2S(input) + "]는 설정 범위(1~" + I2S(MAX_SKILL_COUNT - 1) + ")를 벗어납니다.")
        return 0
      elseif ( privateSkillData[input] == 0 ) then
        call MsgAll("오류/SkillData[" + I2S(input) + "]는 설정되지 않았습니다.")
        return 0
      else
        return privateSkillData[input]
      endif
    endmethod
    static method getFromKey takes integer input returns thistype
      if ( input <= 0 or MAX_SKILL_COUNT <= input ) then
        call MsgAll("오류/GFK/스킬(" + I2S(input) + ")는 설정 범위(1~" + I2S(MAX_SKILL_COUNT - 1) + ")를 벗어납니다.")
        return 0
      elseif ( privateSkillData[input] == 0 ) then
        set privateSkillData[input] = create()
      endif
      return privateSkillData[input]
    endmethod
    static method onInit takes nothing returns nothing
      set ranks[0] = "미습득"
      set ranks[1] = "F"
      set ranks[2] = "D"
      set ranks[3] = "D+"
      set ranks[4] = "C"
      set ranks[5] = "C+"
      set ranks[6] = "B"
      set ranks[7] = "B+"
      set ranks[8] = "A"
      set ranks[9] = "A+"
      set ranks[10] = "S"
      set ranks[11] = "O" /* 11 이상일 경우 Over Rank */
    endmethod

    private static method AddSuffix takes boolean isFullName, integer level returns string
      local integer overLevel = level - 10
      if ( 0 < overLevel ) then
        if ( isFullName ) then
          return "ver Rank " + I2S(overLevel)
        else
          return I2S(overLevel)
        endif
      elseif ( isFullName ) then
        return " Rank"
      endif
      return ""
    endmethod
    
    // 스킬 레벨에 따른 랭크 변환
    // - level : 가져올 레벨 (11 이상은 Over Rank로 표시)
    // - isFullName: "B" -> "B Rank" 표시할지 여부
    // - inBracket: 결과를 "[B Rank]" 형태로 표시할지 여부
    public static method GetRank takes integer level, boolean isFullName, boolean inBracket returns string
      local string rank = ranks[IMaxBJ(0, IMinBJ(11, level))]

      // 접미사 처리
      set rank = rank + AddSuffix(isFullName, level)
      
      // inBracket 처리
      if ( inBracket ) then
        set rank = "[" + rank + "]"
      endif

      return rank
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
    // 이 스킬의 레벨업시 변화량을 가져옴.
    // - changeLevel : 변화할 레벨(1(기본값), 7→10의 경우 3)
    public method GetLevelDescription takes integer changeLevel returns string
      local string returnString = ""
      if ( 0 < changeLevel ) then
        if ( JNStringContains(this.ValueChange, "~") ) then
          if ( JNStringContains(this.ValueChange, "~CastingTime") ) then
            set returnString = AddCommaIfFilled(returnString) + "시전시간 " + AddSignal(this.CastingTimeAdd*changeLevel, 1, true) + "초"
          endif
          if ( JNStringContains(this.ValueChange, "~Damage") ) then
            set returnString = AddCommaIfFilled(returnString) + "데미지 " + AddSignal(this.DamageAdd*changeLevel, 0, false)
            if ( JNStringContains(this.Detail, "#Damage%") ) then
              set returnString = returnString + "%"
            endif
          endif
          if ( JNStringContains(this.ValueChange, "~Distance") ) then
            set returnString = AddCommaIfFilled(returnString) + "거리 " + AddSignal(this.DistanceAdd*changeLevel, 0, false)
          endif
          if ( JNStringContains(this.ValueChange, "~Range") ) then
            set returnString = AddCommaIfFilled(returnString) + "범위 " + AddSignal(this.RangeAdd*changeLevel, 0, false)
          endif
          if ( JNStringContains(this.ValueChange, "~Duration") ) then
            set returnString = AddCommaIfFilled(returnString) + "지속시간 " + AddSignal(this.DurationAdd*changeLevel, 1, true) + "초"
          endif
          if ( JNStringContains(this.ValueChange, "~Mana") ) then
            set returnString = AddCommaIfFilled(returnString) + "마나소모 " + AddSignal(this.CostManaAdd*changeLevel, 0, true)
          endif
          if ( JNStringContains(this.ValueChange, "~CoolDown") ) then
            set returnString = AddCommaIfFilled(returnString) + "쿨다운 " + AddSignal(this.CoolTimeAdd*changeLevel, 1, true) + "초"
          endif
        endif
        set returnString = "다음레벨(+" + I2S(changeLevel) + ")" + returnString
      endif
      return returnString
    endmethod
  endstruct
 
  struct SlotData
    private integer slot
    private integer SkillCode
    private integer SmartCode
    private integer SelfHotkeyID
    integer OrderID
    static method operator[] takes integer input returns thistype
      if ( input <= 0 or MAX_SKILL_SLOT <= input ) then
        call MsgAll("오류/SkillSlot[" + I2S(input) + "]는 설정 범위(1~" + I2S(MAX_SKILL_SLOT - 1) + ")를 벗어납니다.")
        return 0
      elseif ( privateSkillSlotData[input] == 0 ) then
        call MsgAll("오류/SkillSlot[" + I2S(input) + "]는 설정되지 않았습니다.")
        return 0
      else
        return privateSkillSlotData[input]
      endif
    endmethod
    static method Create takes integer index, integer skillId, integer smartId, integer hotkeyId, integer orderId returns nothing
      set privateSkillSlotData[index] = thistype.allocate()
      set privateSkillSlotData[index].slot = index
      set privateSkillSlotData[index].SkillCode = skillId
      set privateSkillSlotData[index].SmartCode = smartId
      set privateSkillSlotData[index].SelfHotkeyID = hotkeyId
      set privateSkillSlotData[index].OrderID = orderId
    endmethod
    static method onInit takes nothing returns nothing
      static if false then
        No Code Smart	Hotkey OrderId
        1	A000	A008	81 (Q)	852529 / absorb
        2	A001	A009	87 (W)	852662 / acidbomb
        3	A002	A00A	69 (E)	852185 / acolyteharvest
        4	A003	A00B	82 (R)	852131 / ambush
        5	A004	A00C	84 (T)	852490 / ancestralspirit
        6	A005	A00D	68 (D)	852491 / ancestralspirittarget
        7	A006	A00E	70 (F)	852217 / animatedead
        8	A007	A00F	71 (G)	852186 / antimagicshell
      endif
      call SlotData.Create(1, 'A000', 'A008', 81, 852529)
      call SlotData.Create(2, 'A001', 'A009', 87, 852662)
      call SlotData.Create(3, 'A002', 'A00A', 69, 852185)
      call SlotData.Create(4, 'A003', 'A00B', 82, 852131)
      call SlotData.Create(5, 'A004', 'A00C', 84, 852490)
      call SlotData.Create(6, 'A005', 'A00D', 68, 852491)
      call SlotData.Create(7, 'A006', 'A00E', 70, 852217)
      call SlotData.Create(8, 'A007', 'A00F', 71, 852186)
    endmethod

    public static method GetInfoRequire takes integer playerId, integer skillId, integer currentLevel returns string
      local string returnString = ""
      if ( currentLevel == 0 ) then
        if ( PlayerResource[playerId].character.changeLevel < SkillData[skillId].RequireLevel ) then
          return "변신레벨 " + I2S(SkillData[skillId].RequireLevel) + " 이상 필요"
        else
          return "습득이 가능합니다"
        endif
      else
        set returnString = SkillData[skillId].ValueUse
        if ( JNStringContains(returnString, "#Mana") ) then
          if ( JNStringContains(returnString, "#CoolDown") ) then
            return "마나소모 " + ESkillTree.ProcessI2S(SkillData[skillId].CostMana, true, 1, false) +", 쿨다운 " + ESkillTree.ProcessI2S(SkillData[skillId].CoolTime, true, 1, true) + "초"
          else
            return "마나소모 " + ESkillTree.ProcessI2S(SkillData[skillId].CostMana, true, 1, false)
          endif
        elseif ( JNStringContains(returnString, "#CoolDown") ) then
          return "쿨다운 " + ESkillTree.ProcessI2S(SkillData[skillId].CoolTime, true, 1, true) + "초"
        else
          return "오류/GIR/" +I2S(playerId) + "/" + I2S(skillId) + "/" + I2S(currentLevel) + "/" + returnString
        endif
      endif
      return returnString
    endmethod
    public method GetSkillCode takes boolean isSmart returns integer
      if ( isSmart ) then
        return SmartCode
      else
        return SkillCode
      endif
    endmethod
  endstruct

  struct HotkeyData
    string Name
    boolean IsBoolType
    integer BaseValue
   
    static method operator[] takes integer input returns thistype
      if ( input <= 0 or MAX_OPTION_MENU_COUNT <= input ) then
        call MsgAll("오류/HotKey[" + I2S(input) + "]는 설정 범위(1~" + I2S(MAX_OPTION_MENU_COUNT - 1) + ")를 벗어납니다.")
        return 0
      elseif ( privateHotkeyData[input] == 0 ) then
        set privateHotkeyData[input] = thistype.allocate()
      endif
      return privateHotkeyData[input]
    endmethod
    static method Create takes integer input, string name, boolean bool, integer value returns nothing
      set privateHotkeyData[input].Name = name
      set privateHotkeyData[input].IsBoolType = bool
      set privateHotkeyData[input].BaseValue = value
    endmethod
    static method onInit takes nothing returns nothing
      call HotkeyData.Create(EHotkeyMenu.Main1MiniInfo, "미니 정보창", true, 1)
      call HotkeyData.Create(EHotkeyMenu.Main2SimpleEffect, "이펙트(개인)", true, 1)
      call HotkeyData.Create(EHotkeyMenu.Main3GlobalEffect, "이펙트(방장)", true, 0)
      call HotkeyData.Create(EHotkeyMenu.Main4FeildOfView, "시야 설정", false, 150)
      call HotkeyData.Create(EHotkeyMenu.Main5HoldFieldOfView, "시야 고정", true, 0)
      call HotkeyData.Create(EHotkeyMenu.Main6ViewHotkeys, "단축키 표시", true, 1)
      call HotkeyData.Create(EHotkeyMenu.Main7ServerSaveLeft, "서버저장", false, 2)
      call HotkeyData.Create(EHotkeyMenu.SkillSlot1, "스킬슬롯1", false, EHotkeys.H2I("Q"))
      call HotkeyData.Create(EHotkeyMenu.SkillSlot2, "스킬슬롯2", false, EHotkeys.H2I("W"))
      call HotkeyData.Create(EHotkeyMenu.SkillSlot3, "스킬슬롯3", false, EHotkeys.H2I("E"))
      call HotkeyData.Create(EHotkeyMenu.SkillSlot4, "스킬슬롯4", false, EHotkeys.H2I("R"))
      call HotkeyData.Create(EHotkeyMenu.SkillSlot5, "스킬슬롯5", false, EHotkeys.H2I("T"))
      call HotkeyData.Create(EHotkeyMenu.SkillSlot6, "스킬슬롯6", false, EHotkeys.H2I("D"))
      call HotkeyData.Create(EHotkeyMenu.SkillSlot7, "스킬슬롯7", false, EHotkeys.H2I("F"))
      call HotkeyData.Create(EHotkeyMenu.SkillSlot8, "스킬슬롯8", false, EHotkeys.H2I("G"))
      call HotkeyData.Create(EHotkeyMenu.ItemSlot1, "아이템슬롯1", false, EHotkeys.H2I("1"))
      call HotkeyData.Create(EHotkeyMenu.ItemSlot2, "아이템슬롯2", false, EHotkeys.H2I("2"))
      call HotkeyData.Create(EHotkeyMenu.ItemSlot3, "아이템슬롯3", false, EHotkeys.H2I("3"))
      call HotkeyData.Create(EHotkeyMenu.ItemSlot4, "아이템슬롯4", false, EHotkeys.H2I("4"))
      call HotkeyData.Create(EHotkeyMenu.ItemSlot5, "아이템슬롯5", false, EHotkeys.H2I("5"))
      call HotkeyData.Create(EHotkeyMenu.ItemSlot6, "아이템슬롯6", false, EHotkeys.H2I("6"))
      call HotkeyData.Create(EHotkeyMenu.ItemSlot7, "아이템슬롯7", false, EHotkeys.H2I("7"))
      call HotkeyData.Create(EHotkeyMenu.SubMenuKakaotalk, "카톡", false, EHotkeys.H2I("F6"))
      call HotkeyData.Create(EHotkeyMenu.SubMenuDiscord, "디코", false, EHotkeys.H2I("F7"))
      call HotkeyData.Create(EHotkeyMenu.SubMenuSetting, "설정", false, EHotkeys.H2I("F8"))
      call HotkeyData.Create(EHotkeyMenu.SubMenuAutoCombat, "자동사냥", false, EHotkeys.H2I("F5"))
      call HotkeyData.Create(EHotkeyMenu.SubMenuInventory, "인벤토리", false, EHotkeys.H2I("I"))
      call HotkeyData.Create(EHotkeyMenu.SubMenuStatus, "상태창", false, EHotkeys.H2I("S"))
      call HotkeyData.Create(EHotkeyMenu.SubMenuSkillTree, "스킬창", false, EHotkeys.H2I("T"))
      call HotkeyData.Create(EHotkeyMenu.SubMenuSmartMode, "스마트모드", true, 0)
    endmethod
  endstruct

  struct CharacterData
    unit SelectUnit
    integer UnitCode
    string SelectDatas
   
    static method operator[] takes integer input returns thistype
      if ( input <= 0 or MAX_CHARACTER_COUNT <= input ) then
        call MsgAll("오류/CharacterData[" + I2S(input) + "]는 설정 범위(1~" + I2S(MAX_CHARACTER_COUNT - 1) + ")를 벗어납니다.")
        return 0
      elseif ( privateCharacterData[input] == 0 ) then
        set privateCharacterData[input] = thistype.allocate()
      endif
      return privateCharacterData[input]
    endmethod
    static method Create takes integer index, unit base, integer unitCode, string strings returns nothing
      set privateCharacterData[index].SelectUnit  = base
      set privateCharacterData[index].UnitCode    = unitCode
      set privateCharacterData[index].SelectDatas = strings
    endmethod
    static method onInit takes nothing returns nothing
      set gg_unit_H005_0003 = CreateUnit(Player(PLAYER_NEUTRAL_PASSIVE), 'H005', -9509.4, 5613.9, 243.624 )
      set gg_unit_H004_0007 = CreateUnit(Player(PLAYER_NEUTRAL_PASSIVE), 'H004', -9421.7, 5478.0, 215.831 )
      set gg_unit_H003_0008 = CreateUnit(Player(PLAYER_NEUTRAL_PASSIVE), 'H003', -9627.6, 5665.2, 264.367 )
      set gg_unit_H002_0009 = CreateUnit(Player(PLAYER_NEUTRAL_PASSIVE), 'H002', -9756.4, 5654.7, 284.859 )
      set gg_unit_H001_0010 = CreateUnit(Player(PLAYER_NEUTRAL_PASSIVE), 'H001', -9866.4, 5598.7, 304.534 )
      set gg_unit_H000_0011 = CreateUnit(Player(PLAYER_NEUTRAL_PASSIVE), 'H000', -9949.1, 5460.4, 331.244 )

      call CharacterData.Create(ECharacter.ICHIGO, gg_unit_H000_0011, 'H000', "쿠로사키 이치고'Ichigo Kurosaki'주인공. 유령을 보는 고교생.'카라쿠라 마을의 사신대행.'4'2'2'3'2'|cffff8000근접 물리 |cffd5d500[힘]'참백도(참월)'SkillTree_ichi_00.blp'SkillTree_ichi_05.blp'SkillTree_ichi_06.blp'SkillTree_ichi_11.blp'특성 스킬'검압 - 스킬 추가데미지'블루트베네 - 피격데미지 감소'월아천충'참격의 순간에 자신의 영압을 방출해 참격을 거대화.'강화시 데미지&범위 증가'천쇄참월'호로의 힘으로 월아천충을 쏘아낸다.'강화시 대상 출혈'무월'잠재능력을 모두 해방시켜 참격을 발사합니다.'강화시 출혈효과 폭발 추가데미지")
      call CharacterData.Create(ECharacter.RUKIA, gg_unit_H001_0010, 'H001', "쿠치키 루키아'Rukia Kuchiki'더블 주인공이자 여주인공.'학교 성적은 국어 빼고 최하위.'3'3'3'5'4'|cff0080c0근접 마법 |cffd5d500[기술]'귀도, 참백도(수백설)'SkillTree_rukia_00.blp'SkillTree_rukia_02.blp'SkillTree_rukia_03.blp'SkillTree_rukia_04.blp'특성 스킬'영하 18도 - 주변 적을 베고 빙결'변신류 - 적 공속 감소, 아군 공속 증가'시작의 춤, 월백'주변을 속박시키고 표식을 생성합니다.'표식을 생성하고, 다른 스킬로 추가효과 가능'다음의 춤, 백련'춤을 추고, 주변 방해효과 폭발시켜 데미지를 가함.'강화시 표식을 폭발시켜 추가데미지'세번째 춤, 백도'상대를 관통시켜 얼립니다.'일직선상으로 냉기를 뿜어내, 적에게 데미지를 가함.'강화시 오한에 걸린 적 관통")
      call CharacterData.Create(ECharacter.URYU, gg_unit_H002_0009, 'H002', "이시다 우류'Uryu Ishida'이치고와 같은 학교, 전교 석차 1위.'호로를 멸하는 퀸시의 후예.'5'0'1'2'3'|cffff8000원거리 물리 |cffd5d500[속도]'영자병장(은령호작)'SkillTree_Uryu_01.blp'SkillTree_Uryu_02.blp'SkillTree_Uryu_06.blp'SkillTree_Uryu_13.blp'특성스킬'은통 - 저장된 은통으로 마나회복 혹은 스킬사용 함.'산령수투 - 공격시 영압 소모해 추가데미지'하일리히 프파일'퀸시의 영자병장, 빛의 화살로 데미지를 가함.'강화시 추가데미지'리히트레겐'넓은 범위에 화살을 쏘아서 광역 공격을 함.'강화시 광역 대상 추가데미지'슈프렝거'퀸시 크로스 진에 농축 영자를 폭발시켜 속박&데미지.'강화시 속박대신 스턴")
      call CharacterData.Create(ECharacter.ORIHIME, gg_unit_H003_0008, 'H003', "이노우에 오리히메'Orihime Inoue'히로인, 기계치이자 돌머리.'머리핀(순순육화)을 항상 착용하고 다님.'2'5'5'2'5'|cff0080c0원거리 마법 |cffd5d500[마음]'머리핀(순순육화)'SkillTree_Inooue_21.blp'SkillTree_Inooue_01.blp'SkillTree_Inooue_12.blp'SkillTree_Inooue_13.blp'특성스킬'사상의거절 - 주변 쿨다운 감소 10%'더블캐스팅 - 스킬이 콤보로 변경되어, 추가효과 적용.'츠바키(고천참순)'츠바키를 날려 최대체력에 비례한 데미지를 가함.'강화시 출혈 및 최대체력 추가데미지'쌍천귀순'슌오우(벚꽃)+아야메(붓꽃), 퀵슬롯 등록해 사용.'매 초마다 주변의 잃은 체력을 회복합니다.'삼천결순'히나기쿠+바이곤+리리, 퀵슬롯에 등록해 사용.'삼각형 방패로 외부 공격 거절, 의지에 따라 방어력 상승.")
      call CharacterData.Create(ECharacter.RENJI, gg_unit_H005_0003, 'H005', "아바라이 렌지'Renji Abarai'호정 13대의 6번대 부대장.'루키아와 소꿉친구이며 이치고와 대립.'4'2'1'4'4'|cffff8000근접 물리 |cffd5d500[기술]'참백도(사미환)'SkillTree_Renji_01.blp'SkillTree_Renji_03.blp'SkillTree_Renji_05.blp'SkillTree_Renji_07.blp'특성스킬'슌센벤, 박치기 등 추가스킬'변신류 - 이동속도와 데미지 증가'사미환'전방을 향해 검을 휘두르고, 조각을 남깁니다.'강화시 출혈효과 및 범위 증가'비아절교'주변 조각을 쏘아붙여 공격합니다. 조각당 데미지 증가'강화시 마비(누적시 스턴) 추가'비골대포'영압덩어리를 발사해 상대를 밀어냅니다.'강화시 화상적용, 상위스킬 시아철포")
      call CharacterData.Create(ECharacter.SADO, gg_unit_H004_0007, 'H004', "사도 야스토라'Yasutora Sado'별명 차드, 멕시코 혼혈, 전교 11등.'우수한 성적과 상냥한 마음씨를 가짐.'3'4'4'3'2'|cffff8000근접 물리 |cffd5d500[힘]'오른팔과 왼팔'SkillTree_Sado_00.blp'SkillTree_Sado_01.blp'SkillTree_Sado_03.blp'SkillTree_Sado_02.blp'특성 스킬'대쉬 - 브링거 라이트'변신류 - 적 방어 감소, 본인 방어 증가'엘디렉토'전방에 주먹으로 영압을 발사해 데미지를 가함.'강화시 범위 증가 및 쿨다운 감소'슬래머'지면을 강타해 지진으로 적들을 둔화시킴.'강화시 범위 증가 및 넉백 적용'방어'방어 자세를 취해, 일정시간 피해를 감소시킵니다.'강화시 자동시전")

      /* 시간고정, 안개제거 */
      call SetFloatGameState(GAME_STATE_TIME_OF_DAY, 12.)
      call SetTimeOfDayScale(0.)
      call FogEnable(false)
      call FogMaskEnable(false)

      // 체력바 끄기 (Alt 누른 효과 off)
      call EnablePreSelect(false, false)
    endmethod
  endstruct

  struct TreeMainCoreData
    integer MAX_TREE_SKILL_COUNT = 0
    integer array SkillNumber[12]
    real array positionX[12]
    real array positionY[12]
    string array iconPath[12]
   
    static method operator[] takes integer input returns thistype
      if ( input <= 0 or 8190 <= input ) then
        call MsgAll("오류/TreeMainCoreData[" + I2S(input) + "]는 설정 범위(1~" + I2S(MAX_CHARACTER_COUNT - 1) + ")를 벗어납니다.")
        return 0
      elseif ( privateTreeMainData[input] == 0 ) then
        set privateCharacterData[input] = thistype.allocate()
      endif
      return privateTreeMainData[input]
    endmethod
    method CreateSub takes integer number, real inputX, real inputY, string iconPath returns nothing
      set this.MAX_TREE_SKILL_COUNT = this.MAX_TREE_SKILL_COUNT + 1
      set this.SkillNumber[MAX_TREE_SKILL_COUNT] = number
      set this.positionX[MAX_TREE_SKILL_COUNT] = inputX
      set this.positionY[MAX_TREE_SKILL_COUNT] = inputY
      set this.iconPath[MAX_TREE_SKILL_COUNT] = iconPath
    endmethod
    static method Create takes integer characterId returns nothing
      if ( characterId == ECharacter.ICHIGO ) then
        call privateTreeMainData[characterId].CreateSub(16, .085, -.10, "SkillTree_ichi_01.blp")
        call privateTreeMainData[characterId].CreateSub(20, .135, -.10, "SkillTree_ichi_02.blp")
        call privateTreeMainData[characterId].CreateSub(21, .135, -.14, "SkillTree_ichi_03.blp")
        call privateTreeMainData[characterId].CreateSub(25, .185, -.14, "SkillTree_ichi_04.blp")
        call privateTreeMainData[characterId].CreateSub(17, .085, -.18, "SkillTree_ichi_05.blp")
        call privateTreeMainData[characterId].CreateSub(22, .135, -.22, "SkillTree_ichi_06.blp")
        call privateTreeMainData[characterId].CreateSub(18, .085, -.26, "SkillTree_ichi_07_DIS.blp")
        call privateTreeMainData[characterId].CreateSub(23, .135, -.34, "SkillTree_ichi_08_DIS.blp")
        call privateTreeMainData[characterId].CreateSub(19, .085, -.38, "SkillTree_ichi_09_DIS.blp")
        call privateTreeMainData[characterId].CreateSub(26, .185, -.38, "SkillTree_ichi_10_DIS.blp")
        call privateTreeMainData[characterId].CreateSub(24, .135, -.42, "SkillTree_ichi_11_DIS.blp")
      endif
    endmethod
    static method onInit takes nothing returns nothing
      call TreeMainCoreData.Create(ECharacter.ICHIGO)
    endmethod
  endstruct
endscope