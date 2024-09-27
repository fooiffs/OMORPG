scope UnitDetailFrame initializer Init
    globals
      integer Frame_Main
      integer Frame_Sub
    endglobals
    private function Init takes nothing returns nothing
     local integer i = 0
      /* 메인 프레임 생성 */
      set Frame_Main = DzCreateFrameByTagName("SPRITE", "", DzGetGameUI(), "", 0)
      call DzFrameSetAbsolutePoint(Frame_Main, JN_FRAMEPOINT_TOPRIGHT, 0., 0.)
      set Frame_Sub = DzCreateFrameByTagName("SPRITE", "", DzGetGameUI(), "", 0)
      call DzFrameSetAbsolutePoint(Frame_Sub, JN_FRAMEPOINT_TOPRIGHT, 0., 0.)
      
      /* 플레이어 이름 */
      set i = DzCreateFrameByTagName("TEXT", "", Frame_Sub, "", 0)
      call DzFrameSetAbsolutePoint(i, JN_FRAMEPOINT_CENTER , .25, .07)
      call DzFrameSetText(i, GetPlayerName(GetLocalPlayer()))
      
      /* 경험치바 */
      set i = StartSetting_Get(DzSimpleFrameFindByName("SimpleHeroLevelBar", 0))
      call DzFrameSetAbsolutePoint(i, JN_FRAMEPOINT_BOTTOMLEFT, .3, .001)
      call DzFrameSetAbsolutePoint(i, JN_FRAMEPOINT_TOPRIGHT, .62, .017)
      
      /* 영웅 이명 - 카샨 */
      set i = StartSetting_Get(DzSimpleFontStringFindByName("SimpleNameValue", 0))
      call DzFrameSetAbsolutePoint(i, JN_FRAMEPOINT_CENTER, .25, .055)
      
      /* 유닛 이름 - 피전트  */
      set i = StartSetting_Get(DzSimpleFontStringFindByName("SimpleClassValue", 0))
      call DzFrameSetAbsolutePoint(i, JN_FRAMEPOINT_CENTER, .25, .040)
      
      /* 레벨 1 마운틴킹 */
      set i = StartSetting_Get(DzSimpleFrameFindByName("SimpleProgressIndicator", 0))
      call DzFrameSetAbsolutePoint(i, JN_FRAMEPOINT_CENTER, .25, .035)
      
      /* 초상화 */
      // 초기에 설정 in StartSetting.j
      // HP & MP - 특수 설정 in Select.j -> PortraitEditor.j
      
      call DzFrameShow(Frame_Main, false)

      // call ClearFrameAllPoints(GetPortraitButtonHPText())
      // call SetFramePoint(GetPortraitButtonHPText(), JN_FRAMEPOINT_CENTER, GetPortraitButtonManaText(), JN_FRAMEPOINT_CENTER, 0., 0.1)
    endfunction
  endscope