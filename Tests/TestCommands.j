scope TestCommands
  struct Commands
    private static trigger repickTrigger = CreateTrigger()
    
    private static method repickAction takes nothing returns nothing
      call Select.SetRepick(GetTriggerPlayer())
    endmethod 

    private static method levelupAction takes nothing returns nothing
      call PlayerResource[GetPlayerId(GetTriggerPlayer())+1].character.LevelUp(10)
    endmethod

    private static method reviveAction takes nothing returns nothing
      call PlayerResource[GetPlayerId(GetTriggerPlayer())+1].character.Revive()
    endmethod

    private static method onInit takes nothing returns nothing
      local integer loopA = 0
      local trigger trig = CreateTrigger()
      loop
        exitwhen MAX_PLAYER_COUNT-1 <= loopA
        call TriggerRegisterPlayerChatEvent(trig, Player(loopA), "-재선택", true)
        set loopA = loopA + 1
      endloop 
      call TriggerAddAction(trig, function thistype.repickAction)

      set loopA = 0
      set trig = CreateTrigger()
      loop
        exitwhen MAX_PLAYER_COUNT-1 <= loopA
        call TriggerRegisterPlayerChatEvent(trig, Player(loopA), "-렙업", true)
        set loopA = loopA + 1
      endloop 
      call TriggerAddAction(trig, function thistype.levelupAction) 

      set loopA = 0
      set trig = CreateTrigger()
      loop
        exitwhen MAX_PLAYER_COUNT-1 <= loopA
        call TriggerRegisterPlayerChatEvent(trig, Player(loopA), "-부활", true)
        set loopA = loopA + 1
      endloop 
      call TriggerAddAction(trig, function thistype.reviveAction)
    endmethod
  endstruct
endscope