// JNStopwatch.j
native JNStopwatchCreate takes nothing returns integer
native JNStopwatchStart takes integer id returns nothing
native JNStopwatchReset takes integer id returns nothing
native JNStopwatchElapsedMinute takes integer id returns integer
native JNStopwatchElapsedHour takes integer id returns integer
    
// JAPIItemState.j
native EXGetItemDataString takes integer itemcode, integer data_type returns string

// JNCommon.j
native JNWriteLog takes string str returns nothing

// JNString.j
native JNStringPos takes string str, string sub returns integer
native JNStringContains takes string str, string sub returns boolean
native JNStringSplit takes string str, string sub, integer index returns string
native JNStringReplace takes string str, string old, string newstr returns string
native JNStringLength takes string str returns integer
native JNStringSub takes string str, integer start, integer length returns string

// JAPIEffect.j
native EXEffectMatRotateZ takes effect e, real angle returns nothing
native EXSetEffectSize takes effect e, real size returns nothing

native JNMemoryGetInteger takes integer offset returns integer
native JNGetModuleHandle takes string moduleName returns integer
native JNMemoryGetReal takes integer offset returns real

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