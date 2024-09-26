globals
  hashtable hash = InitHashtable()
  constant integer MAX_PLAYER_COUNT = 12+1
  constant integer MAX_CHARACTER_COUNT = 6+1
  constant integer MAX_STAT_COUNT = 32+1
  constant integer MAX_SKILL_COUNT = 205+1      /* 배열 1 시작, +1 */
  constant integer MAX_OPTION_MENU_COUNT = 30+1
  constant integer MAX_SKILL_SLOT = 8+1
endglobals

// 전역 설정, 초기 설정 관련 scope, like DataBase
scope GlobalInitializer
  globals
    private SkillData array privateSkillData [MAX_SKILL_COUNT]
    private StatData array privateStatData [MAX_STAT_COUNT]
    private SlotData array privateSkillSlotData [MAX_SKILL_SLOT]
    private HotkeyData array privateHotkeyData [MAX_OPTION_MENU_COUNT]
    private CharacterData array privateCharacterData [MAX_CHARACTER_COUNT]
  endglobals
// 추가한 시간: 24.08.31 03:08:00
// 추가한 시간: 24.09.16 13:30:00
// 추가한 시간: 24.09.23 10:35:00+
  constant function IsEmpty takes string s returns boolean
    return ( s == "" ) or ( s == null )
  endfunction

  function Msg takes player p, string msg returns nothing
    call DisplayTimedTextToPlayer(p, 0, 0, 6., msg)
  endfunction
  function MsgAll takes string msg returns nothing
    call DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, 6., msg)
  endfunction

  
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
        call MsgAll("오류9-3B, 스텟(" + I2S(input) + ")는 설정값(1~"+I2S(MAX_STAT_COUNT)+")을 벗어납니다")
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
        call MsgAll("오류/SkillData[" + I2S(input) + "]는 설정 범위(1~"+I2S(MAX_SKILL_COUNT-1)+")를 벗어납니다.")
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
        call MsgAll("오류/GFK/스킬(" + I2S(input) + ")는 설정 범위(1~"+I2S(MAX_SKILL_COUNT-1)+")를 벗어납니다.")
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
        call MsgAll("오류/SkillSlot[" + I2S(input) + "]는 설정 범위(1~"+I2S(MAX_SKILL_SLOT-1)+")를 벗어납니다.")
        return 0
      elseif ( privateSkillSlotData[input] == 0 ) then
        call MsgAll("오류/SkillSlot[" + I2S(input) + "]는 설정되지 않았습니다.")
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
        call MsgAll("오류/HotKey[" + I2S(input) + "]는 설정 범위(1~"+I2S(MAX_OPTION_MENU_COUNT-1)+")를 벗어납니다.")
        return 0
      elseif ( privateHotkeyData[input] == 0 ) then
        call MsgAll("오류/HotKey[" + I2S(input) + "]는 설정되지 않았습니다.")
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
      set privateHotkeyData[EHotkeyMenu.SkillSlot1] = HotkeyData.Create("스킬슬롯1", false, EHotkeys.H2I("Q"))
      set privateHotkeyData[EHotkeyMenu.SkillSlot2] = HotkeyData.Create("스킬슬롯2", false, EHotkeys.H2I("W"))
      set privateHotkeyData[EHotkeyMenu.SkillSlot3] = HotkeyData.Create("스킬슬롯3", false, EHotkeys.H2I("E"))
      set privateHotkeyData[EHotkeyMenu.SkillSlot4] = HotkeyData.Create("스킬슬롯4", false, EHotkeys.H2I("R"))
      set privateHotkeyData[EHotkeyMenu.SkillSlot5] = HotkeyData.Create("스킬슬롯5", false, EHotkeys.H2I("T"))
      set privateHotkeyData[EHotkeyMenu.SkillSlot6] = HotkeyData.Create("스킬슬롯6", false, EHotkeys.H2I("D"))
      set privateHotkeyData[EHotkeyMenu.SkillSlot7] = HotkeyData.Create("스킬슬롯7", false, EHotkeys.H2I("F"))
      set privateHotkeyData[EHotkeyMenu.SkillSlot8] = HotkeyData.Create("스킬슬롯8", false, EHotkeys.H2I("G"))
      set privateHotkeyData[EHotkeyMenu.ItemSlot1] = HotkeyData.Create("아이템슬롯1", false, EHotkeys.H2I("1"))
      set privateHotkeyData[EHotkeyMenu.ItemSlot2] = HotkeyData.Create("아이템슬롯2", false, EHotkeys.H2I("2"))
      set privateHotkeyData[EHotkeyMenu.ItemSlot3] = HotkeyData.Create("아이템슬롯3", false, EHotkeys.H2I("3"))
      set privateHotkeyData[EHotkeyMenu.ItemSlot4] = HotkeyData.Create("아이템슬롯4", false, EHotkeys.H2I("4"))
      set privateHotkeyData[EHotkeyMenu.ItemSlot5] = HotkeyData.Create("아이템슬롯5", false, EHotkeys.H2I("5"))
      set privateHotkeyData[EHotkeyMenu.ItemSlot6] = HotkeyData.Create("아이템슬롯6", false, EHotkeys.H2I("6"))
      set privateHotkeyData[EHotkeyMenu.ItemSlot7] = HotkeyData.Create("아이템슬롯7", false, EHotkeys.H2I("7"))
      set privateHotkeyData[EHotkeyMenu.SubMenuKakaotalk] = HotkeyData.Create("카톡", false, EHotkeys.H2I("F6"))
      set privateHotkeyData[EHotkeyMenu.SubMenuDiscord] = HotkeyData.Create("디코", false, EHotkeys.H2I("F7"))
      set privateHotkeyData[EHotkeyMenu.SubMenuSetting] = HotkeyData.Create("설정", false, EHotkeys.H2I("F8"))
      set privateHotkeyData[EHotkeyMenu.SubMenuAutoCombat] = HotkeyData.Create("자동사냥", false, EHotkeys.H2I("F5"))
      set privateHotkeyData[EHotkeyMenu.SubMenuInventory] = HotkeyData.Create("인벤토리", false, EHotkeys.H2I("I"))
      set privateHotkeyData[EHotkeyMenu.SubMenuStatus] = HotkeyData.Create("상태창", false, EHotkeys.H2I("S"))
      set privateHotkeyData[EHotkeyMenu.SubMenuSkillTree] = HotkeyData.Create("스킬창", false, EHotkeys.H2I("T"))
      set privateHotkeyData[EHotkeyMenu.SubMenuSmartMode] = HotkeyData.Create("스마트모드", true, 0)
    endmethod
  endstruct

  struct CharacterData
    unit SelectUnit
    integer UnitCode
    string SelectDatas
    
    static method operator [] takes integer input returns thistype
      if ( input <= 0 or MAX_CHARACTER_COUNT <= input ) then
        call MsgAll("오류/CharacterData[" + I2S(input) + "]는 설정 범위(1~"+I2S(MAX_CHARACTER_COUNT-1)+")를 벗어납니다.")
        return 0
      elseif ( privateCharacterData[input] == 0 ) then
        call MsgAll("오류/CharacterData[" + I2S(input) + "]는 설정되지 않았습니다.")
        return 0
      else
        return privateCharacterData[input]
      endif
    endmethod
    static method Create takes unit base, integer unitCode, string strings returns thistype
      local thistype this = thistype.create()
      set this.SelectUnit = base
      set this.UnitCode = unitCode
      set this.SelectDatas = strings
      return this
    endmethod
    static method onInit takes nothing returns nothing
      set privateCharacterData[ECharacter.ICHIGO] = CharacterData.Create(gg_unit_H000_0011, 'H000', "쿠로사키 이치고'Ichigo Kurosaki'주인공. 유령을 보는 고교생.'카라쿠라 마을의 사신대행.'4'2'2'3'2'|cffff8000근접 물리 |cffd5d500[힘]'참백도(참월)'SkillTree_ichi_00.blp'SkillTree_ichi_05.blp'SkillTree_ichi_06.blp'SkillTree_ichi_11.blp'특성 스킬'검압 - 스킬 추가데미지'블루트베네 - 피격데미지 감소'월아천충'참격의 순간에 자신의 영압을 방출해 참격을 거대화.'강화시 데미지&범위 증가'천쇄참월'호로의 힘으로 월아천충을 쏘아낸다.'강화시 대상 출혈'무월'잠재능력을 모두 해방시켜 참격을 발사합니다.'강화시 출혈효과 폭발 추가데미지")
      set privateCharacterData[ECharacter.RUKIA] = CharacterData.Create(gg_unit_H001_0010, 'H001', "쿠치키 루키아'Rukia Kuchiki'더블 주인공이자 여주인공.'학교 성적은 국어 빼고 최하위.'3'3'3'5'4'|cff0080c0근접 마법 |cffd5d500[기술]'귀도, 참백도(수백설)'SkillTree_rukia_00.blp'SkillTree_rukia_02.blp'SkillTree_rukia_03.blp'SkillTree_rukia_04.blp'특성 스킬'영하 18도 - 주변 적을 베고 빙결'변신류 - 적 공속 감소, 아군 공속 증가'시작의 춤, 월백'주변을 속박시키고 표식을 생성합니다.'표식을 생성하고, 다른 스킬로 추가효과 가능'다음의 춤, 백련'춤을 추고, 주변 방해효과 폭발시켜 데미지를 가함.'강화시 표식을 폭발시켜 추가데미지'세번째 춤, 백도'상대를 관통시켜 얼립니다.'일직선상으로 냉기를 뿜어내, 적에게 데미지를 가함.'강화시 오한에 걸린 적 관통")
      set privateCharacterData[ECharacter.URYU] = CharacterData.Create(gg_unit_H002_0009, 'H002', "이시다 우류'Uryu Ishida'이치고와 같은 학교, 전교 석차 1위.'호로를 멸하는 퀸시의 후예.'5'0'1'2'3'|cffff8000원거리 물리 |cffd5d500[속도]'영자병장(은령호작)'SkillTree_Uryu_01.blp'SkillTree_Uryu_02.blp'SkillTree_Uryu_06.blp'SkillTree_Uryu_13.blp'특성스킬'은통 - 저장된 은통으로 마나회복 혹은 스킬사용 함.'산령수투 - 공격시 영압 소모해 추가데미지'하일리히 프파일'퀸시의 영자병장, 빛의 화살로 데미지를 가함.'강화시 추가데미지'리히트레겐'넓은 범위에 화살을 쏘아서 광역 공격을 함.'강화시 광역 대상 추가데미지'슈프렝거'퀸시 크로스 진에 농축 영자를 폭발시켜 속박&데미지.'강화시 속박대신 스턴")
      set privateCharacterData[ECharacter.ORIHIME] = CharacterData.Create(gg_unit_H003_0008, 'H003', "이노우에 오리히메'Orihime Inoue'히로인, 기계치이자 돌머리.'머리핀(순순육화)을 항상 착용하고 다님.'2'5'5'2'5'|cff0080c0원거리 마법 |cffd5d500[마음]'머리핀(순순육화)'SkillTree_Inooue_21.blp'SkillTree_Inooue_01.blp'SkillTree_Inooue_12.blp'SkillTree_Inooue_13.blp'특성스킬'사상의거절 - 주변 쿨다운 감소 10%'더블캐스팅 - 스킬이 콤보로 변경되어, 추가효과 적용.'츠바키(고천참순)'츠바키를 날려 최대체력에 비례한 데미지를 가함.'강화시 출혈 및 최대체력 추가데미지'쌍천귀순'슌오우(벚꽃)+아야메(붓꽃), 퀵슬롯 등록해 사용.'매 초마다 주변의 잃은 체력을 회복합니다.'삼천결순'히나기쿠+바이곤+리리, 퀵슬롯에 등록해 사용.'삼각형 방패로 외부 공격 거절, 의지에 따라 방어력 상승.")
      set privateCharacterData[ECharacter.RENJI] = CharacterData.Create(gg_unit_H005_0003, 'H005', "아바라이 렌지'Renji Abarai'호정 13대의 6번대 부대장.'루키아와 소꿉친구이며 이치고와 대립.'4'2'1'4'4'|cffff8000근접 물리 |cffd5d500[기술]'참백도(사미환)'SkillTree_Renji_01.blp'SkillTree_Renji_03.blp'SkillTree_Renji_05.blp'SkillTree_Renji_07.blp'특성스킬'슌센벤, 박치기 등 추가스킬'변신류 - 이동속도와 데미지 증가'사미환'전방을 향해 검을 휘두르고, 조각을 남깁니다.'강화시 출혈효과 및 범위 증가'비아절교'주변 조각을 쏘아붙여 공격합니다. 조각당 데미지 증가'강화시 마비(누적시 스턴) 추가'비골대포'영압덩어리를 발사해 상대를 밀어냅니다.'강화시 화상적용, 상위스킬 시아철포")
      set privateCharacterData[ECharacter.SADO] = CharacterData.Create(gg_unit_H004_0007, 'H004', "사도 야스토라'Yasutora Sado'별명 차드, 멕시코 혼혈, 전교 11등.'우수한 성적과 상냥한 마음씨를 가짐.'3'4'4'3'2'|cffff8000근접 물리 |cffd5d500[힘]'오른팔과 왼팔'SkillTree_Sado_00.blp'SkillTree_Sado_01.blp'SkillTree_Sado_03.blp'SkillTree_Sado_02.blp'특성 스킬'대쉬 - 브링거 라이트'변신류 - 적 방어 감소, 본인 방어 증가'엘디렉토'전방에 주먹으로 영압을 발사해 데미지를 가함.'강화시 범위 증가 및 쿨다운 감소'슬래머'지면을 강타해 지진으로 적들을 둔화시킴.'강화시 범위 증가 및 넉백 적용'방어'방어 자세를 취해, 일정시간 피해를 감소시킵니다.'강화시 자동시전")
    endmethod
  endstruct
endscope