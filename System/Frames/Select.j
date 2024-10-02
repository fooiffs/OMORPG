scope Select
  struct Select
    private static trigger selectTrigger = CreateTrigger()
    private static trigger deSelectTrigger = CreateTrigger()
    private static trigger syncTrigger = CreateTrigger()

    private static boolean array isSelecting[MAX_PLAYER_COUNT]
    public static integer array NowSelect[MAX_PLAYER_COUNT]

    public static constant string DEFAULT_DATA = "0'0/1_0'1.2500/2_0'0/3_0'0/4_0'0/5_0'0/6_0'0/"
                                          //      ^ Last Slot              (1~6)
                                          //       '  슬롯 내 구분자        '
                                          //        ^ 플탐All              (0~999999)
                                          //         / 슬롯간 구분자        /
                                          //          ^ 1번슬롯            (1, 다른슬롯은 2~6)
                                          //           _ 슬롯-번호 구분자   _
                                          //            ^ 플탐             (0~999999)
                                          //             '  슬롯 내 구분자  '
                                          //               ^ Lv            (1~99)
                                          //                . 렙/경 구분자  .
                                          //                 ^ 경험치       (0~9999999)
    public static constant real startCreateX = -9696.
    public static constant real startCreateY = 4288.

    private static constant real selectX = -9664.
    private static constant real selectY = 5440.

    // 프레임 선언
    private static integer currentCount = 0
    
    private static integer select_Main = 0
    private static integer select_LeftPreview = 0
    private static integer select_SkillPreview = 0

    private static integer selectTextCharacterNameEnglish = 0
    private static integer selectTextCharacterNameKorean = 0
    private static integer selectTextCharacterDescription1 = 0
    private static integer selectTextCharacterDescription2 = 0
    private static integer selectTextCharacterDamageType = 0
    private static integer selectTextCharacterMainWeapon = 0

    private static integer selectBackPreviewInter = 0
    private static integer selectTextSkillPreviewName = 0
    private static integer selectTextSkillPreviewDescription1 = 0
    private static integer selectTextSkillPreviewDescription2 = 0
    private static integer selectBackStart = 0

    private static integer array selectBackBottoms[MAX_CHARACTER_COUNT]
    private static integer array selectBackStars[5][5]
    private static integer array selectBackSkills[4]

    private static integer array selectButtonBottoms[MAX_CHARACTER_COUNT]
    private static integer array selectButtonSkills[4]

    private static integer array selectTextBottomNameLevels[MAX_CHARACTER_COUNT]
    private static integer array selectTextBottomPlayTimes[MAX_CHARACTER_COUNT]
    private static integer array selectTextBottomLoadTypes[MAX_CHARACTER_COUNT]
    


    static method SetStars takes integer startnum, integer val, string texture returns nothing
      local integer i = 0
      loop
        if ( val > i ) then
          call DzFrameSetTexture(selectBackStars[startnum][i], texture, 0)
        else
          call DzFrameSetTexture(selectBackStars[startnum][i], "Select_stars0.tga", 0)
        endif
        exitwhen i >= 4
        set i = i + 1
      endloop
    endmethod

    static method ViewInfo takes string s, boolean Continue returns nothing
      // 좌측 팝업
      // 이름 영어 설명x2
      call DzFrameSetText(selectTextCharacterNameKorean, JNStringSplit(s, "'", 0))
      call DzFrameSetText(selectTextCharacterNameEnglish, JNStringSplit(s, "'", 1))
      call DzFrameSetText(selectTextCharacterDescription1, JNStringSplit(s, "'", 2))
      call DzFrameSetText(selectTextCharacterDescription2, JNStringSplit(s, "'", 3))

      // 별 설정 x25
      call SetStars(0, S2I(JNStringSplit(s, "'", 4)), "Select_stars1.tga")
      call SetStars(1, S2I(JNStringSplit(s, "'", 5)), "Select_stars1.tga")
      call SetStars(2, S2I(JNStringSplit(s, "'", 6)), "Select_stars1.tga")
      call SetStars(3, S2I(JNStringSplit(s, "'", 7)), "Select_stars1.tga")
      call SetStars(4, S2I(JNStringSplit(s, "'", 8)), "Select_stars2.tga")

      // 우측 팝업
      if ( SubString(JNStringSplit(s, "'", 9), 0, 10) == "|cffff8000" ) then
        call DzFrameSetTexture(select_SkillPreview, "Select_BackRed.blp", 0)
        call DzFrameSetTexture(selectBackPreviewInter, "Select_BackRedRed.blp", 0)
        
        if ( Continue ) then
          call DzFrameSetTexture(selectBackStart, "Select_ContinueRed.blp", 0)
        else
          call DzFrameSetTexture(selectBackStart, "Select_StartRed.blp", 0)
        endif
      else
        call DzFrameSetTexture(select_SkillPreview, "Select_BackBlue.blp", 0)
        call DzFrameSetTexture(selectBackPreviewInter, "Select_BackBlueBlue.blp", 0)
        if ( Continue ) then
          call DzFrameSetTexture(selectBackStart, "Select_ContinueBlue.blp", 0)
        else
          call DzFrameSetTexture(selectBackStart, "Select_StartBlue.blp", 0)
        endif
      endif

      // 피해타입, 전용무기
      call DzFrameSetText(selectTextCharacterDamageType, JNStringSplit(s, "'", 9))
      call DzFrameSetText(selectTextCharacterMainWeapon, JNStringSplit(s, "'", 10))

      // 스킬 미리보기 아이콘 x4
      call DzFrameSetTexture(selectBackSkills[0], JNStringSplit(s, "'", 11), 0)
      call DzFrameSetTexture(selectBackSkills[1], JNStringSplit(s, "'", 12), 0)
      call DzFrameSetTexture(selectBackSkills[2], JNStringSplit(s, "'", 13), 0)
      call DzFrameSetTexture(selectBackSkills[3], JNStringSplit(s, "'", 14), 0)

      // call DzFrameShow(select_Main, true)
      call DzFrameShow(select_LeftPreview, true)
      call DzFrameShow(select_SkillPreview, true)
    endmethod

    // 유닛 선택 해제 시 갱신 함수
    // private static method Deselected takes nothing returns nothing
    //   if ( GetTriggerPlayer() == GetLocalPlayer() ) then
    //     call DzFrameShow(Frame_Sub, false)
    //   endif
    //   // set SelectedUnit[GetPlayerId(GetTriggerPlayer()) + 1] = null
    // endmethod

    // // 유닛 선택수 초기화 함수
    // private static method Inter takes nothing returns nothing
    //   local timer t = GetExpiredTimer()
    //   local integer tid = GetHandleId(t)
    //   local integer pid = LoadInteger(hash, tid, StringHash("pid"))
    //   set SelectBol[pid] = false
    //   set SelectCount[pid] = 0
    //   call FlushChildHashtable(hash, tid)
    //   call DestroyTimer(t)
    //   set t = null
    // endmethod

    // 유닛 선택 시 갱신 함수
    private static method Selected takes nothing returns nothing
      local player p = GetTriggerPlayer()
      local integer pid = GetPlayerId(p) + 1
      // call MsgAll("Player[" +I2S(pid)+ "] : Selected (" + I2S(NowSelect[pid]) + " -> " + I2S(ECharacter.U2I(GetTriggerUnit())) + ")")
      if ( isSelecting[pid] and 0 < ECharacter.U2I(GetTriggerUnit()) ) then
        set NowSelect[pid] = ECharacter.U2I(GetTriggerUnit())
        if ( p == GetLocalPlayer() ) then
          call Select.ViewInfo(CharacterData[NowSelect[pid]].SelectDatas, (0 < S2I(JNStringSplit(JNStringSplit(LoadStr(hash, pid, StringHash("Data")), "/", NowSelect[pid]), "'", 1))))
          call ClearSelection()
        endif
      endif
    endmethod
    private static method ButtonJustUp takes nothing returns nothing
      local integer characterId = NowSelect[GetPlayerId(DzGetTriggerUIEventPlayer())+1]
      local integer frameId = EMenus.GetSubTypeId(DzGetTriggerUIEventFrame()) * 3 + 15
      call MsgAll("Input: " + I2S(characterId) + " / " + I2S(EMenus.GetSubTypeId(DzGetTriggerUIEventFrame())) + " -> " + I2S(frameId))
      if ( 0 < frameId and DzGetTriggerUIEventPlayer() == GetLocalPlayer() ) then
        call DzFrameSetText(selectTextSkillPreviewName, "|cffd5d500" + JNStringSplit(CharacterData[characterId].SelectDatas, "'", frameId))
        call DzFrameSetText(selectTextSkillPreviewDescription1, JNStringSplit(CharacterData[characterId].SelectDatas, "'", frameId + 1))
        call DzFrameSetText(selectTextSkillPreviewDescription2, JNStringSplit(CharacterData[characterId].SelectDatas, "'", frameId + 2))

        call DzFrameShow(selectTextSkillPreviewName, true)
      endif
    endmethod
    private static method ButtonJustDown takes nothing returns nothing
      local integer f = DzGetTriggerUIEventFrame()
      if ( DzGetTriggerUIEventPlayer() == GetLocalPlayer() ) then
        call DzFrameShow(selectTextSkillPreviewName, false)
      endif
    endmethod
    private static method SendSyncedData takes nothing returns nothing
      call Load_ExecuteAction.execute(DzGetTriggerSyncPlayer(), S2I(DzGetTriggerSyncData()))
    endmethod

    private static method ButtonStart takes nothing returns nothing
      local integer playerId = GetPlayerId(DzGetTriggerUIEventPlayer()) + 1
      if ( CharacterData[NowSelect[playerId]].UnitCode == 0 ) then
        call Msg(DzGetTriggerUIEventPlayer(), "올바른 캐릭터를 선택 후, 시작하기를 눌러주세요")
      else
        set isSelecting[playerId] = false
        if ( DzGetTriggerUIEventPlayer() == GetLocalPlayer() ) then
          call DzSyncData("Select", I2S(NowSelect[playerId]))

          call DzFrameShow(select_Main, false)
          call DzFrameShow(select_LeftPreview, false)
          call DzFrameShow(select_SkillPreview, false)
          call ResetToGameCamera(0.)
          call SetCameraBoundsToRect(bj_mapInitialPlayableArea)
          call PanCameraTo(selectX, selectY)
          call EnablePreSelect(true, true)
          call DzFrameShow(DzFrameGetMinimap(), true)
        endif
      endif
    endmethod

    private static method MakeStars takes integer parent, integer point, integer point2, real x, real y, real size, string texture returns integer
      local integer temp = DzCreateFrameByTagName("BACKDROP", "", parent, "", CountAdder())
      call DzFrameSetPoint(temp, point, parent, point2, x, y)
      call DzFrameSetSize(temp, size, size)
      call DzFrameSetTexture(temp, texture, 0)
      return temp
    endmethod
    private static method CountAdder takes nothing returns integer
      set currentCount = currentCount + 1
      return currentCount
    endmethod

    private static method MakeBack takes integer parent, integer point, real x, real y, real xx, real yy, string texture returns integer
      local integer temp = DzCreateFrameByTagName("BACKDROP", "", parent, "", CountAdder())
      call DzFrameSetAbsolutePoint(temp, point, x, y)
      call DzFrameSetSize(temp, xx, yy)
      call DzFrameSetTexture(temp, texture, 0)
      return temp
    endmethod
    private static method MakeText takes integer parent, integer point, integer point2, real x, real y, real size, string text returns integer
      local integer temp = DzCreateFrameByTagName("TEXT", "", parent, "", CountAdder())
      if ( currentCount <= 2 ) then
        call DzFrameSetFont(temp, "Fonts\\MoonEpi2.ttf", size, 0)
      else
        call DzFrameSetFont(temp, "Fonts\\DFHeiMd.ttf", size, 0)
      endif
      call DzFrameSetPoint(temp, point, parent, point2, x, y)
      call DzFrameSetText(temp, text)
      return temp
    endmethod
    private static method MakeButtonSimple takes integer parent, integer types, integer input, code func returns integer
      local integer temp = DzCreateFrameByTagName("BUTTON", "", select_Main, "ScoreScreenTabButtonTemplate", CountAdder())
      call DzFrameSetAllPoints(temp, parent)
      call EMenus.FrameSaveIDs(temp, types, input)

      call DzFrameSetScriptByCode(temp, JN_FRAMEEVENT_MOUSE_UP, func, false)
      return temp
    endmethod
    private static method MakeButton takes integer parent, integer types, integer input, integer point, integer point2, real x, real y, real size, string iconPath returns integer
      local integer temp = DzCreateFrameByTagName("BUTTON", "", selectBackPreviewInter, "ScoreScreenTabButtonTemplate", CountAdder())
      call DzFrameSetPoint(temp, point, parent, point2, x, y)
      call DzFrameSetSize(temp, size, size)
        
      // IDs
      call EMenus.FrameSaveIDs(temp, types, input)

      // 배경
      set selectBackSkills[input] = DzCreateFrameByTagName("BACKDROP", "", temp, "", 0)
      call DzFrameSetAllPoints(selectBackSkills[input], temp)
      call DzFrameSetTexture(selectBackSkills[input], iconPath, 0)

      // 이벤트 등록
      // call DzFrameSetScriptByCode(temp, JN_FRAMEEVENT_MOUSE_UP, function MenuQuickSlot.ButtonClickAll, false)
      call DzFrameSetScriptByCode(temp, JN_FRAMEEVENT_MOUSE_ENTER, function Select.ButtonJustUp, false)
      call DzFrameSetScriptByCode(temp, JN_FRAMEEVENT_MOUSE_LEAVE, function Select.ButtonJustDown, false)
      return temp
    endmethod

    // private static method CreateSelectIcon2 takes integer types, integer parent, integer point, integer point2, real x, real y, real size, string IconTexture returns integer
    //   set Frame_SelectSkills[types] = DzCreateFrameByTagName("BUTTON", "", Frame_SelectBack[1], "ScoreScreenTabButtonTemplate", 0)
    //   call DzFrameSetPoint(Frame_SelectSkills[types], point, parent, point2, x, y)
    //   call DzFrameSetSize(Frame_SelectSkills[types], size, size)

    //   set types = types + 1
    //   //배경
    //   set Frame_SelectSkills[types] = DzCreateFrameByTagName("BACKDROP", "", Frame_SelectSkills[types - 1], "", 0)
    //   call DzFrameSetAllPoints(Frame_SelectSkills[types], Frame_SelectSkills[types - 1])
    //   call DzFrameSetTexture(Frame_SelectSkills[types], IconTexture, 0)
    //   return types + 1
    // endmethod

    private static method CameraBounds takes real x, real y returns nothing
      call SetCameraBounds(x, y, x, y, x, y, x, y)
    endmethod
    private static method InitCamera takes nothing returns nothing
      call SetCameraField(CAMERA_FIELD_ROTATION, 90., 0.)
      call SetCameraField(CAMERA_FIELD_ANGLE_OF_ATTACK, 325., 0.)
      call SetCameraField(CAMERA_FIELD_TARGET_DISTANCE, 1024, 0.)
      call SetCameraField(CAMERA_FIELD_FIELD_OF_VIEW, 70., 0.)
      call SetCameraField(CAMERA_FIELD_FARZ, 5000., 0.)

      call CameraBounds(selectX, selectY)
    endmethod
    private static method CreateSelectMain takes nothing returns nothing
      local integer temp
      call InitCamera()

      if ( GetRandomReal(0., 99.) <= 33. ) then
        set temp = MakeText(DzGetGameUI(), JN_FRAMEPOINT_CENTER, JN_FRAMEPOINT_BOTTOMLEFT, .4, .55, .038, "|cffFF7CBFThe Only My Own RPG")
      elseif ( GetRandomReal(0., 66.) <= 33. ) then
        set temp = MakeText(DzGetGameUI(), JN_FRAMEPOINT_CENTER, JN_FRAMEPOINT_BOTTOMLEFT, .4, .55, .038, "|cff28FF0DThe Only My Own RPG")
      else
        set temp = MakeText(DzGetGameUI(), JN_FRAMEPOINT_CENTER, JN_FRAMEPOINT_BOTTOMLEFT, .4, .55, .038, "|cff0085FFThe Only My Own RPG")
      endif
      set select_Main = MakeText(temp, JN_FRAMEPOINT_TOPRIGHT, JN_FRAMEPOINT_BOTTOMRIGHT, 0., 0., 0136, "나만의 알피지")

      //call DzFrameSetTexture(select_Main, "ui\\Title-R.blp", 0)
      set select_LeftPreview              = MakeBack(select_Main, JN_FRAMEPOINT_TOPLEFT, .05, .45, .18, .25, "Select_Back.blp")
      set selectTextCharacterNameEnglish  = MakeText(select_LeftPreview, JN_FRAMEPOINT_TOP, JN_FRAMEPOINT_TOP, 0., -.013, .015, "DarkElf Mage")
      set selectTextCharacterNameKorean   = MakeText(select_LeftPreview, JN_FRAMEPOINT_TOPRIGHT, JN_FRAMEPOINT_TOPRIGHT, -.020, -.035, .010, "다크엘프 마법사")
      set selectTextCharacterDescription1 = MakeText(select_LeftPreview, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_TOPLEFT, .20, -.050, .008, "마법사는 강력한 마법 공격과 디버프를 사용해")
      set selectTextCharacterDescription2 = MakeText(select_LeftPreview, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_TOPLEFT, .20, -.060, .008, "적을 괴롭히고 다대다 전투에 강한 직업입니다.")

      set temp = MakeText(select_LeftPreview, JN_FRAMEPOINT_TOPLEFT, JN_FRAMEPOINT_TOPLEFT, .020, -.080, .012, "공격")
      set selectBackStars[0][0] = MakeStars(temp, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .040, 0., .020, "Select_stars1.tga")
      set selectBackStars[0][1] = MakeStars(temp, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .060, 0., .020, "Select_stars1.tga")
      set selectBackStars[0][2] = MakeStars(temp, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .080, 0., .020, "Select_stars1.tga")
      set selectBackStars[0][3] = MakeStars(temp, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .100, 0., .020, "Select_stars1.tga")
      set selectBackStars[0][4] = MakeStars(temp, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .120, 0., .020, "Select_stars1.tga")

      set temp = MakeText(temp, JN_FRAMEPOINT_TOPLEFT, JN_FRAMEPOINT_BOTTOMLEFT, 0., -.02, .012, "방어")
      set selectBackStars[1][0] = MakeStars(temp, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .040, 0., .020, "Select_stars1.tga")
      set selectBackStars[1][1] = MakeStars(temp, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .060, 0., .020, "Select_stars1.tga")
      set selectBackStars[1][2] = MakeStars(temp, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .080, 0., .020, "Select_stars1.tga")
      set selectBackStars[1][3] = MakeStars(temp, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .100, 0., .020, "Select_stars1.tga")
      set selectBackStars[1][4] = MakeStars(temp, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .120, 0., .020, "Select_stars1.tga")

      set temp = MakeText(temp, JN_FRAMEPOINT_TOPLEFT, JN_FRAMEPOINT_BOTTOMLEFT, 0., -.02, .012, "보조")
      set selectBackStars[2][0] = MakeStars(temp, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .040, 0., .020, "Select_stars1.tga")
      set selectBackStars[2][1] = MakeStars(temp, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .060, 0., .020, "Select_stars1.tga")
      set selectBackStars[2][2] = MakeStars(temp, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .080, 0., .020, "Select_stars1.tga")
      set selectBackStars[2][3] = MakeStars(temp, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .100, 0., .020, "Select_stars1.tga")
      set selectBackStars[2][4] = MakeStars(temp, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .120, 0., .020, "Select_stars1.tga")

      set temp = MakeText(temp, JN_FRAMEPOINT_TOPLEFT, JN_FRAMEPOINT_BOTTOMLEFT, 0., -.02, .012, "방해")
      set selectBackStars[3][0] = MakeStars(temp, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .040, 0., .020, "Select_stars1.tga")
      set selectBackStars[3][1] = MakeStars(temp, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .060, 0., .020, "Select_stars1.tga")
      set selectBackStars[3][2] = MakeStars(temp, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .080, 0., .020, "Select_stars1.tga")
      set selectBackStars[3][3] = MakeStars(temp, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .100, 0., .020, "Select_stars1.tga")
      set selectBackStars[3][4] = MakeStars(temp, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .120, 0., .020, "Select_stars1.tga")

      set temp = MakeText(temp, JN_FRAMEPOINT_TOPLEFT, JN_FRAMEPOINT_BOTTOMLEFT, 0., -.02, .012, "난이도")
      set selectBackStars[4][0] = MakeStars(temp, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .040, 0., .020, "Select_stars2.tga")
      set selectBackStars[4][1] = MakeStars(temp, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .060, 0., .020, "Select_stars2.tga")
      set selectBackStars[4][2] = MakeStars(temp, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .080, 0., .020, "Select_stars2.tga")
      set selectBackStars[4][3] = MakeStars(temp, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .100, 0., .020, "Select_stars2.tga")
      set selectBackStars[4][4] = MakeStars(temp, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .120, 0., .020, "Select_stars2.tga")
    endmethod
    private static method CreateSelectSkillPreview takes nothing returns nothing
      local integer temp = 0
      set select_SkillPreview = MakeBack(DzGetGameUI(), JN_FRAMEPOINT_TOPLEFT, .6, .4, .20, .23, "Select_BackRed.blp")
      set temp = MakeText(select_SkillPreview, JN_FRAMEPOINT_TOPLEFT, JN_FRAMEPOINT_TOPLEFT, .02, -.02, .009, "|cff8f8f8f피해 유형")
      set selectTextCharacterDamageType = MakeText(temp, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .07, 0., .011, "|cff0080c0마법 데미지")
      set temp = MakeText(select_SkillPreview, JN_FRAMEPOINT_TOPLEFT, JN_FRAMEPOINT_TOPLEFT, .02, -.04, .009, "|cff8f8f8f사용(전용)무기")
      set selectTextCharacterMainWeapon = MakeText(temp, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .07, 0., .011, "[완드][지팡이]")

      set selectBackPreviewInter = MakeBack(select_SkillPreview, JN_FRAMEPOINT_TOPLEFT, .62, .34, .16, .12, "Select_BackRedRed.blp")
      call MakeText(selectBackPreviewInter, JN_FRAMEPOINT_TOPLEFT, JN_FRAMEPOINT_TOPLEFT, .01, -.01, .010, "|cff8f8f8f주요 스킬 보기")
      set selectButtonSkills[0] = MakeButton(selectBackPreviewInter, SELECT_MENU_PRESKILL, 0, JN_FRAMEPOINT_TOP, JN_FRAMEPOINT_TOPLEFT, .024, -.03, .0275, "war3mapImported\\frame_kakao.blp")
      set selectButtonSkills[1] = MakeButton(selectBackPreviewInter, SELECT_MENU_PRESKILL, 1, JN_FRAMEPOINT_TOP, JN_FRAMEPOINT_TOPLEFT, .061, -.03, .0275, "war3mapImported\\frame_kakao.blp")
      set selectButtonSkills[2] = MakeButton(selectBackPreviewInter, SELECT_MENU_PRESKILL, 2, JN_FRAMEPOINT_TOP, JN_FRAMEPOINT_TOPLEFT, .099, -.03, .0275, "war3mapImported\\frame_kakao.blp")
      set selectButtonSkills[3] = MakeButton(selectBackPreviewInter, SELECT_MENU_PRESKILL, 3, JN_FRAMEPOINT_TOP, JN_FRAMEPOINT_TOPLEFT, .136, -.03, .0275, "war3mapImported\\frame_kakao.blp")

      set selectTextSkillPreviewName = MakeText(selectBackPreviewInter, JN_FRAMEPOINT_TOPLEFT, JN_FRAMEPOINT_TOPLEFT, .01, -.08, .012, "|cffd5d500분노의 소용돌이 |cffff8000Lv.1")
      set selectTextSkillPreviewDescription1 = MakeText(selectTextSkillPreviewName, JN_FRAMEPOINT_TOPLEFT, JN_FRAMEPOINT_BOTTOMLEFT, 0., -.005, .008, "창을 크게 휘둘러 주위의 적들에게 공격력의")
      set selectTextSkillPreviewDescription2 = MakeText(selectTextSkillPreviewDescription1, JN_FRAMEPOINT_TOPLEFT, JN_FRAMEPOINT_BOTTOMLEFT, 0., 0., .008, "|cffff800060%|r만큼 마법피해를 최대 |cffff80003|r회 입힙니다.")

      // 시작하기
      set selectBackStart = DzCreateFrameByTagName("BACKDROP", "", select_SkillPreview, "", 0)
      call DzFrameSetPoint(selectBackStart, JN_FRAMEPOINT_TOP, selectBackPreviewInter, JN_FRAMEPOINT_BOTTOM, 0., -.005)
      call DzFrameSetSize(selectBackStart, .11, .03)
      call DzFrameSetTexture(selectBackStart, "Select_StartRed.blp", 0)

      call MakeButtonSimple(selectBackStart, SELECT_OTHER, CountAdder(), function Select.ButtonStart)
    endmethod

    // (분)을 포맷된 시간 형식으로 변환
    // - < 100   : 99분
    // - < 600   : 9.99시간
    // - < 6000  : 99.9시간
    // - < 14400 : 9일 9시간
    // - 그 이상  : 29.91일
    public static method MinutesToFormattedTime takes integer minutes returns string
      if ( minutes <= 0 ) then
        return ""
      elseif ( minutes < 100 ) then
        return I2S(minutes) + "분"
      elseif ( minutes < 600 ) then
        return R2SW(minutes / 60., 1, 2) + "시간"
      elseif ( minutes < 6000 ) then
        return R2SW(minutes / 60., 2, 1) + "시간"
      elseif ( minutes < 14400 ) then
        return I2S(minutes / 1440) + "일 " + I2S(ModuloInteger(minutes, 1440) / 60) + "시간"
      else
        return R2SW(minutes / 1440., 2, 2) + "일"
      endif
    endmethod
    private static method CreateSelectBottom takes nothing returns nothing
      local integer i = 1
      
      loop
        //아래쪽
        set selectBackBottoms[i]          = MakeBack(select_Main, JN_FRAMEPOINT_CENTER, i * .12, .1, .1, .04, "Select_SlotBack75.blp")
        set selectTextBottomNameLevels[i] = MakeText(selectBackBottoms[i], JN_FRAMEPOINT_TOPLEFT, JN_FRAMEPOINT_TOPLEFT, .005, -.005, .010, JNStringSplit(JNStringSplit(CharacterData[i].SelectDatas, "'", 0), " ", 1) + " Lv00")
        set selectTextBottomPlayTimes[i]  = MakeText(selectBackBottoms[i], JN_FRAMEPOINT_TOPRIGHT, JN_FRAMEPOINT_TOPRIGHT, .005, .005, .009, "00분")
        set selectTextBottomLoadTypes[i]  = MakeText(selectBackBottoms[i], JN_FRAMEPOINT_BOTTOMRIGHT, JN_FRAMEPOINT_BOTTOMRIGHT, -.01, .008, .013, "이어하기")
        set selectButtonBottoms[i]        = MakeButtonSimple(selectBackBottoms[i], SELECT_MENU_CHARACTER, i, function MenuQuickSlot.ButtonClickAll)
        call MsgAll("made bottom: " + JNStringSplit(JNStringSplit(CharacterData[i].SelectDatas, "'", 0), " ", 1))
        // call MsgAll("maked: " + I2S(i) + " / " + I2S(MAX_CHARACTER_COUNT) + " / " + I2S(selectBackBottoms[i]) + " / " + I2S(selectTextBottomNameLevels[i]) + " / " + I2S(selectTextBottomPlayTimes[i]) + " / " + I2S(selectTextBottomLoadTypes[i]) + " / " + I2S(selectButtonBottoms[i]))
        
        set i = i + 1
        exitwhen MAX_CHARACTER_COUNT <= i /* 1~6 */
      endloop
    endmethod
    private static method ChangeSelectBottom takes player p, string input returns nothing
      local string cuttedString
      local integer i = 1
      //아래쪽
      loop
        set cuttedString = JNStringSplit(input, "/", i)
        if ( 0 < S2I(JNStringSplit(JNStringSplit(cuttedString, "'", 1), ".", 0)) ) then
          if ( GetLocalPlayer() == p ) then
            call DzFrameSetTexture(selectBackBottoms[i], "Select_SlotBack75.blp", 0)
            call DzFrameSetFont(selectTextBottomNameLevels[i], "Fonts\\DFHeiMd.ttf", .010, 0)
            call DzFrameSetText(selectTextBottomNameLevels[i], JNStringSplit(JNStringSplit(input, "'", 0), " ", 1) + " Lv" + JNStringSplit(JNStringSplit(cuttedString, "'", 1), ".", 0))
            call DzFrameSetFont(selectTextBottomPlayTimes[i], "Fonts\\DFHeiMd.ttf", .009, 0)
            call DzFrameSetText(selectTextBottomPlayTimes[i], MinutesToFormattedTime(S2I(JNStringSplit(JNStringSplit(cuttedString, "'", 0), "_", 1))))
            call DzFrameSetFont(selectTextBottomLoadTypes[i], "Fonts\\DFHeiMd.ttf", .013, 0)
            call DzFrameSetText(selectTextBottomLoadTypes[i], "이어하기")
          endif
        else
          if ( GetLocalPlayer() == p ) then
            call DzFrameSetTexture(selectBackBottoms[i], "Select_SlotBack50.blp", 0)
            call DzFrameSetFont(selectTextBottomNameLevels[i], "Fonts\\DFHeiMd.ttf", .009, 0)
            call DzFrameSetText(selectTextBottomNameLevels[i], JNStringSplit(JNStringSplit(CharacterData[i].SelectDatas, "'", 0), " ", 1) + " (신규)")
            call DzFrameSetText(selectTextBottomPlayTimes[i], "")
            call DzFrameSetFont(selectTextBottomLoadTypes[i], "Fonts\\DFHeiMd.ttf", .008, 0)
            call DzFrameSetText(selectTextBottomLoadTypes[i], "미리보기")
          endif
        endif

        exitwhen MAX_CHARACTER_COUNT - 1 <= i
        set i = i + 1
      endloop
    endmethod

    public static method GetSaveData takes player p, string input returns nothing
      set input = IfEmpty(input, DEFAULT_DATA)
      if ( IsEmpty(input) ) then
        call Msg(p, "데이터가 비어있습니다.")
        return
      endif
      call SaveStr(hash, GetPlayerId(p) + 1, StringHash("Data"), input)
      call ChangeSelectBottom(p, input)
      /* 1_시간'레벨.경험치  / 2_시간'레벨.경험치 ... */
    endmethod

    // IResource.PlayerResource[]가 생성된 후 호출
    private static method onInit takes nothing returns nothing
      local integer loopA = 1
      if ( PlayerResource.ALL_PLAYING_COUNT <= 0 ) then
        call MsgAll("오류 / 플레이어[전체] 초기값이 설정되지 않았습니다.")
        return
      endif

      // set leftCount = PlayerResource.ALL_PLAYING_COUNT
      call CreateSelectMain()
      call CreateSelectBottom()
      call CreateSelectSkillPreview()

      call DzFrameShow(select_Main, true)
      call DzFrameShow(select_LeftPreview, false) /* 클릭시 보이게 */
      call DzFrameShow(select_SkillPreview, false)
      call DzFrameShow(selectTextSkillPreviewName, false)

      loop
        if ( PlayerResource[loopA].isPlaying ) then
          set isSelecting[loopA] = true
          call TriggerRegisterPlayerUnitEvent(selectTrigger, Player(loopA - 1), EVENT_PLAYER_UNIT_SELECTED, null)
          // call TriggerRegisterPlayerUnitEvent(deSelectTrigger, Player(loopA - 1), EVENT_PLAYER_UNIT_DESELECTED, null)
        endif
        exitwhen MAX_PLAYER_COUNT - 1 <= loopA
        set loopA = loopA + 1
      endloop
      call TriggerAddAction(selectTrigger, function Select.Selected)
      // call TriggerAddAction(deSelectTrigger, function Select.Deselected)

      call DzTriggerRegisterSyncData(syncTrigger, "Select", false)
      call TriggerAddAction(syncTrigger, function Select.SendSyncedData)
    endmethod
  endstruct
endscope