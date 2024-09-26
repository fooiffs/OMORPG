// ! import "JNCommon.j"
native JNMemorySetString takes integer offset, string value returns nothing
native BitAnd takes integer x, integer y returns integer
native BitOr takes integer x, integer y returns integer
// requires MemoryLib, Typecast
// 영웅 이름 커스텀 설정
scope UnitNameChanger

/* Private 함수 */
  private function sub_2217A0 takes integer this returns integer
    local Ptr pFunc = pGameDll + 0x2217A0
    call SaveStr(JNProc_ht, JNProc_key, 0, "(I)I")
    call SaveInteger(JNProc_ht, JNProc_key, 1, this)
    if (JNProcCall(JNProc__thiscall, pFunc, JNProc_ht)) then
      return LoadInteger(JNProc_ht, JNProc_key, 0)
    endif
    return 0
  endfunction
  
  private function sub_378720 takes integer this returns integer
    local Ptr pFunc = pGameDll + 0x378720
    call SaveStr(JNProc_ht, JNProc_key, 0, "(I)I")
    call SaveInteger(JNProc_ht, JNProc_key, 1, this)
    if (JNProcCall(JNProc__thiscall, pFunc, JNProc_ht)) then
      return LoadInteger(JNProc_ht, JNProc_key, 0)
    endif
    return 0
  endfunction
  
  // sub_3782B0의 변형
  private function GetObjectNamePtr takes integer rawcode returns Ptr
    local integer a1 = rawcode
    local integer a2 = 0
    local Ptr result
    local integer v3
    local integer v4
    local integer v5
    local integer v6

    set v3 = sub_378720(a1)
    if (v3 == 0) then
      return 0
    endif
    set v4 = IntPtr[v3 + 0x28]
    if (v4 == 0) then
      return 0
    endif
    set v5 = IntPtr[v3 + 0x2C]
    set v6 = v4 - 1
    if (v6 < a2) then
      set a2 = v6
    endif
    set result = PtrPtr[v5 + 4 * a2]

    return result
  endfunction
  
  // sub_376CA0의 변형
  private function GetHeroTypeProperNamePtr takes integer heroTypeId, integer index returns Ptr
    local Ptr pUnitTypeData = sub_378720(heroTypeId)
    local integer nHeroNames = IntPtr[pUnitTypeData + 0xF4]
    local PtrPtr pHeroNames = PtrPtr[pUnitTypeData + 0xF8]

    if (index >= 0 and index < nHeroNames) then
      return pHeroNames[index]
    else
      return 0
    endif
  endfunction

  private function GetHeroTypeProperNamesSize takes integer heroTypeId returns integer
    local Ptr pUnitTypeData = sub_378720(heroTypeId)
    local integer nHeroNames = IntPtr[pUnitTypeData + 0xF4]
    return nHeroNames
  endfunction

/* Public 함수 */
/* 변경할 이름이 최초 이름보다 길면 안 됨 / 한글 3바이트, 영/숫 1바이트 */
  /* 오브젝트의 이름 변경 */
  function SetObjectName takes integer rawcode, string newName returns nothing
    local Ptr pName = GetObjectNamePtr(rawcode)
    call JNMemorySetString(pName, newName)
  endfunction

  /* 유닛 타입의 이름 변경 */
  function SetUnitTypeName takes integer unitTypeId, string newName returns nothing
    call SetObjectName(unitTypeId, newName)
  endfunction

  /* 영웅의 게임 속 이름 번호 - 몇번째 번호를 쓰고 있는지 반환 */
  function GetHeroProperNameIndex takes unit whichHero returns integer
    local Ptr pUnit = sub_2217A0(GetHandleId(whichHero))
    local Ptr pAbilityHero = PtrPtr[pUnit + 0x1F0]
    local integer index = BitAnd(IntPtr[pAbilityHero + 0xE8], 0xFFFF)
    local integer nHeroNames = GetHeroTypeProperNamesSize(GetUnitTypeId(whichHero))

    if (nHeroNames > 0) then
      return ModuloInteger(index, nHeroNames)
    else
      return 0
    endif
  endfunction

  /* 영웅의 게임 속 이름 번호 설정 */
  function SetHeroProperNameIndex takes unit whichHero, integer index returns nothing
    local Ptr pUnit = sub_2217A0(GetHandleId(whichHero))
    local Ptr pAbilityHero = PtrPtr[pUnit + 0x1F0]
    local integer nHeroNames = GetHeroTypeProperNamesSize(GetUnitTypeId(whichHero))
    local integer hiBits
    local integer loBits

    if (nHeroNames > 0) then
      set hiBits = BitAnd(IntPtr[pAbilityHero + 0xE8], 0xFFFF0000)
      set loBits = ModuloInteger(index, nHeroNames)
      set IntPtr[pAbilityHero + 0xE8] = BitOr(hiBits, loBits)
    endif
  endfunction

  /* 영웅 타입의 번호의 적합한 이름 설정 */
  function SetHeroTypeProperName takes integer heroTypeId, integer index, string newName returns nothing
    local Ptr pName = GetHeroTypeProperNamePtr(heroTypeId, index)
    if (pName != 0) then
      call JNMemorySetString(pName, newName)
    endif
  endfunction

  /* 영웅 타입의 적합한 이름 설정 */
  function GetHeroTypeProperName takes integer heroTypeId, integer index returns string
    local Ptr pName = GetHeroTypeProperNamePtr(heroTypeId, index)
    if (pName != 0) then
      return JNMemoryGetString(pName, 0)
    else
      return null
    endif
  endfunction

  /* 영웅의 게임 속 이름 설정 - 현재 Index에만 적용 */
  function SetHeroProperName takes unit whichHero, string newName returns nothing
    local integer nameIndex = GetHeroProperNameIndex(whichHero)
    call SetHeroTypeProperName(GetUnitTypeId(whichHero), nameIndex, newName)
  endfunction
endscope
