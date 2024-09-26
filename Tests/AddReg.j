globals 
  trigger gg_trg_test_1_add = null 
endglobals 

scope AddReg initializer Init
  function Trig_test_1_add_Actions takes nothing returns nothing 
    local integer P = GetPlayerId(GetTriggerPlayer()) + 1 
    local integer loopA = 1 
    loop 
      //call SaveInteger(NGUI_hash, P, loopA, PKey_H2I(NGUI_BaseHotKey(loopA))) 
      //call SaveInteger(NGUI_hash, PKey_H2I(NGUI_BaseHotKey(loopA)), P, loopA) 
      //call BJDebugMsg("기본 등록 - " + I2S(loopA) + "번째 메뉴: " + NGUI_BaseHotKey(loopA)) 
      call MenuQuickSlot_AddReg(P, loopA, EHotkeys.H2I(MenuQuickSlot_BaseHotKey(loopA))) 
      
      exitwhen loopA >= 23 
      set loopA = loopA + 1 
    endloop 
  endfunction 
  
  //=========================================================================== 
  private function Init takes nothing returns nothing 
    set gg_trg_test_1_add = CreateTrigger() 
    call TriggerRegisterPlayerChatEvent(gg_trg_test_1_add, Player(0), "-등록", true) 
    call TriggerRegisterPlayerChatEvent(gg_trg_test_1_add, Player(1), "-등록", true) 
    call TriggerRegisterPlayerChatEvent(gg_trg_test_1_add, Player(2), "-등록", true) 
    call TriggerAddAction(gg_trg_test_1_add, function Trig_test_1_add_Actions) 
  endfunction 
endscope