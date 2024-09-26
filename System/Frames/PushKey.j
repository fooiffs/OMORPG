scope PushKey initializer Init 
  globals 
    private boolean array ChatState 
    /* Local Only */
    private boolean OX_Option = false 
    private boolean OX_Inven = false 
    private boolean OX_Stats = false 
    private boolean OX_Skills1 = false 
    private boolean OX_Skills2 = false 
  endglobals
  private function ChatCheck takes nothing returns nothing 
    set ChatState[GetPlayerId(DzGetTriggerSyncPlayer()) + 1] = S2I(DzGetTriggerSyncData()) != 0 
    /* if ( ChatState[GetPlayerId(DzGetTriggerSyncPlayer())+1] ) then
    //call MsgAll("채팅 ON / time: " + I2S(JNStopwatchElapsedMS(StopWatch)) +"ms")
  else
    //call MsgAll("채팅 OFF / time: " + I2S(JNStopwatchElapsedMS(StopWatch)) +"ms")
  endif
  //call JNStopwatchReset(StopWatch)
  */
  endfunction 
  public function MenuClick takes integer i returns nothing 
    call StopSound(gg_snd_BigButtonClick, false, false) 
    call StartSound(gg_snd_BigButtonClick) 
    if(i == 1) then /* Option */
      set OX_Option = not OX_Option 
      call DzFrameShow(Option_Frame_SettingBackdrop[0], OX_Option) 
    elseif(i == 2) then /* Discord */
      call JNOpenBrowser("https://discord.gg/8FubNC8mZ") 
    elseif(i == 3) then /* KakaoTalk */
      call JNOpenBrowser("https://open.kakao.com/o/gM1u4zn") 
    elseif(i == 4) then /* AutoCombat */
      //! be Sync             
    elseif(i == 5) then /* Inventory */
      set OX_Inven = not OX_Inven 
      call DzFrameShow(Frame_InvenButtonsBackDrop[0], OX_Inven) 
    elseif(i == 6) then /* Stats */
      set OX_Stats = not OX_Stats 
      call DzFrameShow(Frame_Info[0], OX_Stats) 
    elseif(i == 7) then /* Skills1 - Main */
      set OX_Skills1 = not OX_Skills1 
      call DzFrameShow(SkillTree_SkillTreeBackdrop[0], OX_Skills1) 
    elseif(i == 8) then /* Skills2 - Personal */
      set OX_Skills2 = not OX_Skills2 
    endif 
  endfunction 
  private function AllKey takes nothing returns nothing 
    local player p = DzGetTriggerKeyPlayer() /*키를 작동시킨 플레이어*/
    local integer Clicked = DzGetTriggerKey() 
    local integer P = GetPlayerId(p) + 1 
    //단축키 x - m번째 메뉴 실행             
    if(Clicked == JN_OSKEY_RETURN) then 
      //call MsgAll ("Now Chat Value: " + I2S(JNMemoryGetByte(JNGetModuleHandle("Game.dll")+0xD04FEC)))             
      if(GetLocalPlayer() == p) then 
        if((JNMemoryGetByte(JNGetModuleHandle("Game.dll") + 0xD04FEC) == 1) != ChatState[P]) then 
          //call JNStopwatchStart(StopWatch)             
          //call MsgAll ("채팅변경 - " + I2S(JNMemoryGetByte(JNGetModuleHandle("Game.dll")+0xD04FEC)))             
          call DzSyncData("NowChat", I2S(JNMemoryGetByte(JNGetModuleHandle("Game.dll") + 0xD04FEC))) 
        endif 
      endif 
    elseif(ChatState[P]) then 
      if(GetLocalPlayer() == p) then 
        if((JNMemoryGetByte(JNGetModuleHandle("Game.dll") + 0xD04FEC) == 1) != ChatState[P]) then 
          //call JNStopwatchStart(StopWatch)             
          call MsgAll("채팅창 이상하게 닫고 단축키 - " + I2S(JNMemoryGetByte(JNGetModuleHandle("Game.dll") + 0xD04FEC)) + "_" + EHotkeys.I2H(Clicked)) 
          call DzSyncData("NowChat", I2S(JNMemoryGetByte(JNGetModuleHandle("Game.dll") + 0xD04FEC))) 
        endif 
      endif 
    elseif(EMenus.F2IN(LoadInteger(hash, P, Clicked)) > 0) then 
      //off일때 - 단축키 작동             
      call MsgAll(GetPlayerName(p) + " Click2: " + EHotkeys.I2H(Clicked) + " = " + I2S(LoadInteger(hash, P, Clicked)) + "번째 메뉴= " + I2S(EMenus.F2IN(LoadInteger(hash, P, Clicked))) + "번째 " + EMenus.FI2S(EMenus.F2IT(LoadInteger(hash, P, Clicked)))) 
            
      set Clicked = LoadInteger(hash, P, Clicked) 
      if(EMenus.F2IT(Clicked) == FRAME_TYPE_MENU) then /* Open Local */
        call MenuClick(EMenus.F2IN(Clicked)) 
      else 
        //! Sync Global             
      endif 
      //else             
      //call MsgAll (GetPlayerName(p) + " Click3: " + EHotkeys.I2H(Clicked) + ", 메뉴 없음")             
    endif 
    set p = null 
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
      if(i != JN_OSKEY_SEPARATOR) then 

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
          
    set trig = CreateTrigger() 
    call DzTriggerRegisterSyncData(trig, "NowChat", false) 
    call TriggerAddAction(trig, function ChatCheck) 
          
    set trig = null 
  endfunction 
endscope