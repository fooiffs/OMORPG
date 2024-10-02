scope Load
  struct Load
    private static string array EquipData2[MAX_SAVE_EQUIP]
    private static string array InvenData2[MAX_SAVE_INVENTORY]
    public static trigger triggerLoad = CreateTrigger()


    private static method GetEquipData takes integer P, integer Slot returns nothing
      local integer loopA = MAX_SAVE_EQUIP-1
      loop
        set EquipData2[loopA] = LoadStringBJ(StringHash(I2S(Slot) + "e" + I2S(loopA)), P, hash)

        exitwhen loopA <= 1
        set loopA = loopA + 1
      endloop
    endmethod
    private static method SetEquipData takes integer currentPlayerId returns nothing
      local integer loopA = MAX_SAVE_EQUIP-1
      local string tempString = ""
      loop
        set tempString = EquipData2[loopA]
        if ( IsVaild(tempString) ) then
          set bj_lastCreatedItem = CreateItem(S2I(JNStringSplit(tempString, "/", 0)), 0, 0)
          call SaveItemHandle(hash, currentPlayerId, StringHash("ItemData" + I2S(-loopA)), bj_lastCreatedItem)
          call SaveStr(hash, GetHandleId(bj_lastCreatedItem), StringHash("ItemAddData"), JNStringSplit(tempString, "/", 1))
          if ( Player(currentPlayerId-1) == GetLocalPlayer() ) then
            call DzFrameSetTexture(Equip_EquipBackdrop[loopA], EXGetItemDataString(GetItemTypeId(bj_lastCreatedItem), 1), 0)
          endif
          call Equip_Process(EXGetItemDataString(GetItemTypeId(bj_lastCreatedItem), 3) + "'" + LoadStr(hash, GetHandleId(bj_lastCreatedItem), StringHash("ItemAddData")), currentPlayerId)
          call SetItemPosition(bj_lastCreatedItem, StoreX, StoreY)
        endif

        exitwhen loopA <= 1
        set loopA = loopA - 1
      endloop
    endmethod
    private static method SetInvenData takes integer currentPlayerId, boolean removeIfEmpty returns nothing
      local integer loopA = MAX_SAVE_INVENTORY-1
      local string tempString = ""
      loop
        set tempString = InvenData2[loopA]
        if ( IsVaild(tempString) ) then
          set bj_lastCreatedItem = CreateItem(S2I(JNStringSplit(tempString, "/", 0)), 0, 0)
          
          call SaveItemHandle(hash, currentPlayerId, StringHash("ItemData" + I2S(loopA)), bj_lastCreatedItem)
          call SaveStr(hash, GetHandleId(bj_lastCreatedItem), StringHash("ItemAddData"), JNStringSplit(tempString, "/", 1))
          if ( Player(currentPlayerId-1) == GetLocalPlayer() ) then
            call DzFrameSetTexture(Frame_InvenButtonsBackDrop[loopA], EXGetItemDataString(GetItemTypeId(bj_lastCreatedItem), 1), 0)
          endif
          call SetItemPosition(bj_lastCreatedItem, StoreX, StoreY)
        elseif ( removeIfEmpty and HaveSavedHandle(hash, currentPlayerId, StringHash("ItemData" + I2S(loopA))) ) then
          set bj_lastCreatedItem = LoadItemHandle(hash, currentPlayerId, StringHash("ItemData" + I2S(loopA)))
          call FlushChildHashtable(hash, GetHandleId(bj_lastCreatedItem))
          call RemoveItem(bj_lastCreatedItem)
          call RemoveSavedHandle(hash, currentPlayerId, StringHash("ItemData" + I2S(loopA)))
          
          if ( Player(currentPlayerId-1) == GetLocalPlayer() ) then
            call DzFrameSetTexture(Frame_InvenButtonsBackDrop[loopA], "Inven_Empty.blp", 0)
          endif
        endif

        exitwhen loopA <= 1
        set loopA = loopA - 1
      endloop
    endmethod
    private static method GetInvenData takes integer P returns nothing
      local integer loopA = MAX_SAVE_INVENTORY-1
      loop
        set InvenData2[loopA] = LoadStringBJ(StringHash("i" + I2S(loopA)), P, hash)

        exitwhen loopA <= 1
        set loopA = loopA - 1
      endloop
    endmethod
    private static method Actions takes nothing returns nothing
      local integer currentPlayerId = GetPlayerId(GetServerPlayer) + 1
      local integer receivedData = Select.NowSelect[currentPlayerId]
      local integer tempInteger = 0
      local string tempString = ""
      
      if ( 0 < JN_LoaderNow ) then
        call Msg(GetServerPlayer, "로드 |cffff0000실패!|r - 현재 " + GetPlayerName(Player(JN_LoaderNow - 1)) + "|r님이 로드하고 있습니다. 잠시 후 다시 시도하세요.")
        return
      elseif ( 0 == receivedData ) then
        call Msg(GetServerPlayer, "로드 |cff00ff00가능!|r - 로드할 준비가 되었습니다.")
        return
      elseif ( IsEmpty(CharacterData[receivedData].SelectDatas) ) then
        call Msg(GetServerPlayer, "로드 |cffff0000실패!|r - 캐릭터가 정보가 비어 있습니다. 다시 선택해주세요.")
        return
      endif
      
      // 데이터 설정
        // 현재 로드중인 플레이어 설정
      set JN_LoaderNow = currentPlayerId
        // 불러올 데이터
      set tempString = JNStringSplit(JNObjectCharacterGetString(GetPlayerName(GetServerPlayer), "Data"), "/", receivedData)

        // 불러올 레벨 : [1_0'1.2500] 에서, '1. 의 1을 추출
      set tempInteger = S2I(JNStringSplit(JNStringSplit(tempString, "'", 1), ".", 0))

      call Msg(GetServerPlayer, "로드/플레이어["+I2S(JN_LoaderNow)+"], 슬롯["+I2S(receivedData)+"] 로드, Lv("+I2S(tempInteger)+") 진행중: " + tempString)

      // 생성
      set udg_hero[currentPlayerId] = CreateUnit(GetServerPlayer, CharacterData[receivedData].UnitCode, Select.startCreateX, Select.startCreateY, bj_UNIT_FACING)

      // 신규, 이어하기 알림
      if ( 0 == tempInteger ) then /* 신규 시작 */
        call MsgAll(GetPlayerName(GetServerPlayer) + "님이 " + JNStringSplit(CharacterData[receivedData].SelectDatas, "'", 0) + "을(를) 선택하였습니다.")
      else
        call MsgAll(GetPlayerName(GetServerPlayer) + "님이 Lv." + I2S(tempInteger) + " " + JNStringSplit(CharacterData[receivedData].SelectDatas, "'", 0) + "(으)로 모험을 이어갑니다.")
        call SetHeroLevel(udg_hero[currentPlayerId], tempInteger, false)
        call SetHeroXP(udg_hero[currentPlayerId], S2I(JNStringSplit(JNStringSplit(tempString, "'", 1), ".", 1)), false)
      endif

      // 집 이름 설정
      set tempString = GetObjectName('n000')
      if ( GetServerPlayer == GetLocalPlayer() ) then
        set tempString = GetPlayerName(GetServerPlayer) + " 가문의 " + GetObjectName(CharacterData[receivedData].UnitCode) + "네 집"
      endif
      call SetUnitTypeName('n000', tempString)


      // 영웅 이름 설정
      set tempString = LoadStr(hash, currentPlayerId, StringHash(I2S(receivedData) + "_Name"))
      if ( IsVaild(tempString) ) then
        call SetHeroProperNameIndex(udg_hero[currentPlayerId], currentPlayerId)
        call SetHeroProperName(udg_hero[currentPlayerId], tempString)
      else
        call SetHeroProperNameIndex(udg_hero[currentPlayerId], 0)
      endif

      // 장비, 인벤토리 설정
      if ( tempInteger <= 0 ) then
        call ResetEquip(currentPlayerId)
      else
        call GetEquipData(currentPlayerId, receivedData)
        call SetEquipData(currentPlayerId)
      endif
      call GetInvenData(currentPlayerId)
      call SetInvenData(currentPlayerId, true)

      // 메인 프레임 보임
      if ( GetLocalPlayer() == GetServerPlayer ) then
        call DzFrameShow(GetMainFrame(), true)
        call DzFrameShow(GetSubFrame(), true)
      endif
      
      set currentPlayerId = 0

      call PortraitEditor_Change()
    endmethod
  
    private static method onInit takes nothing returns nothing
      call TriggerAddAction(triggerLoad, function Load.Actions)
    endmethod
  endstruct
  static if false then
    function Load_ExecuteAction takes player target, integer data returns nothing
    endfunction
  endif
  public function ExecuteAction takes player target, integer data returns nothing
    set GetServerPlayer = target
    set Select.NowSelect[GetPlayerId(target)+1] = data
    call TriggerExecute(Load.triggerLoad)
  endfunction
endscope