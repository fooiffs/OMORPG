scope MenuQuickSlot initializer Init
  public function ChangeSlotIcon takes integer slot, boolean isSkill, string TexturePath returns nothing
    //아이콘 텍스처 설정
    if ( isSkill and 0 < slot and slot < MAX_SKILL_SLOT ) then
      call DzFrameSetTexture(Frame_ButtonsBackDrop[slot+7], TexturePath, 0)
    elseif ( not isSkill and 0 < slot and slot <= 7 ) then
      call DzFrameSetTexture(Frame_ButtonsBackDrop[slot], TexturePath, 0)
    elseif ( isSkill ) then
      call BJDebugMsg("오류/슬롯["+I2S(slot)+"]변경/스킬")
    else
      call BJDebugMsg("오류/슬롯["+I2S(slot)+"]변경/아이템")
    endif
  endfunction
  public function AddReg takes integer P, integer MenuNo, integer Hotkey returns nothing
    local string s = ""
    local integer i = 0
    if ( PushKey_I2H(Hotkey) == "" ) then
      call DisplayTimedTextToPlayer(Player(P-1),0,0,4.,"등록할 수 없는 단축키입니다. -" +I2S(Hotkey) + "=" + PushKey_I2H(Hotkey))
    else
      set s = I2S(F2IN(MenuNo)) + "번째 " + FI2S(F2IT(MenuNo)) + " 단축키: "
      
      //기존 단축키 검사
      set i = LoadInteger(hash, P, MenuNo)
      if ( i != 0 ) then
        call SaveInteger(hash, P, MenuNo, 0)
        set s = s + PushKey_I2H(i) +"→"+ PushKey_I2H(Hotkey) + " 변경 (기존 " + PushKey_I2H(i) + "단축키 삭제"
        set i = LoadInteger(hash, P, Hotkey)
        if ( i != 0 ) then
          set s = s + ", 기존 " + PushKey_I2H(Hotkey) + "단축키 " + I2S(F2IN(i)) + "번째 " + FI2S(F2IT(i)) + " 삭제)"
          call SaveInteger(hash, P, Hotkey, 0)
        else
          set s = s + ")"
        endif
      //변경
      else
      //등록
        set s = s + PushKey_I2H(Hotkey) + " 등록"
        set i = LoadInteger(hash, P, Hotkey)
        if ( i != 0 ) then
          set s = s + " (기존 " + PushKey_I2H(Hotkey) + "단축키 " + I2S(F2IN(i)) + "번째 " + FI2S(F2IT(i)) + " 삭제)"
          call SaveInteger(hash, P, Hotkey, 0)
        endif
      endif
      call SaveInteger(hash, P, MenuNo, Hotkey)
      call SaveInteger(hash, P, Hotkey, MenuNo)
      if ( GetLocalPlayer() == Player(P-1) ) then
        call DzFrameSetText(LoadInteger(hash, LoadInteger(hash, 0, MenuNo), StringHash("FUI_HotKey")), PushKey_I2H(Hotkey))
      endif
      call DisplayTimedTextToPlayer(Player(P-1),0,0,7.,s)
    endif
    
    /*1번째 아이템 단축키: D→T 변경 (기존 D단축키 삭제)
    1번째 아이템 단축키: D→T 변경 (기존 D단축키 삭제, 기존 T단축키 3번째 메뉴삭제)
    1번째 아이템 단축키: T 등록 (기존 T단축키 3번째 메뉴삭제)
    1번째 아이템 단축키: T 등록*/
    
    
    /*hotkey에서 MenuNo 반환되어야함
    MenuNo에서 hotKey 반환되어야함 (기존거 삭제)*/
    
  endfunction
  public constant function BaseHotKey takes integer MenuNo returns string
    if ( MenuNo == 1 ) then
      return "1"
    elseif ( MenuNo == 2 ) then
      return "2"
    elseif ( MenuNo == 3 ) then
      return "3"
    elseif ( MenuNo == 4 ) then
      return "4"
    elseif ( MenuNo == 5 ) then
      return "5"
    elseif ( MenuNo == 6 ) then
      return "6"
    elseif ( MenuNo == 7 ) then
      return "7"
    elseif ( MenuNo == 8 ) then
      return "Q"
    elseif ( MenuNo == 9 ) then
      return "W"
    elseif ( MenuNo == 10 ) then
      return "E"
    elseif ( MenuNo == 11 ) then
      return "R"
    elseif ( MenuNo == 12 ) then
      return "T"
    elseif ( MenuNo == 13 ) then
      return "D"
    elseif ( MenuNo == 14 ) then
      return "F"
    elseif ( MenuNo == 15 ) then
      return "G"
    elseif ( MenuNo == 16 ) then
      return "F8"
    elseif ( MenuNo == 17 ) then
      return "F7"
    elseif ( MenuNo == 18 ) then
      return "F6"
    elseif ( MenuNo == 19 ) then
      return "F5"
    elseif ( MenuNo == 20 ) then
      return "I"
    elseif ( MenuNo == 21 ) then
      return "S"
    elseif ( MenuNo == 22 ) then
      return "T"
    elseif ( MenuNo == 23 ) then
      return "V"
    else
      return ""
    endif
  endfunction
  private function MakeHotKey takes integer frame, integer MenuNo returns nothing
    local integer HotFrame = DzCreateFrame("CommandButtonHotKeyBackDrop", frame, MenuNo)
    local integer HotFrameTxt = DzCreateFrame("CommandButtonHotKeyText", HotFrame, MenuNo)
    call DzFrameSetTexture(HotFrame, "ui\\widgets\\console\\human\\commandbutton\\human-button-lvls-overlay.blp", 0)
    call DzFrameSetPoint(HotFrame, JN_FRAMEPOINT_TOPLEFT, frame, JN_FRAMEPOINT_TOPLEFT, -.001, .001)
    call DzFrameSetPoint(HotFrameTxt, JN_FRAMEPOINT_CENTER, HotFrame, JN_FRAMEPOINT_CENTER, 0., 0.)
    //call DzFrameSetText(HotFrameTxt, BaseHotKey(MenuNo))
    call SaveInteger(hash, 0, MenuNo, frame)
    call SaveInteger(hash, frame, StringHash("FUI_HotKey"), HotFrameTxt)
    //call AddReg(P, MenuNo, Hotkey)
    //call BJDebugMsg("no"+I2S(MenuNo)+"="+I2S(frame))
  endfunction
  private function CreateSkillFrameButton takes integer types, real x, real y, string IconTexture returns nothing
    set Frame_Buttons[types]=DzCreateFrameByTagName("BUTTON", "", Frame_Main, "ScoreScreenTabButtonTemplate", 0)
    
    //call SaveInteger(hash, types, )
    //xx번째 메뉴 - yy번째 (스킬/메뉴/아이템) / 클릭한 플레이어 id - 클릭/누를시 받아옴.
    
    //BUTTON(버튼) 타입의 버튼을 ScoreScreenTabButtonTemplate스타일(마우스를 대면 빛이나는 스타일)로 생성
    //부모 프레임은 Frame_Main로 설정
    call DzFrameSetAbsolutePoint(Frame_Buttons[types], JN_FRAMEPOINT_BOTTOMLEFT, x, y)
    //왼쪽 아래 정렬로 x, y축으로 이동
    call DzFrameSetSize(Frame_Buttons[types], 0.025, 0.025)
    
    set Frame_ButtonsBackDrop[types]=DzCreateFrameByTagName("BACKDROP", "", Frame_Buttons[types], "", 0)
    //버튼에 표시할 아이콘을 BACKDROP(배경 이미지) 타입으로 생성
    //부모 프레임은 아까 생성한 버튼으로 설정
    call DzFrameSetAllPoints(Frame_ButtonsBackDrop[types], Frame_Buttons[types])
    //아이콘의 위치, 크기를 아까 생성한 버튼과 같게 함.
    call DzFrameSetTexture(Frame_ButtonsBackDrop[types], IconTexture, 0)
    //아이콘 텍스처 설정
    
    call DzFrameSetScriptByCode(Frame_Buttons[types], JN_FRAMEEVENT_MOUSE_UP, function Select_ButtonClick, false)
    //버튼을 클릭하면 function ClickItemButton 함수 실행
    //false는 비동기화.
    call MakeHotKey(Frame_Buttons[types], types)
  endfunction
  private function CreateItemFrameButton takes integer types, real x, real y returns nothing
    set Frame_Buttons[types]=DzCreateFrameByTagName("BUTTON", "", Frame_Main, "ScoreScreenTabButtonTemplate", 0)
    call DzFrameSetAbsolutePoint(Frame_Buttons[types], JN_FRAMEPOINT_BOTTOMLEFT, x, y)
    call DzFrameSetSize(Frame_Buttons[types], 0.0235, 0.0235)
    
    set Frame_ButtonsBackDrop[types]=DzCreateFrameByTagName("BACKDROP", "", Frame_Buttons[types], "", 0)
    call DzFrameSetAllPoints(Frame_ButtonsBackDrop[types], Frame_Buttons[types])
    call DzFrameSetTexture(Frame_ButtonsBackDrop[types], "Inven_Empty.blp", 0)
    
    call DzFrameSetScriptByCode(Frame_Buttons[types], JN_FRAMEEVENT_MOUSE_UP, function Select_ButtonClick, false)
    call MakeHotKey(Frame_Buttons[types], types)
  endfunction
  //call AddReg(P, MenuNo, Hotkey)
  private function CreateMenuFrameButton takes integer types, real x, real y, real w, real h, string IconTexture returns nothing
    set Frame_Buttons[types]=DzCreateFrameByTagName("BUTTON", "", Frame_Main, "ScoreScreenTabButtonTemplate", 0)
    //set Frame_Buttons[types] = DzCreateFrameByTagName("GLUETEXTBUTTON", "", Frame_Main, "ScoreScreenTabButtonTemplate", 0)
    call DzFrameSetAbsolutePoint(Frame_Buttons[types], JN_FRAMEPOINT_BOTTOMLEFT, x, y)
    //call DzFrameSetText(Frame_Buttons[types], text)
    call DzFrameSetSize(Frame_Buttons[types], w, h)
//call BJDebugMsg(I2S(types) + " // " + IconTexture)
    call DzFrameSetScriptByCode(Frame_Buttons[types], JN_FRAMEEVENT_MOUSE_UP, function Select_ButtonClick, false)
    
    //배경
    set Frame_ButtonsBackDrop[types]=DzCreateFrameByTagName("BACKDROP", "", Frame_Buttons[types], "", 0)
    call DzFrameSetAllPoints(Frame_ButtonsBackDrop[types], Frame_Buttons[types])
    call DzFrameSetTexture(Frame_ButtonsBackDrop[types], IconTexture, 0)
    call MakeHotKey(Frame_Buttons[types], types)
  endfunction
  private function Init takes nothing returns nothing
    local integer i = 1
    /* 퀵슬롯 of 아이템 */
    loop
      call CreateItemFrameButton(i, .4215+(i*.025), .03)
      exitwhen i >= 7
      set i = i + 1
    endloop
    
    /* 퀵슬롯 of 스킬 */
    call CreateSkillFrameButton(8, .3, .03, "ReplaceableTextures\\CommandButtons\\BTNThoriumMelee.blp")
    call CreateSkillFrameButton(9, .33, .03, "ReplaceableTextures\\CommandButtons\\BTNHumanArmorUpOne.blp")
    call CreateSkillFrameButton(10, .36, .03, "ReplaceableTextures\\CommandButtons\\BTNHumanArmorUpTwo.blp")
    call CreateSkillFrameButton(11, .39, .03, "ReplaceableTextures\\CommandButtons\\BTNHumanArmorUpThree.blp")
    call CreateSkillFrameButton(12, .3, .06, "ReplaceableTextures\\CommandButtons\\BTNOrbOfFire.blp")
    call CreateSkillFrameButton(13, .33, .06, "ReplaceableTextures\\CommandButtons\\BTNOrbOfVenom.blp")
    call CreateSkillFrameButton(14, .36, .06, "ReplaceableTextures\\CommandButtons\\BTNOrbOfFrost.blp")
    call CreateSkillFrameButton(15, .39, .06, "ReplaceableTextures\\CommandButtons\\BTNDaggerOfEscape.blp")
    
    /* 퀵슬롯 of 메뉴 */
    call CreateMenuFrameButton(16, .78, 0.58, .02, .02, "war3mapImported\\frame_setting.blp")   /* 설정 */
    call CreateMenuFrameButton(17, .76, 0.58, .02, .02, "war3mapImported\\frame_discord.blp")   /* 디코 */
    call CreateMenuFrameButton(18, .74, 0.58, .02, .02, "war3mapImported\\frame_kakao.blp")     /* 카톡 */
    call CreateMenuFrameButton(19, .63, .01, .03, .03, "war3mapImported\\frame_combat.blp")     /* 자동사냥 */

    call CreateMenuFrameButton(20, .67, 0., .03, .03, "Inven_Empty.blp")                        /* 인벤 */
    call CreateMenuFrameButton(21, .7, 0., .03, .03, "war3mapImported\\frame_stats.blp")        /* 능력치 */
    call CreateMenuFrameButton(22, .73, 0., .03, .03, "war3mapImported\\frame_stats2.blp")      /* 스킬 */
    call CreateMenuFrameButton(23, .76, 0., .03, .03, "war3mapImported\\frame_skills.blp")      /* 스킬 */
  endfunction
endscope