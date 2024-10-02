scope JNObjectGui initializer init /* requires JNServer, JNString, DzAPISync */
  globals 
    constant string JN_MAPID = "LoD" 
    constant string JN_SECRETKEY = "9d316ce7-eb22-4637-8dd0-9d869aabfb7a" 
    player GetServerPlayer 
    string GetServerCode = null 
    integer JN_LoaderNow = 0 
  endglobals 

  // JNObjectLoadSave 
  function JNObjectCharacterInitG takes player p, string character returns nothing 
    if GetLocalPlayer() == p then 
      if udg_hero[GetPlayerId(p) + 1] == null then 
        call JNObjectCharacterResetCharacter(Name[GetPlayerId(p) + 1]) 
      endif 
      call JNObjectCharacterInit(JN_MAPID, Name[GetPlayerId(p) + 1], JN_SECRETKEY, character) 
    endif 
  endfunction 

  private function SendSyncedData takes nothing returns nothing 
    call Load_ExecuteAction.execute(DzGetTriggerSyncPlayer(), S2I(JNStringSplit(DzGetTriggerSyncData(), "'", 0)))
  endfunction 

  // JNObjectCharacterLoad 
  function SyncCuttedInteger takes nothing returns nothing 
    local string str = DzGetTriggerSyncData() 
    call SaveInteger(hash, GetPlayerId(DzGetTriggerSyncPlayer()) + 1, StringHash(JNStringSplit(str, "!", 0)), S2I(JNStringSplit(str, "!", 1))) 
    debug call BJDebugMsg("load/save i - " + I2S(GetPlayerId(DzGetTriggerSyncPlayer()) + 1) + "/" + JNStringSplit(str, "!", 0) + "/" + JNStringSplit(str, "!", 1)) 
  endfunction 

  function SyncCuttedString takes nothing returns nothing 
    local string str = DzGetTriggerSyncData() 
    call SaveStr(hash, GetPlayerId(DzGetTriggerSyncPlayer()) + 1, StringHash(JNStringSplit(str, "!", 0)), JNStringSplit(str, "!", 1)) 
    debug call BJDebugMsg("load/save s - " + I2S(GetPlayerId(DzGetTriggerSyncPlayer()) + 1) + "/" + JNStringSplit(str, "!", 0) + "/" + JNStringSplit(str, "!", 1)) 
  endfunction 

  private function init takes nothing returns nothing 
    local trigger trig = CreateTrigger() 
    local integer i = 0 

    call DzTriggerRegisterSyncData(trig, "JNEndSync", false) 
    call TriggerAddAction(trig, function SendSyncedData) 

    set trig = CreateTrigger() 
    call DzTriggerRegisterSyncData(trig, "JNIntSync", false) 
    call TriggerAddAction(trig, function SyncCuttedInteger) 

    set trig = CreateTrigger() 
    call DzTriggerRegisterSyncData(trig, "JNStrSync", false) 
    call TriggerAddAction(trig, function SyncCuttedString) 

    loop 
      exitwhen i == bj_MAX_PLAYERS 
      set Name[i + 1] = GetPlayerName(Player(i)) 
      set i = i + 1 
    endloop 
    
    call JNUse() 
    
    set trig = null 
  endfunction 

endscope