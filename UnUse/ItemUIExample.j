scope ItemUI initializer Init 
  globals 
    private integer Frame_MenuButton //조합법 메뉴 버튼 
        
    private integer Frame_MenuBackDrop //메뉴 배경 
    private integer Frame_ItemTemplateBackDrop //아이템 조합법 표시하는 배경 
        
    private integer Frame_CancelButton //취소 버튼 
        
    private integer array Frame_ItemButtons //아이템 버튼들 
    private integer array Frame_ItemButtonsBackDrop //아이템 버튼 배경 아이콘들 
    private integer array Frame_ItemButtonsText //아이템 버튼 설명 
        
    private integer Frame_ItemCombinationText //아이템 조합법 설명 텍스트 
  endglobals 
    
  private function ShowMenu takes nothing returns nothing 
    //메뉴 버튼을 누르면 메뉴 버튼 비활설화 + 메뉴 배경 표시 
    //다시 메뉴 버튼을 누르면 메뉴버튼 활성화 + 메뉴 배경 숨김 
    if DzFrameGetEnable(Frame_MenuButton) == false then 
      call DzFrameSetEnable(Frame_MenuButton, true) 
      call DzFrameShow(Frame_MenuBackDrop, false) 
    else 
      call DzFrameSetEnable(Frame_MenuButton, false) 
      call DzFrameShow(Frame_MenuBackDrop, true) 
    endif 
  endfunction 
    
  private function ClickItemButton takes nothing returns nothing 
    local integer f = DzGetTriggerUIEventFrame() 
    //f: 트리거를 작동시킨 프레임(비동기화시에만 잡히니 주의.) 
        
    //누른 버튼이 Frame_ItemButtons[0]일 경우 
    if f == Frame_ItemButtons[0] then 
      call DzFrameSetText(Frame_ItemCombinationText, "강철 + 마법의 돌 = 반지") 
    elseif f == Frame_ItemButtons[1] then 
      call DzFrameSetText(Frame_ItemCombinationText, "대바늘 + 털실 = 팔찌") 
    elseif f == Frame_ItemButtons[2] then 
      call DzFrameSetText(Frame_ItemCombinationText, "은 + 망치 + 칼 = 은반지") 
    elseif f == Frame_ItemButtons[3] then 
      call DzFrameSetText(Frame_ItemCombinationText, "천 + 줄 = 마스크") 
    elseif f == Frame_ItemButtons[4] then 
      call DzFrameSetText(Frame_ItemCombinationText, "줄 + 줄 + 줄 + 마법의 돌 = 목걸이") 
    elseif f == Frame_ItemButtons[5] then 
      call DzFrameSetText(Frame_ItemCombinationText, "마법의 돌 + 마법의 돌 + 마법의 돌 = 조각") 
    elseif f == Frame_ItemButtons[6] then 
      call DzFrameSetText(Frame_ItemCombinationText, "짱돌 + 마법의 돌 = 스톤") 
    endif 
        
    //마우스 클릭 사운드(디테일 용) 
    call StopSound(gg_snd_MouseClick1, false, false) 
    call StartSound(gg_snd_MouseClick1) 
  endfunction 
    
    
  //버튼 아이콘 생성 함수 
  private function CreateItemButton takes integer types, real x, real y, string iconTexture, string itemName returns nothing 
    set Frame_ItemButtons[types] = DzCreateFrameByTagName("BUTTON", "", Frame_MenuBackDrop, "ScoreScreenTabButtonTemplate", 0) 
    //BUTTON(버튼) 타입의 버튼을 ScoreScreenTabButtonTemplate스타일(마우스를 대면 빛이나는 스타일)로 생성 
    //부모 프레임은 Frame_MenuBackDrop로 설정 
    call DzFrameSetAbsolutePoint(Frame_ItemButtons[types], JN_FRAMEPOINT_CENTER, x, y) 
    //가운데 정렬로 x, y축으로 이동 
    call DzFrameSetSize(Frame_ItemButtons[types], 0.04, 0.04) 
    //크기는 0.04, 0.04 
        
    set Frame_ItemButtonsBackDrop[types] = DzCreateFrameByTagName("BACKDROP", "", Frame_ItemButtons[types], "", 0) 
    //버튼에 표시할 아이콘을 BACKDROP(배경 이미지) 타입으로 생성 
    //부모 프레임은 아까 생성한 버튼으로 설정 
    call DzFrameSetAllPoints(Frame_ItemButtonsBackDrop[types], Frame_ItemButtons[types]) 
    //아이콘의 위치, 크기를 아까 생성한 버튼과 같게 함. 
    call DzFrameSetTexture(Frame_ItemButtonsBackDrop[types], iconTexture, 0) 
    //아이콘 텍스처 설정 
        
    set Frame_ItemButtonsText[types] = DzCreateFrameByTagName("TEXT", "", Frame_ItemButtons[types], "", 0) 
    //아이템 이름을 표시하기 위해 TEXT(글자) 타입으로 생성 
    //부모 프레임은 아까 생성한 버튼으로 설정 
    call DzFrameSetAbsolutePoint(Frame_ItemButtonsText[types], JN_FRAMEPOINT_CENTER, x, y - 0.03) 
    //위치 설정 
    call DzFrameSetText(Frame_ItemButtonsText[types], itemName) 
    //텍스트 설정 
        
    call DzFrameSetScriptByCode(Frame_ItemButtons[types], JN_FRAMEEVENT_MOUSE_UP, function ClickItemButton, false) 
    //버튼을 클릭하면 function ClickItemButton 함수 실행 
    //false는 비동기화. 
  endfunction 
    
    
  private function Main takes nothing returns nothing 
    call DzLoadToc("war3mapImported\\Templates.toc") 
    //이걸 실행해야 StandardDecoratedEditBoxBackdropTemplate타입 사용 가능 
        
        
    /********************************** 조합법 버튼 생성 **********************************************/
    set Frame_MenuButton = DzCreateFrameByTagName("GLUETEXTBUTTON", "", DzGetGameUI(), "ScriptDialogButton", 0)
    //GLUETEXTBUTTON(텍스트 버튼) 타입의 버튼을 ScriptDialogButton(다이얼로그)스타일로 생성
    //부모 프레임은 DzGetGameUI()로 설정(보통 부모프레임은 이걸로 써도 무방)
    call DzFrameSetAbsolutePoint(Frame_MenuButton, JN_FRAMEPOINT_CENTER, 0.05, 0.55)
    //버튼의 위치를 0.05, 0.55로 이동. (좌측 상단: 0, 0.6, 우측 상단: 0.8, 0.6, 좌측 하단: 0, 0, 우측 하단: 0.8, 0)
    //JN_FRAMEPOINT_CENTER은 가운데 정렬.
    call DzFrameSetText(Frame_MenuButton, "|cffffffff조합법")
    //버튼 텍스트 설정
    call DzFrameSetSize(Frame_MenuButton, 0.08, 0.035)
    //버튼 크기 설정
    call DzFrameSetScriptByCode(Frame_MenuButton, JN_FRAMEEVENT_MOUSE_UP, function ShowMenu, false)
    //버튼을 클릭하면 function ShowMenu 함수 실행(비동기화)
        
        
        
    /********************************** 메뉴 배경 생성 **********************************************/
    set Frame_MenuBackDrop=DzCreateFrameByTagName("BACKDROP", "", DzGetGameUI(), "EscMenuBackdrop", 0)
    //BACKDROP(배경 이미지) 타입을 EscMenuBackdrop(종족 메뉴)스타일로 생성
    call DzFrameSetAbsolutePoint(Frame_MenuBackDrop, JN_FRAMEPOINT_CENTER, 0.4, 0.3)
    //배경의 위치를 0.04, 0.03으로 이동.
    //JN_FRAMEPOINT_CENTER은 가운데 정렬.
    call DzFrameSetSize(Frame_MenuBackDrop, 0.40, 0.35)
    //배경 크기 설정
        
        
    /********************************** 조합법 메뉴 배경 생성 **********************************************/
    set Frame_ItemTemplateBackDrop=DzCreateFrameByTagName("BACKDROP", "", Frame_MenuBackDrop, "StandardDecoratedEditBoxBackdropTemplate", 0)
    //BACKDROP(배경 이미지) 타입을 StandardDecoratedEditBoxBackdropTemplate스타일로 생성
    //부모 프레임은 메뉴 배경 (Frame_MenuBackDrop)로 설정(부모 프레임이 숨겨지면 자식 프레임도 같이 숨겨짐)
    call DzFrameSetPoint(Frame_ItemTemplateBackDrop, JN_FRAMEPOINT_BOTTOMLEFT, Frame_MenuBackDrop , JN_FRAMEPOINT_BOTTOMLEFT, 0.03, 0.18)
    //배경의 좌측하단의 위치를 Frame_MenuBackDrop의 좌측 하단의 x+0.03, y+0.18로 설정
    call DzFrameSetPoint(Frame_ItemTemplateBackDrop, JN_FRAMEPOINT_TOPRIGHT, Frame_MenuBackDrop , JN_FRAMEPOINT_TOPRIGHT, -0.03, -0.03)
    //배경의 우측 상단의 위치를 Frame_MenuBackDrop의 우측 하단의 x-0.03, y-0.03로 설정
        
    set Frame_ItemCombinationText=DzCreateFrameByTagName("TEXT", "", Frame_MenuBackDrop, "", 0)
    call DzFrameSetPoint(Frame_ItemCombinationText, JN_FRAMEPOINT_BOTTOMLEFT, Frame_ItemTemplateBackDrop , JN_FRAMEPOINT_BOTTOMLEFT, 0.01, 0.01)
    //텍스트의 좌측하단의 위치를 Frame_ItemTemplateBackDrop의 좌측 하단의 x+0.01, y+0.01로 설정
    call DzFrameSetPoint(Frame_ItemCombinationText, JN_FRAMEPOINT_TOPRIGHT, Frame_ItemTemplateBackDrop , JN_FRAMEPOINT_TOPRIGHT, -0.01, -0.01)
    //텍스트의 우측 상단의 위치를 Frame_ItemTemplateBackDrop의 우측 하단의 x-0.01, y-0.01로 설정
    call DzFrameSetText(Frame_ItemCombinationText, "조합법을 보시려면 아래 아이콘을 클릭하세요.")
    //텍스트 내용 설정
        
        
        
    /********************************** 아이템 아이콘 버튼 생성 **********************************************/
    call CreateItemButton(0, 0.25, 0.275, "ReplaceableTextures\\CommandButtons\\BTNCirclet.blp", "반지")
    call CreateItemButton(1, 0.30, 0.275, "ReplaceableTextures\\CommandButtons\\BTNRunedBracers.blp", "팔찌")
    call CreateItemButton(2, 0.35, 0.275, "ReplaceableTextures\\CommandButtons\\BTNRingSkull.blp", "은반지")
    call CreateItemButton(3, 0.40, 0.275, "ReplaceableTextures\\CommandButtons\\BTNRobeOfTheMagi.blp", "마스크")
    call CreateItemButton(4, 0.45, 0.275, "ReplaceableTextures\\CommandButtons\\BTNPendantOfMana.blp", "목걸이")
    call CreateItemButton(5, 0.50, 0.275, "ReplaceableTextures\\CommandButtons\\BTNSpellShieldAmulet.blp", "조각")
    call CreateItemButton(6, 0.55, 0.275, "ReplaceableTextures\\CommandButtons\\BTNPeriapt.blp", "스톤")
        
        
    /********************************** 메뉴 취소 버튼 **********************************************/
    set Frame_CancelButton = DzCreateFrameByTagName("GLUETEXTBUTTON", "", Frame_MenuBackDrop, "ScriptDialogButton", 0)
    //GLUETEXTBUTTON(텍스트 버튼) 타입의 버튼을 ScriptDialogButton(다이얼로그)스타일로 생성
    //부모 프레임은 메뉴 배경 (Frame_MenuBackDrop)로 설정(부모 프레임이 숨겨지면 자식 프레임도 같이 숨겨짐)
    call DzFrameSetAbsolutePoint(Frame_CancelButton, JN_FRAMEPOINT_CENTER, 0.5, 0.175)
    //버튼의 위치를 0.04, 0.03으로 이동.
    //JN_FRAMEPOINT_CENTER은 가운데 정렬.
    call DzFrameSetText(Frame_CancelButton, "나가기")
    //버튼 텍스트 값을 "나가기"로 설정
    call DzFrameSetSize(Frame_CancelButton, 0.15, 0.035)
    //버튼 크기 설정
    call DzFrameSetScriptByCode(Frame_CancelButton, JN_FRAMEEVENT_MOUSE_UP, function ShowMenu, false)
    //버튼을 클릭하면 function ShowMenu 함수 실행
        
        
        
    call DzFrameShow(Frame_MenuBackDrop, false)
    //Frame_MenuBackDrop(메뉴 배경)을 숨긴다. 따라서 Frame_MenuBackDrop의 자식 프레임들도 모두 숨겨진다.
  endfunction
    
  private function Init takes nothing returns nothing
    local trigger t = CreateTrigger(  )
        
    call TriggerRegisterTimerEventSingle( t, 0.00 )
    call TriggerAddAction( t, function Main )
        
    set t = null
  endfunction
endscope