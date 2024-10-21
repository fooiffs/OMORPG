scope TestCommands
  struct Repick
    private static trigger repickTrigger = CreateTrigger()
    
    private static method repickAction takes nothing returns nothing
      call Select.SetRepick(GetTriggerPlayer())
    endmethod 

    private static method onInit takes nothing returns nothing
      local integer loopA = 0
      loop
        exitwhen MAX_PLAYER_COUNT-1 <= loopA
        call TriggerRegisterPlayerChatEvent(repickTrigger, Player(loopA), "-재선택", true)
        set loopA = loopA + 1
      endloop 
      call TriggerAddAction(repickTrigger, function Repick.repickAction) 
    endmethod
  endstruct
  struct CommandLevelUp
    private static trigger levelUpTrigger = CreateTrigger()
    
    private static method levelupAction takes nothing returns nothing
      call PlayerResource[GetPlayerId(GetTriggerPlayer())+1].character.LevelUp(10)
    endmethod 

    private static method onInit takes nothing returns nothing
      local integer loopA = 0
      loop
        exitwhen MAX_PLAYER_COUNT-1 <= loopA
        call TriggerRegisterPlayerChatEvent(levelUpTrigger, Player(loopA), "-렙업", true)
        set loopA = loopA + 1
      endloop 
      call TriggerAddAction(levelUpTrigger, function CommandLevelUp.levelupAction) 
    endmethod
  endstruct
endscope