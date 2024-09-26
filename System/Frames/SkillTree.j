scope SkillTree initializer Init
    globals
      private integer SkillTreeNow
      public integer array SkillTreeBackdrop
      private integer array SkillTreeText
      private integer array SkillTreePopup
      
      private integer array SkillTree2Button
      private integer array SkillTree2Backdrop
      private integer array SkillTree2Text
      private integer array SkillTree2Popup
      
      public integer array Info
      private trigger skillTreeTrigger = CreateTrigger()
    endglobals
    private constant function SkillorInfo takes integer no, integer arr returns integer
      if ( no == 1 ) then
        return SkillTreeBackdrop[arr]
      elseif ( no == 2 ) then
        return SkillTree2Backdrop[arr]
      else
        return Info[arr]
      endif
    endfunction
    public function MakeLineX takes integer i, real x, real y, real size, integer no returns nothing
      if ( no == 1 ) then
        set SkillTreeBackdrop[i] = DzCreateFrameByTagName("BACKDROP", "", SkillorInfo(no, 0), "", 0)
      elseif ( no == 2 ) then
        set SkillTree2Backdrop[i] = DzCreateFrameByTagName("BACKDROP", "", SkillorInfo(no, 0), "", 0)
      else
        set Info[i] = DzCreateFrameByTagName("BACKDROP", "", SkillorInfo(no, 0), "", 0)
      endif
      call DzFrameSetTexture(SkillorInfo(no,i), "ReplaceableTextures\\TeamColor\\TeamColor04.blp", 0)
      call DzFrameSetPoint(SkillorInfo(no,i), JN_FRAMEPOINT_LEFT, SkillorInfo(no, 0), JN_FRAMEPOINT_TOPLEFT, x, y)
      call DzFrameSetSize(SkillorInfo(no,i), size, 0.0005)
    endfunction
    public function MakeLineY takes integer i, real x, real y, real size, integer no returns nothing
      if ( no == 1 ) then
        set SkillTreeBackdrop[i] = DzCreateFrameByTagName("BACKDROP", "", SkillorInfo(no, 0), "", 0)
      elseif ( no == 2 ) then
        set SkillTree2Backdrop[i] = DzCreateFrameByTagName("BACKDROP", "", SkillorInfo(no, 0), "", 0)
      else
        set Info[i] = DzCreateFrameByTagName("BACKDROP", "", SkillorInfo(no, 0), "", 0)
      endif
      call DzFrameSetTexture(SkillorInfo(no,i), "ReplaceableTextures\\TeamColor\\TeamColor04.blp", 0)
      call DzFrameSetPoint(SkillorInfo(no,i), JN_FRAMEPOINT_TOP, SkillorInfo(no, 0), JN_FRAMEPOINT_TOPLEFT, x, y)
      call DzFrameSetSize(SkillorInfo(no,i), 0.0005, size)
    endfunction
    private function MakeText takes integer i, real x, real y, string contents, real size, boolean center returns nothing
      set SkillTreeText[i] = DzCreateFrameByTagName("TEXT", "", SkillTreeNow, "", 0)
      if ( center ) then
        call DzFrameSetPoint(SkillTreeText[i], JN_FRAMEPOINT_CENTER, SkillTreeNow, JN_FRAMEPOINT_TOPLEFT, x, y)
      else
        call DzFrameSetPoint(SkillTreeText[i], JN_FRAMEPOINT_LEFT, SkillTreeNow, JN_FRAMEPOINT_TOPLEFT, x, y)
      endif
      if ( size != 0. ) then
        call DzFrameSetFont(SkillTreeText[i], "Fonts\\DFHeiMd.ttf", size, 0)
      endif
      call DzFrameSetText(SkillTreeText[i], contents)
      //! Text를 Font 이후에 설정해야 한줄로 잘 표시됨.
    endfunction
    private function MakeLink takes integer i, real x, real y, real size, string contents returns nothing
      set SkillTreeBackdrop[i] = DzCreateFrameByTagName("BACKDROP", "", SkillTreeNow, "", 0)
      call DzFrameSetTexture(SkillTreeBackdrop[i], contents, 0)
      call DzFrameSetPoint(SkillTreeBackdrop[i], JN_FRAMEPOINT_BOTTOM, SkillTreeNow, JN_FRAMEPOINT_TOPLEFT, x, y-0.005)
      call DzFrameSetSize(SkillTreeBackdrop[i], .005, size+0.01)
    endfunction
    private function MakeLinkX takes integer i, real x, real y, real size, string contents returns nothing
      set SkillTreeBackdrop[i] = DzCreateFrameByTagName("BACKDROP", "", SkillTreeNow, "", 0)
      call DzFrameSetTexture(SkillTreeBackdrop[i], contents, 0)
      call DzFrameSetPoint(SkillTreeBackdrop[i], JN_FRAMEPOINT_LEFT, SkillTreeNow, JN_FRAMEPOINT_TOPLEFT, x, y)
      call DzFrameSetSize(SkillTreeBackdrop[i], size+.02, 0.005)
    endfunction
    private function SkillTreeSync takes nothing returns nothing
      local player clickedPlayer = DzGetTriggerSyncPlayer()
      local integer syncData = S2I(DzGetTriggerSyncData())
      call MsgAll("(동기화)플레이어 " + GetPlayerName(clickedPlayer) + ", (스킬트리) 클릭, " + I2S(syncData))
    endfunction
    private function SkillTreeClick takes nothing returns nothing
      local integer f = DzGetTriggerUIEventFrame()
      local integer playerId = GetPlayerId(DzGetTriggerUIEventPlayer()) + 1
      local integer clickedNumber = ESkillTree.f2I(f)
      call MsgAll("플레이어 " + GetPlayerName(Player(playerId-1)) + ", "+I2S(EMenus.F2It(f))+"(스킬트리) 클릭, " + I2S(clickedNumber))
      if ( 0 < clickedNumber ) then
        if ( GetLocalPlayer() == DzGetTriggerUIEventPlayer() ) then
          call StopSound(gg_snd_BigButtonClick, false, false)
          call StartSound(gg_snd_BigButtonClick)

          call DzSyncData("TreeSync", I2S(clickedNumber))
          // => SkillTreeSync()
        endif
      endif
    endfunction

    private constant function MaxRow2 takes integer i1, integer space returns real
      return .0272 + i1*.0068 - space *0.006
    endfunction
    private function MaxRow takes real title, string s, integer i2 returns real
      local string temp_s
      local real return_x = 0.07
      loop
        exitwhen i2 <= 0
        set temp_s = JNStringSplit(s, " - ", i2)
        set return_x = RMaxBJ(return_x, MaxRow2(JNStringLength(temp_s), JNStringCount(temp_s, " ")))
        set i2 = i2 - 1
      endloop
      set temp_s = null
      return RMaxBJ(title, return_x)
    endfunction
    private constant function MaxHeight takes integer count returns real
      return count*.01
    endfunction
    private function ButtonJustUp takes nothing returns nothing
     local integer f = DzGetTriggerUIEventFrame()
     local string s = ESkillTree.I2Name(1, ESkillTree.f2I(f))
     local integer need = JNStringCount(DzFrameGetText(SkillTreePopup[2])," - ")
     call DzFrameSetAbsolutePoint(SkillTree2Popup[0], JN_FRAMEPOINT_BOTTOMLEFT, GetFrameMouseX(), GetFrameMouseY())
     call DzFrameShow(SkillTree2Popup[0], true)
     
      if ( GetLocalPlayer() == DzGetTriggerUIEventPlayer() ) then
        call DzFrameSetText(SkillTreePopup[1], "|cffffcc00" + s)
        call DzFrameSetAbsolutePoint(SkillTreePopup[0], JN_FRAMEPOINT_BOTTOMLEFT, GetFrameMouseX(), GetFrameMouseY())
        if ( need == 0 ) then
          call DzFrameSetSize(SkillTreePopup[0], RMaxBJ(.07, .015+JNStringLength(s)*.012-JNStringCount(s, " ")*.008), .06)
        else
          call DzFrameSetSize(SkillTreePopup[0], MaxRow(.015+JNStringLength(s)*.012-JNStringCount(s, " ")*.008, DzFrameGetText(SkillTreePopup[2]), need), .06+MaxHeight(need))
          call DzFrameSetPoint(SkillTreePopup[3], JN_FRAMEPOINT_TOPLEFT, SkillTreePopup[0], JN_FRAMEPOINT_TOPLEFT, .01, -DzFrameGetHeight(SkillTreePopup[0])+.015)
        endif
        call DzFrameShow(SkillTreePopup[0], true)
      endif
    endfunction
    private function ButtonJustDown takes nothing returns nothing
      if ( GetLocalPlayer() == DzGetTriggerUIEventPlayer() ) then
        call DzFrameShow(SkillTreePopup[0], false)
        call DzFrameShow(SkillTree2Popup[0], false)
      endif
    endfunction
    private function MakeIcon takes integer i, real x, real y, real size, integer addButton, string texture returns nothing
      set SkillTreeBackdrop[i] = DzCreateFrameByTagName("BACKDROP", "", SkillTreeNow, "", 0)
      call DzFrameSetPoint(SkillTreeBackdrop[i], JN_FRAMEPOINT_CENTER, SkillTreeNow, JN_FRAMEPOINT_TOPLEFT, x, y)
      call DzFrameSetTexture(SkillTreeBackdrop[i], texture, 0)
      call DzFrameSetSize(SkillTreeBackdrop[i], size, size)
      if ( addButton >= 23 ) then
        set ESkillTree.SkillTreeButton[addButton] = DzCreateFrameByTagName("BUTTON", "", SkillTreeBackdrop[i], "", 0)
        call DzFrameSetAllPoints(ESkillTree.SkillTreeButton[addButton], SkillTreeBackdrop[i])
        call DzFrameSetScriptByCode(ESkillTree.SkillTreeButton[addButton], JN_FRAMEEVENT_MOUSE_UP, function SkillTreeClick, false)
        call DzFrameSetScriptByCode(ESkillTree.SkillTreeButton[addButton], JN_FRAMEEVENT_MOUSE_ENTER, function ButtonJustUp, false)
        call DzFrameSetScriptByCode(ESkillTree.SkillTreeButton[addButton], JN_FRAMEEVENT_MOUSE_LEAVE, function ButtonJustDown, false)
      elseif ( addButton > 0 ) then
        set ESkillTree.SkillTreeButton[addButton] = DzCreateFrameByTagName("BUTTON", "", SkillTreeBackdrop[i], "", 0)
        call DzFrameSetAllPoints(ESkillTree.SkillTreeButton[addButton], SkillTreeBackdrop[i])
        call DzFrameSetScriptByCode(ESkillTree.SkillTreeButton[addButton], JN_FRAMEEVENT_MOUSE_UP, function SkillTreeClick, false)
        call DzFrameSetScriptByCode(ESkillTree.SkillTreeButton[addButton], JN_FRAMEEVENT_MOUSE_ENTER, function ButtonJustUp, false)
        call DzFrameSetScriptByCode(ESkillTree.SkillTreeButton[addButton], JN_FRAMEEVENT_MOUSE_LEAVE, function ButtonJustDown, false)
      endif
    endfunction
  
    private function MakeTextPopup takes integer i, real x, real y, string contents, real size returns nothing
      set SkillTreePopup[i] = DzCreateFrameByTagName("TEXT", "", SkillTreePopup[0], "", 0)
      call DzFrameSetPoint(SkillTreePopup[i], JN_FRAMEPOINT_TOPLEFT, SkillTreePopup[0], JN_FRAMEPOINT_TOPLEFT, x, y)
      call DzFrameSetText(SkillTreePopup[i], contents)
      if ( size != 0. ) then
        call DzFrameSetFont(SkillTreePopup[i], "Fonts\\DFHeiMd.ttf", size, 0)
      endif
    endfunction
    private function CreateSkillTreePopup takes nothing returns nothing
      if ( false ) then /*요구조건 충족*/
        set SkillTreePopup[0] = DzCreateFrameByTagName("BACKDROP", "", SkillTreeBackdrop[1], "QuestButtonBaseTemplate", 0)
        call DzFrameSetAbsolutePoint(SkillTreePopup[0], JN_FRAMEPOINT_BOTTOMLEFT, 0.14, 0.55)
        call MakeTextPopup(1, .01, -.010, "|cffffcc00세로베기|r", 0.015)
        call MakeTextPopup(2, .01, -.025, "Lv: 10|cff00ff00+2|r/10", 0.010)
        call MakeTextPopup(3, .01, -.045, "|c000080c0자세히.. (클릭)|r", 0.010)
      else
        set SkillTreePopup[0] = DzCreateFrameByTagName("BACKDROP", "", SkillTreeBackdrop[1], "QuestButtonBaseTemplate", 0)
        call DzFrameSetAbsolutePoint(SkillTreePopup[0], JN_FRAMEPOINT_BOTTOMLEFT, 0.14, 0.55)
        call DzFrameSetSize(SkillTreePopup[0], .07, .06)
        call MakeTextPopup(1, .01, -.010, "|cffffcc00세로베기|r", 0.015)
        call MakeTextPopup(2, .01, -.025, "|cffff3315필요 스킬:
   - 찌르기 Lv1
   - 월아천충 Lv1
   - 검은 월아천충 Lv1", 0.010)
        call MakeTextPopup(3, .01, -.075, "|c000080c0자세히.. (클릭)|r", 0.010)
      endif
      call DzFrameShow(SkillTreePopup[0], false)
    endfunction
    private function CreateSkillTree takes nothing returns nothing
      set SkillTreeBackdrop[0] = DzCreateFrameByTagName("BACKDROP", "", DzGetGameUI(), "QuestButtonBaseTemplate", 0)
      call DzFrameSetAbsolutePoint(SkillTreeBackdrop[0], JN_FRAMEPOINT_TOPLEFT, 0.14, 0.55)
      call DzFrameSetSize(SkillTreeBackdrop[0], .22, .45)
      call DzFrameSetAlpha(SkillTreeBackdrop[0], 128)
      set SkillTreeNow = SkillTreeBackdrop[0]
      call MakeLineY(2, .06, -.01, .43, 1)
      call MakeLineX(3, .06, -.04, .15, 1)
      call MakeLineX(4, .01, -.06, .20, 1)
      call MakeLineY(5, .11, -.04, .02, 1)
      call MakeLineY(6, .16, -.04, .02, 1)
      
      set SkillTreeBackdrop[1] = DzCreateFrameByTagName("BACKDROP", "", SkillTreeNow, "", 0)
      call DzFrameSetAllPoints(SkillTreeBackdrop[1], SkillTreeNow)
      call DzFrameSetTexture(SkillTreeBackdrop[1], "SkillTree_Transparency.blp", 0)
      call DzFrameSetAlpha(SkillTreeBackdrop[1], 204)
      set SkillTreeNow = SkillTreeBackdrop[1]
  
      call MakeText(1, .035, -.03, "이치고", .015, true)
      call MakeText(2, .135, -.02, "스킬트리", .020, true)
      call MakeText(3, .085, -.05, "[기본]", 0., true)
      call MakeText(4, .135, -.05, "[핵심]", 0., true)
      call MakeText(5, .185, -.05, "[변신]", 0., true)
      
      call MakeText(6, .035, -.07, "필요 변신", .01, true)
      call MakeText(7, .085, -.07, "종베기", .01, true)
      call MakeText(8, .135, -.07, "횡베기", .01, true)
      call MakeText(9, .185, -.07, "찌르기", .01, true)
      
      call MakeText(10, .035, -.10, "기본", 0., true)
      call MakeText(11, .035, -.14, "1단계", 0., true)
      call MakeText(12, .035, -.18, "2단계", 0., true)
      call MakeText(13, .035, -.22, "3단계", 0., true)
      call MakeText(14, .035, -.26, "4단계", 0., true)
      call MakeText(15, .035, -.30, "5단계", 0., true)
      call MakeText(16, .035, -.34, "6단계", 0., true)
      call MakeText(17, .035, -.38, "7단계", 0., true)
      call MakeText(18, .035, -.42, "8단계", 0., true)
      //call MakeText(19, .035, -.46, "9단계", 0., true)
      
      call MakeIcon(19, .085, -.10, .03, 1, "SkillTree_ichi_01.blp")
      call MakeIcon(20, .135, -.10, .03, 2, "SkillTree_ichi_02.blp")
      call MakeIcon(21, .135, -.14, .03, 3, "SkillTree_ichi_03.blp")
      call MakeIcon(22, .185, -.14, .03, 4, "SkillTree_ichi_04.blp")
      call MakeIcon(23, .085, -.18, .03, 5, "SkillTree_ichi_05.blp")
      call MakeIcon(24, .135, -.22, .03, 6, "SkillTree_ichi_06.blp")
      call MakeIcon(25, .085, -.26, .03, 7, "SkillTree_ichi_07_DIS.blp")
      call MakeIcon(26, .135, -.34, .03, 8, "SkillTree_ichi_08_DIS.blp")
      call MakeIcon(27, .085, -.38, .03, 9, "SkillTree_ichi_09_DIS.blp")
      call MakeIcon(28, .185, -.38, .03, 10, "SkillTree_ichi_10_DIS.blp")
      call MakeIcon(29, .135, -.42, .03, 11, "SkillTree_ichi_11_DIS.blp")
      
      call MakeLink(30, .135, -.12, 0., "SkillTree_ActiveLink_Red.blp")
      call MakeLink(31, .085, -.16, .04, "SkillTree_ActiveLink_Red.blp")
      call MakeLink(32, .135, -.20, .04, "SkillTree_ActiveLink_Red.blp")
      call MakeLink(33, .085, -.24, .04, "UI\\Widgets\\Console\\Human\\human-inventory-slotfiller.blp")
      call MakeLink(34, .135, -.32, .08, "UI\\Widgets\\Console\\Human\\human-inventory-slotfiller.blp")
      call MakeLink(35, .085, -.36, .08, "UI\\Widgets\\Console\\Human\\human-inventory-slotfiller.blp")
      call MakeLink(36, .185, -.36, .20, "UI\\Widgets\\Console\\Human\\human-inventory-slotfiller.blp")
      call MakeLinkX(37,.100, -.38, .05, "UI\\Widgets\\Console\\Human\\human-inventory-slotfiller.blp")
      call MakeLink(38, .135, -.40, .04, "UI\\Widgets\\Console\\Human\\human-inventory-slotfiller.blp")
    endfunction
    private function CreateSkillTree2 takes nothing returns nothing
      set SkillTree2Backdrop[0] = DzCreateFrameByTagName("BACKDROP", "", SkillTreeBackdrop[0], "QuestButtonBaseTemplate", 0)
      call DzFrameSetAbsolutePoint(SkillTree2Backdrop[0], JN_FRAMEPOINT_TOPLEFT, 0.45, 0.55)
      call DzFrameSetSize(SkillTree2Backdrop[0], .2, .31)
      call DzFrameSetAlpha(SkillTree2Backdrop[0], 128)
      
      set SkillTreeNow = SkillTree2Backdrop[0]
      call MakeLineY(39, .06, -.01, .09, 2)
      call MakeLineX(40, .06, -.035, .13, 2)
      call MakeLineX(41, .06, -.065, .13, 2)
      call MakeLineX(42, .01, -.10, .18, 2)
      
      set SkillTree2Backdrop[1] = DzCreateFrameByTagName("BACKDROP", "", SkillTreeNow, "", 0)
      call DzFrameSetAllPoints(SkillTree2Backdrop[1], SkillTreeNow)
      call DzFrameSetTexture(SkillTree2Backdrop[1], "SkillTree_Transparency.blp", 0)
      call DzFrameSetAlpha(SkillTree2Backdrop[1], 204)
      set SkillTreeNow = SkillTree2Backdrop[1]
      call MakeIcon(43, .035, -.035, .05, 0, "SkillTree_ichi_01.blp")
      call MakeIcon(44, .025, -.070, .02, 21, "SkillTree_PlusMinus02.blp")
      call MakeIcon(45, .045, -.070, .02, 22, "SkillTree_PlusMinus01.blp")
      call MakeText(46, .035, -.088, "Lv 12/10", .010, true)
      
      call MakeText(47, .125, -.020, "세로베기", .020, true)
      
      call MakeText(48, .065, -.050, "전방을 세로로 베어 처음으로
  맞는 적에게 데미지를 줍니다.", .010, false)
  
      call MakeText(49, .065, -.075, "데미지: 50 (40 + 공격력 10%)", .010, false)
      call MakeText(50, .065, -.090, "다음레벨: 65 (50 + 공격력 15%)", .010, false)
      
      call MakeText(51, .100, -.110, "|cff3ca03c강화", .015, true)
      call MakeIcon(52, .100, -.135, .03, 0, "SkillTree_AddFire_0.blp")
      call MakeIcon(53, .085, -.150, .015, 23, "SkillTree_PlusMinus04.blp")
      call MakeIcon(54, .115, -.150, .015, 24, "SkillTree_PlusMinus01.blp")
      call MakeText(55, .100, -.155, "|cff3ca03c0/5", .008, true)
      
      call MakeText(56, .070, -.180, "|cffed393e진화Ａ", .015, true)
      call MakeIcon(57, .070, -.205, .03, 0, "SkillTree_AddFire_2_1.blp")
      call MakeIcon(58, .055, -.220, .015, 23, "SkillTree_PlusMinus02.blp")
      call MakeIcon(59, .085, -.220, .015, 24, "SkillTree_PlusMinus01.blp")
      call MakeText(60, .070, -.225, "|cffed393e2/3", .008, true)
      call MakeText(61, .130, -.180, "|cff3681eb진화Ｂ", .015, true)
      call MakeIcon(62, .130, -.205, .03, 0, "SkillTree_AddFire_2_2.blp")
      call MakeIcon(63, .115, -.220, .015, 23, "SkillTree_PlusMinus02.blp")
      call MakeIcon(64, .145, -.220, .015, 24, "SkillTree_PlusMinus03.blp")
      call MakeText(65, .130, -.225, "|cff3681eb3/3", .008, true)
      
      call MakeText(66, .070, -.250, "|cffeb8dd0개화Ａ", .015, true)
      call MakeIcon(67, .070, -.275, .03, 0, "SkillTree_AddFire_3_1.blp")
      call MakeIcon(68, .055, -.290, .015, 23, "SkillTree_PlusMinus04.blp")
      call MakeIcon(69, .085, -.290, .015, 24, "SkillTree_PlusMinus01.blp")
      call MakeText(70, .070, -.295, "|cffeb8dd00/1", .008, true)
      call MakeText(71, .130, -.250, "|cfffeff79개화Ｂ", .015, true)
      call MakeIcon(72, .130, -.275, .03, 0, "SkillTree_AddFire_3_2.blp")
      call MakeIcon(73, .115, -.290, .015, 23, "SkillTree_PlusMinus02.blp")
      call MakeIcon(74, .145, -.290, .015, 24, "SkillTree_PlusMinus03.blp")
      call MakeText(75, .130, -.295, "|cfffeff791/1", .008, true)
    endfunction
    private function MakeText2Popup takes integer i, real x, real y, string contents, real size returns nothing
      set SkillTree2Popup[i] = DzCreateFrameByTagName("TEXT", "", SkillTreeNow, "", 0)
      call DzFrameSetPoint(SkillTree2Popup[i], JN_FRAMEPOINT_TOPLEFT, SkillTree2Popup[0], JN_FRAMEPOINT_TOPLEFT, x, y)
      call DzFrameSetText(SkillTree2Popup[i], contents)
      if ( size != 0. ) then
        call DzFrameSetFont(SkillTree2Popup[i], "Fonts\\DFHeiMd.ttf", size, 0)
      endif
    endfunction
    private function CreateSkillTree2Popup takes nothing returns nothing
      set SkillTree2Popup[0] = DzCreateFrameByTagName("BACKDROP", "", SkillTreeNow, "QuestButtonBaseTemplate", 0)
      set SkillTreeNow = SkillTree2Popup[0]
      if ( false ) then
        if ( false ) then /*Plus*/
          call DzFrameSetAbsolutePoint(SkillTree2Popup[0], JN_FRAMEPOINT_BOTTOMLEFT, 0.14, 0.55)
          call DzFrameSetSize(SkillTree2Popup[0], .07, .055)
          call MakeText2Popup(1, .01, -.010, "|cffffcc00추가개방", 0.)
          call MakeText2Popup(3, .01, -.035, "|c000080c0클릭하여 개방|r", 0.010)
        else
          call DzFrameSetAbsolutePoint(SkillTree2Popup[0], JN_FRAMEPOINT_BOTTOMLEFT, 0.14, 0.55)
          call DzFrameSetSize(SkillTree2Popup[0], .095, .105)
          call MakeText2Popup(1, .01, -.010, "|cffffcc00추가개방", 0.015)
          call MakeText2Popup(2, .01, -.035, "|cffff3315필요사항:
   - 스킬레벨 4 이상
   - 스킬포인트 1 이상
   - 최대 레벨 도달", 0.010)
          call MakeText2Popup(3, .01, -.085, "|c000080c0조건 후 클릭하여 개방|r", 0.010)
        endif
      else
        if ( false ) then
          call DzFrameSetAbsolutePoint(SkillTree2Popup[0], JN_FRAMEPOINT_BOTTOMLEFT, 0.14, 0.55)
          call DzFrameSetSize(SkillTree2Popup[0], .085, .055)
          call MakeText2Popup(1, .01, -.010, "|cffffcc00개방제한", 0.)
          call MakeText2Popup(3, .01, -.035, "|c000080c0클릭하여 개방제한|r", 0.010)
        else
          call DzFrameSetAbsolutePoint(SkillTree2Popup[0], JN_FRAMEPOINT_BOTTOMLEFT, 0.14, 0.55)
          call DzFrameSetSize(SkillTree2Popup[0], .100, .105)
          call MakeText2Popup(1, .01, -.010, "|cffffcc00개방제한", 0.015)
          call MakeText2Popup(2, .01, -.035, "|cffff3315필요사항:
   - 상위 스킬 우선 제한
   - 골드 1,000 이상
   - 최소 레벨 도달", 0.010)
          call MakeText2Popup(3, .01, -.085, "|c000080c0조건 후 클릭하여 제한|r", 0.010)
        endif
      endif
      
      call DzFrameShow(SkillTree2Popup[0], false)
    endfunction
    
    private function Init takes nothing returns nothing
      call CreateSkillTree()
      call DzFrameShow(SkillTreeBackdrop[0], false)
      call CreateSkillTreePopup()
      call CreateSkillTree2()
      call DzFrameShow(SkillTree2Backdrop[0], false)
      call CreateSkillTree2Popup()

      call DzTriggerRegisterSyncData(skillTreeTrigger, "TreeSync", false)
      call TriggerAddAction(skillTreeTrigger, function SkillTreeSync)
    endfunction
  endscope