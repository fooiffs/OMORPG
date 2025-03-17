struct Select
    private static integer g_Parent = 0
    private static integer g_LastClickCharacterSlotIndex = 0

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
    public static constant real BASE_START_LOCATION_X = -9696.
    public static constant real BASE_START_LOCATION_Y = 4288.
    private static constant real FRAME_DEFAULT_X = -9664.
    private static constant real FRAME_DEFAULT_Y = 5440.
    private static boolean array isSelecting[MAX_PLAYER_COUNT]

    // 마지막으로 선택한 캐릭터 슬롯 번호를 반환한다
    static method GetLastClickCharacterSlotIndex takes nothing returns integer
        return g_LastClickCharacterSlotIndex
    endmethod

    // 마지막으로 선택한 캐릭터 슬롯 번호를 설정한다
    static method SetLastClickCharacterSlotIndex takes integer value returns nothing
        set g_LastClickCharacterSlotIndex = value
    endmethod

    // 스킬 아이콘에 마우스를 입장 시 이벤트 함수를 실행한다
    private static method OnMouseEnterSkillIcon takes nothing returns nothing
        local integer i = 0
        
        // 이벤트를 작동시킨 프레임 탐색
        loop
            exitwhen i > 3
            if DzGetTriggerUIEventFrame() == DzFrameFindByName("Select_CharacterPreview_SkillListSkillIcon", i) then
                exitwhen true
            endif
            set i = i + 1
        endloop
        
        // 프레임을 못찾을 시 즉시 종료
        if i > 3 then
            return
        endif
        
        // 이벤트를 작동시킨 프레임에 따른 툴팁 반영
        if GetLastClickCharacterSlotIndex() == 0 then
            if i == 0 then
                call DzFrameSetText(DzFrameFindByName("Select_CharacterPreview_SkillListSkillName", 0), "|CFFFFCC00특성스킬|r")
                call DzFrameSetText(DzFrameFindByName("Select_CharacterPreview_SkillListSkillDescription", 0), "검압 - 스킬 추가데미지|n블루트베네 - 피격데미지 감소")
            elseif i == 1 then
                call DzFrameSetText(DzFrameFindByName("Select_CharacterPreview_SkillListSkillName", 0), "|CFFFFCC00월아천충|r")
                call DzFrameSetText(DzFrameFindByName("Select_CharacterPreview_SkillListSkillDescription", 0), "참격의 순간에 자신의 영압을 방출해 참격을 거대화.|n강화시 데미지&범위 증가")
            elseif i == 2 then
                call DzFrameSetText(DzFrameFindByName("Select_CharacterPreview_SkillListSkillName", 0), "|CFFFFCC00천쇄참월|r")
                call DzFrameSetText(DzFrameFindByName("Select_CharacterPreview_SkillListSkillDescription", 0), "호로의 힘으로 월아천충을 쏘아낸다.|n강화시 대상 출혈")
            elseif i == 3 then
                call DzFrameSetText(DzFrameFindByName("Select_CharacterPreview_SkillListSkillName", 0), "|CFFFFCC00무월|r")
                call DzFrameSetText(DzFrameFindByName("Select_CharacterPreview_SkillListSkillDescription", 0), "잠재능력을 모두 해방시켜 참격을 발사합니다.|n강화시 출혈효과 폭발 추가데미지")
            endif
        elseif GetLastClickCharacterSlotIndex() == 1 then
            if i == 0 then
                call DzFrameSetText(DzFrameFindByName("Select_CharacterPreview_SkillListSkillName", 0), "|CFFFFCC00특성스킬|r")
                call DzFrameSetText(DzFrameFindByName("Select_CharacterPreview_SkillListSkillDescription", 0), "영하 18도 - 주변 적을 베고 빙결|n변신류 - 적 공속 감소, 아군 공속 증가")
            elseif i == 1 then
                call DzFrameSetText(DzFrameFindByName("Select_CharacterPreview_SkillListSkillName", 0), "|CFFFFCC00시작의 춤, 월백|r")
                call DzFrameSetText(DzFrameFindByName("Select_CharacterPreview_SkillListSkillDescription", 0), "주변을 속박시키고 표식을 생성합니다.|n표식을 생성하고, 다른 스킬로 추가효과 가능")
            elseif i == 2 then
                call DzFrameSetText(DzFrameFindByName("Select_CharacterPreview_SkillListSkillName", 0), "|CFFFFCC00다음의 춤, 백련|r")
                call DzFrameSetText(DzFrameFindByName("Select_CharacterPreview_SkillListSkillDescription", 0), "춤을 추고, 주변 방해효과 폭발시켜 데미지를 가함.|n강화시 표식을 폭발시켜 추가데미지")
            elseif i == 3 then
                call DzFrameSetText(DzFrameFindByName("Select_CharacterPreview_SkillListSkillName", 0), "|CFFFFCC00세번째 춤, 백도|r")
                call DzFrameSetText(DzFrameFindByName("Select_CharacterPreview_SkillListSkillDescription", 0), "상대를 관통시켜 얼립니다.|n일직선상으로 냉기를 뿜어내, 적에게 데미지를 가함.|n강화시 오한에 걸린 적 관통")
            endif
        elseif GetLastClickCharacterSlotIndex() == 2 then
            if i == 0 then
                call DzFrameSetText(DzFrameFindByName("Select_CharacterPreview_SkillListSkillName", 0), "|CFFFFCC00특성스킬|r")
                call DzFrameSetText(DzFrameFindByName("Select_CharacterPreview_SkillListSkillDescription", 0), "은통 - 저장된 은통으로 마나회복 혹은 스킬사용 함.|n산령수투 - 공격시 영압 소모해 추가데미지")
            elseif i == 1 then
                call DzFrameSetText(DzFrameFindByName("Select_CharacterPreview_SkillListSkillName", 0), "|CFFFFCC00하일리히 프파일|r")
                call DzFrameSetText(DzFrameFindByName("Select_CharacterPreview_SkillListSkillDescription", 0), "퀸시의 영자병장, 빛의 화살로 데미지를 가함.|n강화시 추가데미지")
            elseif i == 2 then
                call DzFrameSetText(DzFrameFindByName("Select_CharacterPreview_SkillListSkillName", 0), "|CFFFFCC00리히트레겐|r")
                call DzFrameSetText(DzFrameFindByName("Select_CharacterPreview_SkillListSkillDescription", 0), "넓은 범위에 화살을 쏘아서 광역 공격을 함.|n강화시 광역 대상 추가데미지")
            elseif i == 3 then
                call DzFrameSetText(DzFrameFindByName("Select_CharacterPreview_SkillListSkillName", 0), "|CFFFFCC00슈프렝거|r")
                call DzFrameSetText(DzFrameFindByName("Select_CharacterPreview_SkillListSkillDescription", 0), "퀸시 크로스 진에 농축 영자를 폭발시켜 속박&데미지.|n강화시 속박대신 스턴")
            endif
        elseif GetLastClickCharacterSlotIndex() == 3 then
            if i == 0 then
                call DzFrameSetText(DzFrameFindByName("Select_CharacterPreview_SkillListSkillName", 0), "|CFFFFCC00특성스킬|r")
                call DzFrameSetText(DzFrameFindByName("Select_CharacterPreview_SkillListSkillDescription", 0), "사상의거절 - 주변 쿨다운 감소 10%|n더블캐스팅 - 스킬이 콤보로 변경되어, 추가효과 적용.")
            elseif i == 1 then
                call DzFrameSetText(DzFrameFindByName("Select_CharacterPreview_SkillListSkillName", 0), "|CFFFFCC00츠바키(고천참순)|r")
                call DzFrameSetText(DzFrameFindByName("Select_CharacterPreview_SkillListSkillDescription", 0), "츠바키를 날려 최대체력에 비례한 데미지를 가함.|n강화시 출혈 및 최대체력 추가데미지")
            elseif i == 2 then
                call DzFrameSetText(DzFrameFindByName("Select_CharacterPreview_SkillListSkillName", 0), "|CFFFFCC00쌍천귀순|r")
                call DzFrameSetText(DzFrameFindByName("Select_CharacterPreview_SkillListSkillDescription", 0), "슌오우(벚꽃)+아야메(붓꽃), 퀵슬롯 등록해 사용.|n매 초마다 주변의 잃은 체력을 회복합니다.")
            elseif i == 3 then
                call DzFrameSetText(DzFrameFindByName("Select_CharacterPreview_SkillListSkillName", 0), "|CFFFFCC00삼천결순|r")
                call DzFrameSetText(DzFrameFindByName("Select_CharacterPreview_SkillListSkillDescription", 0), "히나기쿠+바이곤+리리, 퀵슬롯에 등록해 사용.|n삼각형 방패로 외부 공격 거절, 의지에 따라 방어력 상승.")
            endif
        elseif GetLastClickCharacterSlotIndex() == 4 then
            if i == 0 then
                call DzFrameSetText(DzFrameFindByName("Select_CharacterPreview_SkillListSkillName", 0), "|CFFFFCC00특성스킬|r")
                call DzFrameSetText(DzFrameFindByName("Select_CharacterPreview_SkillListSkillDescription", 0), "슌센벤, 박치기 등 추가스킬|n변신류 - 이동속도와 데미지 증가")
            elseif i == 1 then
                call DzFrameSetText(DzFrameFindByName("Select_CharacterPreview_SkillListSkillName", 0), "|CFFFFCC00사미환|r")
                call DzFrameSetText(DzFrameFindByName("Select_CharacterPreview_SkillListSkillDescription", 0), "전방을 향해 검을 휘두르고, 조각을 남깁니다.|n강화시 출혈효과 및 범위 증가")
            elseif i == 2 then
                call DzFrameSetText(DzFrameFindByName("Select_CharacterPreview_SkillListSkillName", 0), "|CFFFFCC00비아절교|r")
                call DzFrameSetText(DzFrameFindByName("Select_CharacterPreview_SkillListSkillDescription", 0), "주변 조각을 쏘아붙여 공격합니다. 조각당 데미지 증가|n강화시 마비(누적시 스턴) 추가")
            elseif i == 3 then
                call DzFrameSetText(DzFrameFindByName("Select_CharacterPreview_SkillListSkillName", 0), "|CFFFFCC00비골대포|r")
                call DzFrameSetText(DzFrameFindByName("Select_CharacterPreview_SkillListSkillDescription", 0), "영압덩어리를 발사해 상대를 밀어냅니다.|n강화시 화상적용, 상위스킬 시아철포")
            endif
        elseif GetLastClickCharacterSlotIndex() == 5 then
            if i == 0 then
                call DzFrameSetText(DzFrameFindByName("Select_CharacterPreview_SkillListSkillName", 0), "|CFFFFCC00특성스킬|r")
                call DzFrameSetText(DzFrameFindByName("Select_CharacterPreview_SkillListSkillDescription", 0), "대쉬 - 브링거 라이트|n변신류 - 적 방어 감소, 본인 방어 증가")
            elseif i == 1 then
                call DzFrameSetText(DzFrameFindByName("Select_CharacterPreview_SkillListSkillName", 0), "|CFFFFCC00엘디렉토|r")
                call DzFrameSetText(DzFrameFindByName("Select_CharacterPreview_SkillListSkillDescription", 0), "전방에 주먹으로 영압을 발사해 데미지를 가함.|n강화시 범위 증가 및 쿨다운 감소")
            elseif i == 2 then
                call DzFrameSetText(DzFrameFindByName("Select_CharacterPreview_SkillListSkillName", 0), "|CFFFFCC00슬래머|r")
                call DzFrameSetText(DzFrameFindByName("Select_CharacterPreview_SkillListSkillDescription", 0), "지면을 강타해 지진으로 적들을 둔화시킴.|n강화시 범위 증가 및 넉백 적용")
            elseif i == 3 then
                call DzFrameSetText(DzFrameFindByName("Select_CharacterPreview_SkillListSkillName", 0), "|CFFFFCC00방어|r")
                call DzFrameSetText(DzFrameFindByName("Select_CharacterPreview_SkillListSkillDescription", 0), "방어 자세를 취해, 일정시간 피해를 감소시킵니다.|n강화시 자동시전")
            endif
        endif
    endmethod

    // 스킬 아이콘에 마우스를 퇴장 시 이벤트 함수를 실행한다
    private static method OnMouseLeaveSkillIcon takes nothing returns nothing
        call DzFrameSetText(DzFrameFindByName("Select_CharacterPreview_SkillListSkillName", 0), "|CFFFFCC00캐릭터 스킬 |CFFFF8000미리보기")
        call DzFrameSetText(DzFrameFindByName("Select_CharacterPreview_SkillListSkillDescription", 0), "위에 있는 |CFFFF8000아이콘|r에 마우스를 대면,|n캐릭터가 가진 |CFFFF8000스킬|r을 확인할 수 있습니다.")
    endmethod


    // 캐릭터 슬롯 클릭 시 이벤트 함수를 실행한다
    private static method OnCharacterSlotClick takes nothing returns nothing
        local integer i = 0
        
        // 이벤트를 작동시킨 프레임 탐색
        loop
            exitwhen i > 5
            if DzGetTriggerUIEventFrame() == DzFrameFindByName("Select_CharacterSlot_Backdrop", i) then
                exitwhen true
            endif
            set i = i + 1
        endloop
        
        // 프레임을 못찾을 시 즉시 종료
        if i > 5 then
            return
        endif
        
        // 캐릭터 슬롯 체크 표시 갱신
        call DzFrameShow(DzFrameFindByName("Select_CharacterSlot_Check", g_LastClickCharacterSlotIndex), false)
        call DzFrameShow(DzFrameFindByName("Select_CharacterSlot_Check", i), true)
        set g_LastClickCharacterSlotIndex = i
        
        // 대응 유닛 선택
        call ClearSelection()
        call thistype.OnUnitSelect(i)
    endmethod

    // 캐릭터 선택 프레임을 생성한다
    private static method CreateSelectFrame takes nothing returns nothing
        local integer createFrame = 0
        local integer refFrame = 0
        local integer i = 0
        
        // 부모 프레임 설정 (추후 캐릭터 선택 프레임을 숨겨줄 경우 이 프레임을 숨겨주시면 됩니당)
        set g_Parent = DzCreateFrameByTagName("SPRITE", "", DzGetGameUI(), "", 0)
        
        if ( GetRandomReal(0., 99.) <= 33. ) then
            set refFrame = MakeText(g_Parent, JN_FRAMEPOINT_CENTER, JN_FRAMEPOINT_BOTTOMLEFT, .4, .55, .038, "|cffFF7CBFThe Only My Own RPG")
        elseif ( GetRandomReal(0., 66.) <= 33. ) then
            set refFrame = MakeText(g_Parent, JN_FRAMEPOINT_CENTER, JN_FRAMEPOINT_BOTTOMLEFT, .4, .55, .038, "|cff28FF0DThe Only My Own RPG")
        else
            set refFrame = MakeText(g_Parent, JN_FRAMEPOINT_CENTER, JN_FRAMEPOINT_BOTTOMLEFT, .4, .55, .038, "|cff0085FFThe Only My Own RPG")
        endif
        set createFrame = MakeText(refFrame, JN_FRAMEPOINT_TOPRIGHT, JN_FRAMEPOINT_BOTTOMRIGHT, 0., 0., 0136, "나만의 알피지")
        call DzFrameSetTexture(createFrame, "ui\\Title-R.blp", 0)

        // TOC 파일 로드
        call DzLoadToc("UI\\Select.toc")
        
        // 캐릭터 정보
        set createFrame = DzCreateFrame("Select_CharacterInformation_Backdrop", g_Parent, 0)
        call DzFrameSetAbsolutePoint(createFrame, JN_FRAMEPOINT_CENTER, 0.14, 0.32)
        call DzFrameShow(createFrame, false)
        
        // 캐릭터 정보 별
        loop
        exitwhen i > 4
            set refFrame = DzFrameFindByName("Select_CharacterInformation_AttackBackdrop", 0)
            set createFrame = DzCreateFrame("Select_CharacterInformation_Stars", refFrame, i)
            call DzFrameSetPoint(createFrame, JN_FRAMEPOINT_CENTER, refFrame, JN_FRAMEPOINT_LEFT, 0.0735 + i * 0.018, 0.0)
            set refFrame = DzFrameFindByName("Select_CharacterInformation_DefenceBackdrop", 0)
            set createFrame = DzCreateFrame("Select_CharacterInformation_Stars", refFrame, i + 5)
            call DzFrameSetPoint(createFrame, JN_FRAMEPOINT_CENTER, refFrame, JN_FRAMEPOINT_LEFT, 0.0735 + i * 0.018, 0.0)
            set refFrame = DzFrameFindByName("Select_CharacterInformation_SupportBackdrop", 0)
            set createFrame = DzCreateFrame("Select_CharacterInformation_Stars", refFrame, i + 10)
            call DzFrameSetPoint(createFrame, JN_FRAMEPOINT_CENTER, refFrame, JN_FRAMEPOINT_LEFT, 0.0735 + i * 0.018, 0.0)
            set refFrame = DzFrameFindByName("Select_CharacterInformation_DisturbBackdrop", 0)
            set createFrame = DzCreateFrame("Select_CharacterInformation_Stars", refFrame, i + 15)
            call DzFrameSetPoint(createFrame, JN_FRAMEPOINT_CENTER, refFrame, JN_FRAMEPOINT_LEFT, 0.0735 + i * 0.018, 0.0)
            set refFrame = DzFrameFindByName("Select_CharacterInformation_DifficultBackdrop", 0)
            set createFrame = DzCreateFrame("Select_CharacterInformation_Stars", refFrame, i + 20)
            call DzFrameSetPoint(createFrame, JN_FRAMEPOINT_CENTER, refFrame, JN_FRAMEPOINT_LEFT, 0.0735 + i * 0.018, 0.0)
            
            set i = i + 1
        endloop
        
        // 캐릭터 미리보기
        set createFrame = DzCreateFrame("Select_CharacterPreview_Backdrop", g_Parent, 0)
        call DzFrameSetAbsolutePoint(createFrame, JN_FRAMEPOINT_CENTER, 0.7, 0.315)
        call DzFrameShow(createFrame, false)
        
        // 캐릭터 미리보기 스킬 아이콘
        set refFrame = DzFrameFindByName("Select_CharacterPreview_SkillListBackdrop", 0)
        set i = 0
        loop
        exitwhen i > 3
            set createFrame = DzCreateFrame("Select_CharacterPreview_SkillListSkillIcon", refFrame, i)
            call DzFrameSetPoint(createFrame, JN_FRAMEPOINT_CENTER, refFrame, JN_FRAMEPOINT_CENTER, -0.065 + 0.0435 * i, -0.0325)
            call DzFrameSetScriptByCode(createFrame, JN_FRAMEEVENT_MOUSE_ENTER, function thistype.OnMouseEnterSkillIcon, false)
            set i = i + 1
        endloop
        
        // 캐릭터 미리보기 스킬 아이콘 영역에서 마우스가 나갈 시 스킬 이름/설명 되돌림
        call DzFrameSetScriptByCode(DzFrameFindByName("Select_CharacterPreview_MouseLeaveEventCheckButton", 0), JN_FRAMEEVENT_MOUSE_LEAVE, function thistype.OnMouseLeaveSkillIcon, false)
        
        // 캐릭터 슬롯
        set i = 0
        loop
        exitwhen i > 5
            set createFrame = DzCreateFrame("Select_CharacterSlot_Backdrop", g_Parent, i)
            call DzFrameSetAbsolutePoint(createFrame, JN_FRAMEPOINT_CENTER, 0.08 + i * 0.13, 0.1)
            call DzFrameShow(DzFrameFindByName("Select_CharacterSlot_Check", i), false)
            call DzFrameSetEnable(DzFrameFindByName("Select_CharacterSlot_CharacterName", i), false)
            call DzFrameSetEnable(DzFrameFindByName("Select_CharacterSlot_CharacterStatus", i), false)
            call DzFrameSetScriptByCode(createFrame, JN_FRAMEEVENT_CONTROL_CLICK, function thistype.OnCharacterSlotClick, false)
            set i = i + 1
        endloop
        
        // 초기 설정
        call DzFrameSetText(DzFrameFindByName("Select_CharacterPreview_SkillListSkillName", 0), "|CFFFFCC00캐릭터 스킬 |CFFFF8000미리보기")
        call DzFrameSetText(DzFrameFindByName("Select_CharacterPreview_SkillListSkillDescription", 0), "위에 있는 |CFFFF8000아이콘|r에 마우스를 대면,|n캐릭터가 가진 |CFFFF8000스킬|r을 확인할 수 있습니다.")
        call DzFrameSetText(DzFrameFindByName("Select_CharacterSlot_CharacterName", 0), "이치고 Lv.1")
        call DzFrameSetText(DzFrameFindByName("Select_CharacterSlot_CharacterName", 1), "루키아 (신규)")
        call DzFrameSetText(DzFrameFindByName("Select_CharacterSlot_CharacterName", 2), "우류 (신규)")
        call DzFrameSetText(DzFrameFindByName("Select_CharacterSlot_CharacterName", 3), "오리히메 (신규)")
        call DzFrameSetText(DzFrameFindByName("Select_CharacterSlot_CharacterName", 4), "렌지 (신규)")
        call DzFrameSetText(DzFrameFindByName("Select_CharacterSlot_CharacterName", 5), "야스토라 (신규)")
        call DzFrameSetFont(DzFrameFindByName("Select_CharacterSlot_CharacterStatus", 0), "Fonts\\DFHeiMd.ttf", 0.013, 0)
        call DzFrameSetText(DzFrameFindByName("Select_CharacterSlot_CharacterStatus", 0), "이어하기")
        call DzFrameSetText(DzFrameFindByName("Select_CharacterSlot_CharacterStatus", 1), "미리보기")
        call DzFrameSetText(DzFrameFindByName("Select_CharacterSlot_CharacterStatus", 2), "미리보기")
        call DzFrameSetText(DzFrameFindByName("Select_CharacterSlot_CharacterStatus", 3), "미리보기")
        call DzFrameSetText(DzFrameFindByName("Select_CharacterSlot_CharacterStatus", 4), "미리보기")
        call DzFrameSetText(DzFrameFindByName("Select_CharacterSlot_CharacterStatus", 5), "미리보기")
    endmethod

    static method ApplySlotContinue takes player whichPlayer, integer slotIndex returns nothing
        local integer pid = GetPlayerId(whichPlayer) + 1
        local boolean isContinue = 0 < S2I(JNStringSplit(JNStringSplit(LoadStr(hash, pid, StringHash("Data")), "/", NowSelect[pid]), "'", 1))
        local boolean isBlueType = slotIndex == 1 or slotIndex == 2 or slotIndex == 3
        local string colorString = "Red"
        if isBlueType then
            set colorString = "Blue"
        endif

        if ( isContinue ) then
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_StartButtonA", 0), "UI\\Select_CharacterPreview_ContinueButton" + colorString + ".tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_StartButtonB", 0), "UI\\Select_CharacterPreview_ContinueButton" + colorString + ".tga", 0)
        else
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_StartButtonA", 0), "UI\\Select_CharacterPreview_StartButton" + colorString + ".tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_StartButtonB", 0), "UI\\Select_CharacterPreview_StartButton" + colorString + ".tga", 0)
        endif

        // 캐릭터 슬롯 체크 표시 갱신
        call DzFrameShow(DzFrameFindByName("Select_CharacterSlot_Check", Select.GetLastClickCharacterSlotIndex()), false)
        call Select.SetLastClickCharacterSlotIndex(slotIndex)
        call DzFrameShow(DzFrameFindByName("Select_CharacterSlot_Check", slotIndex), true)
    endmethod

    private static method CameraBounds takes real x, real y returns nothing
        call SetCameraBounds(x, y, x, y, x, y, x, y)
    endmethod

    private static method InitCamera takes nothing returns nothing
        call SetCameraField(CAMERA_FIELD_ROTATION, 90., 0.)
        call SetCameraField(CAMERA_FIELD_ANGLE_OF_ATTACK, 325., 0.)
        call SetCameraField(CAMERA_FIELD_TARGET_DISTANCE, 1024, 0.)
        call SetCameraField(CAMERA_FIELD_FIELD_OF_VIEW, 70., 0.)
        call SetCameraField(CAMERA_FIELD_FARZ, 5000., 0.)

        call CameraBounds(FRAME_DEFAULT_X, FRAME_DEFAULT_Y)
    endmethod

    // 리픽
    static method SetRepick takes player whichiPlayer returns nothing
        local integer pid = GetPlayerId(whichiPlayer) + 1
        call Select.SetLastClickCharacterSlotIndex(-1)
        set isSelecting[pid] = true

        call PlayerResource[pid].character.Remove()
        if ( GetLocalPlayer() == whichiPlayer ) then
            call InitCamera()
            call DzFrameShow(DzFrameFindByName("Select_CharacterInformation_Backdrop", 0), true)
            call DzFrameShow(DzFrameFindByName("Select_CharacterPreview_Backdrop", 0), true)
            call DzFrameShow(DzFrameGetMinimap(), false)
        endif
    endmethod

    static method OnUnitSelect takes integer slotIndex returns nothing
        local string colorString = ""
        
        // 쿠로사키 이치고 선택
        if slotIndex == 0 then
            // 캐릭터 정보
            call DzFrameSetText(DzFrameFindByName("Select_CharacterInformation_Title", 0), "Ichigo Kurosaki")
            call DzFrameSetText(DzFrameFindByName("Select_CharacterInformation_CharacterName", 0), "쿠로사키 이치고")
            call DzFrameSetText(DzFrameFindByName("Select_CharacterInformation_Description", 0), "주인공. 유령을 보는 고교생.|n카라쿠라 마을의 사신대행.")
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 0), "UI\\Select_CharacterInformation_Stars1.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 1), "UI\\Select_CharacterInformation_Stars1.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 2), "UI\\Select_CharacterInformation_Stars1.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 3), "UI\\Select_CharacterInformation_Stars1.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 4), "UI\\Select_CharacterInformation_Stars0.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 5), "UI\\Select_CharacterInformation_Stars1.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 6), "UI\\Select_CharacterInformation_Stars1.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 7), "UI\\Select_CharacterInformation_Stars0.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 8), "UI\\Select_CharacterInformation_Stars0.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 9), "UI\\Select_CharacterInformation_Stars0.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 10), "UI\\Select_CharacterInformation_Stars1.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 11), "UI\\Select_CharacterInformation_Stars1.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 12), "UI\\Select_CharacterInformation_Stars0.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 13), "UI\\Select_CharacterInformation_Stars0.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 14), "UI\\Select_CharacterInformation_Stars0.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 15), "UI\\Select_CharacterInformation_Stars1.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 16), "UI\\Select_CharacterInformation_Stars1.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 17), "UI\\Select_CharacterInformation_Stars1.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 18), "UI\\Select_CharacterInformation_Stars0.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 19), "UI\\Select_CharacterInformation_Stars0.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 20), "UI\\Select_CharacterInformation_Stars2.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 21), "UI\\Select_CharacterInformation_Stars2.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 22), "UI\\Select_CharacterInformation_Stars0.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 23), "UI\\Select_CharacterInformation_Stars0.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 24), "UI\\Select_CharacterInformation_Stars0.tga", 0)
            // 캐릭터 미리보기
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_Backdrop", 0), "UI\\Select_CharacterPreview_BackdropRed.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_Title", 0), "UI\\Select_CharacterPreview_TitleRed.tga", 0)
            call DzFrameSetText(DzFrameFindByName("Select_CharacterPreview_DamageTypeText", 0), "|CFFFF8000근접 물리 |CFFFFCC00[힘]|r")
            call DzFrameSetText(DzFrameFindByName("Select_CharacterPreview_WeaponTypeText", 0), "참백도(참월)")
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_SkillListSkillIconA", 0), "SkillTree_ichi_00.blp", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_SkillListSkillIconB", 0), "SkillTree_ichi_00.blp", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_SkillListSkillIconA", 1), "SkillTree_ichi_05.blp", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_SkillListSkillIconB", 1), "SkillTree_ichi_05.blp", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_SkillListSkillIconA", 2), "SkillTree_ichi_06.blp", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_SkillListSkillIconB", 2), "SkillTree_ichi_06.blp", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_SkillListSkillIconA", 3), "SkillTree_ichi_11.blp", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_SkillListSkillIconB", 3), "SkillTree_ichi_11.blp", 0)
            set colorString = "Red"
        // 쿠치키 루키아 선택
        elseif slotIndex == 1 then
            // 캐릭터 정보
            call DzFrameSetText(DzFrameFindByName("Select_CharacterInformation_Title", 0), "Rukia Kuchiki")
            call DzFrameSetText(DzFrameFindByName("Select_CharacterInformation_CharacterName", 0), "쿠치키 루키아")
            call DzFrameSetText(DzFrameFindByName("Select_CharacterInformation_Description", 0), "더블 주인공이자 여주인공.|n학교 성적은 국어 빼고 최하위.")
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 0), "UI\\Select_CharacterInformation_Stars1.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 1), "UI\\Select_CharacterInformation_Stars1.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 2), "UI\\Select_CharacterInformation_Stars1.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 3), "UI\\Select_CharacterInformation_Stars0.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 4), "UI\\Select_CharacterInformation_Stars0.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 5), "UI\\Select_CharacterInformation_Stars1.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 6), "UI\\Select_CharacterInformation_Stars1.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 7), "UI\\Select_CharacterInformation_Stars1.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 8), "UI\\Select_CharacterInformation_Stars0.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 9), "UI\\Select_CharacterInformation_Stars0.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 10), "UI\\Select_CharacterInformation_Stars1.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 11), "UI\\Select_CharacterInformation_Stars1.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 12), "UI\\Select_CharacterInformation_Stars1.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 13), "UI\\Select_CharacterInformation_Stars0.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 14), "UI\\Select_CharacterInformation_Stars0.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 15), "UI\\Select_CharacterInformation_Stars1.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 16), "UI\\Select_CharacterInformation_Stars1.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 17), "UI\\Select_CharacterInformation_Stars1.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 18), "UI\\Select_CharacterInformation_Stars1.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 19), "UI\\Select_CharacterInformation_Stars1.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 20), "UI\\Select_CharacterInformation_Stars2.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 21), "UI\\Select_CharacterInformation_Stars2.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 22), "UI\\Select_CharacterInformation_Stars2.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 23), "UI\\Select_CharacterInformation_Stars2.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 24), "UI\\Select_CharacterInformation_Stars0.tga", 0)
            // 캐릭터 미리보기
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_Backdrop", 0), "UI\\Select_CharacterPreview_BackdropBlue.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_Title", 0), "UI\\Select_CharacterPreview_TitleBlue.tga", 0)
            call DzFrameSetText(DzFrameFindByName("Select_CharacterPreview_DamageTypeText", 0), "|CFF0080C0근접 마법 |CFFFFCC00[기술]|r")
            call DzFrameSetText(DzFrameFindByName("Select_CharacterPreview_WeaponTypeText", 0), "귀도&참백도(수백설)")
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_SkillListSkillIconA", 0), "SkillTree_rukia_00.blp", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_SkillListSkillIconB", 0), "SkillTree_rukia_00.blp", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_SkillListSkillIconA", 1), "SkillTree_rukia_02.blp", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_SkillListSkillIconB", 1), "SkillTree_rukia_02.blp", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_SkillListSkillIconA", 2), "SkillTree_rukia_03.blp", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_SkillListSkillIconB", 2), "SkillTree_rukia_03.blp", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_SkillListSkillIconA", 3), "SkillTree_rukia_04.blp", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_SkillListSkillIconB", 3), "SkillTree_rukia_04.blp", 0)
            set colorString = "Blue"
        // 이시다 우류 선택
        elseif slotIndex == 2 then
            // 캐릭터 정보
            call DzFrameSetText(DzFrameFindByName("Select_CharacterInformation_Title", 0), "Uryu Ishida")
            call DzFrameSetText(DzFrameFindByName("Select_CharacterInformation_CharacterName", 0), "이시다 우류")
            call DzFrameSetText(DzFrameFindByName("Select_CharacterInformation_Description", 0), "이치고와 같은 학교, 전교 석차 1위.|n호로를 멸하는 퀸시의 후예.")
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 0), "UI\\Select_CharacterInformation_Stars1.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 1), "UI\\Select_CharacterInformation_Stars1.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 2), "UI\\Select_CharacterInformation_Stars1.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 3), "UI\\Select_CharacterInformation_Stars1.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 4), "UI\\Select_CharacterInformation_Stars1.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 5), "UI\\Select_CharacterInformation_Stars0.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 6), "UI\\Select_CharacterInformation_Stars0.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 7), "UI\\Select_CharacterInformation_Stars0.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 8), "UI\\Select_CharacterInformation_Stars0.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 9), "UI\\Select_CharacterInformation_Stars0.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 10), "UI\\Select_CharacterInformation_Stars1.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 11), "UI\\Select_CharacterInformation_Stars0.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 12), "UI\\Select_CharacterInformation_Stars0.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 13), "UI\\Select_CharacterInformation_Stars0.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 14), "UI\\Select_CharacterInformation_Stars0.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 15), "UI\\Select_CharacterInformation_Stars1.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 16), "UI\\Select_CharacterInformation_Stars1.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 17), "UI\\Select_CharacterInformation_Stars0.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 18), "UI\\Select_CharacterInformation_Stars0.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 19), "UI\\Select_CharacterInformation_Stars0.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 20), "UI\\Select_CharacterInformation_Stars2.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 21), "UI\\Select_CharacterInformation_Stars2.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 22), "UI\\Select_CharacterInformation_Stars2.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 23), "UI\\Select_CharacterInformation_Stars0.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 24), "UI\\Select_CharacterInformation_Stars0.tga", 0)
            // 캐릭터 미리보기
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_Backdrop", 0), "UI\\Select_CharacterPreview_BackdropRed.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_Title", 0), "UI\\Select_CharacterPreview_TitleRed.tga", 0)
            call DzFrameSetText(DzFrameFindByName("Select_CharacterPreview_DamageTypeText", 0), "|CFFFF8000원거리 물리 |CFFFFCC00[속도]|r")
            call DzFrameSetText(DzFrameFindByName("Select_CharacterPreview_WeaponTypeText", 0), "영자병장(은령호작)")
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_SkillListSkillIconA", 0), "SkillTree_Uryu_01.blp", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_SkillListSkillIconB", 0), "SkillTree_Uryu_01.blp", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_SkillListSkillIconA", 1), "SkillTree_Uryu_02.blp", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_SkillListSkillIconB", 1), "SkillTree_Uryu_02.blp", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_SkillListSkillIconA", 2), "SkillTree_Uryu_06.blp", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_SkillListSkillIconB", 2), "SkillTree_Uryu_06.blp", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_SkillListSkillIconA", 3), "SkillTree_Uryu_13.blp", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_SkillListSkillIconB", 3), "SkillTree_Uryu_13.blp", 0)
            set colorString = "Blue"
        // 이노우에 오리히메 선택
        elseif slotIndex == 3 then
            // 캐릭터 정보
            call DzFrameSetText(DzFrameFindByName("Select_CharacterInformation_Title", 0), "Orihime Inoue")
            call DzFrameSetText(DzFrameFindByName("Select_CharacterInformation_CharacterName", 0), "이노우에 오리히메")
            call DzFrameSetText(DzFrameFindByName("Select_CharacterInformation_Description", 0), "히로인, 기계치이자 돌머리.|n머리핀(순순육화)을 항상 착용하고 다님.")
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 0), "UI\\Select_CharacterInformation_Stars1.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 1), "UI\\Select_CharacterInformation_Stars1.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 2), "UI\\Select_CharacterInformation_Stars0.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 3), "UI\\Select_CharacterInformation_Stars0.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 4), "UI\\Select_CharacterInformation_Stars0.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 5), "UI\\Select_CharacterInformation_Stars1.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 6), "UI\\Select_CharacterInformation_Stars1.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 7), "UI\\Select_CharacterInformation_Stars1.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 8), "UI\\Select_CharacterInformation_Stars1.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 9), "UI\\Select_CharacterInformation_Stars1.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 10), "UI\\Select_CharacterInformation_Stars1.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 11), "UI\\Select_CharacterInformation_Stars1.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 12), "UI\\Select_CharacterInformation_Stars1.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 13), "UI\\Select_CharacterInformation_Stars1.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 14), "UI\\Select_CharacterInformation_Stars1.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 15), "UI\\Select_CharacterInformation_Stars1.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 16), "UI\\Select_CharacterInformation_Stars1.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 17), "UI\\Select_CharacterInformation_Stars0.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 18), "UI\\Select_CharacterInformation_Stars0.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 19), "UI\\Select_CharacterInformation_Stars0.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 20), "UI\\Select_CharacterInformation_Stars2.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 21), "UI\\Select_CharacterInformation_Stars2.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 22), "UI\\Select_CharacterInformation_Stars2.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 23), "UI\\Select_CharacterInformation_Stars2.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 24), "UI\\Select_CharacterInformation_Stars2.tga", 0)
            // 캐릭터 미리보기
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_Backdrop", 0), "UI\\Select_CharacterPreview_BackdropBlue.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_Title", 0), "UI\\Select_CharacterPreview_TitleBlue.tga", 0)
            call DzFrameSetText(DzFrameFindByName("Select_CharacterPreview_DamageTypeText", 0), "|CFF0080C0원거리 마법 |CFFFFCC00[마음]|r")
            call DzFrameSetText(DzFrameFindByName("Select_CharacterPreview_WeaponTypeText", 0), "머리핀(순순육화)")
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_SkillListSkillIconA", 0), "SkillTree_Inooue_21.blp", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_SkillListSkillIconB", 0), "SkillTree_Inooue_21.blp", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_SkillListSkillIconA", 1), "SkillTree_Inooue_01.blp", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_SkillListSkillIconB", 1), "SkillTree_Inooue_01.blp", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_SkillListSkillIconA", 2), "SkillTree_Inooue_12.blp", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_SkillListSkillIconB", 2), "SkillTree_Inooue_12.blp", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_SkillListSkillIconA", 3), "SkillTree_Inooue_13.blp", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_SkillListSkillIconB", 3), "SkillTree_Inooue_13.blp", 0)
            set colorString = "Blue"
        // 아바라이 렌지 선택
        elseif slotIndex == 4 then
            // 캐릭터 정보
            call DzFrameSetText(DzFrameFindByName("Select_CharacterInformation_Title", 0), "Renji Abarai")
            call DzFrameSetText(DzFrameFindByName("Select_CharacterInformation_CharacterName", 0), "아바라이 렌지")
            call DzFrameSetText(DzFrameFindByName("Select_CharacterInformation_Description", 0), "호정 13대의 6번대 부대장.|n루키아와 소꿉친구이며 이치고와 대립.")
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 0), "UI\\Select_CharacterInformation_Stars1.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 1), "UI\\Select_CharacterInformation_Stars1.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 2), "UI\\Select_CharacterInformation_Stars1.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 3), "UI\\Select_CharacterInformation_Stars1.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 4), "UI\\Select_CharacterInformation_Stars0.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 5), "UI\\Select_CharacterInformation_Stars1.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 6), "UI\\Select_CharacterInformation_Stars1.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 7), "UI\\Select_CharacterInformation_Stars0.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 8), "UI\\Select_CharacterInformation_Stars0.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 9), "UI\\Select_CharacterInformation_Stars0.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 10), "UI\\Select_CharacterInformation_Stars1.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 11), "UI\\Select_CharacterInformation_Stars0.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 12), "UI\\Select_CharacterInformation_Stars0.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 13), "UI\\Select_CharacterInformation_Stars0.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 14), "UI\\Select_CharacterInformation_Stars0.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 15), "UI\\Select_CharacterInformation_Stars1.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 16), "UI\\Select_CharacterInformation_Stars1.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 17), "UI\\Select_CharacterInformation_Stars1.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 18), "UI\\Select_CharacterInformation_Stars1.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 19), "UI\\Select_CharacterInformation_Stars0.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 20), "UI\\Select_CharacterInformation_Stars2.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 21), "UI\\Select_CharacterInformation_Stars2.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 22), "UI\\Select_CharacterInformation_Stars2.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 23), "UI\\Select_CharacterInformation_Stars2.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 24), "UI\\Select_CharacterInformation_Stars0.tga", 0)
            // 캐릭터 미리보기
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_Backdrop", 0), "UI\\Select_CharacterPreview_BackdropRed.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_Title", 0), "UI\\Select_CharacterPreview_TitleRed.tga", 0)
            call DzFrameSetText(DzFrameFindByName("Select_CharacterPreview_DamageTypeText", 0), "|CFFFF8000근접 물리 |CFFFFCC00[기술]|r")
            call DzFrameSetText(DzFrameFindByName("Select_CharacterPreview_WeaponTypeText", 0), "참백도(사미환)")
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_SkillListSkillIconA", 0), "SkillTree_Renji_01.blp", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_SkillListSkillIconB", 0), "SkillTree_Renji_01.blp", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_SkillListSkillIconA", 1), "SkillTree_Renji_03.blp", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_SkillListSkillIconB", 1), "SkillTree_Renji_03.blp", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_SkillListSkillIconA", 2), "SkillTree_Renji_05.blp", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_SkillListSkillIconB", 2), "SkillTree_Renji_05.blp", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_SkillListSkillIconA", 3), "SkillTree_Renji_07.blp", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_SkillListSkillIconB", 3), "SkillTree_Renji_07.blp", 0)
            set colorString = "Red"
        // 사도 야스토라 선택
        elseif slotIndex == 5 then
            // 캐릭터 정보
            call DzFrameSetText(DzFrameFindByName("Select_CharacterInformation_Title", 0), "Yasutora Sado")
            call DzFrameSetText(DzFrameFindByName("Select_CharacterInformation_CharacterName", 0), "사도 야스토라")
            call DzFrameSetText(DzFrameFindByName("Select_CharacterInformation_Description", 0), "별명 차드, 멕시코 혼혈, 전교 11등.'우수한 성적과 상냥한 마음씨를 가짐.")
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 0), "UI\\Select_CharacterInformation_Stars1.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 1), "UI\\Select_CharacterInformation_Stars1.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 2), "UI\\Select_CharacterInformation_Stars1.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 3), "UI\\Select_CharacterInformation_Stars0.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 4), "UI\\Select_CharacterInformation_Stars0.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 5), "UI\\Select_CharacterInformation_Stars1.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 6), "UI\\Select_CharacterInformation_Stars1.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 7), "UI\\Select_CharacterInformation_Stars1.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 8), "UI\\Select_CharacterInformation_Stars1.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 9), "UI\\Select_CharacterInformation_Stars0.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 10), "UI\\Select_CharacterInformation_Stars1.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 11), "UI\\Select_CharacterInformation_Stars1.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 12), "UI\\Select_CharacterInformation_Stars1.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 13), "UI\\Select_CharacterInformation_Stars1.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 14), "UI\\Select_CharacterInformation_Stars0.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 15), "UI\\Select_CharacterInformation_Stars1.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 16), "UI\\Select_CharacterInformation_Stars1.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 17), "UI\\Select_CharacterInformation_Stars1.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 18), "UI\\Select_CharacterInformation_Stars0.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 19), "UI\\Select_CharacterInformation_Stars0.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 20), "UI\\Select_CharacterInformation_Stars2.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 21), "UI\\Select_CharacterInformation_Stars2.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 22), "UI\\Select_CharacterInformation_Stars0.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 23), "UI\\Select_CharacterInformation_Stars0.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", 24), "UI\\Select_CharacterInformation_Stars0.tga", 0)
            // 캐릭터 미리보기
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_Backdrop", 0), "UI\\Select_CharacterPreview_BackdropRed.tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_Title", 0), "UI\\Select_CharacterPreview_TitleRed.tga", 0)
            call DzFrameSetText(DzFrameFindByName("Select_CharacterPreview_DamageTypeText", 0), "|CFFFF8000근접 물리 |CFFFFCC00[힘]|r")
            call DzFrameSetText(DzFrameFindByName("Select_CharacterPreview_WeaponTypeText", 0), "오른팔과 왼팔")
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_SkillListSkillIconA", 0), "SkillTree_Sado_00.blp", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_SkillListSkillIconB", 0), "SkillTree_Sado_00.blp", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_SkillListSkillIconA", 1), "SkillTree_Sado_01.blp", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_SkillListSkillIconB", 1), "SkillTree_Sado_01.blp", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_SkillListSkillIconA", 2), "SkillTree_Sado_03.blp", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_SkillListSkillIconB", 2), "SkillTree_Sado_03.blp", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_SkillListSkillIconA", 3), "SkillTree_Sado_02.blp", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_SkillListSkillIconB", 3), "SkillTree_Sado_02.blp", 0)
            set colorString = "Red"
        endif
        
        if colorString != "" then
            // 캐릭터 미리보기 프레임 보여주기
            call DzFrameShow(DzFrameFindByName("Select_CharacterInformation_Backdrop", 0), true)
            call DzFrameShow(DzFrameFindByName("Select_CharacterPreview_Backdrop", 0), true)
            
            // 일부 텍스쳐 파랑/빨강 적용
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_StartButtonA", 0), "UI\\Select_CharacterPreview_StartButton" + colorString + ".tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_StartButtonB", 0), "UI\\Select_CharacterPreview_StartButton" + colorString + ".tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_DamageTypeBackdrop", 0), "UI\\Select_CharacterPreview_SubTitleBackdrop" + colorString + ".tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_WeaponTypeBackdrop", 0), "UI\\Select_CharacterPreview_SubTitleBackdrop" + colorString + ".tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_SkillListBackdrop", 0), "UI\\Select_CharacterPreview_SubTitleBackdrop" + colorString + ".tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_DamageTypeIcon", 0), "UI\\Select_CharacterPreview_DamageTypeIcon" + colorString + ".tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_WeaponTypeIcon", 0), "UI\\Select_CharacterPreview_WeaponTypeIcon" + colorString + ".tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_SkillListIcon", 0), "UI\\Select_CharacterPreview_SkillListIcon" + colorString + ".tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_DamageTypeTitle", 0), "UI\\Select_CharacterPreview_DamageTypeTitle" + colorString + ".tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_WeaponTypeTitle", 0), "UI\\Select_CharacterPreview_WeaponTypeTitle" + colorString + ".tga", 0)
            call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_SkillListTitle", 0), "UI\\Select_CharacterPreview_SkillListTitle" + colorString + ".tga", 0)
            
            // 캐릭터 슬롯 체크 표시 갱신
            call DzFrameShow(DzFrameFindByName("Select_CharacterSlot_Check", Select.GetLastClickCharacterSlotIndex()), false)
            call Select.SetLastClickCharacterSlotIndex(slotIndex)
            call DzFrameShow(DzFrameFindByName("Select_CharacterSlot_Check", slotIndex), true)
        endif
    endmethod

    private static method MakeText takes integer parent, integer point, integer point2, real x, real y, real size, string text returns integer
        local integer temp = DzCreateFrameByTagName("TEXT", "", parent, "", CountAdder())
        if ( g_Parent == 0 ) then
          call DzFrameSetFont(temp, "Fonts\\MoonEpi2.ttf", size, 0)
        else
          call DzFrameSetFont(temp, "Fonts\\DFHeiMd.ttf", size, 0)
        endif
        call DzFrameSetPoint(temp, point, parent, point2, x, y)
        call DzFrameSetText(temp, text)
        return temp
    endmethod

    // 유닛 선택 시 갱신 함수
    private static method Selected takes nothing returns nothing
        local player whichPlayer = GetTriggerPlayer()
        local integer pid = GetPlayerId(whichPlayer) + 1
        // call MsgAll("Player[" +I2S(pid)+ "] : Selected (" + I2S(NowSelect[pid]) + " -> " + I2S(ECharacter.U2I(GetTriggerUnit())) + ")")
        if ( isSelecting[pid] and 0 < ECharacter.U2I(GetTriggerUnit()) ) then
            set NowSelect[pid] = ECharacter.U2I(GetTriggerUnit())
            if ( whichPlayer == GetLocalPlayer() ) then
                call Select.ApplySlotContinue(whichPlayer, NowSelect[pid] - 1)
                call ClearSelection()
                call thistype.OnUnitSelect(NowSelect[pid] - 1)
            endif
        endif
        set whichPlayer = null
    endmethod

    private static method ButtonStart takes nothing returns nothing
        local integer playerId = GetPlayerId(DzGetTriggerUIEventPlayer()) + 1
        if ( CharacterData[NowSelect[playerId]].UnitCode == 0 ) then
            call Msg(DzGetTriggerUIEventPlayer(), "올바른 캐릭터를 선택 후, 시작하기를 눌러주세요")
        else
            
            if ( DzGetTriggerUIEventPlayer() == GetLocalPlayer() ) then
                call DzSyncData("Select", I2S(NowSelect[playerId]))

                call DzFrameShow(g_Parent, false)
                call ResetToGameCamera(0.)
                call SetCameraBoundsToRect(bj_mapInitialPlayableArea)
                call PanCameraTo(BASE_START_LOCATION_X, BASE_START_LOCATION_Y)
                call EnablePreSelect(true, true)
                call DzFrameShow(DzFrameGetMinimap(), true)
            endif
        endif
    endmethod

    private static method SendSyncedData takes nothing returns nothing
        local integer playerId = GetPlayerId(DzGetTriggerSyncPlayer()) + 1
        if udg_hero[playerId] == null then
            call Load_ExecuteAction.execute(Player(playerId - 1), S2I(DzGetTriggerSyncData()))
        endif
    endmethod

    // 함수 초기화
    private static method onInit takes nothing returns nothing
        local trigger trig = CreateTrigger()
        local integer i = 1
        call CreateSelectFrame()

        // 이벤트 등록
        call DzFrameSetScriptByCode(DzFrameFindByName("Select_CharacterPreview_StartButton", 0), JN_FRAMEEVENT_MOUSE_UP, function Select.ButtonStart, false)

        call DzTriggerRegisterSyncData(trig, "Select", false)
        call TriggerAddAction(trig, function Select.SendSyncedData)

        loop
            if ( PlayerResource[i].isPlaying ) then
                set isSelecting[i] = true
                call TriggerRegisterPlayerUnitEvent(trig, Player(i - 1), EVENT_PLAYER_UNIT_SELECTED, null)
            endif
        exitwhen MAX_PLAYER_COUNT - 1 <= i
        set i = i + 1
      endloop
      call TriggerAddAction(trig, function Select.Selected)
      set trig = null
    endmethod
endstruct
// struct OldSelect
//     private static trigger selectTrigger = CreateTrigger()
//     private static trigger deSelectTrigger = CreateTrigger()
//     private static trigger syncTrigger = CreateTrigger()

//     private static boolean array isSelecting[MAX_PLAYER_COUNT]
//     public static integer array NowSelect[MAX_PLAYER_COUNT]


//     public static constant real BASE_START_LOCATION_X = -9696.
//     public static constant real BASE_START_LOCATION_Y = 4288.

//     private static constant real FRAME_DEFAULT_X = -9664.
//     private static constant real FRAME_DEFAULT_Y = 5440.

//     // 프레임 선언
    
//     private static integer select_Main = 0
//     private static integer select_LeftPreview = 0
//     private static integer select_SkillPreview = 0

//     private static integer selectTextCharacterNameEnglish = 0
//     private static integer selectTextCharacterNameKorean = 0
//     private static integer selectTextCharacterDescription1 = 0
//     private static integer selectTextCharacterDescription2 = 0
//     private static integer selectTextCharacterDamageType = 0
//     private static integer selectTextCharacterMainWeapon = 0

//     private static integer selectBackPreviewInter = 0
//     private static integer selectTextSkillPreviewName = 0
//     private static integer selectTextSkillPreviewDescription1 = 0
//     private static integer selectTextSkillPreviewDescription2 = 0
//     private static integer selectBackStart = 0

//     private static integer array selectBackBottoms[MAX_CHARACTER_COUNT]
//     private static integer array selectBackStars[5][5]
//     private static integer array selectBackSkills[4]

//     private static integer array selectButtonBottoms[MAX_CHARACTER_COUNT]
//     private static integer array selectButtonSkills[4]

//     private static integer array selectTextBottomNameLevels[MAX_CHARACTER_COUNT]
//     private static integer array selectTextBottomPlayTimes[MAX_CHARACTER_COUNT]
//     private static integer array selectTextBottomLoadTypes[MAX_CHARACTER_COUNT]
  
//     static method SetRepick takes player p returns nothing
//       local integer pid = GetPlayerId(p) + 1
//       set isSelecting[pid] = true
//       set NowSelect[pid] = 0
      
//       call PlayerResource[pid].character.Remove()
//       if ( GetLocalPlayer() == p ) then
//         call InitCamera()
//         call DzFrameShow(DzFrameGetParent(select_Main), true)
//         call DzFrameShow(select_LeftPreview, false)
//         call DzFrameShow(select_SkillPreview, false)
//         call DzFrameShow(DzFrameGetMinimap(), false)
//       endif
//     endmethod
//     static method SetStars takes integer startnum, integer val, string texture returns nothing
//       local integer i = 0
//       loop
//         if ( val > i ) then
//           call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", startnum * 5 + val), texture, 0)
//         else
//           call DzFrameSetTexture(DzFrameFindByName("Select_CharacterInformation_Stars", startnum * 5 + val), "UI\\Select_CharacterInformation_Stars0.tga", 0)
//         endif
//         exitwhen i >= 4
//         set i = i + 1
//       endloop
//     endmethod

//     static method ViewInfo takes string s, boolean Continue returns nothing
//       // 좌측 팝업
//       // 이름 영어 설명x2
//       call DzFrameSetText(DzFrameFindByName("Select_CharacterInformation_CharacterName", 0), JNStringSplit(s, "'", 0))
//       call DzFrameSetText(DzFrameFindByName("Select_CharacterInformation_Title", 0), JNStringSplit(s, "'", 1))
//       call DzFrameSetText(DzFrameFindByName("Select_CharacterInformation_Description", 0), JNStringSplit(s, "'", 2) + "|n" + JNStringSplit(s, "'", 3))

//       // 별 설정 x25
//       call SetStars(0, S2I(JNStringSplit(s, "'", 4)), "UI\\Select_CharacterInformation_Stars1.tga")
//       call SetStars(1, S2I(JNStringSplit(s, "'", 5)), "UI\\Select_CharacterInformation_Stars1.tga")
//       call SetStars(2, S2I(JNStringSplit(s, "'", 6)), "UI\\Select_CharacterInformation_Stars1.tga")
//       call SetStars(3, S2I(JNStringSplit(s, "'", 7)), "UI\\Select_CharacterInformation_Stars1.tga")
//       call SetStars(4, S2I(JNStringSplit(s, "'", 8)), "UI\\Select_CharacterInformation_Stars2.tga")

//       // 우측 팝업
//       if ( SubString(JNStringSplit(s, "'", 9), 0, 10) == "|cffff8000" ) then
//         call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_Backdrop", 0), "UI\\Select_CharacterPreview_BackdropRed.tga", 0)
//         call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_Title", 0), "UI\\Select_CharacterPreview_TitleRed.tga", 0)
        
//         if ( Continue ) then
//             call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_StartButtonA", 0), "UI\\Select_CharacterPreview_ContinueButtonRed.tga", 0)
//             call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_StartButtonB", 0), "UI\\Select_CharacterPreview_ContinueButtonRed.tga", 0)
//         else
//             call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_StartButtonA", 0), "UI\\Select_CharacterPreview_StartButtonRed.tga", 0)
//             call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_StartButtonB", 0), "UI\\Select_CharacterPreview_StartButtonRed.tga", 0)
//         endif
//         call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_DamageTypeBackdrop", 0), "UI\\Select_CharacterPreview_SubTitleBackdropRed.tga", 0)
//         call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_WeaponTypeBackdrop", 0), "UI\\Select_CharacterPreview_SubTitleBackdropRed.tga", 0)
//       else
//         call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_Backdrop", 0), "UI\\Select_CharacterPreview_BackdropBlue.tga", 0)
//         call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_Title", 0), "UI\\Select_CharacterPreview_TitleBlue.tga", 0)
//         if ( Continue ) then
//             call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_StartButtonA", 0), "UI\\Select_CharacterPreview_ContinueButtonBlue.tga", 0)
//             call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_StartButtonB", 0), "UI\\Select_CharacterPreview_ContinueButtonBlue.tga", 0)
//         else
//             call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_StartButtonA", 0), "UI\\Select_CharacterPreview_StartButtonBlue.tga", 0)
//             call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_StartButtonB", 0), "UI\\Select_CharacterPreview_StartButtonBlue.tga", 0)
//         endif
        
//         call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_DamageTypeBackdrop", 0), "UI\\Select_CharacterPreview_SubTitleBackdropBlue.tga", 0)
//         call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_WeaponTypeBackdrop", 0), "UI\\Select_CharacterPreview_SubTitleBackdropBlue.tga", 0)
//       endif

//       // 피해타입, 전용무기
//       call DzFrameSetText(DzFrameFindByName("Select_CharacterPreview_DamageTypeText", 0), JNStringSplit(s, "'", 9))
//       call DzFrameSetText(DzFrameFindByName("Select_CharacterPreview_WeaponTypeText", 0), JNStringSplit(s, "'", 10))

//       // 스킬 미리보기 아이콘 x4
      
//       call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_SkillListSkillIconA", 0), JNStringSplit(s, "'", 11), 0)
//       call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_SkillListSkillIconB", 0), JNStringSplit(s, "'", 11), 0)
//       call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_SkillListSkillIconA", 1), JNStringSplit(s, "'", 12), 0)
//       call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_SkillListSkillIconB", 1), JNStringSplit(s, "'", 12), 0)
//       call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_SkillListSkillIconA", 2), JNStringSplit(s, "'", 13), 0)
//       call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_SkillListSkillIconB", 2), JNStringSplit(s, "'", 13), 0)
//       call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_SkillListSkillIconA", 3), JNStringSplit(s, "'", 14), 0)
//       call DzFrameSetTexture(DzFrameFindByName("Select_CharacterPreview_SkillListSkillIconB", 3), JNStringSplit(s, "'", 14), 0)

//       // call DzFrameShow(select_Main, true)
//         call DzFrameShow(DzFrameFindByName("Select_CharacterInformation_Backdrop", 0), true)
//         call DzFrameShow(DzFrameFindByName("Select_CharacterPreview_Backdrop", 0), true)
//     endmethod

//     // 유닛 선택 해제 시 갱신 함수
//     // private static method Deselected takes nothing returns nothing
//     //   if ( GetTriggerPlayer() == GetLocalPlayer() ) then
//     //     call DzFrameShow(Frame_Sub, false)
//     //   endif
//     //   // set SelectedUnit[GetPlayerId(GetTriggerPlayer()) + 1] = null
//     // endmethod

//     // // 유닛 선택수 초기화 함수
//     // private static method Inter takes nothing returns nothing
//     //   local timer t = GetExpiredTimer()
//     //   local integer tid = GetHandleId(t)
//     //   local integer pid = LoadInteger(hash, tid, StringHash("pid"))
//     //   set SelectBol[pid] = false
//     //   set SelectCount[pid] = 0
//     //   call FlushChildHashtable(hash, tid)
//     //   call DestroyTimer(t)
//     //   set t = null
//     // endmethod

//     // 유닛 선택 시 갱신 함수
//     private static method Selected takes nothing returns nothing
//       local player p = GetTriggerPlayer()
//       local integer pid = GetPlayerId(p) + 1
//       // call MsgAll("Player[" +I2S(pid)+ "] : Selected (" + I2S(NowSelect[pid]) + " -> " + I2S(ECharacter.U2I(GetTriggerUnit())) + ")")
//       if ( isSelecting[pid] and 0 < ECharacter.U2I(GetTriggerUnit()) ) then
//         set NowSelect[pid] = ECharacter.U2I(GetTriggerUnit())
//         if ( p == GetLocalPlayer() ) then
//           call Select.ViewInfo(CharacterData[NowSelect[pid]].SelectDatas, (0 < S2I(JNStringSplit(JNStringSplit(LoadStr(hash, pid, StringHash("Data")), "/", NowSelect[pid]), "'", 1))))
//           call ClearSelection()
//         endif
//       endif
//     endmethod
//     private static method ButtonJustUp takes nothing returns nothing
//       local integer characterId = NowSelect[GetPlayerId(DzGetTriggerUIEventPlayer())+1]
//       local integer frameId = EMenus.GetSubTypeId(DzGetTriggerUIEventFrame()) * 3 + 15
//       if ( EMenus.GetMainType(DzGetTriggerUIEventFrame()) != SELECT_MENU_PRESKILL ) then
//         call MsgAll("등록되지않음/버튼올림/스킬미리보기/" + I2S(characterId) + " / (" + I2S(SELECT_MENU_PRESKILL) + "!=" + I2S(EMenus.GetMainType(DzGetTriggerUIEventFrame())) + "), " + I2S(EMenus.GetSubTypeId(DzGetTriggerUIEventFrame())) + " -> " + I2S(frameId))
//         return
//       endif

//       if ( DzGetTriggerUIEventPlayer() == GetLocalPlayer() ) then
//         call DzFrameSetText(selectTextSkillPreviewName, "|cffd5d500" + JNStringSplit(CharacterData[characterId].SelectDatas, "'", frameId))
//         call DzFrameSetText(selectTextSkillPreviewDescription1, JNStringSplit(CharacterData[characterId].SelectDatas, "'", frameId + 1))
//         call DzFrameSetText(selectTextSkillPreviewDescription2, JNStringSplit(CharacterData[characterId].SelectDatas, "'", frameId + 2))

//         call DzFrameShow(selectTextSkillPreviewName, true)
//       endif
//     endmethod
//     private static method ButtonJustDown takes nothing returns nothing
//       local integer f = DzGetTriggerUIEventFrame()
//       if ( DzGetTriggerUIEventPlayer() == GetLocalPlayer() ) then
//         call DzFrameShow(selectTextSkillPreviewName, false)
//       endif
//     endmethod
//     private static method SendSyncedData takes nothing returns nothing
//       call Load_ExecuteAction.execute(DzGetTriggerSyncPlayer(), S2I(DzGetTriggerSyncData()))
//     endmethod

//     private static method ButtonStart takes nothing returns nothing
//       local integer playerId = GetPlayerId(DzGetTriggerUIEventPlayer()) + 1
//       if ( CharacterData[NowSelect[playerId]].UnitCode == 0 ) then
//         call Msg(DzGetTriggerUIEventPlayer(), "올바른 캐릭터를 선택 후, 시작하기를 눌러주세요")
//       else
//         set isSelecting[playerId] = false
//         if ( DzGetTriggerUIEventPlayer() == GetLocalPlayer() ) then
//           call DzSyncData("Select", I2S(NowSelect[playerId]))

//           call DzFrameShow(DzFrameGetParent(select_Main), false)
//           call DzFrameShow(select_LeftPreview, false)
//           call DzFrameShow(select_SkillPreview, false)
//           call ResetToGameCamera(0.)
//           call SetCameraBoundsToRect(bj_mapInitialPlayableArea)
//           call PanCameraTo(BASE_START_LOCATION_X, BASE_START_LOCATION_Y)
//           call EnablePreSelect(true, true)
//           call DzFrameShow(DzFrameGetMinimap(), true)
//         endif
//       endif
//     endmethod

    // private static method MakeStars takes integer parent, integer point, integer point2, real x, real y, real size, string texture returns integer
    //   local integer temp = DzCreateFrameByTagName("BACKDROP", "", parent, "", CountAdder())
    //   call DzFrameSetPoint(temp, point, parent, point2, x, y)
    //   call DzFrameSetSize(temp, size, size)
    //   call DzFrameSetTexture(temp, texture, 0)
    //   return temp
    // endmethod
    // private static method MakeBack takes integer parent, integer point, real x, real y, real xx, real yy, string texture returns integer
    //   local integer temp = DzCreateFrameByTagName("BACKDROP", "", parent, "", CountAdder())
    //   call DzFrameSetAbsolutePoint(temp, point, x, y)
    //   call DzFrameSetSize(temp, xx, yy)
    //   call DzFrameSetTexture(temp, texture, 0)
    //   return temp
    // endmethod
//     private static method MakeButtonSimple takes integer parent, integer types, integer input, code func returns integer
//       local integer temp = DzCreateFrameByTagName("BUTTON", "", parent, "ScoreScreenTabButtonTemplate", CountAdder())
//       call DzFrameSetAllPoints(temp, parent)
//       call EMenus.FrameSaveIDs(temp, types, input)

//       call DzFrameSetScriptByCode(temp, JN_FRAMEEVENT_MOUSE_UP, func, false)
//       return temp
//     endmethod
//     private static method MakeButton takes integer parent, integer types, integer input, integer point, integer point2, real x, real y, real size, string iconPath returns integer
//       local integer temp = DzCreateFrameByTagName("BUTTON", "", selectBackPreviewInter, "ScoreScreenTabButtonTemplate", CountAdder())
//       call DzFrameSetPoint(temp, point, parent, point2, x, y)
//       call DzFrameSetSize(temp, size, size)
        
//       // IDs
//       call EMenus.FrameSaveIDs(temp, types, input)

//       // 배경
//       set selectBackSkills[input] = DzCreateFrameByTagName("BACKDROP", "", temp, "", 0)
//       call DzFrameSetAllPoints(selectBackSkills[input], temp)
//       call DzFrameSetTexture(selectBackSkills[input], iconPath, 0)

//       // 이벤트 등록
//       // call DzFrameSetScriptByCode(temp, JN_FRAMEEVENT_MOUSE_UP, function MenuQuickSlot.ButtonClickAll, false)
//       call DzFrameSetScriptByCode(temp, JN_FRAMEEVENT_MOUSE_ENTER, function Select.ButtonJustUp, false)
//       call DzFrameSetScriptByCode(temp, JN_FRAMEEVENT_MOUSE_LEAVE, function Select.ButtonJustDown, false)
//       return temp
//     endmethod

//     // private static method CreateSelectIcon2 takes integer types, integer parent, integer point, integer point2, real x, real y, real size, string IconTexture returns integer
//     //   set Frame_SelectSkills[types] = DzCreateFrameByTagName("BUTTON", "", Frame_SelectBack[1], "ScoreScreenTabButtonTemplate", 0)
//     //   call DzFrameSetPoint(Frame_SelectSkills[types], point, parent, point2, x, y)
//     //   call DzFrameSetSize(Frame_SelectSkills[types], size, size)

//     //   set types = types + 1
//     //   //배경
//     //   set Frame_SelectSkills[types] = DzCreateFrameByTagName("BACKDROP", "", Frame_SelectSkills[types - 1], "", 0)
//     //   call DzFrameSetAllPoints(Frame_SelectSkills[types], Frame_SelectSkills[types - 1])
//     //   call DzFrameSetTexture(Frame_SelectSkills[types], IconTexture, 0)
//     //   return types + 1
//     // endmethod

//     private static method CameraBounds takes real x, real y returns nothing
//       call SetCameraBounds(x, y, x, y, x, y, x, y)
//     endmethod
//     private static method InitCamera takes nothing returns nothing
//       call SetCameraField(CAMERA_FIELD_ROTATION, 90., 0.)
//       call SetCameraField(CAMERA_FIELD_ANGLE_OF_ATTACK, 325., 0.)
//       call SetCameraField(CAMERA_FIELD_TARGET_DISTANCE, 1024, 0.)
//       call SetCameraField(CAMERA_FIELD_FIELD_OF_VIEW, 70., 0.)
//       call SetCameraField(CAMERA_FIELD_FARZ, 5000., 0.)

//       call CameraBounds(FRAME_DEFAULT_X, FRAME_DEFAULT_Y)
//     endmethod
//     private static method CreateSelectMain takes nothing returns nothing
//       local integer temp = 0
//       call InitCamera()

//       if ( GetRandomReal(0., 99.) <= 33. ) then
//         set temp = MakeText(DzGetGameUI(), JN_FRAMEPOINT_CENTER, JN_FRAMEPOINT_BOTTOMLEFT, .4, .55, .038, "|cffFF7CBFThe Only My Own RPG")
//       elseif ( GetRandomReal(0., 66.) <= 33. ) then
//         set temp = MakeText(DzGetGameUI(), JN_FRAMEPOINT_CENTER, JN_FRAMEPOINT_BOTTOMLEFT, .4, .55, .038, "|cff28FF0DThe Only My Own RPG")
//       else
//         set temp = MakeText(DzGetGameUI(), JN_FRAMEPOINT_CENTER, JN_FRAMEPOINT_BOTTOMLEFT, .4, .55, .038, "|cff0085FFThe Only My Own RPG")
//       endif
//       set select_Main = MakeText(temp, JN_FRAMEPOINT_TOPRIGHT, JN_FRAMEPOINT_BOTTOMRIGHT, 0., 0., 0136, "나만의 알피지")

//       //call DzFrameSetTexture(select_Main, "ui\\Title-R.blp", 0)
//       set select_LeftPreview              = MakeBack(select_Main, JN_FRAMEPOINT_TOPLEFT, .05, .45, .18, .25, "Select_Back.blp")
//       set selectTextCharacterNameEnglish  = MakeText(select_LeftPreview, JN_FRAMEPOINT_TOP, JN_FRAMEPOINT_TOP, 0., -.013, .015, "DarkElf Mage")
//       set selectTextCharacterNameKorean   = MakeText(select_LeftPreview, JN_FRAMEPOINT_TOPRIGHT, JN_FRAMEPOINT_TOPRIGHT, -.020, -.035, .010, "다크엘프 마법사")
//       set selectTextCharacterDescription1 = MakeText(select_LeftPreview, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_TOPLEFT, .02, -.055, .008, "마법사는 강력한 마법 공격과 디버프를 사용해")
//       set selectTextCharacterDescription2 = MakeText(select_LeftPreview, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_TOPLEFT, .02, -.065, .008, "적을 괴롭히고 다대다 전투에 강한 직업입니다.")

//       set temp = MakeText(select_LeftPreview, JN_FRAMEPOINT_TOPLEFT, JN_FRAMEPOINT_TOPLEFT, .020, -.080, .012, "공격")
//       set selectBackStars[0][0] = MakeStars(temp, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .040, 0., .020, "Select_stars1.tga")
//       set selectBackStars[0][1] = MakeStars(temp, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .060, 0., .020, "Select_stars1.tga")
//       set selectBackStars[0][2] = MakeStars(temp, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .080, 0., .020, "Select_stars1.tga")
//       set selectBackStars[0][3] = MakeStars(temp, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .100, 0., .020, "Select_stars1.tga")
//       set selectBackStars[0][4] = MakeStars(temp, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .120, 0., .020, "Select_stars1.tga")

//       set temp = MakeText(temp, JN_FRAMEPOINT_TOPLEFT, JN_FRAMEPOINT_BOTTOMLEFT, 0., -.02, .012, "방어")
//       set selectBackStars[1][0] = MakeStars(temp, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .040, 0., .020, "Select_stars1.tga")
//       set selectBackStars[1][1] = MakeStars(temp, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .060, 0., .020, "Select_stars1.tga")
//       set selectBackStars[1][2] = MakeStars(temp, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .080, 0., .020, "Select_stars1.tga")
//       set selectBackStars[1][3] = MakeStars(temp, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .100, 0., .020, "Select_stars1.tga")
//       set selectBackStars[1][4] = MakeStars(temp, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .120, 0., .020, "Select_stars1.tga")

//       set temp = MakeText(temp, JN_FRAMEPOINT_TOPLEFT, JN_FRAMEPOINT_BOTTOMLEFT, 0., -.02, .012, "보조")
//       set selectBackStars[2][0] = MakeStars(temp, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .040, 0., .020, "Select_stars1.tga")
//       set selectBackStars[2][1] = MakeStars(temp, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .060, 0., .020, "Select_stars1.tga")
//       set selectBackStars[2][2] = MakeStars(temp, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .080, 0., .020, "Select_stars1.tga")
//       set selectBackStars[2][3] = MakeStars(temp, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .100, 0., .020, "Select_stars1.tga")
//       set selectBackStars[2][4] = MakeStars(temp, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .120, 0., .020, "Select_stars1.tga")

//       set temp = MakeText(temp, JN_FRAMEPOINT_TOPLEFT, JN_FRAMEPOINT_BOTTOMLEFT, 0., -.02, .012, "방해")
//       set selectBackStars[3][0] = MakeStars(temp, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .040, 0., .020, "Select_stars1.tga")
//       set selectBackStars[3][1] = MakeStars(temp, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .060, 0., .020, "Select_stars1.tga")
//       set selectBackStars[3][2] = MakeStars(temp, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .080, 0., .020, "Select_stars1.tga")
//       set selectBackStars[3][3] = MakeStars(temp, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .100, 0., .020, "Select_stars1.tga")
//       set selectBackStars[3][4] = MakeStars(temp, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .120, 0., .020, "Select_stars1.tga")

//       set temp = MakeText(temp, JN_FRAMEPOINT_TOPLEFT, JN_FRAMEPOINT_BOTTOMLEFT, 0., -.02, .012, "난이도")
//       set selectBackStars[4][0] = MakeStars(temp, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .040, 0., .020, "Select_stars2.tga")
//       set selectBackStars[4][1] = MakeStars(temp, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .060, 0., .020, "Select_stars2.tga")
//       set selectBackStars[4][2] = MakeStars(temp, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .080, 0., .020, "Select_stars2.tga")
//       set selectBackStars[4][3] = MakeStars(temp, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .100, 0., .020, "Select_stars2.tga")
//       set selectBackStars[4][4] = MakeStars(temp, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .120, 0., .020, "Select_stars2.tga")
//     endmethod
//     private static method CreateSelectSkillPreview takes nothing returns nothing
//       local integer temp = 0
//       set select_SkillPreview = MakeBack(DzGetGameUI(), JN_FRAMEPOINT_TOPLEFT, .6, .4, .20, .23, "Select_BackRed.blp")
//       set temp = MakeText(select_SkillPreview, JN_FRAMEPOINT_TOPLEFT, JN_FRAMEPOINT_TOPLEFT, .02, -.02, .009, "|cff8f8f8f피해 유형")
//       set selectTextCharacterDamageType = MakeText(temp, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .07, 0., .011, "|cff0080c0마법 데미지")
//       set temp = MakeText(select_SkillPreview, JN_FRAMEPOINT_TOPLEFT, JN_FRAMEPOINT_TOPLEFT, .02, -.04, .009, "|cff8f8f8f사용(전용)무기")
//       set selectTextCharacterMainWeapon = MakeText(temp, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .07, 0., .011, "[완드][지팡이]")

//       set selectBackPreviewInter = MakeBack(select_SkillPreview, JN_FRAMEPOINT_TOPLEFT, .62, .34, .16, .12, "Select_BackRedRed.blp")
//       call MakeText(selectBackPreviewInter, JN_FRAMEPOINT_TOPLEFT, JN_FRAMEPOINT_TOPLEFT, .01, -.01, .010, "|cff8f8f8f주요 스킬 보기")
//       set selectButtonSkills[0] = MakeButton(selectBackPreviewInter, SELECT_MENU_PRESKILL, 0, JN_FRAMEPOINT_TOP, JN_FRAMEPOINT_TOPLEFT, .024, -.03, .0275, "war3mapImported\\frame_kakao.blp")
//       set selectButtonSkills[1] = MakeButton(selectBackPreviewInter, SELECT_MENU_PRESKILL, 1, JN_FRAMEPOINT_TOP, JN_FRAMEPOINT_TOPLEFT, .061, -.03, .0275, "war3mapImported\\frame_kakao.blp")
//       set selectButtonSkills[2] = MakeButton(selectBackPreviewInter, SELECT_MENU_PRESKILL, 2, JN_FRAMEPOINT_TOP, JN_FRAMEPOINT_TOPLEFT, .099, -.03, .0275, "war3mapImported\\frame_kakao.blp")
//       set selectButtonSkills[3] = MakeButton(selectBackPreviewInter, SELECT_MENU_PRESKILL, 3, JN_FRAMEPOINT_TOP, JN_FRAMEPOINT_TOPLEFT, .136, -.03, .0275, "war3mapImported\\frame_kakao.blp")

//       set selectTextSkillPreviewName = MakeText(selectBackPreviewInter, JN_FRAMEPOINT_TOPLEFT, JN_FRAMEPOINT_TOPLEFT, .01, -.08, .012, "|cffd5d500캐릭터 스킬 |cffff8000미리보기")
//       set selectTextSkillPreviewDescription1 = MakeText(selectTextSkillPreviewName, JN_FRAMEPOINT_TOPLEFT, JN_FRAMEPOINT_BOTTOMLEFT, 0., -.005, .008, "위에 있는 |cffff8000아이콘|r에 마우스를 대면,")
//       set selectTextSkillPreviewDescription2 = MakeText(selectTextSkillPreviewDescription1, JN_FRAMEPOINT_TOPLEFT, JN_FRAMEPOINT_BOTTOMLEFT, 0., 0., .008, "캐릭터가 가진 |cffff8000스킬|r을 확인할 수 있습니다.")

//       // 시작하기
//       set selectBackStart = DzCreateFrameByTagName("BACKDROP", "", select_SkillPreview, "", 0)
//       call DzFrameSetPoint(selectBackStart, JN_FRAMEPOINT_TOP, selectBackPreviewInter, JN_FRAMEPOINT_BOTTOM, 0., -.005)
//       call DzFrameSetSize(selectBackStart, .11, .03)
//       call DzFrameSetTexture(selectBackStart, "Select_StartRed.blp", 0)

//       call MakeButtonSimple(selectBackStart, SELECT_OTHER, CountAdder(), function Select.ButtonStart)
//     endmethod

//     // (분)을 포맷된 시간 형식으로 변환
//     // - < 100   : 99분
//     // - < 600   : 9.99시간
//     // - < 6000  : 99.9시간
//     // - < 14400 : 9일 9시간
//     // - 그 이상  : 29.91일
//     public static method MinutesToFormattedTime takes integer minutes returns string
//       if ( minutes <= 0 ) then
//         return ""
//       elseif ( minutes < 100 ) then
//         return I2S(minutes) + "분"
//       elseif ( minutes < 600 ) then
//         return R2SW(minutes / 60., 1, 2) + "시간"
//       elseif ( minutes < 6000 ) then
//         return R2SW(minutes / 60., 2, 1) + "시간"
//       elseif ( minutes < 14400 ) then
//         return I2S(minutes / 1440) + "일 " + I2S(ModuloInteger(minutes, 1440) / 60) + "시간"
//       else
//         return R2SW(minutes / 1440., 2, 2) + "일"
//       endif
//     endmethod
//     private static method CreateSelectBottom takes nothing returns nothing
//       local integer i = 1
      
//       loop
//         //아래쪽
//         set selectBackBottoms[i]          = MakeBack(select_Main, JN_FRAMEPOINT_CENTER, i * .12, .1, .1, .04, "Select_SlotBack75.blp")
//         set selectTextBottomNameLevels[i] = MakeText(selectBackBottoms[i], JN_FRAMEPOINT_TOPLEFT, JN_FRAMEPOINT_TOPLEFT, .005, -.005, .010, JNStringSplit(JNStringSplit(CharacterData[i].SelectDatas, "'", 0), " ", 1) + " Lv00")
//         set selectTextBottomPlayTimes[i]  = MakeText(selectBackBottoms[i], JN_FRAMEPOINT_TOPRIGHT, JN_FRAMEPOINT_TOPRIGHT, .005, .005, .009, "00분")
//         set selectTextBottomLoadTypes[i]  = MakeText(selectBackBottoms[i], JN_FRAMEPOINT_BOTTOMRIGHT, JN_FRAMEPOINT_BOTTOMRIGHT, -.01, .008, .013, "이어하기")
//         set selectButtonBottoms[i]        = MakeButtonSimple(selectBackBottoms[i], SELECT_MENU_CHARACTER, i, function MenuQuickSlot.ButtonClickAll)
//         // call MsgAll("made bottom: " + JNStringSplit(JNStringSplit(CharacterData[i].SelectDatas, "'", 0), " ", 1))
//         // call MsgAll("maked: " + I2S(i) + " / " + I2S(MAX_CHARACTER_COUNT) + " / " + I2S(selectBackBottoms[i]) + " / " + I2S(selectTextBottomNameLevels[i]) + " / " + I2S(selectTextBottomPlayTimes[i]) + " / " + I2S(selectTextBottomLoadTypes[i]) + " / " + I2S(selectButtonBottoms[i]))
        
//         set i = i + 1
//         exitwhen MAX_CHARACTER_COUNT <= i /* 1~6 */
//       endloop
//     endmethod
//     private static method ChangeSelectBottom takes player p, string input returns nothing
//       local string cuttedString
//       local integer i = 1
//       //아래쪽
//       loop
//         set cuttedString = JNStringSplit(input, "/", i)
//         if ( 0 < S2I(JNStringSplit(JNStringSplit(cuttedString, "'", 1), ".", 0)) ) then
//           if ( GetLocalPlayer() == p ) then
//             call DzFrameSetTexture(selectBackBottoms[i], "Select_SlotBack75.blp", 0)
//             call DzFrameSetFont(selectTextBottomNameLevels[i], "Fonts\\DFHeiMd.ttf", .010, 0)
//             call DzFrameSetText(selectTextBottomNameLevels[i], JNStringSplit(JNStringSplit(CharacterData[S2I(JNStringSplit(cuttedString, "'", 0))].SelectDatas, "'", 0), " ", 1) + " Lv" + JNStringSplit(JNStringSplit(cuttedString, "'", 1), ".", 0))
//             call DzFrameSetFont(selectTextBottomPlayTimes[i], "Fonts\\DFHeiMd.ttf", .009, 0)
//             call DzFrameSetText(selectTextBottomPlayTimes[i], MinutesToFormattedTime(S2I(JNStringSplit(JNStringSplit(cuttedString, "'", 0), "_", 1))))
//             call DzFrameSetFont(selectTextBottomLoadTypes[i], "Fonts\\DFHeiMd.ttf", .013, 0)
//             call DzFrameSetText(selectTextBottomLoadTypes[i], "이어하기")
//           endif
//         else
//           if ( GetLocalPlayer() == p ) then
//             call DzFrameSetTexture(selectBackBottoms[i], "Select_SlotBack50.blp", 0)
//             call DzFrameSetFont(selectTextBottomNameLevels[i], "Fonts\\DFHeiMd.ttf", .009, 0)
//             call DzFrameSetText(selectTextBottomNameLevels[i], JNStringSplit(JNStringSplit(CharacterData[i].SelectDatas, "'", 0), " ", 1) + " (신규)")
//             call DzFrameSetText(selectTextBottomPlayTimes[i], "")
//             call DzFrameSetFont(selectTextBottomLoadTypes[i], "Fonts\\DFHeiMd.ttf", .008, 0)
//             call DzFrameSetText(selectTextBottomLoadTypes[i], "미리보기")
//           endif
//         endif

//         exitwhen MAX_CHARACTER_COUNT - 1 <= i
//         set i = i + 1
//       endloop
//     endmethod

//     public static method GetSaveData takes player p, string input returns nothing
//       set input = IfEmpty(input, DEFAULT_DATA)
//       if ( IsEmpty(input) ) then
//         call Msg(p, "데이터가 비어있습니다.")
//         return
//       endif
//       call SaveStr(hash, GetPlayerId(p) + 1, StringHash("Data"), input)
//       call ChangeSelectBottom(p, input)
//       /* 1_시간'레벨.경험치  / 2_시간'레벨.경험치 ... */
//     endmethod

//     // IResource.PlayerResource[]가 생성된 후 호출
//     private static method onInit takes nothing returns nothing
//       local integer loopA = 1
//       if ( PlayerResource.ALL_PLAYING_COUNT <= 0 ) then
//         call MsgAll("오류 / 플레이어[전체] 초기값이 설정되지 않았습니다.")
//         return
//       endif

//       // set leftCount = PlayerResource.ALL_PLAYING_COUNT
//       call CreateSelectMain()
//       call CreateSelectBottom()
//       call CreateSelectSkillPreview()

//       call DzFrameShow(select_Main, true)
//       call DzFrameShow(select_LeftPreview, false) /* 클릭시 보이게 */
//       call DzFrameShow(select_SkillPreview, false)
//       // call DzFrameShow(selectTextSkillPreviewName, false)

//       loop
//         if ( PlayerResource[loopA].isPlaying ) then
//           set isSelecting[loopA] = true
//           call TriggerRegisterPlayerUnitEvent(selectTrigger, Player(loopA - 1), EVENT_PLAYER_UNIT_SELECTED, null)
//           // call TriggerRegisterPlayerUnitEvent(deSelectTrigger, Player(loopA - 1), EVENT_PLAYER_UNIT_DESELECTED, null)
//         endif
//         exitwhen MAX_PLAYER_COUNT - 1 <= loopA
//         set loopA = loopA + 1
//       endloop
//       call TriggerAddAction(selectTrigger, function Select.Selected)
//       // call TriggerAddAction(deSelectTrigger, function Select.Deselected)

//       call DzTriggerRegisterSyncData(syncTrigger, "Select", false)
//       call TriggerAddAction(syncTrigger, function Select.SendSyncedData)
//     endmethod
// endstruct