library DataBase requires PushKey, EHotkeyMenu
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
    constant integer MAX_OPTION_MENU_COUNT = 30+1
    constant integer MAX_SKILL_SLOT = 8+1
    
    private SkillData array privateSkillData [MAX_SKILL_COUNT]
    private StatData array privateStatData [MAX_STAT_COUNT]
    private SlotData array privateSkillSlotData [MAX_SKILL_SLOT]
    private HotkeyData array privateHotkeyData [MAX_OPTION_MENU_COUNT]
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
        call BJDebugMsg("오류9-3B, 스텟(" + I2S(input) + ")는 설정값(1~"+I2S(MAX_STAT_COUNT)+")을 벗어납니다")
        return 0
      elseif ( privateStatData[input] == 0 ) then
          set privateStatData[input] = create()
          set privateStatData[input].lastName = GetName(input)
      endif
      return privateStatData[input]
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
        call BJDebugMsg("오류/SkillData[" + I2S(input) + "]는 설정 범위(1~"+I2S(MAX_SKILL_COUNT-1)+")를 벗어납니다.")
        return 0
      elseif ( privateSkillData[input] == 0 ) then
        call BJDebugMsg("오류/SkillData[" + I2S(input) + "]는 설정되지 않았습니다.")
        return 0
      else
        return privateSkillData[input]
      endif
    endmethod
    static method getFromKey takes integer input returns thistype
      if ( input <= 0 or MAX_SKILL_COUNT <= input ) then
        call BJDebugMsg("오류/GFK/스킬(" + I2S(input) + ")는 설정 범위(1~"+I2S(MAX_SKILL_COUNT-1)+")를 벗어납니다.")
        return 0
      elseif ( privateSkillData[input] == 0 ) then
        set privateSkillData[input] = create()
      endif
      return privateSkillData[input]
    endmethod
  endstruct
  
  struct SlotData
    private integer SkillCode
    private integer SmartCode
    private integer SelfHotkeyID
    integer OrderID
    static method operator [] takes integer input returns thistype
      if ( input <= 0 or MAX_SKILL_SLOT <= input ) then
        call BJDebugMsg("오류/SkillSlot[" + I2S(input) + "]는 설정 범위(1~"+I2S(MAX_SKILL_SLOT-1)+")를 벗어납니다.")
        return 0
      elseif ( privateSkillSlotData[input] == 0 ) then
        call BJDebugMsg("오류/SkillSlot[" + I2S(input) + "]는 설정되지 않았습니다.")
        return 0
      else
        return privateSkillSlotData[input]
      endif
    endmethod
    static method Create takes integer skillId, integer smartId, integer hotkeyId, integer orderId returns thistype
      local thistype this = thistype.create()
      set this.SkillCode = skillId
      set this.SmartCode = smartId
      set this.SelfHotkeyID = hotkeyId
      set this.OrderID = orderId
      return this
    endmethod
    static method onInit takes nothing returns nothing
      static if false then
        No Code Smart	Hotkey OrderId
        1	A000	A008	81(Q)	852529/absorb
        2	A001	A009	87(W)	852662/acidbomb
        3	A002	A00A	69(E)	852185/acolyteharvest
        4	A003	A00B	82(R)	852131/ambush
        5	A004	A00C	84(T)	852490/ancestralspirit
        6	A005	A00D	68(D)	852491/ancestralspirittarget
        7	A006	A00E	70(F)	852217/animatedead
        8	A007	A00F	71(G)	852186/antimagicshell
      endif
      set privateSkillSlotData[1] = SlotData.Create('A000', 'A008', 81, 852529)
      set privateSkillSlotData[2] = SlotData.Create('A001', 'A009', 87, 852662)
      set privateSkillSlotData[3] = SlotData.Create('A002', 'A00A', 69, 852185)
      set privateSkillSlotData[4] = SlotData.Create('A003', 'A00B', 82, 852131)
      set privateSkillSlotData[5] = SlotData.Create('A004', 'A00C', 84, 852490)
      set privateSkillSlotData[6] = SlotData.Create('A005', 'A00D', 68, 852491)
      set privateSkillSlotData[7] = SlotData.Create('A006', 'A00E', 70, 852217)
      set privateSkillSlotData[8] = SlotData.Create('A007', 'A00F', 71, 852186)
    endmethod
    method GetSkillCode takes boolean isSmart returns integer
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
    
    static method operator [] takes integer input returns thistype
      if ( input <= 0 or MAX_OPTION_MENU_COUNT <= input ) then
        call BJDebugMsg("오류/HotKey[" + I2S(input) + "]는 설정 범위(1~"+I2S(MAX_OPTION_MENU_COUNT-1)+")를 벗어납니다.")
        return 0
      elseif ( privateHotkeyData[input] == 0 ) then
        call BJDebugMsg("오류/HotKey[" + I2S(input) + "]는 설정되지 않았습니다.")
        return 0
      else
        return privateHotkeyData[input]
      endif
    endmethod
    static method Create takes string name, boolean bool, integer value returns thistype
      local thistype this = thistype.create()
      set this.Name = name
      set this.IsBoolType = bool
      set this.BaseValue = value
      return this
    endmethod
    static method onInit takes nothing returns nothing
      set privateHotkeyData[EHotkeyMenu.Main1MiniInfo] = HotkeyData.Create("미니 정보창", true, 1)
      set privateHotkeyData[EHotkeyMenu.Main2SimpleEffect] = HotkeyData.Create("이펙트(개인)", true, 1)
      set privateHotkeyData[EHotkeyMenu.Main3GlobalEffect] = HotkeyData.Create("이펙트(방장)", true, 0)
      set privateHotkeyData[EHotkeyMenu.Main4FeildOfView] = HotkeyData.Create("시야 설정", false, 150)
      set privateHotkeyData[EHotkeyMenu.Main5HoldFieldOfView] = HotkeyData.Create("시야 고정", true, 0)
      set privateHotkeyData[EHotkeyMenu.Main6ViewHotkeys] = HotkeyData.Create("단축키 표시", true, 1)
      set privateHotkeyData[EHotkeyMenu.Main7ServerSaveLeft] = HotkeyData.Create("서버저장", false, 2)
      set privateHotkeyData[EHotkeyMenu.SkillSlot1] = HotkeyData.Create("스킬슬롯1", false, PushKey_H2I("Q"))
      set privateHotkeyData[EHotkeyMenu.SkillSlot2] = HotkeyData.Create("스킬슬롯2", false, PushKey_H2I("W"))
      set privateHotkeyData[EHotkeyMenu.SkillSlot3] = HotkeyData.Create("스킬슬롯3", false, PushKey_H2I("E"))
      set privateHotkeyData[EHotkeyMenu.SkillSlot4] = HotkeyData.Create("스킬슬롯4", false, PushKey_H2I("R"))
      set privateHotkeyData[EHotkeyMenu.SkillSlot5] = HotkeyData.Create("스킬슬롯5", false, PushKey_H2I("T"))
      set privateHotkeyData[EHotkeyMenu.SkillSlot6] = HotkeyData.Create("스킬슬롯6", false, PushKey_H2I("D"))
      set privateHotkeyData[EHotkeyMenu.SkillSlot7] = HotkeyData.Create("스킬슬롯7", false, PushKey_H2I("F"))
      set privateHotkeyData[EHotkeyMenu.SkillSlot8] = HotkeyData.Create("스킬슬롯8", false, PushKey_H2I("G"))
      set privateHotkeyData[EHotkeyMenu.ItemSlot1] = HotkeyData.Create("아이템슬롯1", false, PushKey_H2I("1"))
      set privateHotkeyData[EHotkeyMenu.ItemSlot2] = HotkeyData.Create("아이템슬롯2", false, PushKey_H2I("2"))
      set privateHotkeyData[EHotkeyMenu.ItemSlot3] = HotkeyData.Create("아이템슬롯3", false, PushKey_H2I("3"))
      set privateHotkeyData[EHotkeyMenu.ItemSlot4] = HotkeyData.Create("아이템슬롯4", false, PushKey_H2I("4"))
      set privateHotkeyData[EHotkeyMenu.ItemSlot5] = HotkeyData.Create("아이템슬롯5", false, PushKey_H2I("5"))
      set privateHotkeyData[EHotkeyMenu.ItemSlot6] = HotkeyData.Create("아이템슬롯6", false, PushKey_H2I("6"))
      set privateHotkeyData[EHotkeyMenu.ItemSlot7] = HotkeyData.Create("아이템슬롯7", false, PushKey_H2I("7"))
      set privateHotkeyData[EHotkeyMenu.SubMenuKakaotalk] = HotkeyData.Create("카톡", false, PushKey_H2I("F6"))
      set privateHotkeyData[EHotkeyMenu.SubMenuDiscord] = HotkeyData.Create("디코", false, PushKey_H2I("F7"))
      set privateHotkeyData[EHotkeyMenu.SubMenuSetting] = HotkeyData.Create("설정", false, PushKey_H2I("F8"))
      set privateHotkeyData[EHotkeyMenu.SubMenuAutoCombat] = HotkeyData.Create("자동사냥", false, PushKey_H2I("F5"))
      set privateHotkeyData[EHotkeyMenu.SubMenuInventory] = HotkeyData.Create("인벤토리", false, PushKey_H2I("I"))
      set privateHotkeyData[EHotkeyMenu.SubMenuStatus] = HotkeyData.Create("상태창", false, PushKey_H2I("S"))
      set privateHotkeyData[EHotkeyMenu.SubMenuSkillTree] = HotkeyData.Create("스킬창", false, PushKey_H2I("T"))
      set privateHotkeyData[EHotkeyMenu.SubMenuSmartMode] = HotkeyData.Create("스마트모드", true, 0)
    endmethod
  endstruct
endlibrary