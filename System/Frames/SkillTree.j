scope SkillTree
  struct SkillTree
    private static integer TreeFrameMain = 0
    private static integer TreeFramePopup = 0
    private static integer TreeFrameExtend = 0

    private static integer array TreeBackMainSkills[MAX_TREE_SKILL_COUNT]

    private static integer TreeTextMainCharacterName
    private static integer TreeTextMainTypeLeft
    private static integer TreeTextMainTypeCenter
    private static integer TreeTextMainTypeRight
    
    private static integer TreeTextPopupTitle
    private static integer TreeTextPopupDetailPoint
    private static integer TreeTextPopupDetailCurrentLevel
    
    private static integer TreeBackSubIcon
    private static integer TreeTextSubTitle
    private static integer TreeTextSubShortDescriptionTop
    private static integer TreeTextSubShortDescriptionMiddle
    private static integer TreeTextSubShortDescriptionLow
    private static integer TreeTextSubLongDescriptionCost
    private static integer TreeTextSubLongDescriptionDetials
    private static integer TreeTextSubLongDescriptionNextLevels

    private static integer TreeButtonSkillMinusAll
    private static integer TreeButtonSkillMinusOne
    private static integer TreeButtonSkillPlusOne
    private static integer TreeButtonSkillPlusAll


    public static method MakeLineX takes integer parent, real x, real y, real size returns nothing
      local integer temp = DzCreateFrameByTagName("BACKDROP", "", parent, "", 0)
      call DzFrameSetTexture(temp, "ReplaceableTextures\\TeamColor\\TeamColor04.blp", 0)
      call DzFrameSetPoint(temp, JN_FRAMEPOINT_LEFT, parent, JN_FRAMEPOINT_TOPLEFT, x, y)
      call DzFrameSetSize(temp, size, .0005)
    endmethod
    public static method MakeLineY takes integer parent, real x, real y, real size returns nothing
      local integer temp = DzCreateFrameByTagName("BACKDROP", "", parent, "", 0)
      call DzFrameSetTexture(temp, "ReplaceableTextures\\TeamColor\\TeamColor04.blp", 0)
      call DzFrameSetPoint(temp, JN_FRAMEPOINT_TOP, parent, JN_FRAMEPOINT_TOPLEFT, x, y)
      call DzFrameSetSize(temp, .0005, size)
    endmethod

    private static method MakeBackLine takes integer input returns nothing
      local integer temp = DzCreateFrameByTagName("BACKDROP", "", input, "QuestButtonBaseTemplate", 0)
      call DzFrameSetAbsolutePoint(temp, JN_FRAMEPOINT_TOPLEFT, .14, .55)
      call DzFrameSetSize(temp, .22, .45)
      call DzFrameSetAlpha(temp, 128)
      call MakeLineY(temp, .06, -.01, .43)
      call MakeLineX(temp, .06, -.04, .15)
      call MakeLineX(temp, .01, -.06, .20)
      call MakeLineY(temp, .11, -.04, .02)
      call MakeLineY(temp, .16, -.04, .02)
      call DzFrameSetParent(temp, input)

      call DzFrameSetAllPoints(input, temp)
      call DzFrameSetTexture(input, "SkillTree_Transparency.blp", 0)
      call DzFrameSetAlpha(input, 204)
    endmethod
    public static method GetTreeFrameMain takes nothing returns integer
      local integer last = 0
      if ( TreeFrameMain == 0 ) then
        // 반투명 선 만들기
        set last = DzCreateFrameByTagName("BACKDROP", "", DzGetGameUI(), "QuestButtonBaseTemplate", 0)
        set TreeFrameMain = DzCreateFrameByTagName("BACKDROP", "", DzGetGameUI(), "", 0)
        call MakeBackLine(TreeFrameMain)
      endif
      return TreeFrameMain
    endmethod
    public static method GetTreeFramePopup takes nothing returns integer
      if ( TreeFramePopup == 0 ) then
        set TreeFramePopup = DzCreateFrameByTagName("BACKDROP", "", GetTreeFrameMain(), "QuestButtonBaseTemplate", 0)
        call DzFrameSetAbsolutePoint(TreeFramePopup, JN_FRAMEPOINT_BOTTOMLEFT, 0.14, 0.55)
        call DzFrameSetSize(TreeFramePopup, .07, .06)
      endif
      return TreeFramePopup
    endmethod
    public static method GetTreeFrameExtend takes nothing returns integer
      if ( TreeFrameExtend == 0 ) then
        set TreeFrameExtend = DzCreateFrameByTagName("BACKDROP", "", GetTreeFrameMain(), "QuestButtonBaseTemplate", 0)
        call DzFrameSetAbsolutePoint(TreeFrameExtend, JN_FRAMEPOINT_TOPLEFT, 0.45, 0.55)
        call DzFrameSetSize(TreeFrameExtend, .2, .31)
        call DzFrameSetAlpha(TreeFrameExtend, 128)
      endif
      return TreeFrameExtend
    endmethod

    private static method MaxRow3 takes integer kor, integer eng, integer space, boolean isColored returns real
      if ( isColored ) then
        return .0222 + kor*.01 + (eng-9)* .00735 + space * .0033
      else
        return .0222 + kor*.01 +  eng   * .00735 + space * .0033
      endif
    endmethod

    private static method MaxRow takes real title, string s, integer i2 returns real
      local real return_x = RMaxBJ(title, 0.07)
      local string tempString = ""

      // [가-힣] : 한글
      // \w, [a-zA-Z_0-9] : 영문자, 숫자, 밑줄
      // [\s\p{P}] : \s : 공백문자, \p{P} : 문장 부호
      loop
        set tempString = JNStringSplit(s, "\n", i2)
        
        set return_x = RMaxBJ(return_x, MaxRow3(JNStringCount(tempString, "[가-힣]"), JNStringCount(tempString, "[a-zA-Z_0-9]"), JNStringCount(tempString, " "), JNStringContains(tempString, "|c")))
        exitwhen i2 <= 1
        set i2 = i2 - 1
      endloop
      return return_x
    endmethod
    private static method MaxHeight takes integer count returns real
      return count*.01
    endmethod

    private static method ChangeSmallLevelFrame takes integer playerId, integer index, integer level returns nothing
      if ( 0 < level and GetLocalPlayer() == Player(playerId-1) ) then
        call DzFrameShow(LoadInteger(hash, SKILL_TREE_HOTKEY, index), true)
        call DzFrameSetText(LoadInteger(hash, SKILL_TREE_HOTKEY_TEXT, LoadInteger(hash, SKILL_TREE_HOTKEY, index)), I2S(level))
      endif
    endmethod
    private static method MakeSmallLevelFrame takes integer frame, integer index returns nothing
      local integer HotFrame = DzCreateFrame("CommandButtonHotKeyBackDrop", frame, CountAdder())
      local integer HotFrameTxt = DzCreateFrame("CommandButtonHotKeyText", HotFrame, CountAdder())
      call DzFrameSetTexture(HotFrame, "ui\\widgets\\console\\human\\commandbutton\\human-button-lvls-overlay.blp", 0)
      call DzFrameSetPoint(HotFrame, JN_FRAMEPOINT_BOTTOM, frame, JN_FRAMEPOINT_TOP, 0., -0.008)
      call DzFrameSetPoint(HotFrameTxt, JN_FRAMEPOINT_CENTER, HotFrame, JN_FRAMEPOINT_CENTER, 0., 0.)
      call DzFrameSetText(HotFrameTxt, I2S(GetRandomInt(1,9)))
      call SaveInteger(hash, SKILL_TREE_HOTKEY, index, frame)
      call SaveInteger(hash, SKILL_TREE_HOTKEY_TEXT, frame, HotFrameTxt)
      // debug call MsgAll("HotFrame / " + I2S(index) + " : " + DzFrameGetText(HotFrameTxt))
    endmethod


    private static method SkillTreeSync takes nothing returns nothing
      local player clickedPlayer = DzGetTriggerSyncPlayer()
      local integer syncData = S2I(DzGetTriggerSyncData())

      if ( syncData == 0 ) then
        call Msg(clickedPlayer, "에러/트리클릭/동기화/p[" + I2S(GetPlayerId(clickedPlayer)+1) + "]/value("+I2S(syncData)+")")
      else
        debug call MsgAll("플레이어 " + GetPlayerName(clickedPlayer) + ", (스킬트리) 클릭, " + I2S(syncData))
        if ( syncData == TreeButtonSkillMinusAll ) then
          debug call MsgAll("clicked tree in 1")
        elseif ( syncData == TreeButtonSkillMinusOne ) then
          debug call MsgAll("clicked tree in 2")
        elseif ( syncData == TreeButtonSkillPlusOne ) then
          debug call MsgAll("clicked tree in 3")
        elseif ( syncData == TreeButtonSkillPlusAll ) then
          debug call MsgAll("clicked tree in 4")
        endif
      endif

    endmethod
    private static method SkillTreeClick takes nothing returns nothing
      local integer playerId = GetPlayerId(DzGetTriggerUIEventPlayer()) + 1
      local integer clickedFrame = DzGetTriggerUIEventFrame()
      local integer clickedNumber = EMenus.GetSubTypeId(clickedFrame)
      if ( 0 < clickedNumber and Player(playerId-1) == GetLocalPlayer() ) then
        call StopSound(gg_snd_BigButtonClick, false, false)
        call StartSound(gg_snd_BigButtonClick)
        if ( EMenus.GetMainType(clickedFrame) == SKILL_TREE_MAIN ) then
          call DzFrameShow(GetTreeFrameExtend(), true)
          debug call Msg(Player(playerId-1), "트리클릭/메인/p[" + I2S(playerId) + "]/value("+I2S(EMenus.GetSubTypeId(clickedFrame))+")")
        elseif ( EMenus.GetMainType(clickedFrame) == SKILL_TREE_EXTEND ) then
         call DzSyncData("TreeSync", I2S(clickedNumber))
        else
          call Msg(Player(playerId-1), "에러/트리클릭/p[" + I2S(playerId) + "]/value("+I2S(EMenus.GetMainType(clickedFrame))+"_"+EMenus.GetTypeName(EMenus.GetMainType(clickedFrame))+"/"+I2S(EMenus.GetSubTypeId(clickedFrame))+")")
        endif
      endif
    endmethod
    
    private static method ButtonJustUp takes nothing returns nothing
     local integer clickedFrame = DzGetTriggerUIEventFrame()
     local integer skillNumber = LoadInteger(hash, StringHash("Menu_TypeSub"), clickedFrame)
     local string gotName = SkillData[skillNumber].Name
     local integer need = JNStringCount(DzFrameGetText(TreeTextPopupDetailPoint), "\n")
     call DzFrameSetAbsolutePoint(GetTreeFrameExtend(), JN_FRAMEPOINT_BOTTOMLEFT, GetFrameMouseX(), GetFrameMouseY())
     call DzFrameShow(GetTreeFrameExtend(), true)
     
      if ( GetLocalPlayer() == DzGetTriggerUIEventPlayer() ) then
        call DzFrameSetText(TreeTextPopupTitle, "|cffffcc00" + gotName)
        call DzFrameSetAbsolutePoint(GetTreeFramePopup(), JN_FRAMEPOINT_BOTTOMLEFT, GetFrameMouseX(), GetFrameMouseY())
        call DzFrameSetSize(GetTreeFramePopup(), MaxRow(0.04+.015+JNStringLength(gotName)*.012-JNStringCount(gotName, " ")*.008, DzFrameGetText(TreeTextPopupDetailPoint), need), .06+MaxHeight(need))
        // call DzFrameSetPoint(TreeTextPopupDetailCurrentLevel, JN_FRAMEPOINT_TOPLEFT, GetTreeFramePopup(), JN_FRAMEPOINT_TOPLEFT, .01, -DzFrameGetHeight(GetTreeFramePopup())+.0175)
        call DzFrameShow(GetTreeFramePopup(), true)
      endif
    endmethod
    private static method ButtonJustDown takes nothing returns nothing
      if ( GetLocalPlayer() == DzGetTriggerUIEventPlayer() ) then
        call DzFrameShow(GetTreeFramePopup(), false)
        call DzFrameShow(GetTreeFrameExtend(), false)
      endif
    endmethod

    private static method MakeText takes integer parent, real x, real y, string contents, real size returns integer
      local integer temp = DzCreateFrameByTagName("TEXT", "", parent, "", 0)
      call DzFrameSetPoint(temp, JN_FRAMEPOINT_TOPLEFT, parent, JN_FRAMEPOINT_TOPLEFT, x, y)
      call DzFrameSetFont(temp, "Fonts\\DFHeiMd.ttf", size, 0)
      call DzFrameSetText(temp, contents)

      return temp
    endmethod
    private static method MakeTextCenter takes integer parent, real x, real y, string contents, real size returns integer
      local integer temp = DzCreateFrameByTagName("TEXT", "", parent, "", 0)
      call DzFrameSetPoint(temp, JN_FRAMEPOINT_CENTER, parent, JN_FRAMEPOINT_TOPLEFT, x, y)
      call DzFrameSetFont(temp, "Fonts\\DFHeiMd.ttf", size, 0)
      call DzFrameSetText(temp, contents)

      return temp
    endmethod
    private static method MakeTextMatch takes integer parent, integer point, real x, real y, string contents, real size returns integer
      local integer temp = DzCreateFrameByTagName("TEXT", "", parent, "", 0)
      call DzFrameSetPoint(temp, point, parent, point, x, y)
      call DzFrameSetFont(temp, "Fonts\\DFHeiMd.ttf", size, 0)
      call DzFrameSetText(temp, contents)

      return temp
    endmethod
    private static method MakeBack takes integer parent, real x, real y, real size, string texture returns integer
      local integer temp = DzCreateFrameByTagName("BACKDROP", "", parent, "", 0)
      call DzFrameSetPoint(temp, JN_FRAMEPOINT_CENTER, parent, JN_FRAMEPOINT_TOPLEFT, x, y)
      call DzFrameSetTexture(temp, texture, 0)
      call DzFrameSetSize(temp, size, size)

      return temp
    endmethod
    private static method MakeBackSimple takes integer parent, string texture returns integer 
      local integer temp = DzCreateFrameByTagName("BACKDROP", "", parent, "", 0)
      call DzFrameSetAllPoints(temp, parent)
      call DzFrameSetTexture(temp, texture, 0)

      return temp
    endmethod
    private static method MakeButtonSimple takes integer parent returns integer 
      local integer temp = DzCreateFrameByTagName("BUTTON", "", parent, "", 0)
      call DzFrameSetAllPoints(temp, parent)
      call DzFrameSetScriptByCode(temp, JN_FRAMEEVENT_MOUSE_UP, function SkillTree.SkillTreeClick, false)
      call DzFrameSetScriptByCode(temp, JN_FRAMEEVENT_MOUSE_ENTER, function SkillTree.ButtonJustUp, false)
      call DzFrameSetScriptByCode(temp, JN_FRAMEEVENT_MOUSE_LEAVE, function SkillTree.ButtonJustDown, false)

      return temp
    endmethod
    private static method InitSkillTreeMainIcon takes integer characterId returns nothing
      local integer loopA = MAX_TREE_SKILL_COUNT - 1
      if ( loopA <= 0 ) then
        call MsgAll("오류/스킬트리/스킬아이콘"+I2S(characterId)+"/스킬카운트 " + I2S(loopA))
        return
      else
        loop
          set TreeBackMainSkills[loopA] = MakeButtonSimple(MakeBack(GetTreeFrameMain(), TreeMainCoreData[characterId].positionX[loopA], TreeMainCoreData[characterId].positionY[loopA], 0.03, TreeMainCoreData[characterId].iconPath[loopA]))
          call EMenus.FrameSaveIDs(TreeBackMainSkills[loopA], SKILL_TREE_MAIN, TreeMainCoreData[characterId].skillNumber[loopA])
          call MakeSmallLevelFrame(TreeBackMainSkills[loopA], loopA)
          exitwhen loopA <= 1
          set loopA = loopA - 1
        endloop
      endif
    endmethod

  
    private static method InitSkillTreeMain takes nothing returns nothing
      set TreeTextMainCharacterName   = MakeTextCenter(GetTreeFrameMain(), .035, -.03, "이치고", .015)
      call MakeTextCenter(GetTreeFrameMain(), .135, -.02, "스킬트리", .020)
      call MakeTextCenter(GetTreeFrameMain(), .085, -.05, "[기본]", 0.010)
      call MakeTextCenter(GetTreeFrameMain(), .135, -.05, "[핵심]", 0.010)
      call MakeTextCenter(GetTreeFrameMain(), .185, -.05, "[변신]", 0.010)

      call MakeTextCenter(GetTreeFrameMain(), .035, -.07, "필요 변신", .01)
      set TreeTextMainTypeLeft     = MakeTextCenter(GetTreeFrameMain(), .085, -.07, "종베기", .010)
      set TreeTextMainTypeCenter   = MakeTextCenter(GetTreeFrameMain(), .135, -.07, "횡베기", .010)
      set TreeTextMainTypeRight    = MakeTextCenter(GetTreeFrameMain(), .185, -.07, "찌르기", .010)

      call MakeTextCenter(GetTreeFrameMain(), .035, -.10, "기본", 0.010)
      call MakeTextCenter(GetTreeFrameMain(), .035, -.14, "1단계", 0.010)
      call MakeTextCenter(GetTreeFrameMain(), .035, -.18, "2단계", 0.010)
      call MakeTextCenter(GetTreeFrameMain(), .035, -.22, "3단계", 0.010)
      call MakeTextCenter(GetTreeFrameMain(), .035, -.26, "4단계", 0.010)
      call MakeTextCenter(GetTreeFrameMain(), .035, -.30, "5단계", 0.010)
      call MakeTextCenter(GetTreeFrameMain(), .035, -.34, "6단계", 0.010)
      call MakeTextCenter(GetTreeFrameMain(), .035, -.38, "7단계", 0.010)
      call MakeTextCenter(GetTreeFrameMain(), .035, -.42, "8단계", 0.010)
      
      call DzFrameShow(GetTreeFrameMain(), false)
    endmethod
    private static method InitSkillTreePopup takes nothing returns nothing
      set TreeTextPopupTitle              = MakeTextMatch(GetTreeFramePopup(), JN_FRAMEPOINT_TOP, 0., -.01, "|cffffcc00세로베기|r", .015)
      set TreeTextPopupDetailPoint        = MakeTextMatch(GetTreeFramePopup(), JN_FRAMEPOINT_TOPLEFT, .01, -.03, "|cffff3315[-2P]", .008)
      set TreeTextPopupDetailCurrentLevel = MakeTextMatch(GetTreeFramePopup(), JN_FRAMEPOINT_TOPRIGHT, -.01, -.03, "10|cff00ff00+2|rLv", .009)
      call                                  MakeTextMatch(GetTreeFramePopup(), JN_FRAMEPOINT_BOTTOMLEFT, .01, .01, "|c000080c0자세히.. (클릭)|r", .010)
    endmethod

    private static method InitSkillTreeExtend takes nothing returns nothing
      local integer temp = 0
      call MakeLineY(GetTreeFrameExtend(), .06, -.01, .09)
      call MakeLineX(GetTreeFrameExtend(), .06, -.035, .13)
      call MakeLineX(GetTreeFrameExtend(), .06, -.065, .13)
      call MakeLineX(GetTreeFrameExtend(), .01, -.10, .18)
      
      set temp = MakeBackSimple(GetTreeFrameExtend(), "SkillTree_Transparency.blp")
      call DzFrameSetAlpha(temp, 204)


      set TreeBackSubIcon                   = MakeBack(GetTreeFrameExtend(), .035, -.035, .05, "SkillTree_ichi_01.blp")
      set TreeTextSubTitle                  = MakeTextCenter(GetTreeFrameExtend(), .125, -.020, "세로베기", .020)
      set TreeTextSubShortDescriptionTop    = MakeTextCenter(GetTreeFrameExtend(), .125, -.030, "현재레벨", .010)
      set TreeTextSubShortDescriptionMiddle = MakeTextCenter(GetTreeFrameExtend(), .125, -.040, "7/10", .010)
      set TreeTextSubShortDescriptionLow    = MakeTextCenter(GetTreeFrameExtend(), .125, -.050, "B+ Rank", .010)

      set TreeTextSubLongDescriptionCost    = MakeTextCenter(GetTreeFrameExtend(), .125, -.065, "소모마나 240, 쿨다운 70초", .010)
      set TreeTextSubLongDescriptionDetials    = MakeTextCenter(GetTreeFrameExtend(), .125, -.075, "잠재능력을 모두 해방시켜 참격을 발사합니다.
750범위에 1427% 데미지를 가합니다.", .010)
      set TreeTextSubLongDescriptionNextLevels    = MakeTextCenter(GetTreeFrameExtend(), .125, -.085, "데미지 상승 +11%, 
소모마나 +4.4", .010)

      set temp = MakeBack(GetTreeFrameExtend(), .035, -.035, .02, "SkillTree_PlusMinus01.blp")
      set TreeButtonSkillMinusAll = MakeButtonSimple(temp)
      call EMenus.FrameSaveIDs(TreeButtonSkillMinusAll, SKILL_TREE_EXTEND, TreeButtonSkillMinusAll)
      set temp = MakeBack(GetTreeFrameExtend(), .035, -.035, .02, "SkillTree_PlusMinus01.blp")
      set TreeButtonSkillMinusOne = MakeButtonSimple(temp)
      call EMenus.FrameSaveIDs(TreeButtonSkillMinusOne, SKILL_TREE_EXTEND, TreeButtonSkillMinusOne)
      set temp = MakeBack(GetTreeFrameExtend(), .035, -.035, .02, "SkillTree_PlusMinus01.blp")
      set TreeButtonSkillPlusOne = MakeButtonSimple(temp)
      call EMenus.FrameSaveIDs(TreeButtonSkillPlusOne, SKILL_TREE_EXTEND, TreeButtonSkillPlusOne)
      set temp = MakeBack(GetTreeFrameExtend(), .035, -.035, .02, "SkillTree_PlusMinus01.blp")
      set TreeButtonSkillPlusAll = MakeButtonSimple(temp)
      call EMenus.FrameSaveIDs(TreeButtonSkillPlusAll, SKILL_TREE_EXTEND, TreeButtonSkillPlusAll)
    endmethod
    
    private static method onInit takes nothing returns nothing
      local trigger tempTrigger = CreateTrigger()
      // debug call MsgAll("트리 설정")

      /* toc 파일 임포트 - 단축키 등록 프레임 */
      call DzLoadToc("ui\\command_ui.toc")

      call InitSkillTreeMain()
      call InitSkillTreeMainIcon(ECharacter.ICHIGO)
      call InitSkillTreePopup()
      call InitSkillTreeExtend()

      call DzTriggerRegisterSyncData(tempTrigger, "TreeSync", false)
      call TriggerAddAction(tempTrigger, function SkillTree.SkillTreeSync)

      // debug call MsgAll("트리 설정 end")

      set tempTrigger = null
    endmethod
  endstruct
endscope


  // 주석 Remove
  static if false then
        // private static method TreeExtendIcon takes integer input, real x, real y, real size, string texture returns nothing
    //   set TreeChangeableFrame[input] = DzCreateFrameByTagName("BACKDROP", "", GetTreeFrameExtend(), "", 0)
    //   call DzFrameSetPoint(TreeChangeableFrame[input], JN_FRAMEPOINT_CENTER, GetTreeFrameExtend(), JN_FRAMEPOINT_TOPLEFT, x, y)
    //   call DzFrameSetTexture(TreeChangeableFrame[input], texture, 0)
    //   call DzFrameSetSize(TreeChangeableFrame[input], .03, .03)

    //   set SkillTreeNow = DzCreateFrameByTagName("BUTTON", "", TreeChangeableFrame[input], "", 0)
    //   call DzFrameSetAllPoints(SkillTreeNow, TreeChangeableFrame[input])
    //   call DzFrameSetScriptByCode(SkillTreeNow, JN_FRAMEEVENT_MOUSE_UP, function SkillTree.SkillTreeClick, false)
    //   call DzFrameSetScriptByCode(SkillTreeNow, JN_FRAMEEVENT_MOUSE_ENTER, function SkillTree.ButtonJustUp, false)
    //   call DzFrameSetScriptByCode(SkillTreeNow, JN_FRAMEEVENT_MOUSE_LEAVE, function SkillTree.ButtonJustDown, false)
    //   call EMenus.FrameSaveIDs(SkillTreeNow, SKILL_TREE_EXTEND, input)
    // endmethod

    // set return_x = RMaxBJ(return_x, MaxRow2(JNStringLength(temp_s), JNStringCount(temp_s, " ")))
    // call BJDebugMsg("MaxRow: " + I2S(JNStringLength(temp_s)) + ", " + I2S(JNStringCount(temp_s, " ")) + ", " + I2S(JNStringCount(temp_s, "[가-힣]")) + ", " + I2S(JNStringCount(temp_s, "[a-zA-Z_0-9]")))

    // private static method MakeText takes integer i, real x, real y, string contents, real size, boolean center returns integer
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
    // endmethod
    // private static method MakeLink takes integer i, real x, real y, real size, string contents returns nothing
    //   set SkillTreeBackdrop[i] = DzCreateFrameByTagName("BACKDROP", "", SkillTreeNow, "", 0)
    //   call DzFrameSetTexture(SkillTreeBackdrop[i], contents, 0)
    //   call DzFrameSetPoint(SkillTreeBackdrop[i], JN_FRAMEPOINT_BOTTOM, SkillTreeNow, JN_FRAMEPOINT_TOPLEFT, x, y-0.005)
    //   call DzFrameSetSize(SkillTreeBackdrop[i], .005, size+0.01)
    // endmethod
    // private static method MakeLinkX takes integer i, real x, real y, real size, string contents returns nothing
    //   set SkillTreeBackdrop[i] = DzCreateFrameByTagName("BACKDROP", "", SkillTreeNow, "", 0)
    //   call DzFrameSetTexture(SkillTreeBackdrop[i], contents, 0)
    //   call DzFrameSetPoint(SkillTreeBackdrop[i], JN_FRAMEPOINT_LEFT, SkillTreeNow, JN_FRAMEPOINT_TOPLEFT, x, y)
    //   call DzFrameSetSize(SkillTreeBackdrop[i], size+.02, 0.005)
    // endmethod

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

//     private static method MakeText2Popup takes integer i, real x, real y, string contents, real size returns nothing
//       set SkillTree2Popup[i] = DzCreateFrameByTagName("TEXT", "", SkillTreeNow, "", 0)
//       call DzFrameSetPoint(SkillTree2Popup[i], JN_FRAMEPOINT_TOPLEFT, TreeFrameExtend, JN_FRAMEPOINT_TOPLEFT, x, y)
//       call DzFrameSetText(SkillTree2Popup[i], contents)
//       if ( size != 0. ) then
//         call DzFrameSetFont(SkillTree2Popup[i], "Fonts\\DFHeiMd.ttf", size, 0)
//       endif
//     endmethod
//     private static method CreateSkillTree2Popup takes nothing returns nothing
//       set TreeFrameExtend = DzCreateFrameByTagName("BACKDROP", "", SkillTreeNow, "QuestButtonBaseTemplate", 0)
//       set SkillTreeNow = TreeFrameExtend
//       if ( false ) then
//         if ( false ) then /*Plus*/
//           call DzFrameSetAbsolutePoint(TreeFrameExtend, JN_FRAMEPOINT_BOTTOMLEFT, 0.14, 0.55)
//           call DzFrameSetSize(TreeFrameExtend, .07, .055)
//           call MakeText2Popup(1, .01, -.010, "|cffffcc00추가개방", 0.)
//           call MakeText2Popup(3, .01, -.035, "|c000080c0클릭하여 개방|r", 0.010)
//         else
//           call DzFrameSetAbsolutePoint(TreeFrameExtend, JN_FRAMEPOINT_BOTTOMLEFT, 0.14, 0.55)
//           call DzFrameSetSize(TreeFrameExtend, .095, .105)
//           call MakeText2Popup(1, .01, -.010, "|cffffcc00추가개방", 0.015)
//           call MakeText2Popup(2, .01, -.035, "|cffff3315필요사항:
//  - 스킬레벨 4 이상
//  - 스킬포인트 1 이상
//  - 최대 레벨 도달", 0.010)
//           call MakeText2Popup(3, .01, -.085, "|c000080c0조건 후 클릭하여 개방|r", 0.010)
//         endif
//       else
//         if ( false ) then
//           call DzFrameSetAbsolutePoint(TreeFrameExtend, JN_FRAMEPOINT_BOTTOMLEFT, 0.14, 0.55)
//           call DzFrameSetSize(TreeFrameExtend, .085, .055)
//           call MakeText2Popup(1, .01, -.010, "|cffffcc00개방제한", 0.)
//           call MakeText2Popup(3, .01, -.035, "|c000080c0클릭하여 개방제한|r", 0.010)
//         else
//           call DzFrameSetAbsolutePoint(TreeFrameExtend, JN_FRAMEPOINT_BOTTOMLEFT, 0.14, 0.55)
//           call DzFrameSetSize(TreeFrameExtend, .100, .105)
//           call MakeText2Popup(1, .01, -.010, "|cffffcc00개방제한", 0.015)
//           call MakeText2Popup(2, .01, -.035, "|cffff3315필요사항:
//  - 상위 스킬 우선 제한
//  - 골드 1,000 이상
//  - 최소 레벨 도달", 0.010)
//           call MakeText2Popup(3, .01, -.085, "|c000080c0조건 후 클릭하여 제한|r", 0.010)
//         endif
//       endif
      
//       call DzFrameShow(TreeFrameExtend, false)
//     endmethod

      // Link : ESkillTree.TreeTextMainCharacterName 등
      // private integer array TreeChangeableFrame
      // private integer array TreeMainSkillButtons
      // private integer array TreeExtendSmallButtons

      // private integer SkillTreeNow

      // private integer array SkillTreeButton
      // public integer array SkillTreeBackdrop
      // private integer array SkillTreeText
      // private integer array SkillTreePopup
      
      // private integer array SkillTree2Button
      // private integer array SkillTree2Backdrop
      // private integer array SkillTree2Text
      // private integer array SkillTree2Popup
      
      // public integer array Info
      // private integer currentPlayerId   = 0
      // private integer currentTreeTypeId = 0
      // private integer currentContentsId = 0

    // private static method f2I takes integer f returns integer
    //   return EMenus.GetSubTypeId(f)
    // endmethod

    
      // call CreateSkillTree2()
      // call DzFrameShow(TreeFrameExtend, false)
      // call CreateSkillTree2Popup()
  endif