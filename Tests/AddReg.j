globals 
  trigger gg_trg_test_1_add = null 
endglobals 

scope AddReg initializer Init
  function Trig_test_1_add_Actions takes nothing returns nothing 
    local integer P = GetPlayerId(GetTriggerPlayer()) + 1 
    local integer loopA = 1
    local integer tempKey = 0 
    loop
      set tempKey = EHotkeys.H2I(MenuQuickSlot.BaseHotKey(EMenus.GetMainType(Quickmenu_Buttons[loopA]), EMenus.GetSubTypeId(Quickmenu_Buttons[loopA])))
      call SaveInteger(hash, P, loopA, tempKey)
      call SaveInteger(hash, tempKey, P, loopA)
      //call BJDebugMsg("기본 등록 - " + I2S(loopA) + "번째 메뉴: " + MenuQuickSlot.BaseHotKey(loopA)) 
      call MenuQuickSlot.AddReg(P, loopA, tempKey) 
      
      exitwhen loopA >= QUICK_MENU_COUNT_ALL
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