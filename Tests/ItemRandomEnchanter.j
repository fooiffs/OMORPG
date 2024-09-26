scope ItemRandomEnchanter 
  globals 
    private trigger triggerItemRandomEnchanter = CreateTrigger() 
  endglobals 
  constant function I2O takes integer i returns string 
    if(i == 1) then 
      return "s1" 
    elseif(i == 2) then 
      return "s2" 
    elseif(i == 3) then 
      return "s3" 
    elseif(i == 4) then 
      return "d1" 
    elseif(i == 5) then 
      return "d2" 
    elseif(i == 6) then 
      return "a1" 
    elseif(i == 7) then 
      return "a2" 
    elseif(i == 8) then 
      return "l1" 
    elseif(i == 9) then 
      return "l2" 
    elseif(i == 10) then 
      return "ed" 
    elseif(i == 11) then 
      return "cp" 
    elseif(i == 12) then 
      return "cx" 
    elseif(i == 13) then 
      return "m1" 
    elseif(i == 14) then 
      return "m2" 
    elseif(i == 15) then 
      return "m3" 
    elseif(i == 16) then 
      return "bs" 
    elseif(i == 17) then 
      return "as" 
    elseif(i == 18) then 
      return "ms" 
    elseif(i == 19) then 
      return "g1" 
    elseif(i == 20) then 
      return "g2" 
    elseif(i == 21) then 
      return "p1" 
    elseif(i == 22) then 
      return "p2" 
    elseif(i == 23) then 
      return "p3" 
    elseif(i == 24) then 
      return "sd" 
    elseif(i == 25) then 
      return "sl" 
    elseif(i == 26) then 
      return "md" 
    elseif(i == 27) then 
      return "c1" 
    elseif(i == 28) then 
      return "c2" 
      
    elseif(i == 29) then 
      return "o1" 
    elseif(i == 30) then 
      return "o2" 
    elseif(i == 31) then 
      return "o3" 
    elseif(i == 32) then 
      return "r1" 
    elseif(i == 33) then 
      return "r2" 
    elseif(i == 34) then 
      return "r3" 
    elseif(i == 35) then 
      return "k1" 
    elseif(i == 36) then 
      return "k2" 
    elseif(i == 37) then 
      return "k3" 
    else 
      return "" 
    endif 
  endfunction 

  private function ItemProcess takes integer i returns string 
    if(i == 4 or i == 5) then 
      return I2O(i) + "_" + I2S(GetRandomInt(50, 200)) 
    elseif(i == 11 or i == 13 or i == 16 or i == 17 or i == 21 or i == 22 or i == 23 or i == 24 or i == 26 or i == 27 or i == 28) then 
      return I2O(i) + "_" + I2S(GetRandomInt(1, 10)) + "%" 
    elseif(i == 12) then 
      return I2O(i) + "_" + R2SW(GetRandomReal(.1, .3), 1, 2) + "x" 
    else 
      return I2O(i) + "_" + I2S(GetRandomInt(1, 10)) 
    endif 
  endfunction 
  private function AddRandom takes integer i returns string 
    return I2O(31 + i) + "_" + ItemProcess(GetRandomInt(1, 28)) 
  endfunction 
  private function AddOption takes integer i returns string 
    return I2O(28 + i) + "_" + ItemProcess(GetRandomInt(1, 28)) 
  endfunction 
  private function AddSoket takes integer i returns string 
    return I2O(34 + i) + "_" + ItemProcess(GetRandomInt(1, 28)) 
  endfunction 
  private function Trig_ItemGet_Actions takes nothing returns nothing 
    local integer P = GetPlayerId(GetOwningPlayer(GetTriggerUnit())) + 1 
    local integer Slot = Equip_GetEmpty(P) 
    local integer rand1 = 1 
    local string rand3 = "" 
    if(GetItemType(GetManipulatedItem()) == ITEM_TYPE_ARTIFACT) then 
      if not(HaveSavedString(hash, GetHandleId(GetManipulatedItem()), StringHash("ItemAddData"))) then /* 아이템 옵션 있으면 생략 */ 
        set rand3 = "tt_" + JNServerTime("MMdd_HHmm") + "-" + GetPlayerName(GetOwningPlayer(GetTriggerUnit())) 
        if(GetRandomReal(0., 100.) <= 20.) then 
          set rand3 = rand3 + "'ra_매직" 
          set rand3 = rand3 + "'" + AddOption(1) 
        elseif(GetRandomReal(0., 100.) <= 20.) then 
          set rand3 = rand3 + "'ra_레어" 
          set rand3 = rand3 + "'" + AddOption(1) 
          set rand3 = rand3 + "'" + AddRandom(1) 
          call Bufftt(CreateTextTagUnitBJ("레어", GetTriggerUnit(), 30., 9., GetRandomReal(0., 100.), GetRandomReal(0., 100.), GetRandomReal(0., 100.), 0)) 
        elseif(GetRandomReal(0., 100.) <= 20.) then 
          set rand3 = rand3 + "'ra_유니크" 
          set rand3 = rand3 + "'" + AddOption(1) 
          set rand3 = rand3 + "'" + AddRandom(1) 
          set rand3 = rand3 + "'" + AddRandom(2) 
          call Bufftt(CreateTextTagUnitBJ("유니크!", GetTriggerUnit(), 30., 10., GetRandomReal(0., 100.), GetRandomReal(0., 100.), GetRandomReal(0., 100.), 0)) 
        elseif(GetRandomReal(0., 100.) <= 20.) then 
          set rand3 = rand3 + "'ra_에픽" 
          set rand3 = rand3 + "'" + AddOption(1) 
          set rand3 = rand3 + "'" + AddRandom(1) 
          set rand3 = rand3 + "'" + AddRandom(2) 
          set rand3 = rand3 + "'" + AddRandom(3) 
          call Bufftt(CreateTextTagUnitBJ("에픽!!", GetTriggerUnit(), 30., 11., GetRandomReal(0., 100.), GetRandomReal(0., 100.), GetRandomReal(0., 100.), 0)) 
        elseif(GetRandomReal(0., 100.) <= 20.) then 
          set rand3 = rand3 + "'ra_히든" 
          set rand3 = rand3 + "'" + AddOption(1) 
          set rand3 = rand3 + "'" + AddOption(2) 
          set rand3 = rand3 + "'" + AddRandom(1) 
          set rand3 = rand3 + "'" + AddRandom(2) 
          set rand3 = rand3 + "'" + AddRandom(3) 
          call Bufftt(CreateTextTagUnitBJ("히든!!!", GetTriggerUnit(), 30., 12., GetRandomReal(0., 100.), GetRandomReal(0., 100.), GetRandomReal(0., 100.), 0)) 
        elseif(GetRandomReal(0., 100.) <= 20.) then 
          set rand3 = rand3 + "'ra_등급외" 
          set rand3 = rand3 + "'" + AddOption(1) 
          set rand3 = rand3 + "'" + AddOption(2) 
          set rand3 = rand3 + "'" + AddOption(3) 
          set rand3 = rand3 + "'" + AddRandom(1) 
          set rand3 = rand3 + "'" + AddRandom(2) 
          set rand3 = rand3 + "'" + AddRandom(3) 
          call Bufftt(CreateTextTagUnitBJ("등급 외!!!!", GetTriggerUnit(), 30., 13., GetRandomReal(0., 100.), GetRandomReal(0., 100.), GetRandomReal(0., 100.), 0)) 
        else 
          set rand3 = rand3 + "'ra_노말" 
        endif 
      
        /* 강화 적용 */
        if(GetRandomReal(0., 100.) <= 80.) then 
          set rand3 = rand3 + "'ec_" + I2S(GetRandomInt(1, 4)) 
        endif 
      
        /* 등급 적용 - 여기선 소켓 */
        if(GetRandomReal(0., 100.) <= 10.) then 
          set rand3 = rand3 + "'qo_S" 
          set rand3 = rand3 + "'" + AddSoket(1) 
          set rand3 = rand3 + "'" + AddSoket(2) 
          set rand3 = rand3 + "'" + AddSoket(3) 
        elseif(GetRandomReal(0., 90.) <= 10.) then 
          set rand3 = rand3 + "'qo_A+" 
          set rand3 = rand3 + "'" + AddSoket(1) 
          set rand3 = rand3 + "'" + AddSoket(2) 
        elseif(GetRandomReal(0., 80.) <= 10.) then 
          set rand3 = rand3 + "'qo_A" 
          set rand3 = rand3 + "'" + AddSoket(1) 
          set rand3 = rand3 + "'" + AddSoket(2) 
        elseif(GetRandomReal(0., 70.) <= 10.) then 
          set rand3 = rand3 + "'qo_B+" 
          set rand3 = rand3 + "'" + AddSoket(1) 
        elseif(GetRandomReal(0., 60.) <= 10.) then 
          set rand3 = rand3 + "'qo_B" 
          set rand3 = rand3 + "'" + AddSoket(1) 
        elseif(GetRandomReal(0., 50.) <= 10.) then 
          set rand3 = rand3 + "'qo_C+" 
        elseif(GetRandomReal(0., 40.) <= 10.) then 
          set rand3 = rand3 + "'qo_C" 
        elseif(GetRandomReal(0., 30.) <= 10.) then 
          set rand3 = rand3 + "'qo_D+" 
        elseif(GetRandomReal(0., 20.) <= 10.) then 
          set rand3 = rand3 + "'qo_D" 
        else 
          set rand3 = rand3 + "'qo_F" 
        endif 
      
        if(Slot > 0) then 
          set rand1 = GetRandomInt(29, 34) 
          call SaveStr(hash, GetHandleId(GetManipulatedItem()), StringHash("ItemAddData"), rand3) 
        else 
          call BJDebugMsg("인벤토리가 모두 찼습니다.") 
          call UnitRemoveItem(GetTriggerUnit(), GetManipulatedItem()) 
          return 
        endif 
      endif 
      call SaveItemHandle(hash, P, StringHash("ItemData" + I2S(Slot)), GetManipulatedItem()) 
      if(GetLocalPlayer() == Player(P - 1)) then 
        call DzFrameSetTexture(Frame_InvenButtonsBackDrop[Slot], EXGetItemDataString(GetItemTypeId(GetManipulatedItem()), 1), 0) 
      endif 
      call SetItemPosition(GetManipulatedItem(), XX, YY) 
    else 
      call RemoveItem(GetManipulatedItem()) 
    endif 
  endfunction 

  private function Init takes nothing returns nothing 
    call TriggerRegisterAnyUnitEventBJ(triggerItemRandomEnchanter, EVENT_PLAYER_UNIT_PICKUP_ITEM) 
    call TriggerAddAction(triggerItemRandomEnchanter, function Trig_ItemGet_Actions) 
  endfunction 
endscope