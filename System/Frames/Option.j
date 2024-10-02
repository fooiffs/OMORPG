scope Option initializer Init
  globals
    // private integer array Frame_Setting
    // public integer array Frame_SettingBackdrop

    private integer Frame_Setting_Main = 0
    private integer Frame_Setting_Sub = 0
  endglobals

  // private function Setting takes integer no, string text, real size, real x, real y returns integer
  //   set Frame_Setting[no] = DzCreateFrameByTagName("TEXT", "", Frame_Setting_Sub, "", CountAdder())
  //   if ( size != 0. ) then
  //     call DzFrameSetFont(Frame_Setting[no], "Fonts\\DFHeiMd.ttf", size, 1)
  //   endif
  //   call DzFrameSetPoint(Frame_Setting[no], JN_FRAMEPOINT_LEFT, GetSettingFrame(), JN_FRAMEPOINT_TOPLEFT, .02 + x, -.015 - .025 * y)
  //   call DzFrameSetText(Frame_Setting[no], text)
  //   return no + 1
  // endfunction
  private function MakeTextCenter takes integer parent, string text, real size returns integer
    local integer temp = DzCreateFrameByTagName("TEXT", "", parent, "", CountAdder())
    call DzFrameSetPoint(temp, JN_FRAMEPOINT_CENTER, parent, JN_FRAMEPOINT_CENTER, 0., 0.)
    call DzFrameSetFont(temp, "Fonts\\DFHeiMd.ttf", size, 1)
    call DzFrameSetText(temp, text)
    return temp
  endfunction
  public function GetSettingFrame takes nothing returns integer
    if ( Frame_Setting_Main == 0 ) then
      set Frame_Setting_Main = DzCreateFrameByTagName("BACKDROP", "", DzGetGameUI(), "QuestButtonBaseTemplate", CountAdder())
      call DzFrameSetAbsolutePoint(Frame_Setting_Main, JN_FRAMEPOINT_CENTER, .4, .3)
      call DzFrameSetSize(Frame_Setting_Main, 0.22, 0.4)
      call DzFrameSetAlpha(Frame_Setting_Main, 128)
    endif
    return Frame_Setting_Main
  endfunction
  public function GetSettingFrameSub takes nothing returns integer
    if ( Frame_Setting_Sub == 0 ) then
      set Frame_Setting_Sub = DzCreateFrameByTagName("BACKDROP", "", GetSettingFrame(), "QuestButtonBaseTemplate", CountAdder())
      call DzFrameSetPoint(Frame_Setting_Sub, JN_FRAMEPOINT_CENTER, GetSettingFrame(), JN_FRAMEPOINT_TOP, 0., -0.015)
      call DzFrameSetSize(Frame_Setting_Sub, 0.05, 0.04)
      call DzFrameSetAlpha(Frame_Setting_Sub, 196)
      call MakeTextCenter(Frame_Setting_Sub, "|cfffed312설정", .020)
    endif
    return Frame_Setting_Sub
  endfunction

  private function MakeText takes string text, real size, real x, real y returns integer
    local integer temp = DzCreateFrameByTagName("TEXT", "", GetSettingFrameSub(), "", CountAdder())
    if ( size != 0. ) then
      call DzFrameSetFont(temp, "Fonts\\DFHeiMd.ttf", size, 1)
    endif
    call DzFrameSetPoint(temp, JN_FRAMEPOINT_LEFT, GetSettingFrame(), JN_FRAMEPOINT_TOPLEFT, .02 + x, -.015 - .025 * y)
    call DzFrameSetText(temp, text)
    return temp
  endfunction
  
  private function SettingHotkeyClick takes player p, integer frame, integer index returns nothing
    if ( 0 == index ) then
      call MsgAll("에러/클릭/세팅/p" + GetPlayerName(p) + "/Setting["+I2S(index)+"]")
    elseif ( PlayerResource[GetPlayerId(p) + 1].options[index] == 0 ) then
      call MsgAll("에러/클릭/세팅/해당 옵션["+I2S(index)+"] 리소스 없음.")
    else
      call PlayerResource[GetPlayerId(p) + 1].options[index].Click(10)
      call MsgAll("player: " + GetPlayerName(p) + " clicked Setting["+I2S(index)+"] -> " + I2S(PlayerResource[GetPlayerId(p) + 1].options[index].id))
    endif
  endfunction
  private function SettingClick takes nothing returns nothing
    call SettingHotkeyClick(DzGetTriggerUIEventPlayer(), DzGetTriggerUIEventFrame(), EMenus.GetSubTypeId(DzGetTriggerUIEventFrame()))
  endfunction

  private function SettingButton takes integer index, integer parent, string text returns nothing
    set Frame_Setting[index] = DzCreateFrameByTagName("GLUETEXTBUTTON", "", GetSettingFrameSub(), "ScriptDialogButton", CountAdder())
    // call SaveNumber(Frame_Setting[index], index)
    call EMenus.FrameSaveIDs(Frame_Setting[index], SELECT_OTHER, index)
    // call MsgAll("생성/옵션["+I2S(number)+"]/" + text)
    call DzFrameSetSize(Frame_Setting[index], .085, 0.03)
    call DzFrameSetPoint(Frame_Setting[index], JN_FRAMEPOINT_LEFT, parent, JN_FRAMEPOINT_LEFT, .1, 0.)
    call DzFrameSetText(Frame_Setting[index], text)
    call DzFrameSetScriptByCode(Frame_Setting[index], JN_FRAMEEVENT_MOUSE_UP, function SettingClick, false)
  endfunction
  private function OnClickSaveButton takes nothing returns nothing
    local integer f = DzGetTriggerUIEventFrame()
    local player p = DzGetTriggerUIEventPlayer()
    call PlayerResource[GetPlayerId(p) + 1].options[EHotkeyMenu.Main7ServerSaveLeft].Click(-1)
    call MsgAll("player: " + GetPlayerName(p) + " click save server : " + I2S(PlayerResource[GetPlayerId(p) + 1].options[EHotkeyMenu.Main7ServerSaveLeft].id))
  endfunction
  private function OnClickCloseButton takes nothing returns nothing
    if ( GetLocalPlayer() == DzGetTriggerUIEventPlayer() ) then
      call DzFrameShow(GetSettingFrame(), false)
    endif
  endfunction
  private function SettingHotKey takes integer index, integer parent, real x, real y returns nothing
    set Frame_Setting[index] = DzCreateFrameByTagName("GLUETEXTBUTTON", "", GetSettingFrameSub(), "ScriptDialogButton", CountAdder())
    if ( 0 < index and index <= EHotkeyMenu.HOTKEY_SKILL_END ) then
      call EMenus.FrameSaveIDAndHotkey(Frame_Setting[index], QUICK_MENU_SKILLSLOT, index, EHotkeyMenu.SkillSlot1-1)
    elseif ( EHotkeyMenu.HOTKEY_SKILL_END < index and index <= EHotkeyMenu.HOTKEY_ITEM_END ) then
      call EMenus.FrameSaveIDAndHotkey(Frame_Setting[index], QUICK_MENU_ITEMSLOT, index, EHotkeyMenu.ItemSlot1-1)
    elseif ( EHotkeyMenu.HOTKEY_ITEM_END < index and index <= EHotkeyMenu.HOTKEY_MENU_END ) then
      call EMenus.FrameSaveIDAndHotkey(Frame_Setting[index], QUICK_MENU_MENU, index, EHotkeyMenu.SubMenuKakaotalk-1)
    else
      call EMenus.FrameSaveIDs(Frame_Setting[index], SELECT_OTHER, index)
    endif
    call DzFrameSetSize(Frame_Setting[index], .02667, .02667)
    call DzFrameSetPoint(Frame_Setting[index], JN_FRAMEPOINT_LEFT, parent, JN_FRAMEPOINT_LEFT, .1 + x, y)
    call DzFrameSetScriptByCode(Frame_Setting[index], JN_FRAMEEVENT_MOUSE_UP, function SettingClick, false)
  endfunction
  

  private function CreateInSetting takes nothing returns nothing
    local integer temp = 0
    //미니정보창 배경

    set temp = MakeText(HotkeyData[EHotkeyMenu.Main1MiniInfo].Name, .016, 0., 1.)
    call SettingButton(EHotkeyMenu.Main1MiniInfo, temp, "|cfffed312ON |cffffffff/ |c004f4f4fOFF")
    set temp = MakeText(HotkeyData[EHotkeyMenu.Main2SimpleEffect].Name, .016, 0., 2.)
    call SettingButton(EHotkeyMenu.Main2SimpleEffect, temp, "|cfffed312기본 |cffffffff/ |c004f4f4f최소화")
    set temp = MakeText(HotkeyData[EHotkeyMenu.Main3GlobalEffect].Name, .016, 0., 3.)
    call SettingButton(EHotkeyMenu.Main3GlobalEffect, temp, "|c004f4f4fON |cffffffff/ |cfffed312OFF")
    set temp = MakeText(HotkeyData[EHotkeyMenu.Main4FeildOfView].Name, .016, 0., 4.)
    call SettingButton(EHotkeyMenu.Main4FeildOfView, temp, "|cfffed312150")
    set temp = MakeText(HotkeyData[EHotkeyMenu.Main5HoldFieldOfView].Name, .016, 0., 5.)
    call SettingButton(EHotkeyMenu.Main5HoldFieldOfView, temp, "|c004f4f4fON |cffffffff/ |cfffed312OFF")
    set temp = MakeText(HotkeyData[EHotkeyMenu.Main6ViewHotkeys].Name, .016, 0., 6.)
    call SettingButton(EHotkeyMenu.Main6ViewHotkeys, temp, "|cfffed312ON |cffffffff/ |c004f4f4fOFF")

    set temp = DzCreateFrameByTagName("GLUETEXTBUTTON", "", GetSettingFrameSub(), "ScriptDialogButton", CountAdder())
    call DzFrameSetPoint(temp, JN_FRAMEPOINT_LEFT, GetSettingFrame(), JN_FRAMEPOINT_BOTTOMLEFT, 0.01, .02)
    call DzFrameSetSize(temp, .14, 0.03)
    call DzFrameSetText(temp, "적용&서버저장(0/2)")
    call DzFrameSetScriptByCode(temp, JN_FRAMEEVENT_MOUSE_UP, function OnClickSaveButton, false)

    set temp = DzCreateFrameByTagName("GLUETEXTBUTTON", "", GetSettingFrameSub(), "ScriptDialogButton", CountAdder())
    call DzFrameSetPoint(temp, JN_FRAMEPOINT_RIGHT, GetSettingFrame(), JN_FRAMEPOINT_BOTTOMRIGHT, -0.01, .02)
    call DzFrameSetSize(temp, .05, 0.03)
    call DzFrameSetText(temp, "닫기")
    call DzFrameSetScriptByCode(temp, JN_FRAMEEVENT_MOUSE_UP, function OnClickCloseButton, false)
  endfunction

  private function CreateHotKeyIcons takes nothing returns nothing
    local integer temp = 0
    call MakeText("|cfffed312단축키 설정", 0.015, -.01, 7.)
    set temp = MakeText("스킬1~8", .024, 0., 8.)
    call SettingHotKey(EHotkeyMenu.SkillSlot1, temp, 0., 0.01)
    call SettingHotKey(EHotkeyMenu.SkillSlot2, temp, 0.02, 0.01)
    call SettingHotKey(EHotkeyMenu.SkillSlot3, temp, 0.04, 0.01)
    call SettingHotKey(EHotkeyMenu.SkillSlot4, temp, 0.06, 0.01)
    call SettingHotKey(EHotkeyMenu.SkillSlot5, temp, 0., -0.01)
    call SettingHotKey(EHotkeyMenu.SkillSlot6, temp, 0.02, -0.01)
    call SettingHotKey(EHotkeyMenu.SkillSlot7, temp, 0.04, -0.01)
    call SettingHotKey(EHotkeyMenu.SkillSlot8, temp, 0.06, -0.01)

    set temp = MakeText("핫슬롯1~7", .024, 0., 9.75)
    call SettingHotKey(EHotkeyMenu.ItemSlot1, temp, 0., 0.01)
    call SettingHotKey(EHotkeyMenu.ItemSlot2, temp, 0.02, 0.01)
    call SettingHotKey(EHotkeyMenu.ItemSlot3, temp, 0.04, 0.01)
    call SettingHotKey(EHotkeyMenu.ItemSlot4, temp, 0.06, 0.01)
    call SettingHotKey(EHotkeyMenu.ItemSlot5, temp, 0.01, -0.01)
    call SettingHotKey(EHotkeyMenu.ItemSlot6, temp, 0.03, -0.01)
    call SettingHotKey(EHotkeyMenu.ItemSlot7, temp, 0.05, -0.01)
    
    set temp = MakeText("카톡/디코/설정", 0., 0., 11.25)
    call SettingHotKey(EHotkeyMenu.SubMenuKakaotalk, temp, 0., 0.)
    call SettingHotKey(EHotkeyMenu.SubMenuDiscord, temp, 0.03, 0.)
    call SettingHotKey(EHotkeyMenu.SubMenuSetting, temp, 0.06, 0.)

    set temp = MakeText("자동공격/인벤토리", 0., 0., 12.25)
    call SettingHotKey(EHotkeyMenu.SubMenuAutoCombat, temp, 0.01, 0.)
    call SettingHotKey(EHotkeyMenu.SubMenuInventory, temp, 0.04, 0.)

    set temp = MakeText("상태창/스킬/임시", 0., 0., 13.25)
    call SettingHotKey(EHotkeyMenu.SubMenuStatus, temp, 0., 0.)
    call SettingHotKey(EHotkeyMenu.SubMenuSkillTree, temp, 0.03, 0.)
    call SettingHotKey(EHotkeyMenu.SubMenuSmartMode, temp, 0.06, 0.)

    call DzFrameShow(GetSettingFrame(), false)
  endfunction
  private function Init takes nothing returns nothing
    call CreateInSetting()
    call CreateHotKeyIcons()
  endfunction
endscope