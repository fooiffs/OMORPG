globals 
  string array InvenData2 
  string array EquipData2 
  trigger gg_trg_Load_End 
endglobals 
scope Load initializer Init 
  function SetEquipData takes integer P, integer Slot returns nothing 
    local integer loopA = 1 
    loop 
      set EquipData2[loopA] = LoadStringBJ(StringHash(I2S(Slot) + "e" + I2S(loopA)), P, hash) 
      exitwhen loopA >= Save_MAX_EQUIP 
      set loopA = loopA + 1 
    endloop 
  endfunction 
  function SetInvenData takes integer P returns nothing 
    local integer loopA = 1 
    loop 
      set InvenData2[loopA] = LoadStringBJ(StringHash("i" + I2S(loopA)), P, hash) 
      exitwhen loopA >= Save_MAX_INVENTORY 
      set loopA = loopA + 1 
    endloop 
  endfunction 
  function Trig_JN_Object_Load2_Actions takes nothing returns nothing 
    local integer loopA = 0 
    local string Data = "" 
    local string HouseName = "" 
    if(JN_LoaderNow == 0) then 
      set JN_LoaderNow = GetPlayerId(GetServerPlayer) + 1 
      set Data = JNStringSplit(LoadStr(hash, JN_LoaderNow, StringHash("Data")), "/", Select_NowSelect[JN_LoaderNow]) 
      if(IsNotEmpty(Data)) then 
        if(Select_NowSelect[JN_LoaderNow] == 0) then 
          call DisplayTimedTextToPlayer(GetServerPlayer, 0., 0., 20, "로드 |cff00ff00가능! |r - 로드할 준비가 되었습니다.") 
        else 
          set loopA = S2I(JNStringSplit(Data, "'", 1)) 
          if(loopA == 0) then /* 신규 시작 */
            call Msg(GetLocalPlayer(), GetPlayerName(GetServerPlayer) + "님이 " + JNStringSplit(CharacterData[Select_NowSelect[JN_LoaderNow]].SelectDatas, "'", 0) + "을(를) 선택하였습니다.") 
            call ResetEquip(JN_LoaderNow) 
          else 
            call Msg(GetLocalPlayer(), GetPlayerName(GetServerPlayer) + "님이 Lv." + I2S(loopA) + " " + JNStringSplit(CharacterData[Select_NowSelect[JN_LoaderNow]].SelectDatas, "'", 0) + "(으)로 모험을 이어갑니다.") 
            call SetEquipData(JN_LoaderNow, Select_NowSelect[JN_LoaderNow]) 
          endif 
          
          //집 이름 변경 
          set HouseName = GetObjectName('nefm') 
          if(GetLocalPlayer() == GetServerPlayer) then 
            
            set HouseName = GetPlayerName(GetServerPlayer) + "가문의 " + GetObjectName(CharacterData[Select_NowSelect[JN_LoaderNow]].UnitCode) + "네 집" 
          endif 
          call SetObjectName('nefm', HouseName) 
          
          set udg_hero[JN_LoaderNow] = CreateUnit(GetServerPlayer, CharacterData[Select_NowSelect[JN_LoaderNow]].UnitCode, Select_startXX, Select_startYY, bj_UNIT_FACING) 
          if(GetLocalPlayer() == GetServerPlayer) then 
            call DzFrameShow(Frame_Main, true) 
          endif 
          
          call SetInvenData(JN_LoaderNow) 
          
          call SetHeroLevel(udg_hero[JN_LoaderNow], loopA, false) 
          call SetHeroXP(udg_hero[JN_LoaderNow], S2I(JNStringSplit(JNStringSplit(Data, "'", 1), ".", 1)), false) 
  
          
          set Data = LoadStr(hash, JN_LoaderNow, StringHash(I2S(Select_NowSelect[JN_LoaderNow]) + "_" + "Name")) 
          if(IsNotEmpty(Data)) then 
            call SetHeroProperNameIndex(udg_hero[JN_LoaderNow], JN_LoaderNow) 
            call SetHeroProperName(udg_hero[JN_LoaderNow], Data) 
          else 
            call SetHeroProperNameIndex(udg_hero[JN_LoaderNow], 0) 
          endif 
                  
          set loopA = 1 
          loop 
            set Data = EquipData2[loopA] 
            if(IsNotEmpty(Data)) then 
              set bj_lastCreatedItem = CreateItem(S2I(JNStringSplit(Data, "/", 0)), 0, 0) 
              
              call SaveItemHandle(hash, JN_LoaderNow, StringHash("ItemData" + I2S(-loopA)), bj_lastCreatedItem) 
              call SaveStr(hash, GetHandleId(bj_lastCreatedItem), StringHash("ItemAddData"), JNStringSplit(Data, "/", 1)) 
              if(GetLocalPlayer() == GetServerPlayer) then 
                call DzFrameSetTexture(Equip_EquipBackdrop[loopA], EXGetItemDataString(GetItemTypeId(bj_lastCreatedItem), 1), 0) 
              endif 
              call Equip_Process(EXGetItemDataString(GetItemTypeId(bj_lastCreatedItem), 3) + "'" + LoadStr(hash, GetHandleId(bj_lastCreatedItem), StringHash("ItemAddData")), JN_LoaderNow) 
              call SetItemPosition(bj_lastCreatedItem, XX, YY) 
            endif 
            exitwhen loopA >= Save_MAX_EQUIP 
            set loopA = loopA + 1 
          endloop 
          set loopA = 1 
          loop 
            set Data = InvenData2[loopA] 
            if(IsNotEmpty(Data)) then 
              set bj_lastCreatedItem = CreateItem(S2I(JNStringSplit(Data, "/", 0)), 0, 0) 
              
              call SaveItemHandle(hash, JN_LoaderNow, StringHash("ItemData" + I2S(loopA)), bj_lastCreatedItem) 
              call SaveStr(hash, GetHandleId(bj_lastCreatedItem), StringHash("ItemAddData"), JNStringSplit(Data, "/", 1)) 
              if(GetLocalPlayer() == GetServerPlayer) then 
                call DzFrameSetTexture(Frame_InvenButtonsBackDrop[loopA], EXGetItemDataString(GetItemTypeId(bj_lastCreatedItem), 1), 0) 
              endif 
              call SetItemPosition(bj_lastCreatedItem, XX, YY) 
            endif 
            exitwhen loopA >= Save_MAX_INVENTORY 
            set loopA = loopA + 1 
          endloop 
        endif 
      else 
        call DisplayTimedTextToPlayer(GetServerPlayer, 0., 0., 20, "로드 준비 |cffff0000실패|r: \"-load\"로 리로드가 가능합니다.") 
      endif 
      set JN_LoaderNow = 0 
    else 
      call DisplayTimedTextToPlayer(GetServerPlayer, 0., 0., 20, "로드 |cffff0000실패! |r - 현재 " + GetPlayerName(Player(JN_LoaderNow - 1)) + "|r님이 로드하고 있습니다. 잠시 후 다시 시도하세요.") 
    endif 
  endfunction 
  
  private function Init takes nothing returns nothing 
    set gg_trg_Load_End = CreateTrigger() 
    call TriggerAddAction(gg_trg_Load_End, function Trig_JN_Object_Load2_Actions) 
  endfunction 
endscope