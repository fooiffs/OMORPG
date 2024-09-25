scope Option initializer Init
    globals
      private integer array Frame_Setting
      public integer array Frame_SettingBackdrop
    endglobals
  
    private function Setting takes integer no, string text, real size, real x, real y returns integer
      set Frame_Setting[no] = DzCreateFrameByTagName("TEXT", "", Frame_SettingBackdrop[1], "", no)
      if ( size != 0. ) then
        call DzFrameSetFont(Frame_Setting[no], "Fonts\\DFHeiMd.ttf", size, 1)
      endif
      call DzFrameSetPoint(Frame_Setting[no], JN_FRAMEPOINT_LEFT, Frame_SettingBackdrop[0], JN_FRAMEPOINT_TOPLEFT, .02+x, -.015-.025 * y)
      call DzFrameSetText(Frame_Setting[no], text)
//call BJDebugMsg(I2S(no) + "=" + text)
      return no+1
    endfunction
    private function LoadNumber takes integer frame returns integer
      return LoadInteger(hash, StringHash("F2I"), frame)
    endfunction
    private function SaveNumber takes integer frame, integer number returns nothing
      call SaveInteger(hash, StringHash("F2I"), frame, number)
    endfunction
    private function SettingButton takes integer i, integer number, string text, code funcHandle returns integer
      set Frame_Setting[i] = DzCreateFrameByTagName("GLUETEXTBUTTON", "", Frame_SettingBackdrop[1], "ScriptDialogButton", 0)
      call SaveNumber(Frame_Setting[i], number)
      call DzFrameSetSize(Frame_Setting[i], .085, 0.03)
      call DzFrameSetPoint(Frame_Setting[i], JN_FRAMEPOINT_LEFT, Frame_Setting[number], JN_FRAMEPOINT_LEFT, .1, 0.)
      call DzFrameSetText(Frame_Setting[i], text)
      call DzFrameSetScriptByCode(Frame_Setting[i], JN_FRAMEEVENT_MOUSE_UP, funcHandle, false)
      return i + 1
    endfunction
    private function SettingClick takes nothing returns nothing
      local integer f = DzGetTriggerUIEventFrame()
      local player p = DzGetTriggerUIEventPlayer()
      call BJDebugMsg("player: " + GetPlayerName(p) + " clicked Setting")
      call PlayerResource[GetPlayerId(p)+1].options[LoadNumber(f)].Click(10)
    endfunction
    private function SettingSave takes nothing returns nothing
      local integer f = DzGetTriggerUIEventFrame()
      local player p = DzGetTriggerUIEventPlayer()
      call PlayerResource[GetPlayerId(p)+1].options[7].Click(-1)

      call BJDebugMsg("player: " + GetPlayerName(p) + " click save server : " + I2S(PlayerResource[GetPlayerId(p)+1].options[7].value))
    endfunction
    private function SettingClose takes nothing returns nothing
      if ( GetLocalPlayer() == DzGetTriggerUIEventPlayer() ) then
        call DzFrameShow(Frame_SettingBackdrop[0], false)
      endif
    endfunction
    private function SettingHotKey takes integer i, integer number, integer frame, real x, real y, string text, code funcHandle returns integer
      set Frame_Setting[i] = DzCreateFrameByTagName("GLUETEXTBUTTON", "", Frame_SettingBackdrop[1], "ScriptDialogButton", 0)
      call SaveNumber(Frame_Setting[i], number)
      call DzFrameSetSize(Frame_Setting[i], .02667, .02667)
      call DzFrameSetPoint(Frame_Setting[i], JN_FRAMEPOINT_LEFT, frame, JN_FRAMEPOINT_LEFT, .1 + x, y)
      call DzFrameSetText(Frame_Setting[i], text)
      return i + 1
    endfunction
    private function SettingHotKeyClick takes nothing returns nothing
      local integer f = DzGetTriggerUIEventFrame()
      local player p = DzGetTriggerUIEventPlayer()

      call PlayerResource[GetPlayerId(p)+1].options[LoadNumber(f)].Click(0)
      call DisplayTimedTextToPlayer(GetLocalPlayer(),0.,0.,7.,"player: " + GetPlayerName(p) + " clicked HotKey Setting - " + I2S(f))
    endfunction
  
    private function CreateSetting takes nothing returns nothing
     local integer i = 0
      //미니정보창 배경
      set Frame_SettingBackdrop[i]=DzCreateFrameByTagName("BACKDROP", "", DzGetGameUI(), "QuestButtonBaseTemplate", 0)
      call DzFrameSetAbsolutePoint(Frame_SettingBackdrop[0], JN_FRAMEPOINT_CENTER, .4, .3)
      call DzFrameSetSize(Frame_SettingBackdrop[i], 0.22, 0.4)
      call DzFrameSetAlpha(Frame_SettingBackdrop[i], 128)
      set i = i + 1
      
      set Frame_SettingBackdrop[i]=DzCreateFrameByTagName("BACKDROP", "", Frame_SettingBackdrop[0], "QuestButtonBaseTemplate", 0)
      call DzFrameSetPoint(Frame_SettingBackdrop[i], JN_FRAMEPOINT_CENTER, Frame_SettingBackdrop[0], JN_FRAMEPOINT_TOP, 0., -0.015)
      call DzFrameSetSize(Frame_SettingBackdrop[i], 0.05, 0.04)
      call DzFrameSetAlpha(Frame_SettingBackdrop[i], 196)
      set i = i + 1
      
      set Frame_Setting[0]=DzCreateFrameByTagName("TEXT", "", Frame_SettingBackdrop[1], "", 0)
      call DzFrameSetPoint(Frame_Setting[0], JN_FRAMEPOINT_CENTER, Frame_SettingBackdrop[1] , JN_FRAMEPOINT_CENTER, 0., 0.)
      call DzFrameSetText(Frame_Setting[0], "|cfffed312설정")
      call DzFrameSetFont(Frame_Setting[0], "Fonts\\DFHeiMd.ttf", .020, 1)
      
      set i = Setting(1, HotkeyData[1].Name, .016, 0., 1.)
      set i = Setting(i, HotkeyData[2].Name, .016, 0., 2.)
      set i = Setting(i, HotkeyData[3].Name, .016, 0., 3.)
      set i = Setting(i, HotkeyData[4].Name, .016, 0., 4.)
      set i = Setting(i, HotkeyData[5].Name, .016, 0., 5.)
      set i = Setting(i, HotkeyData[6].Name, .016, 0., 6.)
      
      set i = Setting(i, "|cfffed312단축키 설정", 0.015, -.01, 7.)
      set i = Setting(i, "스킬1~8", .024, 0., 8.)
      set i = Setting(i, "핫슬롯1~7", .024, 0., 9.75)
      set i = Setting(i, "카톡/디코/설정", 0., 0., 11.25)
      set i = Setting(i, "자동공격/인벤토리", 0., 0., 12.25)
      set i = Setting(i, "상태창/스킬/임시", 0., 0., 13.25)
      
      set Frame_Setting[i] = DzCreateFrameByTagName("GLUETEXTBUTTON", "", Frame_SettingBackdrop[1], "ScriptDialogButton", 0)
      call DzFrameSetPoint(Frame_Setting[i], JN_FRAMEPOINT_LEFT, Frame_SettingBackdrop[0], JN_FRAMEPOINT_BOTTOMLEFT, 0.01, .02)
      call DzFrameSetSize(Frame_Setting[i], .14, 0.03)
      call DzFrameSetText(Frame_Setting[i], "적용&서버저장(0/2)")
      call DzFrameSetScriptByCode(Frame_Setting[i], JN_FRAMEEVENT_MOUSE_UP, function SettingSave, false)
      set i = i + 1
    
      set Frame_Setting[i] = DzCreateFrameByTagName("GLUETEXTBUTTON", "", Frame_SettingBackdrop[1], "ScriptDialogButton", 0)
      call DzFrameSetPoint(Frame_Setting[i], JN_FRAMEPOINT_RIGHT, Frame_SettingBackdrop[0], JN_FRAMEPOINT_BOTTOMRIGHT, -0.01, .02)
      call DzFrameSetSize(Frame_Setting[i], .05, 0.03)
      call DzFrameSetText(Frame_Setting[i], "닫기")
      call DzFrameSetScriptByCode(Frame_Setting[i], JN_FRAMEEVENT_MOUSE_UP, function SettingClose, false)
      set i = i + 1
      
      set i = SettingButton(i, 1, "|cfffed312ON |cffffffff/ |c004f4f4fOFF", function SettingClick)
      set i = SettingButton(i, 2, "|cfffed312기본 |cffffffff/ |c004f4f4f최소화", function SettingClick)
      set i = SettingButton(i, 3, "|c004f4f4fON |cffffffff/ |cfffed312OFF", function SettingClick)
      set i = SettingButton(i, 4, "|cfffed312150", function SettingClick)
      set i = SettingButton(i, 5, "|c004f4f4fON |cffffffff/ |cfffed312OFF", function SettingClick)
      set i = SettingButton(i, 6, "|cfffed312ON |cffffffff/ |c004f4f4fOFF", function SettingClick)
      
      set i = SettingHotKey(i, EHotkeyMenu.SkillSlot1, Frame_Setting[8], 0., 0.01, MenuQuickSlot_BaseHotKey(8), function SettingHotKeyClick)
      set i = SettingHotKey(i, EHotkeyMenu.SkillSlot2, Frame_Setting[8], 0.02, 0.01, MenuQuickSlot_BaseHotKey(9), function SettingHotKeyClick)
      set i = SettingHotKey(i, EHotkeyMenu.SkillSlot3, Frame_Setting[8], 0.04, 0.01, MenuQuickSlot_BaseHotKey(10), function SettingHotKeyClick)
      set i = SettingHotKey(i, EHotkeyMenu.SkillSlot4, Frame_Setting[8], 0.06, 0.01, MenuQuickSlot_BaseHotKey(11), function SettingHotKeyClick)
      set i = SettingHotKey(i, EHotkeyMenu.SkillSlot5, Frame_Setting[8], 0., -0.01, MenuQuickSlot_BaseHotKey(12), function SettingHotKeyClick)
      set i = SettingHotKey(i, EHotkeyMenu.SkillSlot6, Frame_Setting[8], 0.02, -0.01, MenuQuickSlot_BaseHotKey(13), function SettingHotKeyClick)
      set i = SettingHotKey(i, EHotkeyMenu.SkillSlot7, Frame_Setting[8], 0.04, -0.01, MenuQuickSlot_BaseHotKey(14), function SettingHotKeyClick)
      set i = SettingHotKey(i, EHotkeyMenu.SkillSlot8, Frame_Setting[8], 0.06, -0.01, MenuQuickSlot_BaseHotKey(15), function SettingHotKeyClick)
  
      set i = SettingHotKey(i, EHotkeyMenu.ItemSlot1, Frame_Setting[9], 0., 0.01, MenuQuickSlot_BaseHotKey(1), function SettingHotKeyClick)
      set i = SettingHotKey(i, EHotkeyMenu.ItemSlot2, Frame_Setting[9], 0.02, 0.01, MenuQuickSlot_BaseHotKey(2), function SettingHotKeyClick)
      set i = SettingHotKey(i, EHotkeyMenu.ItemSlot3, Frame_Setting[9], 0.04, 0.01, MenuQuickSlot_BaseHotKey(3), function SettingHotKeyClick)
      set i = SettingHotKey(i, EHotkeyMenu.ItemSlot4, Frame_Setting[9], 0.06, 0.01, MenuQuickSlot_BaseHotKey(4), function SettingHotKeyClick)
      set i = SettingHotKey(i, EHotkeyMenu.ItemSlot5, Frame_Setting[9], 0.01, -0.01, MenuQuickSlot_BaseHotKey(5), function SettingHotKeyClick)
      set i = SettingHotKey(i, EHotkeyMenu.ItemSlot6, Frame_Setting[9], 0.03, -0.01, MenuQuickSlot_BaseHotKey(6), function SettingHotKeyClick)
      set i = SettingHotKey(i, EHotkeyMenu.ItemSlot7, Frame_Setting[9], 0.05, -0.01, MenuQuickSlot_BaseHotKey(7), function SettingHotKeyClick)
      
      set i = SettingHotKey(i, EHotkeyMenu.SubMenuKakaotalk, Frame_Setting[10], 0., 0., MenuQuickSlot_BaseHotKey(18), function SettingHotKeyClick)
      set i = SettingHotKey(i, EHotkeyMenu.SubMenuDiscord, Frame_Setting[10], .03, 0., MenuQuickSlot_BaseHotKey(17), function SettingHotKeyClick)
      set i = SettingHotKey(i, EHotkeyMenu.SubMenuSetting, Frame_Setting[10], .06, 0., MenuQuickSlot_BaseHotKey(16), function SettingHotKeyClick)
      
      set i = SettingHotKey(i, EHotkeyMenu.SubMenuAutoCombat, Frame_Setting[11], 0.01, 0., MenuQuickSlot_BaseHotKey(19), function SettingHotKeyClick)
      set i = SettingHotKey(i, EHotkeyMenu.SubMenuInventory, Frame_Setting[11], 0.04, 0., MenuQuickSlot_BaseHotKey(20), function SettingHotKeyClick)
      
      set i = SettingHotKey(i, EHotkeyMenu.SubMenuStatus, Frame_Setting[12], 0., 0., MenuQuickSlot_BaseHotKey(21), function SettingHotKeyClick)
      set i = SettingHotKey(i, EHotkeyMenu.SubMenuSkillTree, Frame_Setting[12], .03, 0., MenuQuickSlot_BaseHotKey(22), function SettingHotKeyClick)
      set i = SettingHotKey(i, EHotkeyMenu.SubMenuSmartMode, Frame_Setting[12], .06, 0., MenuQuickSlot_BaseHotKey(23), function SettingHotKeyClick)

      call DzFrameShow(Frame_SettingBackdrop[0], false)
    endfunction
    private function Init takes nothing returns nothing
      call CreateSetting()
    endfunction
  endscope