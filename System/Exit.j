scope Exit initializer Init
  globals 
    trigger exitTrigger = CreateTrigger() 
  endglobals 
  private function Trig_Exit_Actions takes nothing returns nothing 
    call MsgAll(GetPlayerName(GetTriggerPlayer()) + " 나감") 
  endfunction 
  private function Init takes nothing returns nothing 
    call TriggerRegisterPlayerEventLeave(exitTrigger, Player(0)) 
    call TriggerRegisterPlayerEventLeave(exitTrigger, Player(1)) 
    call TriggerRegisterPlayerEventLeave(exitTrigger, Player(2)) 
    call TriggerRegisterPlayerEventLeave(exitTrigger, Player(3)) 
    call TriggerRegisterPlayerEventLeave(exitTrigger, Player(4)) 
    call TriggerRegisterPlayerEventLeave(exitTrigger, Player(5)) 
    call TriggerRegisterPlayerEventLeave(exitTrigger, Player(6)) 
    call TriggerRegisterPlayerEventLeave(exitTrigger, Player(7)) 
    call TriggerRegisterPlayerEventLeave(exitTrigger, Player(8)) 
    call TriggerRegisterPlayerEventLeave(exitTrigger, Player(9)) 
    call TriggerRegisterPlayerEventLeave(exitTrigger, Player(10)) 
    call TriggerRegisterPlayerEventLeave(exitTrigger, Player(11)) 
    call TriggerAddAction(exitTrigger, function Trig_Exit_Actions) 
  endfunction 
endscope