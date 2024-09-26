scope LoadAuto initializer Init
  globals
    string array Name
    private integer int = 0
  endglobals
  private function msgCheck2 takes player p, integer i returns boolean
    if ( i == 0 ) then
      return true
    elseif ( i == -1 ) then
      call DisplayTimedTextToPlayer(p, 0., 0., 4, "캐릭터 로드 실패: 인증 실패")
    elseif ( i == -2 ) then
      call DisplayTimedTextToPlayer(p, 0., 0., 4, "캐릭터 파일 로드 실패: 현재 사용중(동시로드 비허용 맵)")
    elseif ( i == -3 ) then
      call DisplayTimedTextToPlayer(p, 0., 0., 4, "캐릭터 파일 로드 실패: 이미 로드됨")
      return true
    endif
   return false
  endfunction
  private function RemoveItemData takes item t returns boolean
    if ( t != null ) then
      //call RemoveSavedString(hash, GetHandleId(t), StringHash("ItemAddData"))
      call FlushChildHashtable(hash, GetHandleId(t))
      call RemoveItem(t)
      return true
    endif
    return false
  endfunction
  function ResetEquip takes integer P returns nothing
   local integer i = Save_MAX_EQUIP
    /* 장비 비우기 16~1 */
    loop
      if ( RemoveItemData(LoadItemHandle(hash, P, StringHash("ItemData"+I2S(-i)))) ) then
        if ( GetLocalPlayer() == Player(P-1) ) then
          call DzFrameSetTexture(Equip_EquipBackdrop[-i], Equip_I2BE(-i), 0)
        endif
      endif
      exitwhen i <= 1
      set i = i - 1
    endloop
  endfunction
  function ResetInven takes integer P returns nothing
   local integer i = Save_MAX_INVENTORY
   /* 인벤 비우기 1~49 */
    call SaveInteger(hash, P, StringHash("ItemData0"), 1)
    loop
      if ( RemoveItemData(LoadItemHandle(hash, P, StringHash("ItemData"+I2S(i)))) ) then
        if ( GetLocalPlayer() == Player(P-1) ) then
          call DzFrameSetTexture(Frame_InvenButtonsBackDrop[i], "Inven_Empty.blp", 0)
        endif
      endif
      exitwhen i <= 1
      set i = i - 1
    endloop
  endfunction
  function ResetLoad takes integer P returns nothing
    call RemoveUnit(udg_hero[P])
    
    call ResetEquip(P)
    call ResetInven(P)
  endfunction
  function Loading takes player p returns nothing
   local integer P = GetPlayerId(p)+1
   local integer loopA = 1
   local integer loopB = 1
   local string s = ""
    //call Msg(p, "Loading..." + I2S(P))
    call ResetLoad(P)
    if ( GetLocalPlayer() == p ) then 
      if ( msgCheck2(p, JNObjectCharacterInit(JN_MAPID, Name[P], JN_SECRETKEY, "Save")) ) then
        set s = JNObjectCharacterGetString(Name[P], "Data")
        if ( IsEmpty(s) ) then
          //call Msg(p, I2S(P) + ", 새로 시작")
          call DzSyncData("SaveData", "")
        else
          call DzSyncData("SaveData", s)
          
          call Time_FirstLoad(p, s)
          
          /* 장비 6슬롯 x 16개 */
          loop
            loop
              set s = JNObjectCharacterGetString(Name[P], I2S(loopB)+"e"+I2S(loopA))
              if ( s != "" ) then
                call DzSyncData("JNStrSync", I2S(loopB)+"e"+I2S(loopA)+"!"+s)
              endif
            
              exitwhen loopA >= Save_MAX_EQUIP
              set loopA = loopA + 1
            endloop
            
            set s = JNObjectCharacterGetString(Name[P], I2S(loopB)+"Name[P]")
            if ( s != "" ) then
              call DzSyncData("JNStrSync", I2S(loopB)+"_Name[P]"+"!"+s)
            endif
            exitwhen loopB >= Save_MAX_CHARACTER
            set loopB = loopB + 1
          endloop
          set loopA = 1 /* 인벤토리 1~49 */
          loop
            set s = JNObjectCharacterGetString(Name[P], "i"+I2S(loopA))
            if ( s != "" ) then
              call DzSyncData("JNStrSync", "i"+I2S(loopA)+"!"+s)
            endif
            exitwhen loopA >= Save_MAX_INVENTORY
            set loopA = loopA + 1
          endloop
        endif
      endif
      call DzSyncData("JNEndSync", "_")
    endif
  endfunction
  private function DataSync takes nothing returns nothing
    call Select_GetSaveData(DzGetTriggerSyncPlayer(), DzGetTriggerSyncData())
  endfunction
  private function AfterLoad takes nothing returns nothing
    if ( udg_hero[GetPlayerId(GetTriggerPlayer())+1] != null ) then
        call Msg(GetTriggerPlayer(), "이미 선택 혹은 로드하였습니다.")
      else
        call Loading(GetTriggerPlayer())
      endif
  endfunction
  private function LoadingAll takes nothing returns nothing
    if ( GetPlayerSlotState(Player(int)) == PLAYER_SLOT_STATE_PLAYING ) and ( GetPlayerController(Player(int)) == MAP_CONTROL_USER ) then
      call Loading(Player(int))
    elseif ( int >= bj_MAX_PLAYERS-1 ) then
      call DestroyTimer(GetExpiredTimer())
    endif
    set int = int + 1
  endfunction
  private function Init takes nothing returns nothing
    local integer loopA = bj_MAX_PLAYERS-1
    local trigger trig = CreateTrigger()
    call TimerStart(CreateTimer(), .15, true, function LoadingAll)
    loop
      if ( GetPlayerSlotState(Player(loopA)) == PLAYER_SLOT_STATE_PLAYING ) and ( GetPlayerController(Player(loopA)) == MAP_CONTROL_USER ) then
        call TriggerRegisterPlayerChatEvent(trig, Player(loopA), "-load", false)
        set Name[loopA+1] = GetPlayerName(Player(loopA))
      endif
      exitwhen loopA == 0
      set loopA = loopA - 1
    endloop
    call TriggerAddAction(trig, function AfterLoad)
    
    set trig = CreateTrigger()
    call DzTriggerRegisterSyncData(trig, "SaveData", false)
    call TriggerAddAction(trig, function DataSync)
    set trig = null
  endfunction
endscope