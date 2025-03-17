scope MenuQuickSlot
  struct MenuQuickSlot
    // static integer currentCount = 1

    // 4가지 경우의 수에 따라 등록
    // - 단축키[T]가 아이템[7]에 등록되었습니다.
    
    // - (변경) 
    static method AddReg takes integer P, integer MenuNo, integer Hotkey, boolean showMessage returns nothing
      local string s = ""
      local integer i = 0
      local integer tempFrame = 0
      if ( EHotkeys.I2H(Hotkey) == "" ) then
        call Msg(Player(P-1), "오류/단축키/등록할 수 없는 단축키입니다. -" +I2S(Hotkey) + "=" + EHotkeys.I2H(Hotkey))
      elseif ( MenuNo <= 0 or EHotkeyMenu.HOTKEY_MENU_END < MenuNo ) then
        call Msg(Player(P-1), "오류/단축키/등록할 수 없는 메뉴입니다.. -" +I2S(MenuNo) + "=" + EMenus.GetTypeName(EMenus.GetMainType(Quickmenu_Buttons[MenuNo])) + "[" + I2S(EMenus.GetSubTypeId(Quickmenu_Buttons[MenuNo])) + "]")
      elseif ( MenuNo == LoadInteger(hash, P, Hotkey) and Hotkey == LoadInteger(hash, P, MenuNo) ) then
        call Msg(Player(P-1), "오류/단축키/같은 단축키. 메뉴[" + I2S(MenuNo) + "]와 단축키[" + EHotkeys.I2H(Hotkey) + "(" +I2S(Hotkey)+ ")]")
      else
        set s = I2S(MenuNo) + " = " + EMenus.GetTypeName(EMenus.GetMainType(Quickmenu_Buttons[MenuNo])) + "[" + I2S(EMenus.GetSubTypeId(Quickmenu_Buttons[MenuNo])) + "] 단축키: "
        
        //기존 단축키 검사
        set i = LoadInteger(hash, P, MenuNo)
        if ( i != 0 ) then
          call RemoveSavedInteger(hash, P, MenuNo)
          set s = s + EHotkeys.I2H(i) +"→"+ EHotkeys.I2H(Hotkey) + " 변경 (기존 " + EHotkeys.I2H(i) + "단축키 삭제"
          set i = LoadInteger(hash, P, Hotkey)
          if ( i != 0 ) then
            set s = s + ", 기존 " + EHotkeys.I2H(Hotkey) + "단축키 " + EMenus.GetTypeName(EMenus.GetMainType(Quickmenu_Buttons[i])) + "[" + I2S(EMenus.GetSubTypeId(Quickmenu_Buttons[i])) + "] 삭제)"
            call RemoveSavedInteger(hash, P, Hotkey)
          else
            set s = s + ")"
          endif
        //변경
        else
        //등록
          set s = s + EHotkeys.I2H(Hotkey) + " 등록"
          set i = LoadInteger(hash, P, Hotkey)
          if ( i != 0 ) then
            set s = s + " (기존 " + EHotkeys.I2H(Hotkey) + "단축키 " + EMenus.GetTypeName(EMenus.GetMainType(Quickmenu_Buttons[i])) + "[" + I2S(EMenus.GetSubTypeId(Quickmenu_Buttons[i])) + "] 삭제)"
            call RemoveSavedInteger(hash, P, Hotkey)
          endif
        endif
        call SaveInteger(hash, P, MenuNo, Hotkey)
        call SaveInteger(hash, P, Hotkey, MenuNo)
        if ( GetLocalPlayer() == Player(P-1) ) then
          set tempFrame = LoadInteger(hash, LoadInteger(hash, StringHash("FUI_HotKeyBase"), MenuNo), StringHash("FUI_HotKey"))
          if tempFrame != 0 then
            call DzFrameSetText(LoadInteger(hash, LoadInteger(hash, StringHash("FUI_HotKeyBase"), MenuNo), StringHash("FUI_HotKey")), EHotkeys.I2H(Hotkey))
          endif
        endif
        if ( showMessage ) then
          call DisplayTimedTextToPlayer(Player(P-1),0,0,7.,s)
        endif
      endif

      /*hotkey에서 MenuNo 반환되어야함
      MenuNo에서 hotKey 반환되어야함 (기존거 삭제)*/
      
    endmethod
    
    static if false then
      // constant가 붙은 함수는 클릭이 되지 않기에 참조용
      method MenuQuickSlot_BaseHotKey takes integer i returns nothing
      endmethod
    endif
    static method BaseHotKeyRaw takes integer menuIndex returns string
      if ( menuIndex == EHotkeyMenu.SkillSlot1 ) then
        return "Q"
      elseif ( menuIndex == EHotkeyMenu.SkillSlot2 ) then
        return "W"
      elseif ( menuIndex == EHotkeyMenu.SkillSlot3 ) then
        return "E"
      elseif ( menuIndex == EHotkeyMenu.SkillSlot4 ) then
        return "R"
      elseif ( menuIndex == EHotkeyMenu.SkillSlot5 ) then
        return "T"
      elseif ( menuIndex == EHotkeyMenu.SkillSlot6 ) then
        return "D"
      elseif ( menuIndex == EHotkeyMenu.SkillSlot7 ) then
        return "F"
      elseif ( menuIndex == EHotkeyMenu.SkillSlot8 ) then
        return "G"
      elseif ( menuIndex == EHotkeyMenu.ItemSlot1 ) then
        return "1"
      elseif ( menuIndex == EHotkeyMenu.ItemSlot2 ) then
        return "2"
      elseif ( menuIndex == EHotkeyMenu.ItemSlot3 ) then
        return "3"
      elseif ( menuIndex == EHotkeyMenu.ItemSlot4 ) then
        return "4"
      elseif ( menuIndex == EHotkeyMenu.ItemSlot5 ) then
        return "5"
      elseif ( menuIndex == EHotkeyMenu.ItemSlot6 ) then
        return "6"
      elseif ( menuIndex == EHotkeyMenu.ItemSlot7 ) then
        return "7"
      elseif ( menuIndex == EHotkeyMenu.SubMenuKakaotalk ) then
        return "F6"
      elseif ( menuIndex == EHotkeyMenu.SubMenuDiscord ) then
        return "F7"
      elseif ( menuIndex == EHotkeyMenu.SubMenuSetting ) then
        return "F8"
      elseif ( menuIndex == EHotkeyMenu.SubMenuAutoCombat ) then
        return "F5"
      elseif ( menuIndex == EHotkeyMenu.SubMenuInventory ) then
        return "I"
      elseif ( menuIndex == EHotkeyMenu.SubMenuStatus ) then
        return "S"
      elseif ( menuIndex == EHotkeyMenu.SubMenuSkillTree ) then
        return "T"
      elseif ( menuIndex == EHotkeyMenu.SubMenuSmartMode ) then
        return "V"
      endif
      return ""
    endmethod
    static method BaseHotKey takes integer mainType, integer subTypeId returns string
      if ( mainType == QUICK_MENU_ITEMSLOT ) then
        return I2S(subTypeId)
      elseif ( mainType == QUICK_MENU_SKILLSLOT ) then
        if ( subTypeId == 1 ) then
          return "Q"
        elseif ( subTypeId == 2 ) then
          return "W"
        elseif ( subTypeId == 3 ) then
          return "E"
        elseif ( subTypeId == 4 ) then
          return "R"
        elseif ( subTypeId == 5 ) then
          return "T"
        elseif ( subTypeId == 6 ) then
          return "D"
        elseif ( subTypeId == 7 ) then
          return "F"
        elseif ( subTypeId == 8 ) then
          return "G"
        endif
      elseif ( mainType == QUICK_MENU_MENU ) then
        if ( subTypeId == 1 ) then
          return "F6"
        elseif ( subTypeId == 2 ) then
          return "F7"
        elseif ( subTypeId == 3 ) then
          return "F8"
        elseif ( subTypeId == 4 ) then
          return "F5"
        elseif ( subTypeId == 5 ) then
          return "I"
        elseif ( subTypeId == 6 ) then
          return "S"
        elseif ( subTypeId == 7 ) then
          return "T"
        elseif ( subTypeId == 8 ) then
          return "V"
        endif
      endif
      return ""
    endmethod
    private static method IndexToMainType takes integer index returns integer
      if ( 0 < index and index <= EHotkeyMenu.HOTKEY_SKILL_END ) then
        return QUICK_MENU_SKILLSLOT
      elseif ( EHotkeyMenu.HOTKEY_SKILL_END < index and index <= EHotkeyMenu.HOTKEY_ITEM_END ) then
        return QUICK_MENU_ITEMSLOT
      elseif ( EHotkeyMenu.HOTKEY_ITEM_END < index and index <= EHotkeyMenu.HOTKEY_MENU_END ) then
        return QUICK_MENU_MENU
      endif
      return 0
    endmethod
    public static method MenuClick takes integer index returns nothing
      if ( index == EHotkeyMenu.SubMenuSetting ) then /* Option */
        set EMenus.OX_Option = not EMenus.OX_Option
        call DzFrameShow(Option_GetSettingFrame.evaluate(), EMenus.OX_Option)
      elseif ( index == EHotkeyMenu.SubMenuDiscord ) then /* Discord */
        call JNOpenBrowser("https://discord.gg/8FubNC8mZ")
      elseif ( index == EHotkeyMenu.SubMenuKakaotalk ) then /* KakaoTalk */
        call JNOpenBrowser("https://open.kakao.com/o/gM1u4zn")
      elseif ( index == EHotkeyMenu.SubMenuAutoCombat ) then /* AutoCombat */
        //! be Sync
        call Msg(GetLocalPlayer(), "자동사냥 기능은 준비중입니다.")
      elseif ( index == EHotkeyMenu.SubMenuInventory ) then /* Inventory */
        set EMenus.OX_Inven = not EMenus.OX_Inven
        call DzFrameShow(Frame_InvenButtonsBackDrop[0], EMenus.OX_Inven)
      elseif ( index == EHotkeyMenu.SubMenuStatus ) then /* Stats */
        set EMenus.OX_Stats = not EMenus.OX_Stats
        call DzFrameShow(Frame_Info[0], EMenus.OX_Stats)
      elseif ( index == EHotkeyMenu.SubMenuSkillTree ) then /* Skills1 - Main */
        set EMenus.OX_Skills1 = not EMenus.OX_Skills1
        call DzFrameShow(SkillTree.GetTreeFrameMain(), EMenus.OX_Skills1)
      elseif ( index == EHotkeyMenu.SubMenuSmartMode ) then /* Skills2 - Personal */
        set EMenus.OX_Skills2 = not EMenus.OX_Skills2
        call Msg(GetLocalPlayer(), "스마트 모드는 준비중입니다.")
      endif
    endmethod
    public static method CloseAllMenues takes player whichPlayer returns nothing
      if GetLocalPlayer() == whichPlayer then
        set EMenus.OX_Inven = false
        call DzFrameShow(Frame_InvenButtonsBackDrop[0], EMenus.OX_Inven)
        set EMenus.OX_Stats = false
        call DzFrameShow(Frame_Info[0], EMenus.OX_Stats)
        set EMenus.OX_Skills1 = false
        call DzFrameShow(SkillTree.GetTreeFrameMain(), EMenus.OX_Skills1)
      endif
    endmethod

    static method TreeSkillUse takes nothing returns nothing
      local player p = DzGetTriggerSyncPlayer()
      local string data = DzGetTriggerSyncData()
      call PlayerResource[GetPlayerId(p)+1].character.UseSkillIndex(S2I(data))
    endmethod
    static method ButtonClickDetail takes player p, integer frame returns nothing
      local integer playerId = GetPlayerId(p)+1
      // local integer frameIndex = EMenus.GetSubTypeId(DzGetTriggerUIEventFrame())
      if ( EMenus.GetMainType(frame) == SELECT_MENU_CHARACTER ) then
        set Select.NowSelect[playerId] = EMenus.GetSubTypeId(frame)
        // call MsgAll("플레이어["+I2S(playerId)+"]클릭/캐릭터["+I2S(Select.NowSelect[playerId])+ "] \n   =" +CharacterData[Select.NowSelect[playerId]].SelectDatas)
        if ( GetLocalPlayer() == p ) then
          call StopSound(gg_snd_MouseClick1, false, false)
          call StartSound(gg_snd_MouseClick1)
          call Select.ViewInfo(CharacterData[Select.NowSelect[playerId]].SelectDatas, ( 0 < S2I(JNStringSplit(JNStringSplit(LoadStr(hash, playerId, StringHash("Data")),"/",Select.NowSelect[playerId]),"'",1)) ))
        endif
      elseif ( EMenus.GetMainType(frame) == QUICK_MENU_MENU ) then
        if ( GetLocalPlayer() == p ) then
          call StopSound(gg_snd_BigButtonClick, false, false)
          call StartSound(gg_snd_BigButtonClick)
          call MenuClick(EMenus.GetSubTypeId(frame))
        endif
      elseif ( EMenus.GetMainType(frame) == QUICK_MENU_ITEMSLOT ) then
        call MsgAll("플레이어["+I2S(playerId)+"]/아이템["+I2S(EMenus.GetSubTypeId(frame)-EHotkeyMenu.ItemSlot1+1)+ "]클릭=메뉴["+I2S(EMenus.GetSubTypeId(frame))+"]")
      elseif ( EMenus.GetMainType(frame) == QUICK_MENU_SKILLSLOT ) then
        call MsgAll("플레이어["+I2S(playerId)+"]/스킬["+I2S(EMenus.GetSubTypeId(frame)-EHotkeyMenu.SkillSlot1+1)+ "]클릭=메뉴["+I2S(EMenus.GetSubTypeId(frame))+"]")
        call Msg(Player(playerId-1), "스킬#" + I2S(EMenus.GetSubTypeId(frame)) + "/"+I2S(TreeMainCoreData[PlayerResource[playerId].character.id].skillNumber[EMenus.GetSubTypeId(frame)]) +"번, " + SkillData[TreeMainCoreData[PlayerResource[playerId].character.id].skillNumber[EMenus.GetSubTypeId(frame)]].toString())
        call DzSyncData("TreeSkill", I2S(EMenus.GetSubTypeId(frame)))
      endif
    endmethod

    static method ButtonClickAll takes nothing returns nothing
      call ButtonClickDetail(DzGetTriggerUIEventPlayer(), DzGetTriggerUIEventFrame())
    endmethod
    private static method CreateHotKey takes integer frame, integer index returns nothing
      local integer HotFrame = DzCreateFrame("CommandButtonHotKeyBackDrop", frame, CountAdder())
      local integer HotFrameTxt = DzCreateFrame("CommandButtonHotKeyText", HotFrame, CountAdder())
      call DzFrameSetTexture(HotFrame, "ui\\widgets\\console\\human\\commandbutton\\human-button-lvls-overlay.blp", 0)
      call DzFrameSetPoint(HotFrame, JN_FRAMEPOINT_TOPLEFT, frame, JN_FRAMEPOINT_TOPLEFT, -.001, .001)
      call DzFrameSetPoint(HotFrameTxt, JN_FRAMEPOINT_CENTER, HotFrame, JN_FRAMEPOINT_CENTER, 0., 0.)
      call DzFrameSetText(HotFrameTxt, BaseHotKeyRaw(index))

      call SaveInteger(hash, HOTKEY_FRAME_BACK, index, frame)
      call SaveInteger(hash, HOTKEY_FRAME_TEXT, frame, HotFrameTxt)
      // call AddReg(P, MenuNo, Hotkey) 플레이어 번호 없으니 생략.
    endmethod
    private static method CreateButtons takes integer index, real x, real y, real size, string iconPath returns nothing
      // set currentCount = currentCount + 1

      // MainButton
      set Quickmenu_Buttons[index] = DzCreateFrameByTagName("BUTTON", "", GetMainFrame(), "ScoreScreenTabButtonTemplate", CountAdder())
      call DzFrameSetAbsolutePoint(Quickmenu_Buttons[index], JN_FRAMEPOINT_BOTTOMLEFT, x, y)
      call DzFrameSetSize(Quickmenu_Buttons[index], size, size)
      call DzFrameSetScriptByCode(Quickmenu_Buttons[index], JN_FRAMEEVENT_MOUSE_UP, function MenuQuickSlot.ButtonClickAll, false)

      // IDs
      call EMenus.FrameSaveIDs(Quickmenu_Buttons[index], IndexToMainType(index), index)

      // Backdrop
      set Quickmenu_Backdrops[index]=DzCreateFrameByTagName("BACKDROP", "", Quickmenu_Buttons[index], "", CountAdder())
      call DzFrameSetAllPoints(Quickmenu_Backdrops[index], Quickmenu_Buttons[index])
      call DzFrameSetTexture(Quickmenu_Backdrops[index], iconPath, 0)

      // HotKey - BACKDROP 보다 아래에 있어야함
      call CreateHotKey(Quickmenu_Buttons[index], index)
    endmethod
    private static method CreateMenuFrames takes nothing returns nothing
      call CreateButtons(EHotkeyMenu.SubMenuSetting, .78, .58, .02, "war3mapImported\\frame_setting.blp")  /* 설정 */
      call CreateButtons(EHotkeyMenu.SubMenuDiscord, .76, .58, .02, "war3mapImported\\frame_discord.blp")  /* 디코 */
      call CreateButtons(EHotkeyMenu.SubMenuKakaotalk, .74, .58, .02, "war3mapImported\\frame_kakao.blp")    /* 카톡 */
      call CreateButtons(EHotkeyMenu.SubMenuAutoCombat, .63, .01, .03, "war3mapImported\\frame_combat.blp")   /* 자동사냥 */
      call CreateButtons(EHotkeyMenu.SubMenuInventory, .67, 0., .03, "Inven_Empty.blp")                      /* 인벤 */
      call CreateButtons(EHotkeyMenu.SubMenuStatus, .70, 0., .03, "war3mapImported\\frame_stats.blp")     /* 능력치 */
      call CreateButtons(EHotkeyMenu.SubMenuSkillTree, .73, 0., .03, "war3mapImported\\frame_stats2.blp")    /* 스킬 */
      call CreateButtons(EHotkeyMenu.SubMenuSmartMode, .76, 0., .03, "war3mapImported\\frame_skills.blp")    /* 스킬 */
    endmethod
    private static method CreateSkillFrames takes nothing returns nothing
      call CreateButtons(EHotkeyMenu.SkillSlot1, .3, .03, .025, "ReplaceableTextures\\CommandButtons\\BTNThoriumMelee.blp")
      call CreateButtons(EHotkeyMenu.SkillSlot2, .33, .03, .025, "ReplaceableTextures\\CommandButtons\\BTNHumanArmorUpOne.blp")
      call CreateButtons(EHotkeyMenu.SkillSlot3, .36, .03, .025, "ReplaceableTextures\\CommandButtons\\BTNHumanArmorUpTwo.blp")
      call CreateButtons(EHotkeyMenu.SkillSlot4, .39, .03, .025, "ReplaceableTextures\\CommandButtons\\BTNHumanArmorUpThree.blp")
      call CreateButtons(EHotkeyMenu.SkillSlot5, .3, .06, .025, "ReplaceableTextures\\CommandButtons\\BTNOrbOfFire.blp")
      call CreateButtons(EHotkeyMenu.SkillSlot6, .33, .06, .025, "ReplaceableTextures\\CommandButtons\\BTNOrbOfVenom.blp")
      call CreateButtons(EHotkeyMenu.SkillSlot7, .36, .06, .025, "ReplaceableTextures\\CommandButtons\\BTNOrbOfFrost.blp")
      call CreateButtons(EHotkeyMenu.SkillSlot8, .39, .06, .025, "ReplaceableTextures\\CommandButtons\\BTNDaggerOfEscape.blp")
    endmethod
    private static method CreateItemFrames takes nothing returns nothing
      local integer index = EHotkeyMenu.ItemSlot1
      loop
        call CreateButtons(index, .4215+((index-EHotkeyMenu.HOTKEY_SKILL_END)*.025), .03, .0235, "Inven_Empty.blp")
        exitwhen EHotkeyMenu.ItemSlot7 <= index
        set index = index + 1
      endloop
    endmethod

    private static method InitUnitDetails takes nothing returns nothing
      local integer i = 0


      /* 플레이어 이름 */
      set i = DzCreateFrameByTagName("TEXT", "", GetSubFrame(), "", CountAdder())
      call DzFrameSetAbsolutePoint(i, JN_FRAMEPOINT_CENTER , .25, .07)
      call DzFrameSetText(i, GetPlayerName(GetLocalPlayer()))
      
      /* 경험치바 */
      set i = MainFrame_Get(DzSimpleFrameFindByName("SimpleHeroLevelBar", 0))
      call DzFrameSetAbsolutePoint(i, JN_FRAMEPOINT_BOTTOMLEFT, .3, .001)
      call DzFrameSetAbsolutePoint(i, JN_FRAMEPOINT_TOPRIGHT, .62, .017)
      
      /* 영웅 이명 - 카샨 */
      set i = MainFrame_Get(DzSimpleFontStringFindByName("SimpleNameValue", 0))
      call DzFrameSetAbsolutePoint(i, JN_FRAMEPOINT_CENTER, .25, .055)
      
      /* 유닛 이름 - 피전트  */
      set i = MainFrame_Get(DzSimpleFontStringFindByName("SimpleClassValue", 0))
      call DzFrameSetAbsolutePoint(i, JN_FRAMEPOINT_CENTER, .25, .040)
      
      /* 레벨 1 마운틴킹 */
      set i = MainFrame_Get(DzSimpleFrameFindByName("SimpleProgressIndicator", 0))
      call DzFrameSetAbsolutePoint(i, JN_FRAMEPOINT_CENTER, .25, .035)
      
      /* 초상화 */
      // 초기에 설정 in MainFrame.j
      // HP & MP - 특수 설정 in Select.j -> PortraitEditor.j
      
      call DzFrameShow(GetMainFrame(), false)
    endmethod

    private static method delayedInit takes nothing returns nothing
      local integer P = GetPlayerId(GetTriggerPlayer()) + 1 
      local integer loopA = 1
      local integer tempKey = 0 
      loop
        set tempKey = EHotkeys.H2I(MenuQuickSlot.BaseHotKeyRaw(loopA))
        call SaveInteger(hash, P, loopA, tempKey)
        call SaveInteger(hash, tempKey, P, loopA)
        call MenuQuickSlot.AddReg(P, loopA, tempKey, false) 
        
        exitwhen loopA >= QUICK_MENU_COUNT_ALL
        set loopA = loopA + 1 
      endloop 
    endmethod
    // 퀵슬롯 메뉴 생성(+단축키 지정)
    private static method onInit takes nothing returns nothing

      // 메인 프레임 - 아이템, 스킬, 디코 등
      call CreateItemFrames()
      call CreateSkillFrames()
      call CreateMenuFrames()

      // 유닛 프레임(조정만)
      call InitUnitDetails()
      call TimerStart(CreateTimer(), 1., false, function MenuQuickSlot.delayedInit)
    endmethod
  endstruct
endscope