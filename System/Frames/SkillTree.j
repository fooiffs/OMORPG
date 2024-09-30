scope SkillTree initializer Init
    globals
      public integer TreeMainFrame
      private integer TreePopupFrame
      private integer TreeExtendFrame

      // Link : ESkillTree.MainCharacterName 등
      private integer array TreeChangeableFrame
      private integer array TreeMainSkillButtons
      private integer array TreeExtendSmallButtons

      private integer SkillTreeNow

      // private integer array SkillTreeButton
      // public integer array SkillTreeBackdrop
      // private integer array SkillTreeText
      // private integer array SkillTreePopup
      
      // private integer array SkillTree2Button
      // private integer array SkillTree2Backdrop
      // private integer array SkillTree2Text
      // private integer array SkillTree2Popup
      
      // public integer array Info
      private trigger skillTreeTrigger = CreateTrigger()

      private integer currentPlayerId   = 0
      private integer currentTreeTypeId = 0
      private integer currentContentsId = 0
    endglobals
    private function f2I takes integer f returns integer
      return EMenus.GetSubTypeId(f)
    endfunction
    private function MaxRow3 takes integer kor, integer eng, integer space, boolean isColored returns real
      if ( isColored ) then
      return .0222 + kor*.01 + (eng-9)*.00735 + space * .0033
      else
      return .0222 + kor*.01 + eng*.00735 + space * .0033
      endif
    endfunction
    private function MaxRow takes real title, string s, integer i2 returns real
      local string temp_s
      local real return_x = 0.07

      // [가-힣] : 한글
      // \w, [a-zA-Z_0-9] : 영문자, 숫자, 밑줄
      // [\s\p{P}] : \s : 공백문자, \p{P} : 문장 부호
      loop
        set temp_s = JNStringSplit(s, "\n", i2)
        // set return_x = RMaxBJ(return_x, MaxRow2(JNStringLength(temp_s), JNStringCount(temp_s, " ")))
        // call BJDebugMsg("MaxRow: " + I2S(JNStringLength(temp_s)) + ", " + I2S(JNStringCount(temp_s, " ")) + ", " + I2S(JNStringCount(temp_s, "[가-힣]")) + ", " + I2S(JNStringCount(temp_s, "[a-zA-Z_0-9]")))
        set return_x = RMaxBJ(return_x, MaxRow3(JNStringCount(temp_s, "[가-힣]"), JNStringCount(temp_s, "[a-zA-Z_0-9]"), JNStringCount(temp_s, " "), JNStringContains(temp_s, "|c")))
        exitwhen i2 <= 1
        set i2 = i2 - 1
      endloop
      set temp_s = null
      return RMaxBJ(title, return_x)
    endfunction
    private constant function MaxHeight takes integer count returns real
      return count*.01
    endfunction

    public function MakeLineX takes integer base, real x, real y, real size returns nothing
      set SkillTreeNow = DzCreateFrameByTagName("BACKDROP", "", base, "", 0)
      call DzFrameSetTexture(SkillTreeNow, "ReplaceableTextures\\TeamColor\\TeamColor04.blp", 0)
      call DzFrameSetPoint(SkillTreeNow, JN_FRAMEPOINT_LEFT, base, JN_FRAMEPOINT_TOPLEFT, x, y)
      call DzFrameSetSize(SkillTreeNow, size, 0.0005)
    endfunction
    public function MakeLineY takes integer base, real x, real y, real size returns nothing
      set SkillTreeNow = DzCreateFrameByTagName("BACKDROP", "", base, "", 0)
      call DzFrameSetTexture(SkillTreeNow, "ReplaceableTextures\\TeamColor\\TeamColor04.blp", 0)
      call DzFrameSetPoint(SkillTreeNow, JN_FRAMEPOINT_TOP, base, JN_FRAMEPOINT_TOPLEFT, x, y)
      call DzFrameSetPoint(SkillTreeNow, JN_FRAMEPOINT_LEFT, base, JN_FRAMEPOINT_TOPLEFT, x, y)
      call DzFrameSetSize(SkillTreeNow, .0005, size)
    endfunction

    private function ChangeSmallLevelFrame takes integer playerId, integer frameNumber, integer level returns nothing
      if ( 0 < level and GetLocalPlayer() == Player(playerId-1) ) then
        call DzFrameShow(LoadInteger(hash, StringHash("Tree_HotkeyBase"), frameNumber), true)
        call DzFrameSetText(LoadInteger(hash, LoadInteger(hash, StringHash("Tree_HotkeyBase"), frameNumber), StringHash("Tree_Hotkey")), I2S(level))
      endif
    endfunction
    private function MakeSmallLevelFrame takes integer frame returns nothing
      local integer HotFrame = DzCreateFrame("CommandButtonHotKeyBackDrop", frame, StringHash("TreeHotkey"))
      local integer HotFrameTxt = DzCreateFrame("CommandButtonHotKeyText", HotFrame, 1)
      call DzFrameSetTexture(HotFrame, "ui\\widgets\\console\\human\\commandbutton\\human-button-lvls-overlay.blp", 0)
      call DzFrameSetPoint(HotFrame, JN_FRAMEPOINT_BOTTOM, frame, JN_FRAMEPOINT_TOP, 0., -0.008)
      call DzFrameSetSize(HotFrame, 0.015, 0.01)
      call DzFrameSetPoint(HotFrameTxt, JN_FRAMEPOINT_CENTER, HotFrame, JN_FRAMEPOINT_CENTER, 0., 0.)
      call SaveInteger(hash, StringHash("Tree_HotkeyBase"), f2I(frame), frame)
      call SaveInteger(hash, frame, StringHash("Tree_Hotkey"), HotFrameTxt)
      call DzFrameSetText(HotFrameTxt, I2S(GetRandomInt(1,9)))
      call DzFrameShow(HotFrame, false)
      // call DzFrameSetEnable(HotFrame, false)
    endfunction

    // private function MakeText takes integer i, real x, real y, string contents, real size, boolean center returns integer
    //   set SkillTreeText[i] = DzCreateFrameByTagName("TEXT", "", SkillTreeNow, "", 0)
    //   if ( center ) then
    //     call DzFrameSetPoint(SkillTreeText[i], JN_FRAMEPOINT_CENTER, SkillTreeNow, JN_FRAMEPOINT_TOPLEFT, x, y)
    //   else
    //     call DzFrameSetPoint(SkillTreeText[i], JN_FRAMEPOINT_LEFT, SkillTreeNow, JN_FRAMEPOINT_TOPLEFT, x, y)
    //   endif
    //   if ( size != 0. ) then
    //     call DzFrameSetFont(SkillTreeText[i], "Fonts\\DFHeiMd.ttf", size, 0)
    //   endif
    //   call DzFrameSetText(SkillTreeText[i], contents)
    //   return SkillTreeText[i]
    //   //! Text를 Font 이후에 설정해야 한줄로 잘 표시됨.
    // endfunction
    // private function MakeLink takes integer i, real x, real y, real size, string contents returns nothing
    //   set SkillTreeBackdrop[i] = DzCreateFrameByTagName("BACKDROP", "", SkillTreeNow, "", 0)
    //   call DzFrameSetTexture(SkillTreeBackdrop[i], contents, 0)
    //   call DzFrameSetPoint(SkillTreeBackdrop[i], JN_FRAMEPOINT_BOTTOM, SkillTreeNow, JN_FRAMEPOINT_TOPLEFT, x, y-0.005)
    //   call DzFrameSetSize(SkillTreeBackdrop[i], .005, size+0.01)
    // endfunction
    // private function MakeLinkX takes integer i, real x, real y, real size, string contents returns nothing
    //   set SkillTreeBackdrop[i] = DzCreateFrameByTagName("BACKDROP", "", SkillTreeNow, "", 0)
    //   call DzFrameSetTexture(SkillTreeBackdrop[i], contents, 0)
    //   call DzFrameSetPoint(SkillTreeBackdrop[i], JN_FRAMEPOINT_LEFT, SkillTreeNow, JN_FRAMEPOINT_TOPLEFT, x, y)
    //   call DzFrameSetSize(SkillTreeBackdrop[i], size+.02, 0.005)
    // endfunction
    private function SkillTreeSync takes nothing returns nothing
      local player clickedPlayer = DzGetTriggerSyncPlayer()
      local integer syncData = S2I(DzGetTriggerSyncData())
      call MsgAll("플레이어 " + GetPlayerName(clickedPlayer) + ", (스킬트리) 클릭, " + I2S(syncData))
    endfunction
    private function SkillTreeClick takes nothing returns nothing
      local integer f = DzGetTriggerUIEventFrame()
      local integer playerId = GetPlayerId(DzGetTriggerUIEventPlayer()) + 1
      local integer clickedNumber = f2I(f)
      // call MsgAll("플레이어 " + GetPlayerName(Player(playerId-1)) + ", "+I2S(EMenus.F2It(f))+"(스킬트리) 클릭, " + I2S(clickedNumber))
      if ( 0 < clickedNumber and GetLocalPlayer() == DzGetTriggerUIEventPlayer() ) then
        call StopSound(gg_snd_BigButtonClick, false, false)
        call StartSound(gg_snd_BigButtonClick)

        call DzFrameShow(TreeExtendFrame, true)
         call DzSyncData("TreeSync", I2S(clickedNumber))
          // => SkillTreeSync()
      endif
    endfunction
    
    private function ButtonJustUp takes nothing returns nothing
     local integer f = DzGetTriggerUIEventFrame()
     local integer skillNumber = LoadInteger(hash, StringHash("Menu_TypeSub"), f)
     local string s = SkillData[skillNumber].Name
     local integer need = JNStringCount(DzFrameGetText(TreeChangeableFrame[ESkillTree.PopupDetailPoint]), "\n")
     call DzFrameSetAbsolutePoint(TreeExtendFrame, JN_FRAMEPOINT_BOTTOMLEFT, GetFrameMouseX(), GetFrameMouseY())
     call DzFrameShow(TreeExtendFrame, true)
     
      if ( GetLocalPlayer() == DzGetTriggerUIEventPlayer() ) then
        call DzFrameSetText(TreeChangeableFrame[ESkillTree.PopupTitle], "|cffffcc00" + s)
        call DzFrameSetAbsolutePoint(TreePopupFrame, JN_FRAMEPOINT_BOTTOMLEFT, GetFrameMouseX(), GetFrameMouseY())
        call DzFrameSetSize(TreePopupFrame, MaxRow(.015+JNStringLength(s)*.012-JNStringCount(s, " ")*.008, DzFrameGetText(TreeChangeableFrame[ESkillTree.PopupDetailPoint]), need), .06+MaxHeight(need))
        call DzFrameSetPoint(TreeChangeableFrame[ESkillTree.PopupDetailCurrentLevel], JN_FRAMEPOINT_TOPLEFT, TreePopupFrame, JN_FRAMEPOINT_TOPLEFT, .01, -DzFrameGetHeight(TreePopupFrame)+.0175)
        call DzFrameShow(TreePopupFrame, true)
      endif
    endfunction
    private function ButtonJustDown takes nothing returns nothing
      if ( GetLocalPlayer() == DzGetTriggerUIEventPlayer() ) then
        call DzFrameShow(TreePopupFrame, false)
        call DzFrameShow(TreeExtendFrame, false)
      endif
    endfunction

    private function GetMadeText takes integer base, real x, real y, string contents, real size, boolean center returns integer
      set SkillTreeNow = DzCreateFrameByTagName("TEXT", "", base, "", 0)
      if ( center ) then
        call DzFrameSetPoint(SkillTreeNow, JN_FRAMEPOINT_CENTER, base, JN_FRAMEPOINT_TOPLEFT, x, y)
      else
        call DzFrameSetPoint(SkillTreeNow, JN_FRAMEPOINT_LEFT, base, JN_FRAMEPOINT_TOPLEFT, x, y)
      endif
      if ( size != 0. ) then
        call DzFrameSetFont(SkillTreeNow, "Fonts\\DFHeiMd.ttf", size, 0)
      endif
      call DzFrameSetText(SkillTreeNow, contents)
      return SkillTreeNow
    endfunction
    private function TreeMainIcon takes integer characterId returns nothing
      local integer loopA = TreeMainCoreData[characterId].MAX_TREE_SKILL_COUNT
      local integer lastFrame = 0
      if ( loopA <= 0 ) then
        call MsgAll("오류/스킬트리/스킬아이콘"+I2S(characterId)+"/스킬카운트 0")
        return
      else
        loop
          set TreeMainSkillButtons[loopA] = DzCreateFrameByTagName("BACKDROP", "", SkillTreeNow, "", 0)
          call DzFrameSetPoint(TreeMainSkillButtons[loopA], JN_FRAMEPOINT_CENTER, SkillTreeNow, JN_FRAMEPOINT_TOPLEFT, TreeMainCoreData[characterId].positionX[loopA], TreeMainCoreData[characterId].positionY[loopA])
          call DzFrameSetTexture(TreeMainSkillButtons[loopA], TreeMainCoreData[characterId].iconPath[TreeMainCoreData[characterId].SkillNumber[loopA]], 0)
          call DzFrameSetSize(TreeMainSkillButtons[loopA], .03, .03)
          call EMenus.FrameSaveIDs(TreeMainSkillButtons[loopA], SKILL_TREE_MAIN, TreeMainCoreData[characterId].SkillNumber[loopA])

          set lastFrame = DzCreateFrameByTagName("BUTTON", "", TreeMainSkillButtons[loopA], "", 0)
          call DzFrameSetAllPoints(lastFrame, TreeMainSkillButtons[loopA])
          call DzFrameSetScriptByCode(lastFrame, JN_FRAMEEVENT_MOUSE_UP, function SkillTreeClick, false)
          call DzFrameSetScriptByCode(lastFrame, JN_FRAMEEVENT_MOUSE_ENTER, function ButtonJustUp, false)
          call DzFrameSetScriptByCode(lastFrame, JN_FRAMEEVENT_MOUSE_LEAVE, function ButtonJustDown, false)
          call MakeSmallLevelFrame(lastFrame)

          exitwhen loopA <= 1
          set loopA = loopA - 1
        endloop
      endif
    endfunction
    private function TreeExtendIcon takes integer input, real x, real y, real size, string texture returns nothing
      set TreeChangeableFrame[input] = DzCreateFrameByTagName("BACKDROP", "", TreeExtendFrame, "", 0)
      call DzFrameSetPoint(TreeChangeableFrame[input], JN_FRAMEPOINT_CENTER, TreeExtendFrame, JN_FRAMEPOINT_TOPLEFT, x, y)
      call DzFrameSetTexture(TreeChangeableFrame[input], texture, 0)
      call DzFrameSetSize(TreeChangeableFrame[input], .03, .03)

      set SkillTreeNow = DzCreateFrameByTagName("BUTTON", "", TreeChangeableFrame[input], "", 0)
      call DzFrameSetAllPoints(SkillTreeNow, TreeChangeableFrame[input])
      call DzFrameSetScriptByCode(SkillTreeNow, JN_FRAMEEVENT_MOUSE_UP, function SkillTreeClick, false)
      call DzFrameSetScriptByCode(SkillTreeNow, JN_FRAMEEVENT_MOUSE_ENTER, function ButtonJustUp, false)
      call DzFrameSetScriptByCode(SkillTreeNow, JN_FRAMEEVENT_MOUSE_LEAVE, function ButtonJustDown, false)
      call EMenus.FrameSaveIDs(SkillTreeNow, SKILL_TREE_EXTEND, input)
    endfunction
  
    private function CreateFrameSkillTreeMain takes nothing returns nothing
      set TreeMainFrame = DzCreateFrameByTagName("BACKDROP", "", DzGetGameUI(), "QuestButtonBaseTemplate", 0)
      call DzFrameSetAbsolutePoint(TreeMainFrame, JN_FRAMEPOINT_TOPLEFT, 0.14, 0.55)
      call DzFrameSetSize(TreeMainFrame, .22, .45)
      call DzFrameSetAlpha(TreeMainFrame, 128)

      call MakeLineY(TreeMainFrame, .06, -.01, .43)
      call MakeLineX(TreeMainFrame, .06, -.04, .15)
      call MakeLineX(TreeMainFrame, .01, -.06, .20)
      call MakeLineY(TreeMainFrame, .11, -.04, .02)
      call MakeLineY(TreeMainFrame, .16, -.04, .02)
      
      set SkillTreeNow = DzCreateFrameByTagName("BACKDROP", "", TreeMainFrame, "", 0)
      call DzFrameSetAllPoints(SkillTreeNow, TreeMainFrame)
      call DzFrameSetTexture(SkillTreeNow, "SkillTree_Transparency.blp", 0)
      call DzFrameSetAlpha(SkillTreeNow, 204)
  
      set TreeChangeableFrame[ESkillTree.MainCharacterName]   = GetMadeText(TreeMainFrame, .035, -.03, "이치고", .015, true)

      call GetMadeText(TreeMainFrame, .135, -.02, "스킬트리", .020, true)
      call GetMadeText(TreeMainFrame, .085, -.05, "[기본]", 0., true)
      call GetMadeText(TreeMainFrame, .135, -.05, "[핵심]", 0., true)
      call GetMadeText(TreeMainFrame, .185, -.05, "[변신]", 0., true)

      set TreeChangeableFrame[ESkillTree.MainTreeTypeLeft]     = GetMadeText(TreeMainFrame, .085, -.07, "종베기", .01, true)
      set TreeChangeableFrame[ESkillTree.MainTreeTypeCenter]   = GetMadeText(TreeMainFrame, .135, -.07, "횡베기", .01, true)
      set TreeChangeableFrame[ESkillTree.MainTreeTypeRight]    = GetMadeText(TreeMainFrame, .185, -.07, "찌르기", .01, true)

      call GetMadeText(TreeMainFrame, .035, -.07, "필요 변신", .01, true)
      call GetMadeText(TreeMainFrame, .035, -.10, "기본", 0., true)
      call GetMadeText(TreeMainFrame, .035, -.14, "1단계", 0., true)
      call GetMadeText(TreeMainFrame, .035, -.18, "2단계", 0., true)
      call GetMadeText(TreeMainFrame, .035, -.22, "3단계", 0., true)
      call GetMadeText(TreeMainFrame, .035, -.26, "4단계", 0., true)
      call GetMadeText(TreeMainFrame, .035, -.30, "5단계", 0., true)
      call GetMadeText(TreeMainFrame, .035, -.34, "6단계", 0., true)
      call GetMadeText(TreeMainFrame, .035, -.38, "7단계", 0., true)
      call GetMadeText(TreeMainFrame, .035, -.42, "8단계", 0., true)
      
      call DzFrameShow(TreeMainFrame, false)
      //call MakeText(19, .035, -.46, "9단계", 0., true)

      // call MakeLink(30, .135, -.12, 0., "SkillTree_ActiveLink_Red.blp")
      // call MakeLink(31, .085, -.16, .04, "SkillTree_ActiveLink_Red.blp")
      // call MakeLink(32, .135, -.20, .04, "SkillTree_ActiveLink_Red.blp")

      // call MakeLink(33, .085, -.24, .04, "UI\\Widgets\\Console\\Human\\human-inventory-slotfiller.blp")
      // call MakeLink(34, .135, -.32, .08, "UI\\Widgets\\Console\\Human\\human-inventory-slotfiller.blp")
      // call MakeLink(35, .085, -.36, .08, "UI\\Widgets\\Console\\Human\\human-inventory-slotfiller.blp")
      // call MakeLink(36, .185, -.36, .20, "UI\\Widgets\\Console\\Human\\human-inventory-slotfiller.blp")
      // call MakeLinkX(37,.100, -.38, .05, "UI\\Widgets\\Console\\Human\\human-inventory-slotfiller.blp")
      // call MakeLink(38, .135, -.40, .04, "UI\\Widgets\\Console\\Human\\human-inventory-slotfiller.blp")
    endfunction

    private function CreateSkillTreePopupDetails takes integer i, real x, real y, string contents, real size returns nothing
      set TreeChangeableFrame[i] = DzCreateFrameByTagName("TEXT", "", TreePopupFrame, "", 0)
      call DzFrameSetPoint(TreeChangeableFrame[i], JN_FRAMEPOINT_TOPLEFT, TreePopupFrame, JN_FRAMEPOINT_TOPLEFT, x, y)
      call DzFrameSetText(TreeChangeableFrame[i], contents)
      call DzFrameSetFont(TreeChangeableFrame[i], "Fonts\\DFHeiMd.ttf", size, 0)
    endfunction
    private function CreateSkillTreePopup takes nothing returns nothing
      set TreePopupFrame = DzCreateFrameByTagName("BACKDROP", "", TreeMainFrame, "QuestButtonBaseTemplate", 0)
      call DzFrameSetAbsolutePoint(TreePopupFrame, JN_FRAMEPOINT_BOTTOMLEFT, 0.14, 0.55)
      call DzFrameSetSize(TreePopupFrame, .07, .06)
      call CreateSkillTreePopupDetails(ESkillTree.PopupTitle, .01, -.010, "|cffffcc00세로베기|r", 0.015)
      call CreateSkillTreePopupDetails(ESkillTree.PopupDetailPoint, .01, -.025, "|cffff3315변신레벨 12 이상 필요", 0.010)
      call CreateSkillTreePopupDetails(ESkillTree.PopupDetailCurrentLevel, .01, -.025, "Lv: 10|cff00ff00+2|r/10", 0.010)

      set SkillTreeNow = DzCreateFrameByTagName("TEXT", "", TreePopupFrame, "", 0)
      call DzFrameSetPoint(SkillTreeNow, JN_FRAMEPOINT_TOPLEFT, TreePopupFrame, JN_FRAMEPOINT_TOPLEFT, .01, -.075)
      call DzFrameSetText(SkillTreeNow, "|c000080c0자세히.. (클릭)|r")
      call DzFrameSetFont(SkillTreeNow, "Fonts\\DFHeiMd.ttf", 0.010, 0)

      call DzFrameShow(TreePopupFrame, false)
    endfunction

    private function CreateFrameSkillTreeExtend takes nothing returns nothing
      set TreeExtendFrame = DzCreateFrameByTagName("BACKDROP", "", TreeMainFrame, "QuestButtonBaseTemplate", 0)
      call DzFrameSetAbsolutePoint(TreeExtendFrame, JN_FRAMEPOINT_TOPLEFT, 0.45, 0.55)
      call DzFrameSetSize(TreeExtendFrame, .2, .31)
      call DzFrameSetAlpha(TreeExtendFrame, 128)
      
      call MakeLineY(TreeExtendFrame, .06, -.01, .09)
      call MakeLineX(TreeExtendFrame, .06, -.035, .13)
      call MakeLineX(TreeExtendFrame, .06, -.065, .13)
      call MakeLineX(TreeExtendFrame, .01, -.10, .18)
      
      set SkillTreeNow = DzCreateFrameByTagName("BACKDROP", "", TreeExtendFrame, "", 0)
      call DzFrameSetAllPoints(SkillTreeNow, TreeExtendFrame)
      call DzFrameSetTexture(SkillTreeNow, "SkillTree_Transparency.blp", 0)
      call DzFrameSetAlpha(SkillTreeNow, 204)

      call TreeExtendIcon(ESkillTree.SubIcon, .035, -.035, .05, "SkillTree_ichi_01.blp")
      set TreeChangeableFrame[ESkillTree.SubTitle]                  = GetMadeText(TreeExtendFrame, .125, -.020, "세로베기", .020, true)
      set TreeChangeableFrame[ESkillTree.SubShortDescriptionTop]    = GetMadeText(TreeExtendFrame, .125, -.030, "현재레벨", .010, true)
      set TreeChangeableFrame[ESkillTree.SubShortDescriptionMiddle] = GetMadeText(TreeExtendFrame, .125, -.040, "7/10", .010, true)
      set TreeChangeableFrame[ESkillTree.SubShortDescriptionLow]    = GetMadeText(TreeExtendFrame, .125, -.050, "B+ Rank", .010, true)

      set TreeChangeableFrame[ESkillTree.SubLongDescriptionCost]    = GetMadeText(TreeExtendFrame, .125, -.065, "소모마나 240, 쿨다운 70초", .010, true)
      set TreeChangeableFrame[ESkillTree.SubLongDescriptionDetials]    = GetMadeText(TreeExtendFrame, .125, -.075, "잠재능력을 모두 해방시켜 참격을 발사합니다.
750범위에 1427% 데미지를 가합니다.", .010, true)
      set TreeChangeableFrame[ESkillTree.SubLongDescriptionNextLevels]    = GetMadeText(TreeExtendFrame, .125, -.085, "데미지 상승 +11%, 
소모마나 +4.4", .010, true)

      call TreeExtendIcon(ESkillTree.SubSkillMinusAll, .035, -.035, .02, "SkillTree_PlusMinus01.blp")
      call TreeExtendIcon(ESkillTree.SubSkillMinusOne, .035, -.035, .02, "SkillTree_PlusMinus01.blp")
      call TreeExtendIcon(ESkillTree.SubSkillPlusOne, .035, -.035, .02, "SkillTree_PlusMinus01.blp")
      call TreeExtendIcon(ESkillTree.SubSkillPlusAll, .035, -.035, .02, "SkillTree_PlusMinus01.blp")

  //     call MakeText(46, .035, -.088, "Lv 12/10", .010, true)
      
  //     call MakeText(47, .125, -.020, "세로베기", .020, true)
      
  //     call MakeText(48, .065, -.050, "전방을 세로로 베어 처음으로
  // 맞는 적에게 데미지를 줍니다.", .010, false)
  
  //     call MakeText(49, .065, -.075, "데미지: 50 (40 + 공격력 10%)", .010, false)
  //     call MakeText(50, .065, -.090, "다음레벨: 65 (50 + 공격력 15%)", .010, false)
      
      // call MakeText(51, .100, -.110, "|cff3ca03c강화", .015, true)
      // call MakeIcon(52, .100, -.135, .03, 0, "SkillTree_AddFire_0.blp")
      // call MakeIcon(53, .085, -.150, .015, 23, "SkillTree_PlusMinus04.blp")
      // call MakeIcon(54, .115, -.150, .015, 24, "SkillTree_PlusMinus01.blp")
      // call MakeText(55, .100, -.155, "|cff3ca03c0/5", .008, true)
      
      // call MakeText(56, .070, -.180, "|cffed393e진화Ａ", .015, true)
      // call MakeIcon(57, .070, -.205, .03, 0, "SkillTree_AddFire_2_1.blp")
      // call MakeIcon(58, .055, -.220, .015, 23, "SkillTree_PlusMinus02.blp")
      // call MakeIcon(59, .085, -.220, .015, 24, "SkillTree_PlusMinus01.blp")
      // call MakeText(60, .070, -.225, "|cffed393e2/3", .008, true)
      // call MakeText(61, .130, -.180, "|cff3681eb진화Ｂ", .015, true)
      // call MakeIcon(62, .130, -.205, .03, 0, "SkillTree_AddFire_2_2.blp")
      // call MakeIcon(63, .115, -.220, .015, 23, "SkillTree_PlusMinus02.blp")
      // call MakeIcon(64, .145, -.220, .015, 24, "SkillTree_PlusMinus03.blp")
      // call MakeText(65, .130, -.225, "|cff3681eb3/3", .008, true)
      
      // call MakeText(66, .070, -.250, "|cffeb8dd0개화Ａ", .015, true)
      // call MakeIcon(67, .070, -.275, .03, 0, "SkillTree_AddFire_3_1.blp")
      // call MakeIcon(68, .055, -.290, .015, 23, "SkillTree_PlusMinus04.blp")
      // call MakeIcon(69, .085, -.290, .015, 24, "SkillTree_PlusMinus01.blp")
      // call MakeText(70, .070, -.295, "|cffeb8dd00/1", .008, true)
      // call MakeText(71, .130, -.250, "|cfffeff79개화Ｂ", .015, true)
      // call MakeIcon(72, .130, -.275, .03, 0, "SkillTree_AddFire_3_2.blp")
      // call MakeIcon(73, .115, -.290, .015, 23, "SkillTree_PlusMinus02.blp")
      // call MakeIcon(74, .145, -.290, .015, 24, "SkillTree_PlusMinus03.blp")
      // call MakeText(75, .130, -.295, "|cfffeff791/1", .008, true)
    endfunction
//     private function MakeText2Popup takes integer i, real x, real y, string contents, real size returns nothing
//       set SkillTree2Popup[i] = DzCreateFrameByTagName("TEXT", "", SkillTreeNow, "", 0)
//       call DzFrameSetPoint(SkillTree2Popup[i], JN_FRAMEPOINT_TOPLEFT, TreeExtendFrame, JN_FRAMEPOINT_TOPLEFT, x, y)
//       call DzFrameSetText(SkillTree2Popup[i], contents)
//       if ( size != 0. ) then
//         call DzFrameSetFont(SkillTree2Popup[i], "Fonts\\DFHeiMd.ttf", size, 0)
//       endif
//     endfunction
//     private function CreateSkillTree2Popup takes nothing returns nothing
//       set TreeExtendFrame = DzCreateFrameByTagName("BACKDROP", "", SkillTreeNow, "QuestButtonBaseTemplate", 0)
//       set SkillTreeNow = TreeExtendFrame
//       if ( false ) then
//         if ( false ) then /*Plus*/
//           call DzFrameSetAbsolutePoint(TreeExtendFrame, JN_FRAMEPOINT_BOTTOMLEFT, 0.14, 0.55)
//           call DzFrameSetSize(TreeExtendFrame, .07, .055)
//           call MakeText2Popup(1, .01, -.010, "|cffffcc00추가개방", 0.)
//           call MakeText2Popup(3, .01, -.035, "|c000080c0클릭하여 개방|r", 0.010)
//         else
//           call DzFrameSetAbsolutePoint(TreeExtendFrame, JN_FRAMEPOINT_BOTTOMLEFT, 0.14, 0.55)
//           call DzFrameSetSize(TreeExtendFrame, .095, .105)
//           call MakeText2Popup(1, .01, -.010, "|cffffcc00추가개방", 0.015)
//           call MakeText2Popup(2, .01, -.035, "|cffff3315필요사항:
//  - 스킬레벨 4 이상
//  - 스킬포인트 1 이상
//  - 최대 레벨 도달", 0.010)
//           call MakeText2Popup(3, .01, -.085, "|c000080c0조건 후 클릭하여 개방|r", 0.010)
//         endif
//       else
//         if ( false ) then
//           call DzFrameSetAbsolutePoint(TreeExtendFrame, JN_FRAMEPOINT_BOTTOMLEFT, 0.14, 0.55)
//           call DzFrameSetSize(TreeExtendFrame, .085, .055)
//           call MakeText2Popup(1, .01, -.010, "|cffffcc00개방제한", 0.)
//           call MakeText2Popup(3, .01, -.035, "|c000080c0클릭하여 개방제한|r", 0.010)
//         else
//           call DzFrameSetAbsolutePoint(TreeExtendFrame, JN_FRAMEPOINT_BOTTOMLEFT, 0.14, 0.55)
//           call DzFrameSetSize(TreeExtendFrame, .100, .105)
//           call MakeText2Popup(1, .01, -.010, "|cffffcc00개방제한", 0.015)
//           call MakeText2Popup(2, .01, -.035, "|cffff3315필요사항:
//  - 상위 스킬 우선 제한
//  - 골드 1,000 이상
//  - 최소 레벨 도달", 0.010)
//           call MakeText2Popup(3, .01, -.085, "|c000080c0조건 후 클릭하여 제한|r", 0.010)
//         endif
//       endif
      
//       call DzFrameShow(TreeExtendFrame, false)
//     endfunction
    
    private function Init takes nothing returns nothing

      call CreateFrameSkillTreeMain()
      call TreeMainIcon(ECharacter.ICHIGO)
      call CreateSkillTreePopup()

      call CreateFrameSkillTreeExtend()

      // call CreateSkillTree2()
      // call DzFrameShow(TreeExtendFrame, false)
      // call CreateSkillTree2Popup()

      call DzTriggerRegisterSyncData(skillTreeTrigger, "TreeSync", false)
      call TriggerAddAction(skillTreeTrigger, function SkillTreeSync)
    endfunction
  endscope