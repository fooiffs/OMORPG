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
    
    private static integer TreeBackSubSize
    private static integer TreeBackSubIcon
    private static integer TreeTextSubTitle
    private static integer TreeTextSubShortDescriptionTop
    private static integer TreeTextSubShortDescriptionMiddle
    private static integer TreeTextSubShortDescriptionLow
    private static integer TreeTextSubLongDescriptionCost
    private static integer TreeTextSubLongDescriptionDetials
    private static integer TreeTextSubLongDescriptionNextLevels

    private static integer TreeBackSkillMinusAll
    private static integer TreeBackSkillMinusOne
    private static integer TreeBackSkillPlusOne
    private static integer TreeBackSkillPlusAll


    public static method MakeLineX takes integer parent, real x, real y, real size, integer alpha returns nothing
      local integer temp = DzCreateFrameByTagName("BACKDROP", "", parent, "", 0)
      call DzFrameSetTexture(temp, "ReplaceableTextures\\TeamColor\\TeamColor04.blp", 0)
      call DzFrameSetPoint(temp, JN_FRAMEPOINT_LEFT, parent, JN_FRAMEPOINT_TOPLEFT, x, y)
      call DzFrameSetSize(temp, size, .0005)
      call DzFrameSetAlpha(temp, alpha)
    endmethod
    public static method MakeLineXUper takes integer parent, real y, real size, integer alpha returns nothing
      local integer temp = DzCreateFrameByTagName("BACKDROP", "", parent, "", 0)
      call DzFrameSetTexture(temp, "ReplaceableTextures\\TeamColor\\TeamColor04.blp", 0)
      call DzFrameSetPoint(temp, JN_FRAMEPOINT_BOTTOM, parent, JN_FRAMEPOINT_TOP, 0., y)
      call DzFrameSetSize(temp, size, .0005)
      call DzFrameSetAlpha(temp, alpha)
    endmethod
    public static method MakeLineY takes integer parent, real x, real y, real size, integer alpha returns nothing
      local integer temp = DzCreateFrameByTagName("BACKDROP", "", parent, "", 0)
      call DzFrameSetTexture(temp, "ReplaceableTextures\\TeamColor\\TeamColor04.blp", 0)
      call DzFrameSetPoint(temp, JN_FRAMEPOINT_TOP, parent, JN_FRAMEPOINT_TOPLEFT, x, y)
      call DzFrameSetSize(temp, .0005, size)
      call DzFrameSetAlpha(temp, alpha)
    endmethod
    public static method GetTreeFrameMain takes nothing returns integer
      if ( TreeFrameMain == 0 ) then
        // 반투명 선 만들기
        set TreeFrameMain = DzCreateFrameByTagName("BACKDROP", "", DzGetGameUI(), "QuestButtonBaseTemplate", 0)
        call DzFrameSetAbsolutePoint(TreeFrameMain, JN_FRAMEPOINT_TOPLEFT, .14, .55)
        call DzFrameSetSize(TreeFrameMain, .22, .45)
        call DzFrameSetAlpha(TreeFrameMain, 204)

        call MakeLineY(TreeFrameMain, .06, -.01, .43, 128)
        call MakeLineX(TreeFrameMain, .06, -.04, .15, 128)
        call MakeLineX(TreeFrameMain, .01, -.06, .20, 128)
        call MakeLineY(TreeFrameMain, .11, -.04, .02, 128)
        call MakeLineY(TreeFrameMain, .16, -.04, .02, 128)
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
        set TreeFrameExtend = DzCreateFrameByTagName("BACKDROP", "", GetTreeFrameMain(), "", 0)
        call DzFrameSetAbsolutePoint(TreeFrameExtend, JN_FRAMEPOINT_TOPLEFT, 0.45, 0.55)
        call DzFrameSetTexture(TreeFrameExtend, "SkillTree_Transparency.blp", 0)

        // 좌우 크기만 중요 & 아래쪽은 사용하지 않음.
        call DzFrameSetSize(TreeFrameExtend, .2, 0.001)
        call DzFrameSetAlpha(TreeFrameExtend, 204)
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
    endmethod


    private static method SkillTreeSync takes nothing returns nothing
      local player clickedPlayer = DzGetTriggerSyncPlayer()
      local integer syncData = S2I(DzGetTriggerSyncData())

      if ( syncData == 0 ) then
        call Msg(clickedPlayer, "에러/트리클릭/동기화/p[" + I2S(GetPlayerId(clickedPlayer)+1) + "]/value("+I2S(syncData)+")")
      else
        debug call MsgAll("플레이어 " + GetPlayerName(clickedPlayer) + ", (스킬트리) 클릭, " + I2S(syncData))
        if ( syncData == TreeBackSkillMinusAll ) then
          debug call MsgAll("clicked tree in 1")
        elseif ( syncData == TreeBackSkillMinusOne ) then
          debug call MsgAll("clicked tree in 2")
        elseif ( syncData == TreeBackSkillPlusOne ) then
          debug call MsgAll("clicked tree in 3")
        elseif ( syncData == TreeBackSkillPlusAll ) then
          debug call MsgAll("clicked tree in 4")
        endif
      endif

    endmethod



    private static method SkillTreeClick takes nothing returns nothing
      local integer playerId = GetPlayerId(DzGetTriggerUIEventPlayer()) + 1
      local integer clickedFrame = DzGetTriggerUIEventFrame()
      local integer clickedNumber = EMenus.GetSubTypeId(clickedFrame)
      local integer linkedSkillId = 0
      local integer linkedSkillLevel = 0

      if ( 0 < clickedNumber and Player(playerId-1) == GetLocalPlayer() ) then
        if ( EMenus.GetMainType(clickedFrame) == SKILL_TREE_MAIN ) then
          call StopSound(gg_snd_BigButtonClick, false, false)
          call StartSound(gg_snd_BigButtonClick)
          
          set linkedSkillId = TreeMainCoreData[PlayerResource[playerId].character.id].skillNumber[clickedNumber]
          set linkedSkillLevel = PlayerResource[playerId].character.Skills[linkedSkillId].GetLevel()
          
          if ( 0 < linkedSkillId ) then
            // 상단
            call DzFrameSetTexture(TreeBackSubIcon, TreeMainCoreData[PlayerResource[playerId].character.id].iconPath[clickedNumber], 0)
            call DzFrameSetText(TreeTextSubTitle, "|cffffcc00" + SkillData[linkedSkillId].Name)
            
            // 중단
            call DzFrameSetText(TreeTextSubShortDescriptionTop,    SkillData.GetInfoTop(linkedSkillLevel))
            call DzFrameSetText(TreeTextSubShortDescriptionMiddle, SkillData.GetInfoMiddle(playerId, linkedSkillId, linkedSkillLevel))
            call DzFrameSetText(TreeTextSubShortDescriptionLow,    SkillData.GetInfoBottom(playerId, linkedSkillId, linkedSkillLevel))
            call SetIconSetting(linkedSkillLevel)

            // 하단
            call DzFrameSetText(TreeTextSubLongDescriptionCost, SkillData.GetDescriptionTop(linkedSkillId, linkedSkillLevel))
            call DzFrameSetText(TreeTextSubLongDescriptionDetials, SkillData.GetDescriptionMiddle(playerId, linkedSkillId, linkedSkillLevel))
            call DzFrameShow(TreeTextSubLongDescriptionNextLevels, false)
            call DzFrameSetPoint(TreeBackSubSize, JN_FRAMEPOINT_BOTTOM, TreeTextSubLongDescriptionDetials, JN_FRAMEPOINT_BOTTOM, 0., -.01)
          else
            call Msg(Player(playerId-1), "에러/트리/sid=0/p["+I2S(playerId)+"]/"+I2S(clickedNumber) + "/" + I2S(clickedFrame))
          endif
          call DzFrameShow(GetTreeFrameExtend(), true)
          debug call Msg(Player(playerId-1), "트리클릭/메인/p[" + I2S(playerId) + "]/value("+I2S(EMenus.GetSubTypeId(clickedFrame))+")")
        elseif ( EMenus.GetMainType(clickedFrame) == SKILL_TREE_EXTEND ) then
         call DzSyncData("TreeSync", I2S(clickedNumber))
        else
          call Msg(Player(playerId-1), "에러/트리클릭/p[" + I2S(playerId) + "]/value("+I2S(EMenus.GetMainType(clickedFrame))+"_"+EMenus.GetTypeName(EMenus.GetMainType(clickedFrame))+"/"+I2S(EMenus.GetSubTypeId(clickedFrame))+")")
        endif
      endif
    endmethod
      private static method SetIconSetting takes integer inputLevel returns nothing
        if ( 2 <= inputLevel ) then
          call DzFrameSetText(TreeBackSkillMinusAll, "SkillTree_Extend_MinusAll.blp")
          call DzFrameSetText(TreeBackSkillMinusOne, "SkillTree_Extend_MinusOne.blp")
        elseif ( 1 == inputLevel ) then
          call DzFrameSetText(TreeBackSkillMinusAll, "SkillTree_Extend_MinusAllOff.blp")
          call DzFrameSetText(TreeBackSkillMinusOne, "SkillTree_Extend_MinusOne.blp")
        else
          call DzFrameSetText(TreeBackSkillMinusAll, "SkillTree_Extend_MinusAllOff.blp")
          call DzFrameSetText(TreeBackSkillMinusOne, "SkillTree_Extend_MinusOneOff.blp")
        endif

        if ( inputLevel <= 8 ) then
          call DzFrameSetText(TreeBackSkillPlusAll, "SkillTree_Extend_PlusAll.blp")
          call DzFrameSetText(TreeBackSkillPlusOne, "SkillTree_Extend_PlusOne.blp")
        elseif ( inputLevel == 9 ) then
          call DzFrameSetText(TreeBackSkillPlusAll, "SkillTree_Extend_PlusAllOff.blp")
          call DzFrameSetText(TreeBackSkillPlusOne, "SkillTree_Extend_PlusOne.blp")
        else
          call DzFrameSetText(TreeBackSkillPlusAll, "SkillTree_Extend_PlusAllOff.blp")
          call DzFrameSetText(TreeBackSkillPlusOne, "SkillTree_Extend_PlusOneOff.blp")
        endif
      endmethod
    
    private static method ButtonJustUp takes nothing returns nothing
      local integer playerId = GetPlayerId(DzGetTriggerUIEventPlayer()) + 1
      local integer clickedFrame = DzGetTriggerUIEventFrame()
      local integer clickedNumber = EMenus.GetSubTypeId(clickedFrame)
      local string gotName = SkillData[TreeMainCoreData[PlayerResource[playerId].character.id].skillNumber[clickedNumber]].Name
      local integer need = JNStringCount(DzFrameGetText(TreeTextPopupDetailPoint), "\n")
     
      if ( EMenus.GetMainType(clickedFrame) == SKILL_TREE_MAIN ) and ( GetLocalPlayer() == DzGetTriggerUIEventPlayer() ) then
        call DzFrameSetText(TreeTextPopupTitle, "|cffffcc00" + gotName)
        call DzFrameSetAbsolutePoint(GetTreeFramePopup(), JN_FRAMEPOINT_BOTTOMLEFT, GetFrameMouseX(), GetFrameMouseY())
        call DzFrameSetSize(GetTreeFramePopup(), MaxRow(0.04+.015+JNStringLength(gotName)*.012-JNStringCount(gotName, " ")*.008, DzFrameGetText(TreeTextPopupDetailPoint), need), .06+MaxHeight(need))
        call DzFrameShow(GetTreeFramePopup(), true)
      endif
    endmethod
    private static method ButtonJustDown takes nothing returns nothing
      if ( GetLocalPlayer() == DzGetTriggerUIEventPlayer() ) then
        call DzFrameShow(GetTreeFramePopup(), false)
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
      call DzFrameSetTextAlignment(temp, 16)
      call DzFrameSetText(temp, contents)

      return temp
    endmethod
    private static method MakeTextMatch takes integer parent, integer point, real x, real y, string contents, real size returns integer
      local integer temp = DzCreateFrameByTagName("TEXT", "", parent, "", 0)
      call DzFrameSetPoint(temp, point, parent, point, x, y)
      call DzFrameSetFont(temp, "Fonts\\DFHeiMd.ttf", size, 0)
      call DzFrameSetTextAlignment(temp, 16)
      call DzFrameSetText(temp, contents)

      return temp
    endmethod
    private static method MakeTextOffset takes integer parent, real offsetY, real rowGap, string contents, real size returns integer
      local integer temp = DzCreateFrameByTagName("TEXT", "", parent, "", 0)
      call DzFrameSetPoint(temp, JN_FRAMEPOINT_TOPLEFT, parent, JN_FRAMEPOINT_TOPLEFT, rowGap, offsetY)
      call DzFrameSetPoint(temp, JN_FRAMEPOINT_TOPRIGHT, parent, JN_FRAMEPOINT_TOPRIGHT, -rowGap, offsetY)
      call DzFrameSetFont(temp, "Fonts\\DFHeiMd.ttf", size, 0)
      call DzFrameSetText(temp, contents)
      call DzFrameSetTextAlignment(temp, 17)
      return temp
    endmethod
    private static method MakeTextDown takes integer parent, real offsetY, string contents, real size returns integer
      local integer temp = DzCreateFrameByTagName("TEXT", "", parent, "", 0)
      call DzFrameSetPoint(temp, JN_FRAMEPOINT_TOP, parent, JN_FRAMEPOINT_BOTTOM, 0., offsetY)
      call DzFrameSetFont(temp, "Fonts\\DFHeiMd.ttf", size, 0)
      call DzFrameSetTextAlignment(temp, 17)
      call DzFrameSetText(temp, contents)
      debug call MsgAll("Height : " + R2S(DzFrameGetHeight(temp)) + "/" + DzFrameGetText(temp))
      return temp
    endmethod
    private static method MakeBack takes integer parent, real x, real y, real size, string texture returns integer
      local integer temp = DzCreateFrameByTagName("BACKDROP", "", parent, "", 0)
      call DzFrameSetPoint(temp, JN_FRAMEPOINT_CENTER, parent, JN_FRAMEPOINT_TOPLEFT, x, y)
      call DzFrameSetTexture(temp, texture, 0)
      call DzFrameSetSize(temp, size, size)

      return temp
    endmethod
    private static method MakeBackMatch takes integer parent, integer point, real x, real y, real size, string texture returns integer
      local integer temp = DzCreateFrameByTagName("BACKDROP", "", parent, "", 0)
      call DzFrameSetPoint(temp, point, parent, point, x, y)
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
          call EMenus.FrameSaveIDs(TreeBackMainSkills[loopA], SKILL_TREE_MAIN, loopA)
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
      call                                  MakeTextMatch(GetTreeFramePopup(), JN_FRAMEPOINT_BOTTOMLEFT, .01, .01, "|cff0080c0자세히.. (클릭)|r", .009)
    endmethod

    private static method InitSkillTreeExtend takes nothing returns nothing
      set TreeBackSubSize                   = DzCreateFrameByTagName("BACKDROP", "", GetTreeFrameExtend(), "QuestButtonBaseTemplate", 0)
      set TreeBackSubIcon                   = MakeBack(GetTreeFrameExtend(), .03, -.03, .03, "SkillTree_ichi_01.blp")
      set TreeTextSubTitle                  = MakeTextCenter(GetTreeFrameExtend(), .125, -.025, "세로베기", .020)

      call MakeLineY(GetTreeFrameExtend(), .06, -.01, .030, 128)
      call MakeLineX(GetTreeFrameExtend(), .06, -.04, .130, 128)

      set TreeTextSubShortDescriptionTop    = MakeTextMatch(GetTreeFrameExtend(), JN_FRAMEPOINT_TOP, 0., -.050, "현재레벨", .0125)
      set TreeTextSubShortDescriptionMiddle = MakeTextMatch(GetTreeFrameExtend(), JN_FRAMEPOINT_TOP, 0., -.065, "7/10", .0125)
      set TreeTextSubShortDescriptionLow    = MakeTextMatch(GetTreeFrameExtend(), JN_FRAMEPOINT_TOP, 0., -.080, "[B+ Rank]", .0125)
      
      set TreeBackSkillMinusAll = MakeBackMatch(TreeTextSubShortDescriptionMiddle, JN_FRAMEPOINT_LEFT, -.070, 0., .02, "SkillTree_Extend_MinusAll.blp")
      call EMenus.FrameSaveIDs(MakeButtonSimple(TreeBackSkillMinusAll), SKILL_TREE_EXTEND, TreeBackSkillMinusAll)
      set TreeBackSkillMinusOne = MakeBackMatch(TreeTextSubShortDescriptionMiddle, JN_FRAMEPOINT_LEFT, -.045, 0., .02, "SkillTree_Extend_MinusOne.blp")
      call EMenus.FrameSaveIDs(MakeButtonSimple(TreeBackSkillMinusOne), SKILL_TREE_EXTEND, TreeBackSkillMinusOne)

      set TreeBackSkillPlusOne = MakeBackMatch(TreeTextSubShortDescriptionMiddle, JN_FRAMEPOINT_RIGHT, .045, 0., .02, "SkillTree_Extend_PlusOne.blp")
      call EMenus.FrameSaveIDs(MakeButtonSimple(TreeBackSkillPlusOne), SKILL_TREE_EXTEND, TreeBackSkillPlusOne)
      set TreeBackSkillPlusAll = MakeBackMatch(TreeTextSubShortDescriptionMiddle, JN_FRAMEPOINT_RIGHT, .070, 0., .02, "SkillTree_Extend_PlusAll.blp")
      call EMenus.FrameSaveIDs(MakeButtonSimple(TreeBackSkillPlusAll), SKILL_TREE_EXTEND, TreeBackSkillPlusAll)

      set TreeTextSubLongDescriptionCost       = MakeTextOffset(GetTreeFrameExtend(), -0.1025, .01, "소모마나 240, 쿨다운 70초", .010)
      call MakeLineXUper(TreeTextSubLongDescriptionCost, 0.005, .18, 204)
      set TreeTextSubLongDescriptionDetials    = MakeTextDown(TreeTextSubLongDescriptionCost, -.01, "잠재능력을 모두 해방시켜 참격을 발사합니다.
750범위에 1427% 데미지를 가합니다.\nㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ", .009)
      call MakeLineXUper(TreeTextSubLongDescriptionDetials, 0.005, .16, 128)
      set TreeTextSubLongDescriptionNextLevels = MakeTextDown(TreeTextSubLongDescriptionDetials, -.01, "데미지 상승 +11%, 
소모마나 +4.4", .009)
      call MakeLineXUper(TreeTextSubLongDescriptionNextLevels, 0.005, .16, 128)

      call DzFrameSetPoint(TreeBackSubSize, JN_FRAMEPOINT_TOPLEFT, GetTreeFrameExtend(), JN_FRAMEPOINT_TOPLEFT, 0., 0.)
      call DzFrameSetPoint(TreeBackSubSize, JN_FRAMEPOINT_BOTTOM, TreeTextSubLongDescriptionNextLevels, JN_FRAMEPOINT_BOTTOM, 0., -.01)
    endmethod
    
    private static method onInit takes nothing returns nothing
      local trigger tempTrigger = CreateTrigger()

      /* toc 파일 임포트 - 단축키 등록 프레임 */
      call DzLoadToc("ui\\command_ui.toc")

      call InitSkillTreeMain()
      call InitSkillTreeMainIcon(ECharacter.ICHIGO)
      call InitSkillTreePopup()
      call InitSkillTreeExtend()

      call DzTriggerRegisterSyncData(tempTrigger, "TreeSync", false)
      call TriggerAddAction(tempTrigger, function SkillTree.SkillTreeSync)

      set tempTrigger = null
    endmethod
  endstruct
endscope