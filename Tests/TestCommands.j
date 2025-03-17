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

    private static method moveAction takes nothing returns nothing
      local string chat = GetEventPlayerChatString()
      local unit hero = PlayerResource[GetPlayerId(GetTriggerPlayer())+1].character.Unit
      if chat == "-1" then
        call SetUnitPosition(hero, -7968, 4160)
      elseif chat == "-2" then
        call SetUnitPosition(hero, -6560, 4320)
      elseif chat == "-3" then
        call SetUnitPosition(hero, 288, 2016)
      elseif chat == "-4" then
        call SetUnitPosition(hero, 2944, 3040)
      else
        debug call JNWriteLog("error ! -1~4 명령어로 이동가능")
        debug call BJDebugMsg("error ! -1~4 명령어로 이동가능")
        return
      endif

      if GetLocalPlayer() == GetOwningPlayer(hero) then
        call PanCameraTo(GetWidgetX(hero), GetWidgetY(hero))
      endif
    endmethod

    private static method suicideAction takes nothing returns nothing
      call PlayerResource[GetPlayerId(GetTriggerPlayer())+1].character.Suicide()
    endmethod

    private static method itemEndchantAction takes nothing returns nothing
      local string chat = JNStringSplit(GetEventPlayerChatString(), " ", 1)
      local integer level = S2I(JNStringSplit(GetEventPlayerChatString(), " ", 2))
      local integer P = GetPlayerId(GetTriggerPlayer())+1
      local unit hero = PlayerResource[GetPlayerId(GetTriggerPlayer())+1].character.Unit
      local item it = null
      
      if chat == "종류" then
        set it = CreateItem('azhr', GetWidgetX(hero), GetWidgetY(hero))
        call ItemRandomEnchanter.AddEnchant(it, chat, level)
        call UnitAddItem(hero, it)
        set it = CreateItem('ckng', GetWidgetX(hero), GetWidgetY(hero))
        call ItemRandomEnchanter.AddEnchant(it, chat, level)
        call UnitAddItem(hero, it)
        set it = CreateItem('desc', GetWidgetX(hero), GetWidgetY(hero))
        call ItemRandomEnchanter.AddEnchant(it, chat, level)
        call UnitAddItem(hero, it)
        set it = CreateItem('modt', GetWidgetX(hero), GetWidgetY(hero))
        call ItemRandomEnchanter.AddEnchant(it, chat, level)
        call UnitAddItem(hero, it)
        set it = CreateItem('ofro', GetWidgetX(hero), GetWidgetY(hero))
        call ItemRandomEnchanter.AddEnchant(it, chat, level)
        call UnitAddItem(hero, it)
        set it = CreateItem('ratf', GetWidgetX(hero), GetWidgetY(hero))
        call ItemRandomEnchanter.AddEnchant(it, chat, level)
        call UnitAddItem(hero, it)
        set it = CreateItem('rde4', GetWidgetX(hero), GetWidgetY(hero))
        call ItemRandomEnchanter.AddEnchant(it, chat, level)
        call UnitAddItem(hero, it)
      else
        set it = LoadItemHandle(hash, P, StringHash("ItemData1"))
        if it == null then
          debug call JNWriteLog("error! 1번칸에 아이템이 없습니다.")
          debug call BJDebugMsg("error! 1번칸에 아이템이 없습니다.")
          set it = null
          return
        endif
        call ItemRandomEnchanter.AddEnchant(it, chat, level)
      endif
      set it = null
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

      set loopA = 0
      set trig = CreateTrigger()
      loop
        exitwhen MAX_PLAYER_COUNT-1 <= loopA
        call TriggerRegisterPlayerChatEvent(trig, Player(loopA), "-자살", true)
        set loopA = loopA + 1
      endloop
      call TriggerAddAction(trig, function thistype.suicideAction)

      set loopA = 0
      set trig = CreateTrigger()
      loop
        exitwhen MAX_PLAYER_COUNT-1 <= loopA
        call TriggerRegisterPlayerChatEvent(trig, Player(loopA), "-1", true)
        call TriggerRegisterPlayerChatEvent(trig, Player(loopA), "-2", true)
        call TriggerRegisterPlayerChatEvent(trig, Player(loopA), "-3", true)
        call TriggerRegisterPlayerChatEvent(trig, Player(loopA), "-4", true)
        set loopA = loopA + 1
      endloop
      call TriggerAddAction(trig, function thistype.moveAction)

      set loopA = 0
      set trig = CreateTrigger()
      loop
        exitwhen MAX_PLAYER_COUNT-1 <= loopA
        call TriggerRegisterPlayerChatEvent(trig, Player(loopA), "--아이템 종류 ", false)
        call TriggerRegisterPlayerChatEvent(trig, Player(loopA), "--아이템 소켓 ", false)
        call TriggerRegisterPlayerChatEvent(trig, Player(loopA), "--아이템 등급 ", false)
        call TriggerRegisterPlayerChatEvent(trig, Player(loopA), "--아이템 강화 ", false)
        call TriggerRegisterPlayerChatEvent(trig, Player(loopA), "--아이템 초기화", true)
        set loopA = loopA + 1
      endloop
      call TriggerAddAction(trig, function thistype.itemEndchantAction)
    endmethod
  endstruct
endscope