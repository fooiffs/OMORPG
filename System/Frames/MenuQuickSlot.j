scope MenuQuickSlot
  struct MenuQuickSlot
    static integer currentCount = 1

    // 4가지 경우의 수에 따라 등록
    // - 단축키[T]가 아이템[7]에 등록되었습니다.
    // - 단축키[T]가 아이템[7]에 등록되었습니다. (기존 스킬[3] 삭제)
    // - 단축키[T]가 아이템[7]에 등록되었습니다. (기존 단축키[D] 삭제)
    
    // - (신규) 아이템[1] 단축키에 <T>가 새로 등록되었습니다.1번째 아이템 단축키: T 등록
    // - (변경) 
    // - 1번째 아이템 단축키: D→T 변경 (기존 D단축키 삭제, 기존 T단축키 3번째 메뉴삭제)
    // - 1번째 아이템 단축키: T 등록 (기존 T단축키 3번째 메뉴삭제)
    // - 1번째 아이템 단축키: T 등록*/
    static method AddReg takes integer P, integer MenuNo, integer Hotkey returns nothing
      local string s = ""
      local integer i = 0
      if ( EHotkeys.I2H(Hotkey) == "" ) then
        call DisplayTimedTextToPlayer(Player(P-1),0,0,4.,"등록할 수 없는 단축키입니다. -" +I2S(Hotkey) + "=" + EHotkeys.I2H(Hotkey))
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
          call DzFrameSetText(LoadInteger(hash, LoadInteger(hash, StringHash("FUI_HotKeyBase"), MenuNo), StringHash("FUI_HotKey")), EHotkeys.I2H(Hotkey))
        endif
        call DisplayTimedTextToPlayer(Player(P-1),0,0,7.,s)
      endif
      
      /*1번째 아이템 단축키: D→T 변경 (기존 D단축키 삭제)
      1번째 아이템 단축키: D→T 변경 (기존 D단축키 삭제, 기존 T단축키 3번째 메뉴삭제)
      1번째 아이템 단축키: T 등록 (기존 T단축키 3번째 메뉴삭제)
      1번째 아이템 단축키: T 등록*/
      
      
      /*hotkey에서 MenuNo 반환되어야함
      MenuNo에서 hotKey 반환되어야함 (기존거 삭제)*/
      
    endmethod
    
    static if false then
      // constant가 붙은 함수는 클릭이 되지 않기에 참조용
      method MenuQuickSlot_BaseHotKey takes integer i returns nothing
      endmethod
    endif
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
          return "F8"
        elseif ( subTypeId == 2 ) then
          return "F7"
        elseif ( subTypeId == 3 ) then
          return "F6"
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
    public static method MenuClick takes integer i returns nothing
      if ( i == 1 ) then /* Option */
        set EMenus.OX_Option = not EMenus.OX_Option
        call DzFrameShow(Option_Frame_SettingBackdrop[0], EMenus.OX_Option)
      elseif ( i == 2 ) then /* Discord */
        call JNOpenBrowser("https://discord.gg/8FubNC8mZ")
      elseif ( i == 3 ) then /* KakaoTalk */
        call JNOpenBrowser("https://open.kakao.com/o/gM1u4zn")
      elseif ( i == 4 ) then /* AutoCombat */
        //! be Sync            
      elseif ( i == 5 ) then /* Inventory */
        set EMenus.OX_Inven = not EMenus.OX_Inven
        call DzFrameShow(Frame_InvenButtonsBackDrop[0], EMenus.OX_Inven)
      elseif ( i == 6 ) then /* Stats */
        set EMenus.OX_Stats = not EMenus.OX_Stats
        call DzFrameShow(Frame_Info[0], EMenus.OX_Stats)
      elseif ( i == 7 ) then /* Skills1 - Main */
        set EMenus.OX_Skills1 = not EMenus.OX_Skills1
        call DzFrameShow(SkillTree_TreeMainFrame, EMenus.OX_Skills1)
      elseif ( i == 8 ) then /* Skills2 - Personal */
        set EMenus.OX_Skills2 = not EMenus.OX_Skills2
      endif
    endmethod
    static method ButtonClickDetail takes player p, integer frame returns nothing
      local integer playerId = GetPlayerId(p)+1
      if ( EMenus.GetMainType(frame) == SELECT_MENU_CHARACTER ) then
        set NowSelect[playerId] = EMenus.GetSubTypeId(frame)
        // call MsgAll("플레이어["+I2S(playerId)+"]클릭/캐릭터["+I2S(NowSelect[playerId])+ "] \n   =" +CharacterData[NowSelect[playerId]].SelectDatas)
        if ( GetLocalPlayer() == p ) then
          call StopSound(gg_snd_MouseClick1, false, false)
          call StartSound(gg_snd_MouseClick1)
          call Select.ViewInfo(CharacterData[NowSelect[playerId]].SelectDatas, ( 0 < S2I(JNStringSplit(JNStringSplit(LoadStr(hash, playerId, StringHash("Data")),"/",NowSelect[playerId]),"'",1)) ))
        endif
      elseif ( EMenus.GetMainType(frame) == QUICK_MENU_MENU ) then
        if ( GetLocalPlayer() == p ) then
          call StopSound(gg_snd_BigButtonClick, false, false)
          call StartSound(gg_snd_BigButtonClick)
          call MenuClick(EMenus.GetSubTypeId(frame))
        endif
      elseif ( EMenus.GetMainType(frame) == QUICK_MENU_ITEMSLOT ) then
      elseif ( EMenus.GetMainType(frame) == QUICK_MENU_SKILLSLOT ) then
      endif
    endmethod
    static method ButtonClickAll takes nothing returns nothing
      call ButtonClickDetail(DzGetTriggerUIEventPlayer(), DzGetTriggerUIEventFrame())
    endmethod
    private static method CreateHotKey takes integer frame returns nothing
      local integer HotFrame = DzCreateFrame("CommandButtonHotKeyBackDrop", frame, currentCount)
      local integer HotFrameTxt = DzCreateFrame("CommandButtonHotKeyText", HotFrame, currentCount)
      call DzFrameSetTexture(HotFrame, "ui\\widgets\\console\\human\\commandbutton\\human-button-lvls-overlay.blp", 0)
      call DzFrameSetPoint(HotFrame, JN_FRAMEPOINT_TOPLEFT, frame, JN_FRAMEPOINT_TOPLEFT, -.001, .001)
      call DzFrameSetPoint(HotFrameTxt, JN_FRAMEPOINT_CENTER, HotFrame, JN_FRAMEPOINT_CENTER, 0., 0.)
      call DzFrameSetText(HotFrameTxt, BaseHotKey(QUICK_MENU_MENU, currentCount))
      call DzFrameSetScriptByCode(frame, JN_FRAMEEVENT_MOUSE_UP, function MenuQuickSlot.ButtonClickAll, false)

      call SaveInteger(hash, StringHash("FUI_HotKeyBase"), currentCount, frame)
      call SaveInteger(hash, frame, StringHash("FUI_HotKey"), HotFrameTxt)
      // call AddReg(P, MenuNo, Hotkey) 플레이어 번호 없으니 생략.
    endmethod
    private static method CreateButtons takes integer types, integer offset, real x, real y, real size, string iconPath returns nothing
      set currentCount = currentCount + 1

      // MainButton
      set Quickmenu_Buttons[currentCount] = DzCreateFrameByTagName("BUTTON", "", Frame_Main, "ScoreScreenTabButtonTemplate", 0)
      call DzFrameSetAbsolutePoint(Quickmenu_Buttons[currentCount], JN_FRAMEPOINT_BOTTOMLEFT, x, y)
      call DzFrameSetSize(Quickmenu_Buttons[currentCount], size, size)

      // IDs
      call EMenus.FrameSaveIDs(Quickmenu_Buttons[currentCount], types, currentCount-offset)
      
      // HotKey
      call CreateHotKey(Quickmenu_Buttons[currentCount])

      // Backdrop
      set Quickmenu_Backdrops[currentCount]=DzCreateFrameByTagName("BACKDROP", "", Quickmenu_Buttons[currentCount], "", 0)
      call DzFrameSetAllPoints(Quickmenu_Backdrops[currentCount], Quickmenu_Buttons[currentCount])
      call DzFrameSetTexture(Quickmenu_Backdrops[currentCount], iconPath, 0)
    endmethod
    private static method CreateMenuFrames takes integer offset returns nothing
      call CreateButtons(QUICK_MENU_MENU, offset, .78, .58, .02, "war3mapImported\\frame_setting.blp")  /* 설정 */
      call CreateButtons(QUICK_MENU_MENU, offset, .76, .58, .02, "war3mapImported\\frame_discord.blp")  /* 디코 */
      call CreateButtons(QUICK_MENU_MENU, offset, .74, .58, .02, "war3mapImported\\frame_kakao.blp")    /* 카톡 */

      call CreateButtons(QUICK_MENU_MENU, offset, .63, .01, .03, "war3mapImported\\frame_combat.blp")   /* 자동사냥 */
      call CreateButtons(QUICK_MENU_MENU, offset, .67, 0., .03, "Inven_Empty.blp")                      /* 인벤 */
      call CreateButtons(QUICK_MENU_MENU, offset, .70, 0., .03, "war3mapImported\\frame_stats.blp")     /* 능력치 */
      call CreateButtons(QUICK_MENU_MENU, offset, .73, 0., .03, "war3mapImported\\frame_stats2.blp")    /* 스킬 */
      call CreateButtons(QUICK_MENU_MENU, offset, .76, 0., .03, "war3mapImported\\frame_skills.blp")    /* 스킬 */
    endmethod
    private static method CreateSkillFrames takes integer offset returns nothing
      call CreateButtons(QUICK_MENU_SKILLSLOT, offset, .3, .03, .025, "ReplaceableTextures\\CommandButtons\\BTNThoriumMelee.blp")
      call CreateButtons(QUICK_MENU_SKILLSLOT, offset, .33, .03, .025, "ReplaceableTextures\\CommandButtons\\BTNHumanArmorUpOne.blp")
      call CreateButtons(QUICK_MENU_SKILLSLOT, offset, .36, .03, .025, "ReplaceableTextures\\CommandButtons\\BTNHumanArmorUpTwo.blp")
      call CreateButtons(QUICK_MENU_SKILLSLOT, offset, .39, .03, .025, "ReplaceableTextures\\CommandButtons\\BTNHumanArmorUpThree.blp")
      call CreateButtons(QUICK_MENU_SKILLSLOT, offset, .3, .06, .025, "ReplaceableTextures\\CommandButtons\\BTNOrbOfFire.blp")
      call CreateButtons(QUICK_MENU_SKILLSLOT, offset, .33, .06, .025, "ReplaceableTextures\\CommandButtons\\BTNOrbOfVenom.blp")
      call CreateButtons(QUICK_MENU_SKILLSLOT, offset, .36, .06, .025, "ReplaceableTextures\\CommandButtons\\BTNOrbOfFrost.blp")
      call CreateButtons(QUICK_MENU_SKILLSLOT, offset, .39, .06, .025, "ReplaceableTextures\\CommandButtons\\BTNDaggerOfEscape.blp")
    endmethod
    private static method CreateItemFrames takes integer offset returns nothing
      loop
        call CreateButtons(QUICK_MENU_ITEMSLOT, offset, .4215+(currentCount*.025), .03, .0235, "Inven_Empty.blp")
        exitwhen currentCount >= QUICK_MENU_ITEM_COUNT
        set currentCount = currentCount + 1
      endloop
    endmethod

    // 퀵슬롯 메뉴 생성(+단축키 지정)
    private static method onInit takes nothing returns nothing
      call CreateItemFrames(currentCount) /* to FRAME_SLOT_ITEM_COUNT */
      call CreateSkillFrames(currentCount)
      call CreateMenuFrames(currentCount)
    endmethod
  endstruct
endscope