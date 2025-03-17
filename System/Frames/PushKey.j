scope PushKey initializer Init
  globals
    private boolean array ChatState
  endglobals
  private function ChatCheck takes nothing returns nothing
    set ChatState[GetPlayerId(DzGetTriggerSyncPlayer()) + 1] = S2I(DzGetTriggerSyncData()) != 0
    /* if ( ChatState[GetPlayerId(DzGetTriggerSyncPlayer())+1]  ) then
    //call MsgAll("채팅 ON / time: " + I2S(JNStopwatchElapsedMS(StopWatch)) +"ms")
  else
    //call MsgAll("채팅 OFF / time: " + I2S(JNStopwatchElapsedMS(StopWatch)) +"ms")
  endif
  //call JNStopwatchReset(StopWatch)
  */
  endfunction
  private function AllKey takes nothing returns nothing
    local player p = DzGetTriggerKeyPlayer() /*키를 작동시킨 플레이어*/
    local integer Clicked = DzGetTriggerKey()
    local integer P = GetPlayerId(p) + 1
    //단축키 x - m번째 메뉴 실행            
    if ( Clicked == JN_OSKEY_RETURN ) then
      if ( GetLocalPlayer() == p ) then
        if ( (JNMemoryGetByte(JNGetModuleHandle("Game.dll") + 0xD04FEC) == 1) != ChatState[P] ) then
          call DzSyncData("NowChat", I2S(JNMemoryGetByte(JNGetModuleHandle("Game.dll") + 0xD04FEC)))
        endif
      endif
    elseif ( ChatState[P] ) then
      if ( GetLocalPlayer() == p ) then
        if ( (JNMemoryGetByte(JNGetModuleHandle("Game.dll") + 0xD04FEC) == 1) != ChatState[P] ) then
          // call MsgAll("채팅창 이상하게 닫고 단축키 - " + I2S(JNMemoryGetByte(JNGetModuleHandle("Game.dll") + 0xD04FEC)) + "_" + EHotkeys.I2H(Clicked))
          call DzSyncData("NowChat", I2S(JNMemoryGetByte(JNGetModuleHandle("Game.dll") + 0xD04FEC)))
        endif
      endif
    elseif ( 0 < LoadInteger(hash, P, Clicked) ) then
      // call MsgAll(GetPlayerName(p) + " 단축키: [" + EHotkeys.I2H(Clicked) + "] = 메뉴[" + I2S(LoadInteger(hash, Clicked, P)) + "] = " + EMenus.GetTypeName(EMenus.GetMainType(Quickmenu_Buttons[LoadInteger(hash, Clicked, P)])))

      set Clicked = Quickmenu_Buttons[LoadInteger(hash, Clicked, P)]
      if ( EMenus.GetMainType(Clicked) == QUICK_MENU_MENU ) then
        if ( p == GetLocalPlayer() ) then
          call MenuQuickSlot.MenuClick(EMenus.GetSubTypeId(Clicked))
        endif
      else
        call MenuQuickSlot.ButtonClickDetail(p, Clicked)
      endif     
    endif
    set p = null
  endfunction
  
  private function OnPressESCKey takes nothing returns nothing
    call MenuQuickSlot.CloseAllMenues(DzGetTriggerKeyPlayer())
  endfunction

  private function Init takes nothing returns nothing
    local trigger trig = CreateTrigger()
    local integer i = 0
    set trig = CreateTrigger()
         
    //JNSetAbilityTooltip            
    //0~9(48~57), 핫키 0~9(96~105)            
    set i = $30
    loop
      call DzTriggerRegisterKeyEventByCode(trig, i, 0, false, function AllKey)
      call DzTriggerRegisterKeyEventByCode(trig, i + $30, 0, false, function AllKey)
      exitwhen i >= $39
      set i = i + 1
    endloop
         
    //a~z 65~90            
    set i = $41
    loop
      call DzTriggerRegisterKeyEventByCode(trig, i, 0, false, function AllKey)
      exitwhen i >= $5A
      set i = i + 1
    endloop
         
    //f1~f8 112~119            
    set i = $70
    loop
      call DzTriggerRegisterKeyEventByCode(trig, i, 0, false, function AllKey)
      exitwhen i >= $77
      set i = i + 1
    endloop
         
    //탭 캡 쉬 컨 알 스 9 20 16 17 18 32            
    call DzTriggerRegisterKeyEventByCode(trig, JN_OSKEY_TAB, 0, false, function AllKey)
    call DzTriggerRegisterKeyEventByCode(trig, JN_OSKEY_CAPSLOCK, 0, false, function AllKey)
    call DzTriggerRegisterKeyEventByCode(trig, JN_OSKEY_SHIFT, 0, false, function AllKey)
    call DzTriggerRegisterKeyEventByCode(trig, JN_OSKEY_CONTROL, 0, false, function AllKey)
    call DzTriggerRegisterKeyEventByCode(trig, JN_OSKEY_ALT, 0, false, function AllKey)
    call DzTriggerRegisterKeyEventByCode(trig, JN_OSKEY_SPACE, 0, false, function AllKey)
         
    //키패드 /*-+. 111 106 109 107 110            
    //엔터키인 $6C(108)키 제외            
    set i = $6A
    loop
      if ( i != JN_OSKEY_SEPARATOR ) then

        call DzTriggerRegisterKeyEventByCode(trig, i, 0, false, function AllKey)
      endif
      exitwhen i >= $6F
      set i = i + 1
    endloop
         
    //` -=\(백스) []    192  189 187 220 8  219 221            
    //;' ,./ (쉬프트)   186 222  188 190 191  16            
    /* integer status 0부분을 1로 하면 뗌이 아닌 클릭시 작동 */
    call DzTriggerRegisterKeyEventByCode(trig, JN_OSKEY_OEM_3, 0, false, function AllKey)
    call DzTriggerRegisterKeyEventByCode(trig, JN_OSKEY_OEM_MINUS, 0, false, function AllKey)
    call DzTriggerRegisterKeyEventByCode(trig, JN_OSKEY_OEM_PLUS, 0, false, function AllKey)
    call DzTriggerRegisterKeyEventByCode(trig, JN_OSKEY_OEM_5, 0, false, function AllKey)
    call DzTriggerRegisterKeyEventByCode(trig, JN_OSKEY_BACKSPACE, 0, false, function AllKey)
    call DzTriggerRegisterKeyEventByCode(trig, JN_OSKEY_OEM_4, 0, false, function AllKey)
    call DzTriggerRegisterKeyEventByCode(trig, JN_OSKEY_OEM_6, 0, false, function AllKey)
    call DzTriggerRegisterKeyEventByCode(trig, JN_OSKEY_OEM_1, 0, false, function AllKey)
    call DzTriggerRegisterKeyEventByCode(trig, JN_OSKEY_OEM_7, 0, false, function AllKey)
    call DzTriggerRegisterKeyEventByCode(trig, JN_OSKEY_OEM_COMMA, 0, false, function AllKey)
    call DzTriggerRegisterKeyEventByCode(trig, JN_OSKEY_OEM_PERIOD, 0, false, function AllKey)
    call DzTriggerRegisterKeyEventByCode(trig, JN_OSKEY_OEM_2, 0, false, function AllKey)
    call DzTriggerRegisterKeyEventByCode(trig, JN_OSKEY_RSHIFT, 0, false, function AllKey)
    call DzTriggerRegisterKeyEventByCode(trig, JN_OSKEY_RALT, 0, false, function AllKey)
    call DzTriggerRegisterKeyEventByCode(trig, JN_OSKEY_RCONTROL, 0, false, function AllKey)
         
    call DzTriggerRegisterKeyEventByCode(trig, JN_OSKEY_RETURN, 0, false, function AllKey)

    // ESC 닫음
    call DzTriggerRegisterKeyEventByCode(trig, JN_OSKEY_ESCAPE, 0, false, function OnPressESCKey)
         
    set trig = CreateTrigger()
    call DzTriggerRegisterSyncData(trig, "NowChat", false)
    call TriggerAddAction(trig, function ChatCheck)
         
    set trig = null
  endfunction
endscope