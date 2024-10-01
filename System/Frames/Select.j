// need: PushKey_MenuClick()
scope Select initializer Init
    globals
      private trigger selectTrigger = CreateTrigger()
      private trigger deSelectTrigger = CreateTrigger()
      private trigger syncTrigger = CreateTrigger()

      private boolean array PreLoad
  
      private unit array SelectedUnit
      private boolean array SelectBol
      private integer array SelectCount
      
      private integer array Frame_SelectStars
      
      // private integer array SlotLv
      // private integer array SlotPlayTime


      public constant string DEFAULT_DATA = "0'0/1_0'1.2500/2_0'0/3_0'0/4_0'0/5_0'0/6_0'0/"
                                           //Last Slot + '
                                             //' + 플탐All
                                               //1번슬롯_
                                                  //_플탐
                                                   //Lv.
                                                     //.경험치
      public constant real startCreateX = -9696.
      public constant real startCreateY = 4288.

      private constant real selectX = -9664.
      private constant real selectY = 5440.
    endglobals
    struct Select
      static method SetStars takes integer startnum, integer val, string texture returns nothing
      local integer i = 0
        loop
          if ( val > i ) then
            call DzFrameSetTexture(Frame_SelectStars[startnum+i], texture, 0)
          else
            call DzFrameSetTexture(Frame_SelectStars[startnum+i], "Select_stars0.tga", 0)
          endif
          exitwhen i >= 4
          set i = i + 1
        endloop
      endmethod

      static method ViewInfo takes string s, boolean Continue returns nothing
        //이름 영어 설명x2
        call DzFrameSetText(Frame_SelectText[2], JNStringSplit(s,"'",0))
        call DzFrameSetText(Frame_SelectText[3], JNStringSplit(s,"'",1))
        call DzFrameSetText(Frame_SelectText[4], JNStringSplit(s,"'",2))
        call DzFrameSetText(Frame_SelectText[5], JNStringSplit(s,"'",3))

        //별표
        call SetStars(1, S2I(JNStringSplit(s,"'",4)), "Select_stars1.tga")
        call SetStars(6, S2I(JNStringSplit(s,"'",5)), "Select_stars1.tga")
        call SetStars(11, S2I(JNStringSplit(s,"'",6)), "Select_stars1.tga")
        call SetStars(16, S2I(JNStringSplit(s,"'",7)), "Select_stars1.tga")
        call SetStars(21, S2I(JNStringSplit(s,"'",8)), "Select_stars2.tga")
            
        //피해, 무기, 스킬아이콘
        if ( SubString(JNStringSplit(s,"'",9),0,10) == "|cffff8000" ) then
          call DzFrameSetTexture(Frame_SelectBack[3], "Select_BackRed.blp", 0)
          call DzFrameSetTexture(Frame_SelectBack[4], "Select_BackRedRed.blp", 0)
          if ( Continue ) then
            call DzFrameSetTexture(Frame_SelectBack[6], "Select_ContinueRed.blp", 0)
          else
            call DzFrameSetTexture(Frame_SelectBack[6], "Select_StartRed.blp", 0)
          endif
        else
          call DzFrameSetTexture(Frame_SelectBack[3], "Select_BackBlue.blp", 0)
          call DzFrameSetTexture(Frame_SelectBack[4], "Select_BackBlueBlue.blp", 0)
          if ( Continue ) then
            call DzFrameSetTexture(Frame_SelectBack[6], "Select_ContinueBlue.blp", 0)
          else
            call DzFrameSetTexture(Frame_SelectBack[6], "Select_StartBlue.blp", 0)
          endif
        endif

        call DzFrameSetText(Frame_SelectText[12], JNStringSplit(s,"'",9))
        call DzFrameSetText(Frame_SelectText[14], JNStringSplit(s,"'",10))
    
        call DzFrameSetTexture(Frame_SelectSkills[2], JNStringSplit(s,"'",11), 0)
        call DzFrameSetTexture(Frame_SelectSkills[4], JNStringSplit(s,"'",12), 0)
        call DzFrameSetTexture(Frame_SelectSkills[6], JNStringSplit(s,"'",13), 0)
        call DzFrameSetTexture(Frame_SelectSkills[8], JNStringSplit(s,"'",14), 0)
            
        call DzFrameShow(Frame_SelectBack[1], true)
        call DzFrameShow(Frame_SelectText[16], false)
      endmethod
    endstruct

    // 유닛 선택 해제 시 갱신 함수
    private function Deselected takes nothing returns nothing
      if GetLocalPlayer() == GetTriggerPlayer() then
        call DzFrameShow(Frame_Sub, false)
      endif
      set SelectedUnit[GetPlayerId(GetTriggerPlayer()) + 1] = null
    endfunction
    
    // 유닛 선택수 초기화 함수
    private function Inter takes nothing returns nothing
      local timer t = GetExpiredTimer()
      local integer tid = GetHandleId(t)
      local integer pid = LoadInteger(hash, tid, StringHash("pid"))
      set SelectBol[pid] = false
      set SelectCount[pid] = 0
      call FlushChildHashtable(hash, tid)
      call DestroyTimer(t)
      set t = null
    endfunction
    // 유닛 선택 시 갱신 함수
    private function Selected takes nothing returns nothing
      local player p = GetTriggerPlayer()
      local integer pid = GetPlayerId(p) + 1
      local unit u = GetTriggerUnit()
      local timer t
      call MsgAll("Player[" +I2S(pid)+ "] : Selected (" + I2S(NowSelect[pid]) + " -> " + I2S(ECharacter.U2I(u)) + ")")
      if ( PreLoad[pid] ) then /* 시작하기 전 선택창 */
        if ( ECharacter.U2I(u) > 0 ) then
          set NowSelect[pid] = ECharacter.U2I(u)
          if ( GetLocalPlayer() == p ) then
            
            call Select.ViewInfo(CharacterData[NowSelect[pid]].SelectDatas, ( 0 < S2I(JNStringSplit(JNStringSplit(LoadStr(hash, pid, StringHash("Data")),"/",NowSelect[pid]),"'",1)) ))
            call ClearSelection()
          endif
        endif
      else
        set SelectCount[pid] = SelectCount[pid] + 1
        if ( SelectCount[pid] > 1 ) then /* 한 번에 여러명 선택 시 메인 프레임 숨기기 */
          if ( GetLocalPlayer() == p ) then
            call DzFrameShow(Frame_Sub, false)
          endif
        elseif ( SelectedUnit[pid] != null and SelectedUnit[pid] != u ) then
          if ( GetLocalPlayer() == p ) then
            call DzFrameShow(Frame_Sub, false)
          endif
        else /* 표시, 일반유닛도 표시 */
          if GetLocalPlayer() == GetTriggerPlayer() then
            call DzFrameShow(Frame_Sub, true)
          endif
        endif
        if not SelectBol[pid] then
          set SelectBol[pid] = true
          set t = CreateTimer()
          call SaveInteger(hash, GetHandleId(t), StringHash("pid"), pid)
          call TimerStart(t, 0, false, function Inter)
        endif
        set SelectedUnit[pid] = u
      endif
     set u = null
     set t = null
    endfunction
      
    private function ButtonJustUp takes nothing returns nothing
      local integer f = DzGetTriggerUIEventFrame()
      local integer nowSelectNum = NowSelect[GetPlayerId(DzGetTriggerUIEventPlayer())+1]
      if ( GetLocalPlayer() == DzGetTriggerUIEventPlayer() ) then
        set f = 12+3*EMenus.GetSubTypeId(f)
        
        call DzFrameSetText(Frame_SelectText[16], "|cffd5d500"+JNStringSplit(CharacterData[nowSelectNum].SelectDatas,"'",f))
        call DzFrameSetText(Frame_SelectText[17], JNStringSplit(CharacterData[nowSelectNum].SelectDatas,"'",f+1))
        call DzFrameSetText(Frame_SelectText[18], JNStringSplit(CharacterData[nowSelectNum].SelectDatas,"'",f+2))
        
        call DzFrameShow(Frame_SelectText[16], true)
      endif
    endfunction
    private function ButtonJustDown takes nothing returns nothing
      local integer f = DzGetTriggerUIEventFrame()
      if ( GetLocalPlayer() == DzGetTriggerUIEventPlayer() ) then
        call DzFrameShow(Frame_SelectText[16], false)
      endif
    endfunction
    private function CreateAfterSync takes nothing returns nothing
      call Load_ExcuteAction.execute(DzGetTriggerSyncPlayer(), S2I(DzGetTriggerSyncData()))
      // call TriggerExecute(gg_trg_Load_End)
    endfunction
    
    private function ButtonStart takes nothing returns nothing
      local integer f = GetPlayerId(DzGetTriggerUIEventPlayer())+1
      set PreLoad[f] = false
      if ( CharacterData[NowSelect[f]].UnitCode == 0 ) then
        set PreLoad[f] = true
        call Msg(DzGetTriggerUIEventPlayer(), "올바른 캐릭터를 선택 후, 시작하기를 눌러주세요")
      else
        if ( GetLocalPlayer() == DzGetTriggerUIEventPlayer() ) then
          call DzSyncData("Select", I2S(NowSelect[f]))
          call DzFrameShow(Frame_SelectBack[0], false)
          call DzFrameShow(Frame_SelectBack[1], false)
          call DzFrameShow(Frame_Info[0], false)
          call ResetToGameCamera(0.)
          call SetCameraBoundsToRect(bj_mapInitialPlayableArea)
          call PanCameraTo(selectX, selectY)
          call EnablePreSelect(true, true)
          call DzFrameShow(DzFrameGetMinimap(), true)
        endif
      endif
    endfunction
    private function CameraBounds takes real x, real y returns nothing
      call SetCameraBounds(x, y, x, y, x, y, x, y)
    endfunction
    private function MakeSelect takes integer no, integer point, real x, real y, real xx, real yy, string texture returns integer
      set Frame_SelectBack[no] = DzCreateFrameByTagName("BACKDROP", "", Frame_SelectBack[1], "", no)
      call DzFrameSetAbsolutePoint(Frame_SelectBack[no], point, x, y)
      call DzFrameSetSize(Frame_SelectBack[no], xx, yy)
      call DzFrameSetTexture(Frame_SelectBack[no], texture, 0)
      return no + 1
    endfunction
    private function MakeStars takes integer no, integer parent, integer point, integer point2, real x, real y, real size, string texture returns integer
      set Frame_SelectStars[no] = DzCreateFrameByTagName("BACKDROP", "", parent, "", no)
      call DzFrameSetPoint(Frame_SelectStars[no], point, parent, point2, x, y)
      call DzFrameSetSize(Frame_SelectStars[no], size, size)
      call DzFrameSetTexture(Frame_SelectStars[no], texture, 0)
      return no + 1
    endfunction
    private function MakeSelectText takes integer no, integer parent, integer point, integer point2, real x, real y, real size, string text returns integer
      set Frame_SelectText[no] = DzCreateFrameByTagName("TEXT", "", parent, "", no)
      if ( size != 0. ) then
        call DzFrameSetFont(Frame_SelectText[no], "Fonts\\DFHeiMd.ttf", size, 0)
      endif
      call DzFrameSetPoint(Frame_SelectText[no], point, parent, point2, x, y)
      call DzFrameSetText(Frame_SelectText[no], text)
      return no+1
    endfunction
      
  
    private function CreateSelectIcon takes integer types, real x, real y, real w, real h, string IconTexture returns nothing
        set Frame_SelectBack[types]=DzCreateFrameByTagName("BACKDROP", "", Frame_SelectBack[0], "", 0)
        call DzFrameSetAbsolutePoint(Frame_SelectBack[types], JN_FRAMEPOINT_CENTER, x, y)
        call DzFrameSetSize(Frame_SelectBack[types], w, h)
        call DzFrameSetTexture(Frame_SelectBack[types], IconTexture, 0)
    endfunction
    private function CreateSelectButton takes integer types returns nothing
      set Frame_SelectBack[types]=DzCreateFrameByTagName("BUTTON", "", Frame_SelectBack[types-1], "ScoreScreenTabButtonTemplate", 0)
      call DzFrameSetAllPoints(Frame_SelectBack[types], Frame_SelectBack[types-1])
      call DzFrameSetScriptByCode(Frame_SelectBack[types], JN_FRAMEEVENT_MOUSE_UP, function MenuQuickSlot.ButtonClickAll, false)
    endfunction
    
    private function CreateSelectIcon2 takes integer types, integer parent, integer point, integer point2, real x, real y, real size, string IconTexture returns integer
      set Frame_SelectSkills[types]=DzCreateFrameByTagName("BUTTON", "", Frame_SelectBack[1], "ScoreScreenTabButtonTemplate", 0)
      call DzFrameSetScriptByCode(Frame_SelectSkills[types], JN_FRAMEEVENT_MOUSE_ENTER, function ButtonJustUp, false)
      call DzFrameSetScriptByCode(Frame_SelectSkills[types], JN_FRAMEEVENT_MOUSE_LEAVE, function ButtonJustDown, false)
      call DzFrameSetPoint(Frame_SelectSkills[types], point, parent, point2, x, y)
      call DzFrameSetSize(Frame_SelectSkills[types], size, size)
        
      set types = types + 1
      //배경
      set Frame_SelectSkills[types]=DzCreateFrameByTagName("BACKDROP", "", Frame_SelectSkills[types-1], "", 0)
      call DzFrameSetAllPoints(Frame_SelectSkills[types], Frame_SelectSkills[types-1])
      call DzFrameSetTexture(Frame_SelectSkills[types], IconTexture, 0)
      return types + 1
    endfunction
    private function CreateSelect takes nothing returns nothing
     local integer Text = 1
       
      call SetCameraField(CAMERA_FIELD_ROTATION, 90., 0.)
      call SetCameraField(CAMERA_FIELD_ANGLE_OF_ATTACK, 325., 0.)
      call SetCameraField(CAMERA_FIELD_TARGET_DISTANCE, 1024, 0.)
      call SetCameraField(CAMERA_FIELD_FIELD_OF_VIEW, 70., 0.)
      call SetCameraField(CAMERA_FIELD_FARZ, 5000., 0.)
      call CameraBounds(selextX, selectY)

      // 체력바 끄기 (Alt 누른 효과 off)
      call EnablePreSelect(false, false)

      set Frame_SelectBack[0] = DzCreateFrameByTagName("TEXT", "", DzGetGameUI(), "", 0)
      call DzFrameSetFont(Frame_SelectBack[0], "Fonts\\MoonEpi2.ttf", .030, 1)
      call DzFrameSetAbsolutePoint(Frame_SelectBack[0], JN_FRAMEPOINT_CENTER, .4, .55)
      if ( GetRandomReal(0.,99.) <= 33. ) then
        call DzFrameSetText(Frame_SelectBack[0], "|cffFF7CBFThe Only My Own RPG")
      elseif ( GetRandomReal(0.,66.) <= 33. ) then
        call DzFrameSetText(Frame_SelectBack[0], "|cff28FF0DThe Only My Own RPG")
      else
        call DzFrameSetText(Frame_SelectBack[0], "|cff0085FFThe Only My Own RPG")
      endif
      set Text = MakeSelectText(1, Frame_SelectBack[0], JN_FRAMEPOINT_TOPRIGHT, JN_FRAMEPOINT_BOTTOMRIGHT, 0., 0., 0., "나만의 알피지")
      call DzFrameSetFont(Frame_SelectText[1], "Fonts\\MoonEpi2.ttf", .0136, 0)
      
      set Frame_SelectBack[1] = DzCreateFrameByTagName("TEXT", "", DzGetGameUI(), "", 0)
       
      //call DzFrameSetTexture(Frame_SelectBack[0], "ui\\Title-R.blp", 0)
      call MakeSelect(2, JN_FRAMEPOINT_TOPLEFT, .05, .45, .18, .25, "Select_Back.blp")
      set Text = MakeSelectText(Text, Frame_SelectBack[2], JN_FRAMEPOINT_TOP, JN_FRAMEPOINT_TOP, 0., -.013, .015, "T"+I2S(Text)+"DarkElf Mage")
      set Text = MakeSelectText(Text, Frame_SelectBack[2], JN_FRAMEPOINT_TOPRIGHT, JN_FRAMEPOINT_TOPRIGHT, -.020, -.035, .010, "T"+I2S(Text)+"다크엘프 마법사")
      
      set Text = MakeSelectText(Text, Frame_SelectBack[2], JN_FRAMEPOINT_TOPLEFT, JN_FRAMEPOINT_TOPLEFT, .020, -.050, .008, "T"+I2S(Text)+"마법사는 강력한 마법 공격과 디버프를 사용해")
      set Text = MakeSelectText(Text, Frame_SelectText[Text-1], JN_FRAMEPOINT_TOPLEFT, JN_FRAMEPOINT_BOTTOMLEFT, 0., 0., .008, "T"+I2S(Text)+"적을 괴롭히고 다대다 전투에 강한 직업입니다.")
      
      set Text = MakeSelectText(Text, Frame_SelectBack[2], JN_FRAMEPOINT_TOPLEFT, JN_FRAMEPOINT_TOPLEFT, .020, -.080, .012, "공격")
      call MakeStars(1, Frame_SelectText[Text-1], JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .040, 0., .020, "Select_stars1.tga")
      call MakeStars(2, Frame_SelectStars[1], JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_RIGHT, 0., 0., .020, "Select_stars1.tga")
      call MakeStars(3, Frame_SelectStars[2], JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_RIGHT, 0., 0., .020, "Select_stars1.tga")
      call MakeStars(4, Frame_SelectStars[3], JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_RIGHT, 0., 0., .020, "Select_stars1.tga")
      call MakeStars(5, Frame_SelectStars[4], JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_RIGHT, 0., 0., .020, "Select_stars1.tga")
      set Text = MakeSelectText(Text, Frame_SelectText[Text-1], JN_FRAMEPOINT_TOPLEFT, JN_FRAMEPOINT_BOTTOMLEFT, 0., -.02, .012, "방어")
      call MakeStars(6, Frame_SelectText[Text-1], JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .040, 0., .020, "Select_stars1.tga")
      call MakeStars(7, Frame_SelectStars[6], JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_RIGHT, 0., 0., .020, "Select_stars1.tga")
      call MakeStars(8, Frame_SelectStars[7], JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_RIGHT, 0., 0., .020, "Select_stars1.tga")
      call MakeStars(9, Frame_SelectStars[8], JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_RIGHT, 0., 0., .020, "Select_stars1.tga")
      call MakeStars(10, Frame_SelectStars[9], JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_RIGHT, 0., 0., .020, "Select_stars0.tga")
      set Text = MakeSelectText(Text, Frame_SelectText[Text-1], JN_FRAMEPOINT_TOPLEFT, JN_FRAMEPOINT_BOTTOMLEFT, 0., -.02, .012, "보조")
      call MakeStars(11, Frame_SelectText[Text-1], JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .040, 0., .020, "Select_stars1.tga")
      call MakeStars(12, Frame_SelectStars[11], JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_RIGHT, 0., 0., .020, "Select_stars1.tga")
      call MakeStars(13, Frame_SelectStars[12], JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_RIGHT, 0., 0., .020, "Select_stars1.tga")
      call MakeStars(14, Frame_SelectStars[13], JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_RIGHT, 0., 0., .020, "Select_stars0.tga")
      call MakeStars(15, Frame_SelectStars[14], JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_RIGHT, 0., 0., .020, "Select_stars0.tga")
      set Text = MakeSelectText(Text, Frame_SelectText[Text-1], JN_FRAMEPOINT_TOPLEFT, JN_FRAMEPOINT_BOTTOMLEFT, 0., -.02, .012, "방해")
      call MakeStars(16, Frame_SelectText[Text-1], JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .040, 0., .020, "Select_stars1.tga")
      call MakeStars(17, Frame_SelectStars[16], JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_RIGHT, 0., 0., .020, "Select_stars1.tga")
      call MakeStars(18, Frame_SelectStars[17], JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_RIGHT, 0., 0., .020, "Select_stars0.tga")
      call MakeStars(19, Frame_SelectStars[18], JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_RIGHT, 0., 0., .020, "Select_stars0.tga")
      call MakeStars(20, Frame_SelectStars[19], JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_RIGHT, 0., 0., .020, "Select_stars0.tga")
      set Text = MakeSelectText(Text, Frame_SelectText[Text-1], JN_FRAMEPOINT_TOPLEFT, JN_FRAMEPOINT_BOTTOMLEFT, 0., -.02, .012, "난이도")
      call MakeStars(21, Frame_SelectText[Text-1], JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .040, 0., .020, "Select_stars2.tga")
      call MakeStars(22, Frame_SelectStars[21], JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_RIGHT, 0., 0., .020, "Select_stars0.tga")
      call MakeStars(23, Frame_SelectStars[22], JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_RIGHT, 0., 0., .020, "Select_stars0.tga")
      call MakeStars(24, Frame_SelectStars[23], JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_RIGHT, 0., 0., .020, "Select_stars0.tga")
      call MakeStars(25, Frame_SelectStars[24], JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_RIGHT, 0., 0., .020, "Select_stars0.tga")
        
      call MakeSelect(3, JN_FRAMEPOINT_TOPLEFT, .6, .4, .20, .23, "Select_BackRed.blp")
      set Text = MakeSelectText(Text, Frame_SelectBack[3], JN_FRAMEPOINT_TOPLEFT, JN_FRAMEPOINT_TOPLEFT, .02, -.02, .010, "|cff8f8f8f피해 유형")
      set Text = MakeSelectText(Text, Frame_SelectText[Text-1], JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .07, 0., .015, "T"+I2S(Text)+"|cff0080c0마법 데미지")
      set Text = MakeSelectText(Text, Frame_SelectBack[3], JN_FRAMEPOINT_TOPLEFT, JN_FRAMEPOINT_TOPLEFT, .02, -.04, .010, "|cff8f8f8f사용(전용)무기")
      set Text = MakeSelectText(Text, Frame_SelectText[Text-1], JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .07, 0., .012, "T"+I2S(Text)+"[완드] [지팡이]")
        
      call MakeSelect(4, JN_FRAMEPOINT_TOPLEFT, .62, .34, .16, .12, "Select_BackRedRed.blp")
      set Text = MakeSelectText(Text, Frame_SelectBack[4], JN_FRAMEPOINT_TOPLEFT, JN_FRAMEPOINT_TOPLEFT, .01, -.01, .010, "|cff8f8f8f주요 스킬 보기")
      call CreateSelectIcon2(1, Frame_SelectBack[4], JN_FRAMEPOINT_TOP, JN_FRAMEPOINT_TOPLEFT, .024, -.03, .0275, "war3mapImported\\frame_kakao.blp")
      call CreateSelectIcon2(3, Frame_SelectBack[4], JN_FRAMEPOINT_TOP, JN_FRAMEPOINT_TOPLEFT, .061, -.03, .0275, "war3mapImported\\frame_kakao.blp")
      call CreateSelectIcon2(5, Frame_SelectBack[4], JN_FRAMEPOINT_TOP, JN_FRAMEPOINT_TOPLEFT, .099, -.03, .0275, "war3mapImported\\frame_kakao.blp")
      call CreateSelectIcon2(7, Frame_SelectBack[4], JN_FRAMEPOINT_TOP, JN_FRAMEPOINT_TOPLEFT, .136, -.03, .0275, "war3mapImported\\frame_kakao.blp")
        
      set Text = MakeSelectText(Text, Frame_SelectBack[4], JN_FRAMEPOINT_TOPLEFT, JN_FRAMEPOINT_TOPLEFT, .01, -.08, .012, "T"+I2S(Text)+"|cffd5d500분노의 소용돌이 |cffff8000Lv.1")
      
      set Text = MakeSelectText(Text, Frame_SelectText[Text-1], JN_FRAMEPOINT_TOPLEFT, JN_FRAMEPOINT_BOTTOMLEFT, 0., -.005, .008, "T"+I2S(Text)+"창을 크게 휘둘러 주위의 적들에게 공격력의")
      set Text = MakeSelectText(Text, Frame_SelectText[Text-1], JN_FRAMEPOINT_TOPLEFT, JN_FRAMEPOINT_BOTTOMLEFT, 0., 0., .008, "T"+I2S(Text)+"|cffff800060%|r만큼 마법피해를 최대 |cffff80003|r회 입힙니다.")
  
      set Frame_SelectBack[5]=DzCreateFrameByTagName("BUTTON", "", Frame_SelectBack[1], "ScoreScreenTabButtonTemplate", 0)
      call DzFrameSetPoint(Frame_SelectBack[5], JN_FRAMEPOINT_TOP, Frame_SelectBack[4], JN_FRAMEPOINT_BOTTOM, 0., -.005)
      call DzFrameSetSize(Frame_SelectBack[5], .11, .03)
      call DzFrameSetScriptByCode(Frame_SelectBack[5], JN_FRAMEEVENT_MOUSE_UP, function ButtonStart, true)
      
      //시작하기
      set Frame_SelectBack[6]=DzCreateFrameByTagName("BACKDROP", "", Frame_SelectBack[5], "", 0)
      call DzFrameSetAllPoints(Frame_SelectBack[6], Frame_SelectBack[5])
      call DzFrameSetTexture(Frame_SelectBack[6], "Select_StartRed.blp", 0)
    endfunction
    public function I2T takes integer i returns string
      if ( i <= 0 ) then
        return ""
      elseif ( i < 100 ) then
        return I2S(i) + "분"
      elseif ( i < 600 ) then /* 10시간 -> 4.27시간 */
        return R2SW(i/60.,1,2) + "시간"
      else/* if ( i < 6000 ) then /* 100시간 -> 45.2시간 */ */
        return R2SW(i/60.,2,1) + "시간"
      /*elseif ( i < 14400 ) then /* 10일 -> 27D12H*/
        return I2S(i/1440)+"D"+I2S(ModuloInteger(i,1440)/60)+"H"
      else
        return R2SW(i/1440.,2,2) + "D"*/
      endif
    endfunction
    private function CreateSelectBottom takes nothing returns nothing
     local integer i = 1
      //아래쪽
      loop
        call CreateSelectIcon(5+i*2, i*.12, .1, .1, .04, "Select_SlotBack75.blp")
        call MakeSelectText(16+i*3, Frame_SelectBack[5+i*2], JN_FRAMEPOINT_TOPLEFT, JN_FRAMEPOINT_TOPLEFT, .005, -.005, .010, JNStringSplit(JNStringSplit(CharacterData[i].SelectDatas,"'",0)," ",1)+" Lv00")
        call MakeSelectText(17+i*3, Frame_SelectBack[5+i*2], JN_FRAMEPOINT_TOPRIGHT, JN_FRAMEPOINT_TOPRIGHT, -.005, -.005, .009, " ")
        call MakeSelectText(18+i*3, Frame_SelectBack[5+i*2], JN_FRAMEPOINT_BOTTOMRIGHT, JN_FRAMEPOINT_BOTTOMRIGHT, -.01, .008, .013, "이어하기")
        
        call CreateSelectButton(6+i*2)
        exitwhen i >= Save_MAX_CHARACTER
        set i = i + 1
      endloop
    endfunction
    private function CreateSelectBottom2 takes player p, string Input returns nothing
     local string s
     local integer i = 1
      //아래쪽
      loop
        set s = JNStringSplit(Input,"/",i)
        if ( S2I(JNStringSplit(JNStringSplit(s,"'",1),".",0)) > 0 ) then
          if ( GetLocalPlayer() == p ) then
            call DzFrameSetTexture(Frame_SelectBack[5+i*2], "Select_SlotBack75.blp", 0)
            call DzFrameSetFont(Frame_SelectText[16+i*3], "Fonts\\DFHeiMd.ttf", .010, 0)
            call DzFrameSetText(Frame_SelectText[16+i*3], JNStringSplit(JNStringSplit(CharacterData[i].SelectDatas,"'",0)," ",1)+" Lv"+JNStringSplit(JNStringSplit(s,"'",1),".",0))
            call DzFrameSetFont(Frame_SelectText[17+i*3], "Fonts\\DFHeiMd.ttf", .009, 0)
            call DzFrameSetText(Frame_SelectText[17+i*3], I2T(S2I(JNStringSplit(JNStringSplit(s,"'",0),"_",1))))
            call DzFrameSetFont(Frame_SelectText[18+i*3], "Fonts\\DFHeiMd.ttf", .013, 0)
            call DzFrameSetText(Frame_SelectText[18+i*3], "이어하기")
          endif
        else
          if ( GetLocalPlayer() == p ) then
            call DzFrameSetTexture(Frame_SelectBack[5+i*2], "Select_SlotBack50.blp", 0)
            call DzFrameSetFont(Frame_SelectText[16+i*3], "Fonts\\DFHeiMd.ttf", .009, 0)
            call DzFrameSetText(Frame_SelectText[16+i*3], JNStringSplit(CharacterData[i].SelectDatas,"'",0) + " (신규)")
            call DzFrameSetText(Frame_SelectText[17+i*3], "")
            call DzFrameSetFont(Frame_SelectText[18+i*3], "Fonts\\DFHeiMd.ttf", .008, 0)
            call DzFrameSetText(Frame_SelectText[18+i*3], "미리보기")
          endif
        endif
        
        exitwhen i >= Save_MAX_CHARACTER
        set i = i + 1
      endloop
    endfunction
    
    public function GetSaveData takes player p, string Input returns nothing
      if ( IsEmpty(Input) ) then
        set Input = DEFAULT_DATA
      endif
      call SaveStr(hash, GetPlayerId(p)+1, StringHash("Data"), Input)
      call CreateSelectBottom2(p, Input)
     /* 1_시간'레벨.경험치  / 2_시간'레벨.경험치 ... */
    endfunction
    
    // IResource.PlayerResource[]가 생성된 후 호출
    private function Init takes nothing returns nothing
      local integer loopA = 1
      if ( PlayerResource.ALL_PLAYING_COUNT <= 0 ) then
        call MsgAll("오류 / 플레이어 초기값이 설정되지 않았습니다.")
        return
      endif

      // set leftCount = PlayerResource.ALL_PLAYING_COUNT

      call CreateSelect()
      call CreateSelectBottom()
      
      call DzFrameShow(Frame_SelectBack[1], false)  /* 전체 선택 프레임 without 최상단 나만의 알피지 txt */
      call DzFrameShow(Frame_SelectText[16], false) /* 스킬 설명부분 */
      
      loop
        if ( PlayerResource[loopA].isPlaying ) then
          set PreLoad[loopA] = true
          call TriggerRegisterPlayerUnitEvent(selectTrigger, Player(loopA-1), EVENT_PLAYER_UNIT_SELECTED, null)
          call TriggerRegisterPlayerUnitEvent(deSelectTrigger, Player(loopA-1), EVENT_PLAYER_UNIT_DESELECTED, null)
        endif
        exitwhen MAX_PLAYER_COUNT-1 <= loopA
        set loopA = loopA + 1
      endloop
      call TriggerAddAction(selectTrigger, function Selected)
      call TriggerAddAction(deSelectTrigger, function Deselected)

      call DzTriggerRegisterSyncData(syncTrigger, "Select", false)
      call TriggerAddAction(syncTrigger, function CreateAfterSync)
    endfunction
  endscope