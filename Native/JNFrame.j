native DzFrameGetText takes integer frame returns string 
native DzFrameGetHeight takes integer frame returns real 

// DzAPIFrameHandle.j  
globals 
  constant integer JN_FRAMEPOINT_TOPLEFT = 0 
  constant integer JN_FRAMEPOINT_TOP = 1 
  constant integer JN_FRAMEPOINT_TOPRIGHT = 2 
  constant integer JN_FRAMEPOINT_LEFT = 3 
  constant integer JN_FRAMEPOINT_CENTER = 4 
  constant integer JN_FRAMEPOINT_RIGHT = 5 
  constant integer JN_FRAMEPOINT_BOTTOMLEFT = 6 
  constant integer JN_FRAMEPOINT_BOTTOM = 7 
  constant integer JN_FRAMEPOINT_BOTTOMRIGHT = 8 
    
  constant integer JN_FRAMEEVENT_MOUSE_ENTER = 2 
  constant integer JN_FRAMEEVENT_MOUSE_LEAVE = 3 
  constant integer JN_FRAMEEVENT_MOUSE_UP = 4 
  /*     constant integer JN_FRAMEEVENT_MOUSE_DOWN = 5 /* 제대로 안먹힘 */ */
  constant integer JN_OSKEY_BACKSPACE = $08 
  constant integer JN_OSKEY_TAB = $09 
  constant integer JN_OSKEY_RETURN = $0D 
  constant integer JN_OSKEY_SHIFT = $10 
  constant integer JN_OSKEY_CONTROL = $11 
  constant integer JN_OSKEY_ALT = $12 
  constant integer JN_OSKEY_CAPSLOCK = $14 
  constant integer JN_OSKEY_SPACE = $20 
  constant integer JN_OSKEY_SEPARATOR = $6C 
  constant integer JN_OSKEY_RSHIFT = $A1 
  constant integer JN_OSKEY_RCONTROL = $A3 
  constant integer JN_OSKEY_RALT = $A5 
  constant integer JN_OSKEY_OEM_1 = $BA 
  constant integer JN_OSKEY_OEM_PLUS = $BB 
  constant integer JN_OSKEY_OEM_COMMA = $BC 
  constant integer JN_OSKEY_OEM_MINUS = $BD 
  constant integer JN_OSKEY_OEM_PERIOD = $BE 
  constant integer JN_OSKEY_OEM_2 = $BF 
  constant integer JN_OSKEY_OEM_3 = $C0 
  constant integer JN_OSKEY_OEM_4 = $DB 
  constant integer JN_OSKEY_OEM_5 = $DC 
  constant integer JN_OSKEY_OEM_6 = $DD 
  constant integer JN_OSKEY_OEM_7 = $DE 
    
  constant integer JN_MOUSE_BUTTON_TYPE_RIGHT = 2 /* 마우스 우클 0x3은 제대로 못잡음 */
endglobals 

native DzFrameShow takes integer frame, boolean enable returns nothing 
native DzCreateFrameByTagName takes string frameType, string name, integer parent, string template, integer id returns integer 
native DzFrameSetAlpha takes integer frame, integer alpha returns nothing 
native DzFrameSetTexture takes integer frame, string texture, integer flag returns nothing 
native DzFrameSetAbsolutePoint takes integer frame, integer point, real x, real y returns nothing 
native DzFrameSetSize takes integer frame, real w, real h returns nothing 
native DzGetGameUI takes nothing returns integer 
native DzFrameSetText takes integer frame, string text returns nothing 
native DzFrameGetCommandBarButton takes integer row, integer column returns integer 
native DzFrameFindByName takes string name, integer id returns integer 
native DzSimpleFrameFindByName takes string name, integer id returns integer 
native DzGetTriggerUIEventFrame takes nothing returns integer 
native DzGetTriggerUIEventPlayer takes nothing returns player 
native DzFrameSetFont takes integer frame, string fileName, real height, integer flag returns nothing 
native DzFrameSetAllPoints takes integer frame, integer relativeFrame returns boolean 
native DzFrameSetScriptByCode takes integer frame, integer eventId, code funcHandle, boolean sync returns nothing 
native DzFrameGetMinimap takes nothing returns integer 
native DzCreateFrame takes string frame, integer parent, integer id returns integer 
native DzFrameSetPoint takes integer frame, integer point, integer relativeFrame, integer relativePoint, real x, real y returns nothing 
native DzFrameSetEnable takes integer name, boolean enable returns nothing 
native DzFrameClearAllPoints takes integer frame returns nothing 
native DzFrameHideInterface takes nothing returns nothing 
native DzFrameGetUpperButtonBarButton takes integer buttonId returns integer 
native DzFrameGetHeroBarButton takes integer buttonId returns integer 
native DzFrameGetHeroHPBar takes integer buttonId returns integer 
native DzFrameGetHeroManaBar takes integer buttonId returns integer 
native DzFrameGetMinimapButton takes integer buttonId returns integer 
native DzFrameEditBlackBorders takes real upperHeight, real bottomHeight returns nothing 
native DzEnableWideScreen takes boolean enable returns nothing 
native DzFrameGetChatMessage takes nothing returns integer 
native DzFrameGetUnitMessage takes nothing returns integer 
native DzLoadToc takes string fileName returns nothing 
native DzFrameGetPortrait takes nothing returns integer 
native DzFrameGetParent takes integer frame returns integer 
native DzFrameSetUpdateCallback takes string func returns nothing 
native DzSimpleFontStringFindByName takes string name, integer id returns integer 
native DzFrameSetParent takes integer frame, integer parent returns nothing 
native DzFrameGetName takes integer frame returns string
// 텍스트 정렬 : 상하, 좌우를 합쳐서 FLAG로 설정함
// 상하 : TOP(1), MIDDLE(2), BOTTOM(4)
// 좌우 : LEFT(+8), CENTER(+16), RIGHT(+32)
// 하나만 설정할 수도, 여러개 동시에 설정할 수도 있음.
native DzFrameSetTextAlignment takes integer frame, integer align returns nothing

debug native DzSimpleTextureFindByName takes string name, integer id returns integer 
native DzFrameSetModel takes integer frame, string modelFile, integer modelType, integer flag returns nothing 
function JNGetFrameByName2 takes string name, integer createContext returns integer 
  local integer frame = DzFrameFindByName(name, createContext) 
  if frame == 0 then 
    set frame = DzSimpleFrameFindByName(name, createContext) 
    debug if frame != 0 then 
    debug call BJDebugMsg("2. name: " + name + " / DzSimpleFrameFindByName " + I2S(frame)) 
    debug endif 
    debug else 
    debug call BJDebugMsg("1. name: " + name + " / DzFrameFindByName " + I2S(frame)) 
    if frame == 0 then 
      set frame = DzSimpleFontStringFindByName(name, createContext) 
      debug if frame != 0 then 
      debug call BJDebugMsg("3. name: " + name + " / DzSimpleFontStringFindByName " + I2S(frame)) 
      debug endif 
      if frame == 0 then 
        set frame = DzSimpleTextureFindByName(name, createContext) 
        debug if frame != 0 then 
        debug call BJDebugMsg("4. name: " + name + " / DzSimpleTextureFindByName " + I2S(frame)) 
        debug endif 
      endif 
    endif 
  endif 
  debug if frame == 0 then 
  debug call BJDebugMsg("0. name: " + name + " / Result " + I2S(frame)) 
  debug endif 
  return frame 
endfunction