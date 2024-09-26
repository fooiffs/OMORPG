// DzAPISync.j
native DzGetTriggerSyncPlayer takes nothing returns player
native DzGetTriggerSyncData takes nothing returns string
native DzSyncData takes string prefix, string data returns nothing
native DzTriggerRegisterSyncData takes trigger trig, string prefix, boolean server returns nothing
native DzTriggerRegisterSyncData takes trigger trig, string prefix, boolean server returns nothing

// DzAPIHardware.j
globals
  constant integer JN_OSKEY_BACKSPACE           = $08
  constant integer JN_OSKEY_TAB               = $09
  constant integer JN_OSKEY_RETURN            = $0D
  constant integer JN_OSKEY_SHIFT             = $10
  constant integer JN_OSKEY_CONTROL             = $11
  constant integer JN_OSKEY_ALT               = $12
  constant integer JN_OSKEY_CAPSLOCK            = $14
  constant integer JN_OSKEY_SPACE             = $20
  constant integer JN_OSKEY_SEPARATOR           = $6C
  constant integer JN_OSKEY_RSHIFT            = $A1
  constant integer JN_OSKEY_RCONTROL            = $A3
  constant integer JN_OSKEY_RALT              = $A5
  constant integer JN_OSKEY_OEM_1             = $BA
  constant integer JN_OSKEY_OEM_PLUS            = $BB
  constant integer JN_OSKEY_OEM_COMMA           = $BC
  constant integer JN_OSKEY_OEM_MINUS           = $BD
  constant integer JN_OSKEY_OEM_PERIOD          = $BE
  constant integer JN_OSKEY_OEM_2             = $BF
  constant integer JN_OSKEY_OEM_3             = $C0
  constant integer JN_OSKEY_OEM_4             = $DB
  constant integer JN_OSKEY_OEM_5             = $DC
  constant integer JN_OSKEY_OEM_6             = $DD
  constant integer JN_OSKEY_OEM_7             = $DE
  
  constant integer JN_MOUSE_BUTTON_TYPE_RIGHT = 2 /* 마우스 우클 0x3은 제대로 못잡음 */
endglobals
native DzGetTriggerKeyPlayer takes nothing returns player
native DzGetTriggerKey takes nothing returns integer
native DzTriggerRegisterKeyEventByCode takes trigger trig, integer key, integer status, boolean sync, code funcHandle returns nothing

// /* trig: 말 그대로 이벤트 넣을 트리거 */
// /* btn: 마우스 버튼을 선택. */
// /* status: 0을 넣으면 버튼 땜, 1을 넣으면 버튼 누름. */
// /* sync: false는 비동기화, true는 동기화이다. 비동기화는 반응속도가 매우매우매우 빠르지만 멀티 불가. */
// /* 동기화는 반응속도는 보통이지만 멀티 가능 */
// /* func, funcHandle: 뭔진 모르겠지만 null 값을 넣어도 무방함 */
native DzTriggerRegisterMouseEventByCode takes trigger trig, integer btn, integer status, boolean sync, code funcHandle returns nothing

native JNMemoryGetInteger takes integer offset returns integer
native JNGetModuleHandle takes string moduleName returns integer
native JNMemoryGetReal takes integer offset returns real
native JNProcCall takes integer callConv, integer address, hashtable params returns boolean

scope JNMemory initializer Init
  // Thanks to Howww
  globals
    private integer FrameMouseXOffset
    private integer FrameMouseYOffset
  endglobals
  
  //프레임 UI단위로 마우스 X축 반환(0.0 ~ 0.8)
  function GetFrameMouseX takes nothing returns real
    return JNMemoryGetReal(FrameMouseXOffset)
  endfunction
  //프레임 UI단위로 마우스 Y축 반환(0.0 ~ 0.6)
  function GetFrameMouseY takes nothing returns real
    return JNMemoryGetReal(FrameMouseYOffset)
  endfunction
  private function Init takes nothing returns nothing
    set FrameMouseXOffset = JNGetModuleHandle("Game.dll")+0xCB1AF8
    set FrameMouseYOffset = JNGetModuleHandle("Game.dll")+0xCB1AFC
  endfunction
endscope