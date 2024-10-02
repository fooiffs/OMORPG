scope Equip initializer Init
    globals
      private constant real EQUIPSPACEGAP = 0.040  /* 인벤토리 한칸 간격(갭 포함) */
      private constant real EQUIPEDGEGAP =  0.003  /* 인벤토리 칸과 칸 사이 간격 */
      
      private integer array Equip
      public integer array EquipBackdrop
      
      constant integer JN_FRAMEEVENT_MOUSE_DOUBLECLICK = 12
      private boolean array AllowRightClick
      private integer array OnButtonNumber
      
      /* Inventory */
      public constant real EDGEGAP =  0.0015 /* 인벤토리 칸과 칸 사이 간격 */
      public constant real SPACEGAP = 0.025  /* 인벤토리 한칸 간격(갭 포함) */
      public constant real EDGEGAP2 = 0.008  /* 뼈대와 인벤토리 사이 간격 */
      
      constant integer ITEM_TOOLTIP_MAXIMUM = 25
      constant integer ITEM_TOOLTIP_HIDE = 8
      
      private integer array Frame_InvenInfo
      private integer array Frame_EquipInfo
      private integer array Frame_Equip2Info
      private string array InvenInfo
      
      integer array Frame_InvenButtons
      integer array Frame_InvenButtonsBackDrop
      
      private integer array ClickNow
      
      private integer ClickView = 0
      
      private constant real GRADE_BONUS = 1.08
      
      private string array STATS_ALL
      
      private integer FrameMouseXOffset
      private integer FrameMouseYOffset
    endglobals
    private constant function CS2II takes integer i returns integer
      if ( i == 6 ) then
        return 8
      elseif ( i == 13 ) then
        return 14
      else
        return 0
      endif
    endfunction
    public constant function CS2I takes string s returns integer
      if ( s == "무기(검)" ) then
        return 1
      elseif ( s == "투구" or s == "써클릿" ) then
        return 2
      elseif ( s == "판금갑옷" or s == "로브" ) then
        return 3
      elseif ( s == "건틀릿" or s == "글러브" ) then
        return 4
      elseif ( s == "브로치" ) then
        return 5
      elseif ( s == "귀걸이" ) then
        return 6
      elseif ( s == "보조장갑" ) then
        return 7
      elseif ( s == "보조갑옷" ) then
        return 9
      elseif ( s == "목걸이" ) then
        return 10
      elseif ( s == "벨트" ) then
        return 11
      elseif ( s == "방패" or s == "단검" or s == "수리검" ) then
        return 12
      elseif ( s == "반지" ) then
        return 13
      elseif ( s == "망토" ) then
        return 15
      elseif ( s == "신발" ) then
        return 16
      else
        return 0
      endif
    endfunction
    public constant function I2CS takes integer i returns string
      if ( i == 1 ) then
        return "무기"
      elseif ( i == 2 ) then
        return "머리"
      elseif ( i == 3 ) then
        return "몸통"
      elseif ( i == 4 ) then
        return "장갑"
      elseif ( i == 5 ) then
        return "어깨장식"
      elseif ( i == 6 ) or ( i == 8 ) then
        return "귀걸이"
      elseif ( i == 7 ) then
        return "손목"
      elseif ( i == 9 ) then
        return "각반"
      elseif ( i == 10 ) then
        return "목걸이"
      elseif ( i == 11 ) then
        return "벨트"
      elseif ( i == 12 ) then
        return "보조무기"
      elseif ( i == 13 ) or ( i == 14 ) then
        return "반지"
      elseif ( i == 15 ) then
        return "망토"
      elseif ( i == 16 ) then
        return "신발"
      else
        return ""
      endif
    endfunction
    public constant function I2BE takes integer i returns string
    /* 장비번호→장비아이콘 변환 */
      if ( i == 1 ) then
        return "Equip_BaseICon_01.blp"
      elseif ( i == 2 ) then
        return "Equip_BaseICon_02.blp"
      elseif ( i == 3 ) then
        return "Equip_BaseICon_03.blp"
      elseif ( i == 4 ) then
        return "Equip_BaseICon_04.blp"
      elseif ( i == 5 ) then
        return "Equip_BaseICon_05.blp"
      elseif ( i == 6 ) or ( i == 8 ) then /* 귀걸이 */
        return "Equip_BaseICon_06.blp"
      elseif ( i == 7 ) then
        return "Equip_BaseICon_07.blp"
      elseif ( i == 9 ) then
        return "Equip_BaseICon_09.blp"
      elseif ( i == 10 ) then
        return "Equip_BaseICon_10.blp"
      elseif ( i == 11 ) then
        return "Equip_BaseICon_11.blp"
      elseif ( i == 12 ) then
        return "Equip_BaseICon_12.blp"
      elseif ( i == 13 ) or ( i == 14 ) then /* 반지 */
        return "Equip_BaseICon_13.blp"
      elseif ( i == 15 ) then
        return "Equip_BaseICon_15.blp"
      elseif ( i == 16 ) then
        return "Equip_BaseICon_16.blp"
      else
        return ""
      endif
    endfunction
    private function DoubleClick takes nothing returns nothing
      if ( AllowRightClick[GetPlayerId(DzGetTriggerKeyPlayer())+1] ) then
        call DzSyncData("I_Equip", I2S(OnButtonNumber[GetPlayerId(DzGetTriggerKeyPlayer())+1]))
        set AllowRightClick[GetPlayerId(DzGetTriggerKeyPlayer())+1] = false
      endif
    endfunction
    private function RightClick takes nothing returns nothing
      if ( AllowRightClick[GetPlayerId(DzGetTriggerKeyPlayer())+1] ) then
        call DzSyncData("I_Equip", I2S(OnButtonNumber[GetPlayerId(DzGetTriggerKeyPlayer())+1]))
        set AllowRightClick[GetPlayerId(DzGetTriggerKeyPlayer())+1] = false
      endif
    endfunction
    private function MouseVariable takes nothing returns nothing
      local string s = DzGetTriggerSyncData()
      local integer P = GetPlayerId(DzGetTriggerSyncPlayer())+1
      if ( s == "" ) then
        set AllowRightClick[P] = false
      else
        set AllowRightClick[P] = true
        set OnButtonNumber[P] = S2I(DzGetTriggerSyncData())
      endif
      set s = null
    endfunction
    
    private constant function S2Oadd takes string s returns string
      if ( s == "cp" ) then
        return "%"
      elseif ( s == "cx" ) then
        return "x"
      elseif ( s == "m1" ) then
        return "%"
      elseif ( s == "bs" ) then
        return "%"
      elseif ( s == "as" ) then
        return "%"
      elseif ( s == "p1" ) then
        return "%"
      elseif ( s == "p2" ) then
        return "%"
      elseif ( s == "p3" ) then
        return "%"
      elseif ( s == "sd" ) then
        return "%"
      elseif ( s == "md" ) then
        return "%"
      elseif ( s == "c1" ) then
        return "%"
      elseif ( s == "c2" ) then
        return "%"
      else
        return ""
      endif
    endfunction
    private constant function S2O takes string s returns string
      if ( s == "s1" ) then
        return "파워"
      elseif ( s == "s2" ) then
        return "집중"
      elseif ( s == "s3" ) then
        return "활력"
      elseif ( s == "d1" ) then
        return "공격력"
      elseif ( s == "d2" ) then
        return "추가공격력"
      elseif ( s == "a1" ) then
        return "물방"
      elseif ( s == "a2" ) then
        return "마방"
      elseif ( s == "l1" ) then
        return "물리피해감소"
      elseif ( s == "l2" ) then
        return "마법피해감소"
      elseif ( s == "ed" ) then
        return "강인함"
      elseif ( s == "cp" ) then
        return "치명타 확률"
      elseif ( s == "cx" ) then
        return "치명 배율"
      elseif ( s == "m1" ) then
        return "회피율"
      elseif ( s == "m2" ) then
        return "마법무시"
      elseif ( s == "m3" ) then
        return "상태이상방어"
      elseif ( s == "bs" ) then
        return "피흡"
      elseif ( s == "as" ) then
        return "공격속도"
      elseif ( s == "ms" ) then
        return "이동속도"
      elseif ( s == "g1" ) then
        return "체력 회복"
      elseif ( s == "g2" ) then
        return "마나 회복"
      elseif ( s == "p1" ) then
        return "골드 보너스"
      elseif ( s == "p2" ) then
        return "드랍 보너스"
      elseif ( s == "p3" ) then
        return "경험 보너스"
      elseif ( s == "sd" ) then
        return "스킬 데미지"
      elseif ( s == "sl" ) then
        return "스킬 레벨"
      elseif ( s == "md" ) then
        return "마법 데미지"
      elseif ( s == "c1" ) then
        return "선딜레이 감소"
      elseif ( s == "c2" ) then
        return "쿨감소"
       elseif ( s == "tt" ) then
        return "획득정보"
      elseif ( s == "o1" ) then
        return "|cffb5e61d추가옵션"
      elseif ( s == "o2" ) then
        return "|cffb5e61d추가옵션2"
      elseif ( s == "o3" ) then
        return "|cffb5e61d추가옵션3"
      elseif ( s == "r1" ) then
        return "|cffefe4b0랜덤옵션"
      elseif ( s == "r2" ) then
        return "|cffefe4b0랜덤옵션2"
      elseif ( s == "r3" ) then
        return "|cffefe4b0랜덤옵션3"
      elseif ( s == "k0" ) then
        return "소켓 수"
      elseif ( s == "k1" ) then
        return "|cff99d9ea소켓옵션"
      elseif ( s == "k2" ) then
        return "|cff99d9ea소켓옵션2"
      elseif ( s == "k3" ) then
        return "|cff99d9ea소켓옵션3"
      else
        return ""
      endif
    endfunction
    private constant function SkipStr takes string s returns integer
      if ( s == "tp" ) then       /* 설명 */
        return 1
      elseif ( s == "cs" ) then   /* 종류 */
        return 2
      elseif ( s == "lv" ) then   /* 렙제 */
        return 3
      elseif ( s == "ra" ) then   /* 희귀등급 */
        return 4
      elseif ( s == "tt" ) then   /* 획득정보 */
        return 5
      elseif ( s == "qo" ) then   /* 품질등급 */
        return 6
      elseif ( s == "ec" ) then   /* 강화수치 */
        return 7
      elseif ( s == "k0" ) then   /* 소켓 숫자 */
        return ITEM_TOOLTIP_HIDE    /* 마지막 */
      elseif ( s == "o1" or s == "o2" or s == "o3" or s == "r1" or s == "r2" or s == "r3" or s == "k1" or s == "k2" or s == "k3" ) then
        return -1 /* 한번 더 옵션 가져옴 */
      else
        return 0
      endif
    endfunction
    
    private function AddReal takes integer P, string s, real var, boolean msg returns nothing
      call SaveReal(hash, P, StringHash("STAT_"+s), LoadReal(hash, P, StringHash("STAT_"+s)) + var)
      if ( JNStringContains(STATS_ALL[P], s) ) then
        set STATS_ALL[0] = JNStringSplit(JNStringSplit(STATS_ALL[P],s+"_",1),"'",0)
        if ( S2R(STATS_ALL[0])+var == 0. ) then
          set STATS_ALL[P] = JNStringReplace(STATS_ALL[P], s+"_"+STATS_ALL[0]+"'","")
        else
          set STATS_ALL[P] = s+"_"+R2S(S2R(STATS_ALL[0])+var)+"'" + JNStringReplace(STATS_ALL[P], s+"_"+STATS_ALL[0]+"'","")
        endif
        
      else
        set STATS_ALL[P] = STATS_ALL[P] + s + "_" + R2S(var) + "'"
      endif
      return /* 메시지 필요없는듯 */
      if ( msg ) then
        if ( var > 0. ) then
          call DisplayTimedTextToPlayer(Player(P-1), 0, 0, 6., S2O(s) + " +" + R2SW(var,1,2) + S2Oadd(s) + " (총 " + R2SW(LoadReal(hash, P, StringHash("STAT_"+s)),1,2) +S2Oadd(s) + ")")
        else
          call DisplayTimedTextToPlayer(Player(P-1), 0, 0, 6., S2O(s) + " " + R2SW(var,1,2) + S2Oadd(s) + " (총 " + R2SW(LoadReal(hash, P, StringHash("STAT_"+s)),1,2) +S2Oadd(s) + ")")
        endif
      endif
    endfunction
    private function AddInteger takes integer P, string s, integer var, boolean msg returns nothing
      call SaveInteger(hash, P, StringHash("STAT_"+s), LoadInteger(hash, P, StringHash("STAT_"+s)) + var)
      if ( JNStringContains(STATS_ALL[P], s) ) then
        set STATS_ALL[0] = JNStringSplit(JNStringSplit(STATS_ALL[P],s+"_",1),"'",0)
        if ( S2I(STATS_ALL[0])+var == 0 ) then
          set STATS_ALL[P] =  JNStringReplace(STATS_ALL[P], s+"_"+STATS_ALL[0]+"'","")
        else
          set STATS_ALL[P] = s+"_"+I2S(S2I(STATS_ALL[0])+var)+"'" + JNStringReplace(STATS_ALL[P], s+"_"+STATS_ALL[0]+"'","")
        endif
      else
        set STATS_ALL[P] = STATS_ALL[P] + s + "_" + I2S(var) + "'"
      endif
      return /* 메시지 필요없는듯 */
      if ( msg ) then
        if ( var > 0 ) then
          call DisplayTimedTextToPlayer(Player(P-1), 0, 0, 6., S2O(s) + " +" + I2S(var) + S2Oadd(s) + " (총 " + I2S(LoadInteger(hash, P, StringHash("STAT_"+s))) +S2Oadd(s) + ")")
        else
          call DisplayTimedTextToPlayer(Player(P-1), 0, 0, 6., S2O(s) + " " + I2S(var) + S2Oadd(s) + " (총 " + I2S(LoadInteger(hash, P, StringHash("STAT_"+s))) +S2Oadd(s) + ")")
        endif
      endif
    endfunction
    private function AddStat takes integer P, string s, string var, integer x, boolean Isreal, boolean msg returns nothing
      if ( Isreal ) then
        if ( x > 0 ) and ( S2R(var)*Pow(GRADE_BONUS,x) > .01 ) then
          call AddReal(P, s, S2R(var)*Pow(GRADE_BONUS,x), msg)
        else
          call AddReal(P, s, S2R(var), msg)
        endif
      else
        call AddInteger(P, s, R2I(S2R(var)*Pow(GRADE_BONUS,x)), msg)
      endif
    endfunction
    private function MinusStat takes integer P, string s, string var, integer x, boolean Isreal, boolean msg returns nothing
      if ( Isreal ) then
        if ( x > 0 ) and ( S2R(var)*Pow(GRADE_BONUS,x) > .01 ) then
          call AddReal(P, s, -(S2R(var)*Pow(GRADE_BONUS,x)), msg)
        else
          call AddReal(P, s, -S2R(var), msg)
        endif
      else
        call AddInteger(P, s, -R2I(S2R(var)*Pow(GRADE_BONUS,x)), msg)
      endif
    endfunction
    private function ReflectItemStats takes integer P returns nothing
      local string ss = ""
      local string return_s = ""
      local integer loopA = 0
      if ( STATS_ALL[P] == "" or STATS_ALL[P] == null ) then
        if ( GetLocalPlayer() == Player(P-1) ) then
          call DzFrameSetText(Equip[18], "")
        endif
      else
        loop
          set ss = JNStringSplit(STATS_ALL[P], "'", loopA)
          exitwhen ss == "" or ss == null
          if ( JNStringContains(ss, "-") ) then
            set return_s = return_s + "\n" + S2O(SubString(ss,0,2)) + " " + SubString(ss,3,StringLength(ss)) + S2Oadd(SubString(ss,0,2))
          else
            set return_s = return_s + "\n" + S2O(SubString(ss,0,2)) + " +" + SubString(ss,3,StringLength(ss)) + S2Oadd(SubString(ss,0,2))
          endif
          set loopA = loopA + 1
        endloop
        if ( GetLocalPlayer() == Player(P-1) ) then
          call DzFrameSetText(Equip[18], SubString(return_s,1,StringLength(return_s)))
        endif
      endif
    endfunction
    
    public function Process takes string s, integer P returns nothing
    /* P0; view용, +P: Plus, -P: Minus */
      local integer loopA = 0
      local integer length = 0
      local boolean first = true
      if ( s == "'" ) then
        return
      endif
      if ( P == 0 ) then /* 능력치 표시 */
        set InvenInfo[7] = ""
        loop
          set InvenInfo[0] = JNStringSplit(s,"'",loopA)
          exitwhen ( InvenInfo[0] == "" ) or ( InvenInfo[0] == null )
          if ( SkipStr(SubString(InvenInfo[0],0,2)) > 0 ) then
            set InvenInfo[SkipStr(SubString(InvenInfo[0],0,2))] = SubString(InvenInfo[0],3,StringLength(InvenInfo[0]))
          elseif ( SkipStr(SubString(InvenInfo[0],0,2)) == -1 ) then
            if ( first ) then
              set first = false
              set length = length + 1
              set InvenInfo[ITEM_TOOLTIP_HIDE+length] = " "
            endif
            set length = length + 1
            set InvenInfo[ITEM_TOOLTIP_HIDE+length] = S2O(SubString(InvenInfo[0],0,2)) + " - " + S2O(SubString(InvenInfo[0],3,5)) + " +" + SubString(InvenInfo[0],6,StringLength(InvenInfo[0]))
          else
            set length = length + 1
            set InvenInfo[ITEM_TOOLTIP_HIDE+length] = S2O(SubString(InvenInfo[0],0,2)) + " +" + SubString(InvenInfo[0],3,StringLength(InvenInfo[0]))
          endif
        
          set loopA = loopA + 1
        endloop
        
        set InvenInfo[0] = R2S(0.005+(0.01*JNStringCount(InvenInfo[1],"\n")) + (ITEM_TOOLTIP_HIDE+length)*.012) /* 팝업창 높이 설정 */
        loop
          set length = length + 1
          exitwhen length >= ITEM_TOOLTIP_MAXIMUM
          set InvenInfo[ITEM_TOOLTIP_HIDE+length] = ""
        endloop
      elseif ( P > 0 ) then /* 능력치 증가 */
        if ( JNStringContains(s, "ec_") ) then /* 강화수치 */
          set InvenInfo[1] = JNStringSplit(JNStringSplit(s,"ec_",1),"'",0)
          if ( S2I(InvenInfo[1]) == 0 ) then
            set InvenInfo[1] = ""
          endif
        else
          set InvenInfo[1] = ""
        endif
        loop
          set InvenInfo[0] = JNStringSplit(s,"'",loopA)
          exitwhen ( InvenInfo[0] == "" ) or ( InvenInfo[0] == null )
          if ( SkipStr(SubString(InvenInfo[0],0,2)) <= 0 ) then
            if ( SkipStr(SubString(InvenInfo[0],0,2)) == -1 ) then /* 랜덤 및 추가 및 소켓 옵션 */
              call AddStat(P, SubString(InvenInfo[0],3,5), SubString(InvenInfo[0],6,StringLength(InvenInfo[0])), S2I(InvenInfo[1]), JNStringContains(InvenInfo[0], "."), true)
            else
              call AddStat(P, SubString(InvenInfo[0],0,2), SubString(InvenInfo[0],3,StringLength(InvenInfo[0])), S2I(InvenInfo[1]), JNStringContains(InvenInfo[0], "."), true)
            endif
          endif
          set loopA = loopA + 1
        endloop
        call ReflectItemStats(P)
      else                  /* 능력치 감소 */
        if ( JNStringContains(s, "ec_") ) then /* 강화수치 */
          set InvenInfo[1] = JNStringSplit(JNStringSplit(s,"ec_",1),"'",0)
          if ( S2I(InvenInfo[1]) == 0 ) then
            set InvenInfo[1] = ""
          endif
        else
          set InvenInfo[1] = ""
        endif
        loop
          set InvenInfo[0] = JNStringSplit(s,"'",loopA)
          exitwhen ( InvenInfo[0] == "" ) or ( InvenInfo[0] == null )
          if ( SkipStr(SubString(InvenInfo[0],0,2)) <= 0 ) then
            if ( SkipStr(SubString(InvenInfo[0],0,2)) == -1 ) then /* 랜덤 및 추가 및 소켓 옵션 */
              call MinusStat(-P, SubString(InvenInfo[0],3,5), SubString(InvenInfo[0],6,StringLength(InvenInfo[0])), S2I(InvenInfo[1]), JNStringContains(InvenInfo[0], "."), true)
            else
              call MinusStat(-P, SubString(InvenInfo[0],0,2), SubString(InvenInfo[0],3,StringLength(InvenInfo[0])), S2I(InvenInfo[1]), JNStringContains(InvenInfo[0], "."), true)
            endif
          endif
          set loopA = loopA + 1
        endloop
        call ReflectItemStats(-P)
      endif
    endfunction
    
    private constant function xxx takes real r, real x returns real
      if ( x > 0. ) then
        return r*x
      else
        return r
      endif
    endfunction
    private function ProcessEnchating takes string s, integer start, integer length, real x returns string
      local string ss = JNStringSub(s, length-1, 1)
      if ( ss != "%" and ss != "x" ) then
        set ss = ""
      endif
      if ( JNStringContains(s, ".") ) then
        if ( S2R(JNStringSub(s, start, length-start))*x > 0.01 ) then
          return " |cffa349a4+" + R2SW(S2R(JNStringSub(s, start, length-start))*x,1,2) + ss
        else
          return ""
        endif
      else
        set start = R2I(S2R(JNStringSub(s, start, length-start))*x)
        if ( start > 0 ) then
          return " |cffa349a4+" + I2S(start) + ss
        else
          return ""
        endif
      endif
    endfunction
    private function ProcessEnchat takes real r returns nothing
      local integer loopA = ITEM_TOOLTIP_HIDE+1
      loop
        exitwhen loopA >= ITEM_TOOLTIP_MAXIMUM
        set InvenInfo[loopA] = InvenInfo[loopA] + ProcessEnchating(InvenInfo[loopA], JNStringPos(InvenInfo[loopA], "+"), JNStringLength(InvenInfo[loopA]), r)
        set loopA = loopA + 1
      endloop
    endfunction
    private function NameSize takes integer frame, string s returns real
      local real etc = JNStringCount(s, " ")+2.
      set s = s + "(" + InvenInfo[4] +")"
      call DzFrameSetText(frame, s)
      if ( JNStringLength(s) >= 17 ) then
        call DzFrameSetFont(frame, "Fonts\\DFHeiMd.ttf", 0.010, 1)
        return 0.075 + etc * 0.0028 + (JNStringLength(s)-etc) * 0.007
      elseif ( JNStringLength(s) >= 13 ) then
        call DzFrameSetFont(frame, "Fonts\\DFHeiMd.ttf", 0.012, 1)
        return 0.075 + etc * 0.0034 + (JNStringLength(s)-etc) * 0.0086
      else
        call DzFrameSetFont(frame, "Fonts\\DFHeiMd.ttf", 0.014, 1)
        return 0.075 + etc * 0.004 + (JNStringLength(s)-etc) * 0.01
      endif
    endfunction
    private function TypeSize takes integer frame, string s, string s6, string name returns real
      local real etc = JNStringLength(s)
      local real kor = (StringLength(s)-etc)/2. + StringLength(s6)
      return RMaxBJ(NameSize(frame, name), 0.07 + (etc-kor) * 0.004 + kor * 0.01)
    endfunction
    //TypeSize(DzFrameGetText(Frame_InvenInfo[3]), DzFrameGetText(Frame_InvenInfo[6]))
    
    private function GetFrameMouseX takes nothing returns real
      return JNMemoryGetReal(FrameMouseXOffset) /* 0. ~ 0.8 */
    endfunction
    private function GetFrameMouseY takes nothing returns real
      return JNMemoryGetReal(FrameMouseYOffset) /* 0. ~ 0.6 */
    endfunction
    private constant function Swap takes boolean one, integer arr returns integer
      if ( one ) then
        return Frame_EquipInfo[arr]
      else
        return Frame_Equip2Info[arr]
      endif
    endfunction
    private constant function CalHeight takes real r0, real r1, real r2 returns real
      if ( r0 > r1 ) then
        return 0.
      elseif ( r1 > r2 ) then
        return r1 - r2
      else
        return 0.
      endif
    endfunction
    private function EquipUp takes item t, boolean one returns nothing
      local integer f = 7
      local integer last = 0
      call Process(EXGetItemDataString(GetItemTypeId(t), 3) + "'" + LoadStr(hash, GetHandleId(t), StringHash("ItemAddData")), 0)
      
      call DzFrameSetTexture(Swap(one, 1), EXGetItemDataString(GetItemTypeId(t), 1), 0)
      call DzFrameSetText(Swap(one, 3), "종류: " + InvenInfo[6] + "등급 " + InvenInfo[2])
      call DzFrameSetText(Swap(one, 4), "레벨 제한: " + InvenInfo[3])
      call DzFrameSetText(Swap(one, 5), InvenInfo[1])
      if ( InvenInfo[7] != "" ) then
        call ProcessEnchat(Pow(GRADE_BONUS,S2R(InvenInfo[7]))-1.)
      endif
      loop
        exitwhen f >= ITEM_TOOLTIP_MAXIMUM+2
        if ( InvenInfo[f+2] == "" ) then
          call DzFrameSetText(Swap(one, f-1), "")
          set last = f-2
        else
          call DzFrameSetText(Swap(one, f-1), InvenInfo[f+2])
        endif
        set f = f + 1
      endloop
      
      if ( InvenInfo[7] != "" ) then
        call DzFrameSetText(Swap(one, last), " ")
        call DzFrameSetText(Swap(one, last+1), "|cffa349a4강화 +" + InvenInfo[7] + " / 옵션증폭 +" + I2S(R2I((Pow(GRADE_BONUS,S2R(InvenInfo[7]))-1.)*100.)) + "%")
        call DzFrameSetSize(Swap(one, 0), TypeSize(Swap(one, 2), DzFrameGetText(Swap(one, 3)), InvenInfo[6], GetItemName(t)), S2R(InvenInfo[0])+.014)
      else
        call DzFrameSetSize(Swap(one, 0), TypeSize(Swap(one, 2), DzFrameGetText(Swap(one, 3)), InvenInfo[6], GetItemName(t)), S2R(InvenInfo[0])-.010)
      endif
      call DzFrameClearAllPoints(Swap(one, 0))
      if ( one ) then
        call DzFrameSetPoint(Swap(one, 0), JN_FRAMEPOINT_TOPRIGHT, Frame_InvenInfo[0], JN_FRAMEPOINT_TOPLEFT, 0., CalHeight(DzFrameGetHeight(Frame_InvenInfo[0]), DzFrameGetHeight(Swap(one, 0)), GetFrameMouseY()))
      else
        call DzFrameSetPoint(Swap(one, 0), JN_FRAMEPOINT_TOPRIGHT, Swap(true, 0), JN_FRAMEPOINT_TOPLEFT, 0., CalHeight(DzFrameGetHeight(Swap(true, 0)), DzFrameGetHeight(Swap(one, 0)), GetFrameMouseY()))
      endif
      call DzFrameShow(Swap(one, 0), true)
    endfunction
    private function InventoryUp takes nothing returns nothing
      local integer f = DzGetTriggerUIEventFrame()
      local integer P = GetPlayerId(DzGetTriggerUIEventPlayer())+1
      local integer Slot = LoadInteger(hash, f, StringHash("FrameID"))
      local item t = LoadItemHandle(hash, P, StringHash("ItemData"+I2S(Slot)))
      local integer last = 0
      
      call Process(EXGetItemDataString(GetItemTypeId(t), 3) + "'" + LoadStr(hash, GetHandleId(t), StringHash("ItemAddData")), 0)
        if ( t != null ) then 
          call DzSyncData("MouseVar", I2S(Slot)) /* 현재 칸 저장(우클릭 위한) */
          
          call DzFrameSetTexture(Frame_InvenInfo[1], EXGetItemDataString(GetItemTypeId(t), 1), 0)
          call DzFrameSetText(Frame_InvenInfo[3], "종류: " + InvenInfo[6] + "등급 " + InvenInfo[2])
          call DzFrameSetText(Frame_InvenInfo[4], "레벨 제한: " + InvenInfo[3])
          call DzFrameSetText(Frame_InvenInfo[5], InvenInfo[1])
          set f = 7
          if ( InvenInfo[7] != "" ) then
            call ProcessEnchat(Pow(GRADE_BONUS,S2R(InvenInfo[7]))-1.)
          endif
          loop
            exitwhen f >= ITEM_TOOLTIP_MAXIMUM+2
            if ( InvenInfo[f+2] == "" ) then
              call DzFrameSetText(Frame_InvenInfo[f-1], "")
              set last = f-2
            else
              call DzFrameSetText(Frame_InvenInfo[f-1], InvenInfo[f+2])
            endif
            set f = f + 1
          endloop
  
          if ( InvenInfo[7] != "" ) then
            call DzFrameSetText(Frame_InvenInfo[last], " ")
            call DzFrameSetText(Frame_InvenInfo[last+1], "|cffa349a4강화 +" + InvenInfo[7] + " / 옵션증폭 +" + I2S(R2I((Pow(GRADE_BONUS,S2R(InvenInfo[7]))-1.)*100.)) + "%")
            call DzFrameSetSize(Frame_InvenInfo[0], TypeSize(Frame_InvenInfo[2], DzFrameGetText(Frame_InvenInfo[3]), InvenInfo[6], GetItemName(t)), S2R(InvenInfo[0])+.014)
          else
            call DzFrameSetSize(Frame_InvenInfo[0], TypeSize(Frame_InvenInfo[2], DzFrameGetText(Frame_InvenInfo[3]), InvenInfo[6], GetItemName(t)), S2R(InvenInfo[0])-.010)
          endif
          call DzFrameClearAllPoints(Frame_InvenInfo[0])
          if ( GetFrameMouseY() > DzFrameGetHeight(Frame_InvenInfo[0]) ) then
            call DzFrameSetAbsolutePoint(Frame_InvenInfo[0], JN_FRAMEPOINT_TOPRIGHT, GetFrameMouseX(), GetFrameMouseY())
          else
            call DzFrameSetAbsolutePoint(Frame_InvenInfo[0], JN_FRAMEPOINT_BOTTOMRIGHT, GetFrameMouseX(), 0.)
          endif
          call DzFrameShow(Frame_InvenInfo[0], true)
          
          if ( Slot > 0 ) then /* 인벤토리 대상, 장비 동시 표시 */
            set Slot = CS2I(InvenInfo[2])
            if ( HaveSavedHandle(hash, P, StringHash("ItemData"+I2S(-Slot))) ) then /* 인벤토리 + 장비 */
              call EquipUp(LoadItemHandle(hash, P, StringHash("ItemData"+I2S(-Slot))), true)
              set Slot = CS2II(Slot)
              if ( Slot > 0 ) and ( HaveSavedHandle(hash, P, StringHash("ItemData"+I2S(-Slot))) ) then /* 인벤토리 + 장비 + 장비2(귀걸이, 반지) */
                call EquipUp(LoadItemHandle(hash, P, StringHash("ItemData"+I2S(-Slot))), false)
              endif
            elseif ( CS2II(Slot) > 0 ) and ( HaveSavedHandle(hash, P, StringHash("ItemData"+I2S(-CS2II(Slot)))) ) then /* 인벤토리 + 장비2 */
              call EquipUp(LoadItemHandle(hash, P, StringHash("ItemData"+I2S(-CS2II(Slot)))), true)
            endif
          endif
        endif
        
        set t = null
    endfunction
    private function InventoryDown takes nothing returns nothing
      call DzFrameShow(Frame_InvenInfo[0], false)
      call DzFrameShow(Swap(true, 0), false)
      call DzFrameShow(Swap(false, 0), false)
      call DzSyncData("MouseVar", "")
    endfunction
    private function CreateEquip takes nothing returns nothing
      local integer loopA = 1
      local integer loopB = 1
      local integer loopC = 1
      set EquipBackdrop[0]=DzCreateFrameByTagName("BACKDROP", "", Frame_InvenButtonsBackDrop[0], "", 0)
      //StandardDecoratedEditBoxBackdropTemplate
      call DzFrameSetSize(EquipBackdrop[0], EQUIPSPACEGAP*5.+EQUIPEDGEGAP*2., EQUIPSPACEGAP*5.+EQUIPEDGEGAP*2.)
      call DzFrameSetPoint(EquipBackdrop[0], JN_FRAMEPOINT_BOTTOMRIGHT, Frame_InvenButtonsBackDrop[0], JN_FRAMEPOINT_TOPRIGHT, 0., Equip_SPACEGAP*.5 + Equip_EDGEGAP*2)
      call DzFrameSetTexture(EquipBackdrop[0], "Equip_Back.blp", 0)
      
      loop
        if ( loopA == 1 ) or ( loopA == 5 ) or ( loopB == 1 ) or ( loopB == 5 ) then
          set EquipBackdrop[loopC]=DzCreateFrameByTagName("BACKDROP", "", EquipBackdrop[0], "", 0)
          call DzFrameSetTexture(EquipBackdrop[loopC], I2BE(loopC), 0)
          call DzFrameSetPoint(EquipBackdrop[loopC], JN_FRAMEPOINT_TOPLEFT, EquipBackdrop[0], JN_FRAMEPOINT_TOPLEFT, EQUIPEDGEGAP+EQUIPSPACEGAP*(loopA-1), -EQUIPEDGEGAP-EQUIPSPACEGAP*(loopB-1))
          call DzFrameSetSize(EquipBackdrop[loopC], EQUIPSPACEGAP-EQUIPEDGEGAP, EQUIPSPACEGAP-EQUIPEDGEGAP)
          
          set Equip[loopC] = DzCreateFrameByTagName("BUTTON", "", EquipBackdrop[loopC], "ScoreScreenTabButtonTemplate", 0)
          call DzFrameSetAllPoints(Equip[loopC], EquipBackdrop[loopC])
          call SaveInteger(hash, Equip[loopC], StringHash("FrameID"), -loopC)
          call DzFrameSetScriptByCode(Equip[loopC], JN_FRAMEEVENT_MOUSE_ENTER, function InventoryUp, false)
          call DzFrameSetScriptByCode(Equip[loopC], JN_FRAMEEVENT_MOUSE_LEAVE, function InventoryDown, false)
          
          call DzFrameSetScriptByCode(Equip[loopC], JN_FRAMEEVENT_MOUSE_DOUBLECLICK, function DoubleClick, true) /* 더블클릭 */
  
          set loopC = loopC + 1
        endif
        set loopA = loopA + 1
        if ( loopA >= 6 ) then
          set loopA = 1
          set loopB = loopB + 1
        endif
        exitwhen loopB >= 6
      endloop
      set Equip[loopC]=DzCreateFrameByTagName("TEXT", "", EquipBackdrop[0], "", 0)
      call DzFrameSetPoint(Equip[loopC], JN_FRAMEPOINT_TOP, EquipBackdrop[0], JN_FRAMEPOINT_TOP, 0., -EQUIPSPACEGAP-EQUIPEDGEGAP)
      call DzFrameSetText(Equip[loopC], "아이템 상승치")
      call DzFrameSetFont(Equip[loopC], "Fonts\\DFHeiMd.ttf", 0.012, 0)
      
      set loopC = 18
      set Equip[loopC]=DzCreateFrameByTagName("TEXTAREA", "", EquipBackdrop[0], "EscMenuTextAreaTemplate", 0)
      call DzFrameClearAllPoints(Equip[loopC])
      call DzFrameSetPoint(Equip[loopC], JN_FRAMEPOINT_TOP, Equip[loopC-1], JN_FRAMEPOINT_BOTTOM, 0., 0.)
      call DzFrameSetSize(Equip[loopC], .12, .11)
      call DzFrameSetFont(Equip[loopC], "Fonts\\DFHeiMd.ttf", 0.010, 0)
      call DzFrameSetText(Equip[loopC], "")
      //스크롤바 클릭 가능하면: 0.72, 0.43
    endfunction
    private function ItemDrop takes nothing returns nothing
    /* "23" -> 동기화 플레이어 23번아이템 드랍 */
      local integer P = GetPlayerId(DzGetTriggerSyncPlayer())+1
      local integer Slot = S2I(DzGetTriggerSyncData())
      local item t = LoadItemHandle(hash, P, StringHash("ItemData"+I2S(Slot)))
      local integer NextSlot = LoadInteger(hash, P, StringHash("ItemData0"))
      
      if ( GetLocalPlayer() == Player(P-1) ) then
        call StartSound(gg_snd_HeroDropItem1)
      endif
      if ( Slot == -99 ) then  /* 전체버리기 */
        set Slot = MAX_SAVE_INVENTORY
        loop
          if ( HaveSavedHandle(hash, P, StringHash("ItemData"+I2S(Slot))) ) then
            set t = LoadItemHandle(hash, P, StringHash("ItemData"+I2S(Slot)))
            call SetItemPosition(t, GetWidgetX(udg_hero[P]), GetWidgetY(udg_hero[P]))
            call RemoveSavedHandle(hash, P, StringHash("ItemData"+I2S(Slot))) /* 제거 */
            if ( GetLocalPlayer() == Player(P-1) ) then
              call DzFrameSetTexture(Frame_InvenButtonsBackDrop[Slot], "Inven_Empty.blp", 0)
            endif
          endif
          exitwhen Slot == 1
          set Slot = Slot - 1
        endloop
        call DisplayTimedTextToPlayer(Player(P-1), 0, 0, 4., "아이템을 모두 버렸습니다.")
        call SaveInteger(hash, P, StringHash("ItemData0"), Slot)
      else
        if ( NextSlot == 0 ) then /* 다음에 먹을 슬롯칸 저장 */
          call SaveInteger(hash, P, StringHash("ItemData0"), IMinBJ(Slot, NextSlot))
        else
          call SaveInteger(hash, P, StringHash("ItemData0"), Slot)
        endif
        call SetItemPosition(t, GetWidgetX(udg_hero[P]), GetWidgetY(udg_hero[P]))
        call RemoveSavedHandle(hash, P, StringHash("ItemData"+I2S(Slot))) /* 제거 */
        call DisplayTimedTextToPlayer(Player(P-1), 0, 0, 4., GetItemName(t) + "을(를) 버렸습니다.")
      endif
      set t = null
    endfunction
    private function ItemChange takes nothing returns nothing
    /* "23'24" -> 23번을 24번으로 이동or교체 */
      local integer P = GetPlayerId(DzGetTriggerSyncPlayer())+1
      local string s = DzGetTriggerSyncData()
      local integer OriSlot = S2I(JNStringSplit(s,"'",0))
      local integer NewSlot = S2I(JNStringSplit(s,"'",1))
      local item t = LoadItemHandle(hash, P, StringHash("ItemData"+I2S(NewSlot)))
      
      call SaveItemHandle(hash, P, StringHash("ItemData"+I2S(NewSlot)), LoadItemHandle(hash, P, StringHash("ItemData"+I2S(OriSlot))))
      
      if ( t == null ) then
        call RemoveSavedHandle(hash, P, StringHash("ItemData"+I2S(OriSlot))) /* 제거 */
        call SaveInteger(hash, P, StringHash("ItemData0"), IMinBJ(OriSlot, LoadInteger(hash, P, StringHash("ItemData0"))))
      else
        call SaveItemHandle(hash, P, StringHash("ItemData"+I2S(OriSlot)), t)
      endif
      //call DisplayTimedTextToPlayer(Player(P-1), 0, 0, 4., GetItemName(LoadItemHandle(hash, P, StringHash("ItemData"+I2S(NewSlot)))) + "와 "+GetItemName(t)+"을(를) 바꿨습니다.")
      set t = null
    endfunction
    public function GetEmpty takes integer P returns integer
    //다음에 먹을 빈 공간 찾기
     local integer loopA = 1
      loop
        if not ( HaveSavedHandle(hash, P, StringHash("ItemData"+I2S(loopA))) ) then
          call SaveInteger(hash, P, StringHash("ItemData0"), loopA)
          return loopA
        endif
        exitwhen loopA >= MAX_SAVE_INVENTORY
        set loopA = loopA + 1
      endloop
      return 0
    endfunction
    private function ItemEquip2 takes item t, integer P, integer Slot, integer Num returns nothing
      if ( GetLocalPlayer() == Player(P-1) ) then
        call DzFrameSetTexture(EquipBackdrop[Slot], EXGetItemDataString(GetItemTypeId(t), 1), 0)
        call DzFrameSetTexture(Frame_InvenButtonsBackDrop[Num], "Inven_Empty.blp", 0)
      endif
      call SaveItemHandle(hash, P, StringHash("ItemData"+I2S(-Slot)), t)
      call RemoveSavedHandle(hash, P, StringHash("ItemData"+I2S(Num))) /* 제거 */
      
      call SaveInteger(hash, P, StringHash("ItemData0"), IMinBJ(Num, LoadInteger(hash, P, StringHash("ItemData0"))))
      
      call Process(EXGetItemDataString(GetItemTypeId(t), 3) + "'" + LoadStr(hash, GetHandleId(t), StringHash("ItemAddData")), P)
    endfunction
    private function ItemEquip takes nothing returns nothing
      local integer P = GetPlayerId(DzGetTriggerSyncPlayer())+1
      local integer Num = S2I(DzGetTriggerSyncData())
      local integer Slot = 0
      local item t
      if ( Num < 0 ) then /* -12 -> 12번째 장비칸을 탈착 */
        set t = LoadItemHandle(hash, P, StringHash("ItemData"+I2S(Num)))
        set Slot = LoadInteger(hash, P, StringHash("ItemData0"))
        if ( GetLocalPlayer() == Player(P-1) ) then
          call DzFrameSetTexture(EquipBackdrop[-Num], I2BE(-Num), 0)
          call DzFrameSetTexture(Frame_InvenButtonsBackDrop[Slot], EXGetItemDataString(GetItemTypeId(t), 1), 0)
        endif
        call SaveItemHandle(hash, P, StringHash("ItemData"+I2S(Slot)), t)
        call RemoveSavedHandle(hash, P, StringHash("ItemData"+I2S(Num)))
        call GetEmpty(P)
        
        /* P의 실제 능력치 감소 */
        call Process(EXGetItemDataString(GetItemTypeId(t), 3) + "'" + LoadStr(hash, GetHandleId(t), StringHash("ItemAddData")), -P)
      else                /* 23 -> 23번아이템을 장착 */
        set t = LoadItemHandle(hash, P, StringHash("ItemData"+I2S(Num)))
        call Process(EXGetItemDataString(GetItemTypeId(t), 3) + "'" + LoadStr(hash, GetHandleId(t), StringHash("ItemAddData")), 0)
        set Slot = CS2I(InvenInfo[2]) /* 무기(검) → 1 */
        
        if ( GetHeroLevel(udg_hero[P]) < S2I(InvenInfo[3]) ) then /* 레벨제한 */
          call DisplayTimedTextToPlayer(Player(P-1), 0, 0, 4., GetItemName(t) + "의 착용레벨은 " +InvenInfo[3]+ " 입니다.")
        elseif ( HaveSavedHandle(hash, P, StringHash("ItemData"+I2S(-Slot))) ) then /* 중첩제한 */
          if ( CS2II(Slot) == 0 ) or ( HaveSavedHandle(hash, P, StringHash("ItemData"+I2S(-CS2II(Slot)))) ) then
            call DisplayTimedTextToPlayer(Player(P-1), 0, 0, 4., I2CS(Slot) + "에 장착된 " + GetItemName(LoadItemHandle(hash, P, StringHash("ItemData"+I2S(-Slot)))) + "을(를) 먼저 장착 해제해주세요.")
          else    /* 귀걸이, 반지 특별허용 */
            call ItemEquip2(t, P, CS2II(Slot), Num)
          endif
        else
          call ItemEquip2(t, P, Slot, Num)
        endif
      endif
    endfunction
    private function InventoryClick takes nothing returns nothing
      local integer f = DzGetTriggerUIEventFrame()
      local integer P = GetPlayerId(DzGetTriggerUIEventPlayer())+1
      local integer fno = LoadInteger(hash, f, StringHash("FrameID"))
      local item t = LoadItemHandle(hash, P, StringHash("ItemData"+I2S(fno)))
      if ( ClickNow[P] == 0 ) then /* 첫번째 클릭 */
        if ( fno == -99 ) then /* 버리기 */
          call DzFrameSetModel(ClickView, "Equip_Clicking2.mdx", 0, 0) /* 반짝이 효과 big _버리기 */
        elseif ( t != null ) then
          call DzFrameSetModel(ClickView, "Equip_Clicking1.mdx", 0, 0) /* 반짝이 효과 small _일반 */
        else
          return
        endif
        set ClickNow[P] = fno
        call DzFrameClearAllPoints(ClickView)
        call DzFrameSetAllPoints(ClickView, f)
        call DzFrameShow(ClickView, true)
        set t = null
      elseif ( t != null ) then               /* to 아이템 */
        if ( ClickNow[P] == -99 ) then           /* 버리기 to 아이템 (버리기) */
          call DzFrameSetTexture(Frame_InvenButtonsBackDrop[fno], "Inven_Empty.blp", 0)
          call DzSyncData("ItemDrop",I2S(fno))
        elseif ( fno == ClickNow[P] ) then      /* 아이템 to 아이템 (더블클릭-즉시장착) */
          call DzSyncData("I_Equip", I2S(fno))
        else                                    /* 아이템 to 아이템 (위치변경) */
          call DzSyncData("I_Change",I2S(ClickNow[P])+"'"+I2S(fno))
          call DzFrameSetTexture(Frame_InvenButtonsBackDrop[ClickNow[P]], EXGetItemDataString(GetItemTypeId(LoadItemHandle(hash, P, StringHash("ItemData"+I2S(fno)))), 1), 0)
          call DzFrameSetTexture(Frame_InvenButtonsBackDrop[fno], EXGetItemDataString(GetItemTypeId(LoadItemHandle(hash, P, StringHash("ItemData"+I2S(ClickNow[P])))), 1), 0)
          
          call DzSyncData("MouseVar", I2S(fno)) /* 현재 칸 번호 저장 */
        endif
        set t = null
        set ClickNow[P] = 0
        call DzFrameShow(ClickView, false)
      elseif ( fno != 0 ) then
        call DzFrameSetTexture(Frame_InvenButtonsBackDrop[ClickNow[P]], "Inven_Empty.blp", 0)
        if ( fno == -99 ) then             /* 아이템 to 버리기 */
          call DzSyncData("ItemDrop",I2S(ClickNow[P]))
        elseif ( ClickNow[P] != -99 ) then /* without 버리기 to 빈공간 ( 아이템 to 빈공간 ) */
          call DzSyncData("I_Change",I2S(ClickNow[P])+"'"+I2S(fno))
          call DzFrameSetTexture(Frame_InvenButtonsBackDrop[fno], EXGetItemDataString(GetItemTypeId(LoadItemHandle(hash, P, StringHash("ItemData"+I2S(ClickNow[P])))), 1), 0)
          call DzFrameSetTexture(Frame_InvenButtonsBackDrop[ClickNow[P]], "Inven_Empty.blp", 0)
          
          call DzSyncData("MouseVar", I2S(fno)) /* 현재 칸 번호 저장 */
        endif
        set ClickNow[P] = 0
        call DzFrameShow(ClickView, false)
      endif
    endfunction
    private function InventoryToolTip takes nothing returns nothing
      local integer int = 0
      set Frame_InvenInfo[int] = DzCreateFrameByTagName("BACKDROP", "", Frame_InvenButtonsBackDrop[0], "QuestButtonBaseTemplate", 0)
      call DzFrameSetSize(Frame_InvenInfo[int], .25, .25)
      call DzFrameSetAbsolutePoint(Frame_InvenInfo[int], JN_FRAMEPOINT_TOPLEFT, .4, .3)
      //call DzFrameSetTexture(Frame_InvenInfo[int], "QuestButtonBaseTemplate", 0)
      
      set int = int + 1
      set Frame_InvenInfo[int] = DzCreateFrameByTagName("BACKDROP", "", Frame_InvenInfo[0], "", 0)
      call DzFrameSetSize(Frame_InvenInfo[int], .05, .05)
      call DzFrameSetPoint(Frame_InvenInfo[int], JN_FRAMEPOINT_TOPLEFT, Frame_InvenInfo[0], JN_FRAMEPOINT_TOPLEFT, .01, -.01)
      call DzFrameSetTexture(Frame_InvenInfo[int], "Inven_Empty.blp", 0)
      
      set int = int + 1
      set Frame_InvenInfo[int] = DzCreateFrameByTagName("TEXT", "", Frame_InvenInfo[0], "", 0)
      call DzFrameSetPoint(Frame_InvenInfo[int], JN_FRAMEPOINT_BOTTOMLEFT, Frame_InvenInfo[int-1], JN_FRAMEPOINT_TOPRIGHT, .01, -.015)
      call DzFrameSetText(Frame_InvenInfo[int], "바이탈리티 페리앱트 (에픽)")
      
      set int = int + 1
      set Frame_InvenInfo[int] = DzCreateFrameByTagName("TEXT", "", Frame_InvenInfo[0], "", 0)
      call DzFrameSetPoint(Frame_InvenInfo[int], JN_FRAMEPOINT_TOPLEFT, Frame_InvenInfo[int-1], JN_FRAMEPOINT_BOTTOMLEFT, 0., -.005)
      call DzFrameSetText(Frame_InvenInfo[int], "종류: S등급 반지")
      
      set int = int + 1
      set Frame_InvenInfo[int] = DzCreateFrameByTagName("TEXT", "", Frame_InvenInfo[0], "", 0)
      call DzFrameSetPoint(Frame_InvenInfo[int], JN_FRAMEPOINT_TOPLEFT, Frame_InvenInfo[int-1], JN_FRAMEPOINT_BOTTOMLEFT, 0., -.005)
      call DzFrameSetText(Frame_InvenInfo[int], "착용 레벨: 40")
      
      set int = int + 1
      set Frame_InvenInfo[int] = DzCreateFrameByTagName("TEXT", "", Frame_InvenInfo[0], "", 0)
      call DzFrameSetPoint(Frame_InvenInfo[int], JN_FRAMEPOINT_TOPLEFT, Frame_InvenInfo[1], JN_FRAMEPOINT_BOTTOMLEFT, 0., -.01)
      call DzFrameSetFont(Frame_InvenInfo[int], "Fonts\\DFHeiMd.ttf", 0.010, 1)
      call DzFrameSetText(Frame_InvenInfo[int], "전설에 의하면 저주에 걸린 아쥰의 영혼이
  오늘 날까지도 자신의 심장을 찾고 있다고
  합니다.")
  
      loop
        set int = int + 1
        set Frame_InvenInfo[int] = DzCreateFrameByTagName("TEXT", "", Frame_InvenInfo[0], "", 0)
        if ( int == 6 ) then
          call DzFrameSetPoint(Frame_InvenInfo[int], JN_FRAMEPOINT_TOPLEFT, Frame_InvenInfo[int-1], JN_FRAMEPOINT_BOTTOMLEFT, 0., -.01)
        else
          call DzFrameSetPoint(Frame_InvenInfo[int], JN_FRAMEPOINT_TOPLEFT, Frame_InvenInfo[int-1], JN_FRAMEPOINT_BOTTOMLEFT, 0., 0.)
        endif
        call DzFrameSetFont(Frame_InvenInfo[int], "Fonts\\DFHeiMd.ttf", 0.012, 1)
        call DzFrameSetText(Frame_InvenInfo[int], I2S(int))
        exitwhen int >= ITEM_TOOLTIP_MAXIMUM
      endloop
        
      call DzFrameShow(Frame_InvenInfo[0], false)
    endfunction
    private function SwapSet takes boolean first, integer arr, integer var returns nothing
      if ( first ) then
        set Frame_EquipInfo[arr] = var
      else
        set Frame_Equip2Info[arr] = var
      endif
    endfunction
    private function EquipToolTip takes boolean first returns nothing
      local integer int = 0
      call SwapSet(first,int,DzCreateFrameByTagName("BACKDROP", "", Frame_InvenButtonsBackDrop[0], "QuestButtonBaseTemplate", 0))
      call DzFrameSetSize(Swap(first, int), .25, .25)
      call DzFrameSetAbsolutePoint(Swap(first, int), JN_FRAMEPOINT_TOPLEFT, .4, .3)
      //call DzFrameSetTexture(Swap(first, int), "QuestButtonBaseTemplate", 0)
      
      set int = int + 1
      call SwapSet(first, int, DzCreateFrameByTagName("BACKDROP", "", Swap(first,0), "", 0))
      call DzFrameSetSize(Swap(first, int), .05, .05)
      call DzFrameSetPoint(Swap(first, int), JN_FRAMEPOINT_TOPLEFT, Swap(first,0), JN_FRAMEPOINT_TOPLEFT, .01, -.01)
      call DzFrameSetTexture(Swap(first, int), "Inven_Empty.blp", 0)
      
      set int = int + 1
      call SwapSet(first, int, DzCreateFrameByTagName("TEXT", "", Swap(first,0), "", 0))
      call DzFrameSetPoint(Swap(first, int), JN_FRAMEPOINT_BOTTOMLEFT, Swap(first, int-1), JN_FRAMEPOINT_TOPRIGHT, .01, -.015)
      call DzFrameSetText(Swap(first, int), "바이탈리티 페리앱트 (에픽)")
      
      set int = int + 1
      call SwapSet(first, int, DzCreateFrameByTagName("TEXT", "", Swap(first,0), "", 0))
      call DzFrameSetPoint(Swap(first, int), JN_FRAMEPOINT_TOPLEFT, Swap(first, int-1), JN_FRAMEPOINT_BOTTOMLEFT, 0., -.005)
      call DzFrameSetText(Swap(first, int), "종류: S등급 반지")
      
      set int = int + 1
      call SwapSet(first, int, DzCreateFrameByTagName("TEXT", "", Swap(first,0), "", 0))
      call DzFrameSetPoint(Swap(first, int), JN_FRAMEPOINT_TOPLEFT, Swap(first, int-1), JN_FRAMEPOINT_BOTTOMLEFT, 0., -.005)
      call DzFrameSetText(Swap(first, int), "착용 레벨: 40")
      
      set int = int + 1
      call SwapSet(first, int, DzCreateFrameByTagName("TEXT", "", Swap(first,0), "", 0))
      call DzFrameSetPoint(Swap(first, int), JN_FRAMEPOINT_TOPLEFT, Swap(first,1), JN_FRAMEPOINT_BOTTOMLEFT, 0., -.01)
      call DzFrameSetFont(Swap(first, int), "Fonts\\DFHeiMd.ttf", 0.010, 1)
      call DzFrameSetText(Swap(first, int), "전설에 의하면 저주에 걸린 아쥰의 영혼이
  오늘 날까지도 자신의 심장을 찾고 있다고
  합니다.")
  
      loop
        set int = int + 1
        call SwapSet(first, int, DzCreateFrameByTagName("TEXT", "", Swap(first,0), "", 0))
        if ( int == 6 ) then
          call DzFrameSetPoint(Swap(first, int), JN_FRAMEPOINT_TOPLEFT, Swap(first, int-1), JN_FRAMEPOINT_BOTTOMLEFT, 0., -.01)
        else
          call DzFrameSetPoint(Swap(first, int), JN_FRAMEPOINT_TOPLEFT, Swap(first, int-1), JN_FRAMEPOINT_BOTTOMLEFT, 0., 0.)
        endif
        call DzFrameSetFont(Swap(first, int), "Fonts\\DFHeiMd.ttf", 0.012, 1)
        call DzFrameSetText(Swap(first, int), I2S(int))
        exitwhen int >= ITEM_TOOLTIP_MAXIMUM
      endloop
        
      call DzFrameShow(Swap(first,0), false)
    endfunction
    private constant function Cal takes integer A, integer B returns integer
      return (B-1)*7+A
    endfunction
    private function CreateInventory takes nothing returns nothing
      local integer loopA = 0
      local integer loopB = 1
      set Frame_InvenButtonsBackDrop[loopA]=DzCreateFrameByTagName("BACKDROP", "", DzGetGameUI(), "", 0)
      //StandardDecoratedEditBoxBackdropTemplate
      call DzFrameSetSize(Frame_InvenButtonsBackDrop[loopA], SPACEGAP*7.+EDGEGAP*2., SPACEGAP*8.+EDGEGAP)
      call DzFrameSetAbsolutePoint(Frame_InvenButtonsBackDrop[loopA], JN_FRAMEPOINT_BOTTOMLEFT, .6, .08)
      call DzFrameSetTexture(Frame_InvenButtonsBackDrop[loopA], "Equip_Back.blp", 0)
      
      set Frame_InvenButtons[loopA]=DzCreateFrameByTagName("TEXT", "", Frame_InvenButtonsBackDrop[loopA], "", 0)
      call DzFrameSetPoint(Frame_InvenButtons[loopA], JN_FRAMEPOINT_CENTER, Frame_InvenButtonsBackDrop[loopA], JN_FRAMEPOINT_TOP, 0, -SPACEGAP*.5)
      call DzFrameSetText(Frame_InvenButtons[loopA], "I  N  V  E  N  T  O  R  Y")        
      
      loop
        set loopA = loopA + 1
        set Frame_InvenButtonsBackDrop[Cal(loopA,loopB)]=DzCreateFrameByTagName("BACKDROP", "", Frame_InvenButtonsBackDrop[0], "", 0)
        call DzFrameSetPoint(Frame_InvenButtonsBackDrop[Cal(loopA,loopB)], JN_FRAMEPOINT_TOPLEFT, Frame_InvenButtonsBackDrop[0], JN_FRAMEPOINT_TOPLEFT, EDGEGAP+SPACEGAP*(loopA-1), -EDGEGAP-SPACEGAP*loopB)
        call DzFrameSetSize(Frame_InvenButtonsBackDrop[Cal(loopA,loopB)], 0.0235, 0.0235)
        call DzFrameSetTexture(Frame_InvenButtonsBackDrop[Cal(loopA,loopB)], "Inven_Empty.blp", 0)
        
        set Frame_InvenButtons[Cal(loopA,loopB)] = DzCreateFrameByTagName("BUTTON", "", Frame_InvenButtonsBackDrop[Cal(loopA,loopB)], "ScoreScreenTabButtonTemplate", 0)
        call DzFrameSetAllPoints(Frame_InvenButtons[Cal(loopA,loopB)], Frame_InvenButtonsBackDrop[Cal(loopA,loopB)])
        call SaveInteger(hash, Frame_InvenButtons[Cal(loopA,loopB)], StringHash("FrameID"), Cal(loopA,loopB))
        call DzFrameSetScriptByCode(Frame_InvenButtons[Cal(loopA,loopB)], JN_FRAMEEVENT_MOUSE_ENTER, function InventoryUp, false)
        call DzFrameSetScriptByCode(Frame_InvenButtons[Cal(loopA,loopB)], JN_FRAMEEVENT_MOUSE_LEAVE, function InventoryDown, false)
        call DzFrameSetScriptByCode(Frame_InvenButtons[Cal(loopA,loopB)], JN_FRAMEEVENT_MOUSE_UP, function InventoryClick, false)
        
        if ( loopA >= 7 ) then
          set loopA = 0
          set loopB = loopB + 1
        endif
        exitwhen loopB >= 8
      endloop
      
      set loopA = Cal(loopA,loopB) +1
      
      /* 버리기 아이콘 */
      set loopA = loopA +1
      set Frame_InvenButtonsBackDrop[loopA]=DzCreateFrameByTagName("BACKDROP", "", Frame_InvenButtonsBackDrop[0], "", 0)
      call DzFrameSetPoint(Frame_InvenButtonsBackDrop[loopA], JN_FRAMEPOINT_BOTTOMRIGHT, Frame_InvenButtonsBackDrop[0], JN_FRAMEPOINT_BOTTOMLEFT, -EDGEGAP, 0.)
      call DzFrameSetTexture(Frame_InvenButtonsBackDrop[loopA], "Equip_Back.blp", 0)
      call DzFrameSetSize(Frame_InvenButtonsBackDrop[loopA], SPACEGAP*1.25, SPACEGAP*1.25)
      
      set loopA = loopA +1
      set Frame_InvenButtonsBackDrop[loopA]=DzCreateFrameByTagName("BACKDROP", "", Frame_InvenButtonsBackDrop[loopA-1], "", 0)
      call DzFrameSetPoint(Frame_InvenButtonsBackDrop[loopA], JN_FRAMEPOINT_CENTER, Frame_InvenButtonsBackDrop[loopA-1], JN_FRAMEPOINT_CENTER, 0., 0.)
      call DzFrameSetTexture(Frame_InvenButtonsBackDrop[loopA], "ReplaceableTextures\\CommandButtons\\BTNPickUpItem.blp", 0)
      call DzFrameSetSize(Frame_InvenButtonsBackDrop[loopA], SPACEGAP*1.1, SPACEGAP*1.1)
      
      set Frame_InvenButtons[loopA] = DzCreateFrameByTagName("BUTTON", "", Frame_InvenButtonsBackDrop[loopA], "ScoreScreenTabButtonTemplate", 0)
      call DzFrameSetAllPoints(Frame_InvenButtons[loopA], Frame_InvenButtonsBackDrop[loopA])
      call SaveInteger(hash, Frame_InvenButtons[loopA], StringHash("FrameID"), -99)
      call DzFrameSetScriptByCode(Frame_InvenButtons[loopA], JN_FRAMEEVENT_MOUSE_UP, function InventoryClick, false)
      
      set ClickView = DzCreateFrameByTagName("SPRITE", "Test2", Frame_InvenButtonsBackDrop[loopA], "", 0)
      call DzFrameSetModel(ClickView, "Equip_Clicking1.mdx", 0, 0)
      call DzFrameSetAllPoints(ClickView, Frame_InvenButtonsBackDrop[loopA])
      call DzFrameShow(ClickView, false)
      
      call DzFrameShow(Frame_InvenButtonsBackDrop[0], false)
    endfunction
    private function Init takes nothing returns nothing
      local trigger t = CreateTrigger()
      call CreateInventory()
      call CreateEquip()
      call InventoryToolTip()
      call EquipToolTip(true)
      call EquipToolTip(false)
      call DzTriggerRegisterSyncData(t, "ItemDrop", false)
      call TriggerAddAction(t, function ItemDrop)
      
      set t = CreateTrigger()
      call DzTriggerRegisterSyncData(t, "I_Change", false)
      call TriggerAddAction(t, function ItemChange)
      
      set t = CreateTrigger()
      call DzTriggerRegisterSyncData(t, "I_Equip", false)
      call TriggerAddAction(t, function ItemEquip)
      
      set t = CreateTrigger()
      call DzTriggerRegisterSyncData(t, "MouseVar", false)
      call TriggerAddAction(t, function MouseVariable)
      
      set t = CreateTrigger()
      call DzTriggerRegisterMouseEventByCode(t, JN_MOUSE_BUTTON_TYPE_RIGHT, bj_KEYEVENTTYPE_DEPRESS, true, null) /* 우클릭 누르면 작동 */
      call TriggerAddAction(t, function RightClick)
      
      set FrameMouseXOffset = JNGetModuleHandle("Game.dll")+0xCB1AF8
      set FrameMouseYOffset = JNGetModuleHandle("Game.dll")+0xCB1AFC
      
      set t = null
    endfunction
  endscope