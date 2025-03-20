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
      local string chat = JNStringSplit(JNStringSplit(GetEventPlayerChatString(), " ", 0), "-", 1)
      local integer level = S2I(JNStringSplit(GetEventPlayerChatString(), " ", 1))
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

    // native EXExecuteScript takes string script returns string
    private static method ChangeHeroName takes nothing returns nothing
        local integer P = GetPlayerId(GetTriggerPlayer()) + 1
        local unit u = udg_hero[P]
        if(StringLength(SubString(GetEventPlayerChatString(), 8, 99)) < 4) then
            call SetHeroProperNameIndex(u, 0)
          //call Print("기본 이름으로 설정: " + JNStringSplit(EXExecuteScript("(require'jass.slk').unit[" + I2S(GetUnitTypeId(u))+"].Propernames"),",",0))
        else
            call SetHeroProperNameIndex(u, P)
            call SetHeroProperName(u, SubString(GetEventPlayerChatString(), 8, 99))
        endif
        //call Print("now: No." + I2S(GetHeroProperNameIndex(u)) + "/" + GetHeroProperName(u))
        set u = null
    endmethod

    private static method I2U takes integer i returns unit
        if i == 1 then
           return gg_unit_H000_0011
        elseif i == 2 then
            return gg_unit_H001_0010
        elseif i == 3 then
            return gg_unit_H002_0009
        elseif i == 4 then
            return gg_unit_H003_0008
        elseif i == 5 then
            return gg_unit_H005_0003
        elseif i == 6 then
            return gg_unit_H004_0007
        else
            return null
        endif
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
        call TriggerRegisterPlayerChatEvent(trig, Player(loopA), "-종류 ", false)
        call TriggerRegisterPlayerChatEvent(trig, Player(loopA), "-소켓 ", false)
        call TriggerRegisterPlayerChatEvent(trig, Player(loopA), "-등급 ", false)
        call TriggerRegisterPlayerChatEvent(trig, Player(loopA), "-강화 ", false)
        call TriggerRegisterPlayerChatEvent(trig, Player(loopA), "-초기화", true)
        set loopA = loopA + 1
      endloop
      call TriggerAddAction(trig, function thistype.itemEndchantAction)

      set loopA = 0
      set trig = CreateTrigger()
      loop
        exitwhen MAX_PLAYER_COUNT-1 <= loopA
        call TriggerRegisterPlayerChatEvent(trig, Player(loopA), "-이름 ", false)
        set loopA = loopA + 1
      endloop
      call TriggerAddAction(trig, function thistype.ChangeHeroName)

      /* 기본 설치 유닛 기본 이름인 0번째 Index로 설정 */
      set loopA = 1
      loop
          call SetHeroProperNameIndex(I2U(loopA), 0)
          exitwhen loopA >= 6
          set loopA = loopA + 1
      endloop
    endmethod
  endstruct
endscope