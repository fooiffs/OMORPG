scope Info initializer Init
  
    private function Info takes integer no, integer parent, real size, integer point, integer point2, real x, real y, string text returns integer
      set Frame_Info[no] = DzCreateFrameByTagName("TEXT", "", parent, "", no)
      if ( size != 0. ) then
        call DzFrameSetFont(Frame_Info[no], "Fonts\\DFHeiMd.ttf", size, 1)
      endif
      call DzFrameSetPoint(Frame_Info[no], point, parent, point2, x, y)
      call DzFrameSetText(Frame_Info[no], text)
      return no+1
    endfunction
    /*private function InfoCase takes integer no, integer parent1, integer parent2, integer parent3 returns integer
      set Frame_Info[no] = DzCreateFrameByTagName("BACKDROP", "", Frame_Info[0], "", 0)
      call DzFrameSetPoint(Frame_Info[no], JN_FRAMEPOINT_TOPLEFT, parent1, JN_FRAMEPOINT_TOPLEFT, 0., 0.)
      call DzFrameSetPoint(Frame_Info[no], JN_FRAMEPOINT_BOTTOMRIGHT, parent2, JN_FRAMEPOINT_BOTTOMRIGHT, 0., -0.0007)
      if ( parent3 != 0 ) then
        call DzFrameSetPoint(Frame_Info[no], JN_FRAMEPOINT_TOPRIGHT, parent3, JN_FRAMEPOINT_TOPRIGHT, 0., 0.)
      endif
      call DzFrameSetTexture(Frame_Info[no], "Select_SlotBack50.blp", 0)
      return no+1
    endfunction
    */
    private function Info2 takes integer no, integer parent, integer point, integer point2, real x, real y, string text, real size, string texture, real xx, real yy returns integer
      set Frame_Info[no] = DzCreateFrameByTagName("BUTTON", "", parent, "ScoreScreenTabButtonTemplate", 0)
      call DzFrameSetPoint(Frame_Info[no], point, parent, point2, x, y)
      call DzFrameSetSize(Frame_Info[no], xx, yy)
      
      set no = no + 1
      set Frame_Info[no] = DzCreateFrameByTagName("BACKDROP", "", Frame_Info[no-1], "", 0)
      call DzFrameSetAllPoints(Frame_Info[no], Frame_Info[no-1])
      call DzFrameSetTexture(Frame_Info[no], texture, 0)
      if ( text != "" ) then
        set no = no + 1
        set Frame_Info[no] = DzCreateFrameByTagName("TEXT", "", Frame_Info[no-1], "", no)
        if ( size != 0. ) then
          call DzFrameSetFont(Frame_Info[no], "Fonts\\DFHeiMd.ttf", size, 1)
        endif
        call DzFrameSetPoint(Frame_Info[no], JN_FRAMEPOINT_CENTER, Frame_Info[no-1], JN_FRAMEPOINT_CENTER, 0., 0.)
        call DzFrameSetText(Frame_Info[no], text)
      endif
      return no+1
    endfunction
    private function Info3 takes integer no, real size, integer point, integer point2, real x, real y, string text returns nothing
      set Frame_InfoValue[no] = DzCreateFrameByTagName("TEXT", "", Frame_Info[no], "", no)
      if ( size != 0. ) then
        call DzFrameSetFont(Frame_InfoValue[no], "Fonts\\DFHeiMd.ttf", size, 1)
      endif
      call DzFrameSetPoint(Frame_InfoValue[no], point, Frame_Info[no], point2, x, y)
      call DzFrameSetText(Frame_InfoValue[no], text)
    endfunction
  private function CreateInfo takes nothing returns nothing
   local integer i = 1
    set Frame_Info[0]=DzCreateFrameByTagName("BACKDROP", "", DzGetGameUI(), "", 0)
    call DzFrameSetSize(Frame_Info[0], .12, .15)
    call DzFrameSetAbsolutePoint(Frame_Info[0], JN_FRAMEPOINT_TOPLEFT, .1, .5)
    call DzFrameSetTexture(Frame_Info[0], "Select_SlotBack75.blp", 0)
    call DzFrameSetAlpha(Frame_Info[0], 192)
    
    set i = Info2(i, Frame_Info[0], JN_FRAMEPOINT_TOPRIGHT, JN_FRAMEPOINT_TOPRIGHT, -Equip_EDGEGAP*2, -Equip_EDGEGAP*2, "", 0., "Info\\ButtonX.blp",  .01, .01)

    set i = Info(i, Frame_Info[0], .012, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_TOPLEFT, Equip_EDGEGAP2, -.0125, "이름: ")
    set i = Info(i, Frame_Info[0], .012, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_TOPLEFT, Equip_EDGEGAP2, -.025, "플탐: ")
    set i = Info(i, Frame_Info[0], .012, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_TOPLEFT, Equip_EDGEGAP2, -.0375, "직업: ")
    set i = Info(i, Frame_Info[0], .012, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_TOPLEFT, Equip_EDGEGAP2, -.05, "단계: ")
    set i = Info(i, Frame_Info[0], .012, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_TOPLEFT, Equip_EDGEGAP2, -.0625, "공격력: ")
    set i = Info(i, Frame_Info[0], .012, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_TOPLEFT, Equip_EDGEGAP2, -.075, "ＨＰ: ")
    set i = Info(i, Frame_Info[0], .012, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_TOPLEFT, Equip_EDGEGAP2, -.0875, "ＭＰ: ")
    call Info3(i-7, .010, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_RIGHT, 0., 0., GetPlayerName(GetLocalPlayer()))
    call Info3(i-6, .010, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_RIGHT, 0., 0., I2S(GetRandomInt(0,2))+"d "+I2S(GetRandomInt(0,23)) +"h "+I2S(GetRandomInt(0,59)))
    call Info3(i-5, .010, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_RIGHT, 0., 0., "검사")
    call Info3(i-4, .010, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_RIGHT, 0., 0., "삼류")
    call Info3(i-3, .010, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_RIGHT, 0., 0., I2S(GetRandomInt(100,999))+"~"+I2S(GetRandomInt(1000,9999)))
    call Info3(i-2, .010, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_RIGHT, 0., 0., I2S(GetRandomInt(1000,2000))+"/"+I2S(GetRandomInt(2000,9999)))
    call Info3(i-1, .010, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_RIGHT, 0., 0., I2S(GetRandomInt(1000,2000))+"/"+I2S(GetRandomInt(2000,9999)))
    
    set i = Info(i, Frame_Info[0], .012, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_TOPLEFT, Equip_EDGEGAP2, -.1125, "파워: ")
    call Info3(i-1, .010, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_RIGHT, 0., 0., "("+I2S(GetRandomInt(100,999))+"+"+I2S(GetRandomInt(10,99))+")")
    set i = Info2(i, Frame_InfoValue[i-1], JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_RIGHT, Equip_EDGEGAP, 0., "", 0., "ReplaceableTextures\\PassiveButtons\\PASBTNStatUp.blp", .011, .011)
    set i = Info2(i, Frame_Info[i-1], JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_RIGHT, Equip_EDGEGAP, 0., "", 0., "Info\\StatUp3-1.blp", .011, .011)
    
    set i = Info(i, Frame_Info[0], .012, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_TOPLEFT, Equip_EDGEGAP2, -.125, "집중: ")
    call Info3(i-1, .010, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_RIGHT, 0., 0., "("+I2S(GetRandomInt(100,999))+"+"+I2S(GetRandomInt(10,99))+")")
    set i = Info2(i, Frame_InfoValue[i-1], JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_RIGHT, Equip_EDGEGAP, 0., "", 0., "ReplaceableTextures\\PassiveButtons\\PASBTNStatUp.blp", .011, .011)
    set i = Info2(i, Frame_Info[i-1], JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_RIGHT, Equip_EDGEGAP, 0., "", 0., "Info\\StatUp3-1.blp", .011, .011)

    set i = Info(i, Frame_Info[0], .012, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_TOPLEFT, Equip_EDGEGAP2, -.1375, "활력: ")
    call Info3(i-1, .010, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_RIGHT, 0., 0., "("+I2S(GetRandomInt(100,999))+"+"+I2S(GetRandomInt(10,99))+")")
    set i = Info2(i, Frame_InfoValue[i-1], JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_RIGHT, Equip_EDGEGAP, 0., "", 0., "ReplaceableTextures\\PassiveButtons\\PASBTNStatUp.blp", .011, .011)
    set i = Info2(i, Frame_Info[i-1], JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_RIGHT, Equip_EDGEGAP, 0., "", 0., "Info\\StatUp3-2.blp", .011, .011)
    
    set i = Info2(i, Frame_Info[0], JN_FRAMEPOINT_TOPRIGHT, JN_FRAMEPOINT_BOTTOMRIGHT, 0., -Equip_EDGEGAP, "상세스텟", .011, "Select_SlotBack75.blp", .045, .015)
    
    set Frame_Info[i]=DzCreateFrameByTagName("BACKDROP", "", Frame_Info[0], "", 0)
    call DzFrameSetSize(Frame_Info[i], .12, .285)
    call DzFrameSetPoint(Frame_Info[i], JN_FRAMEPOINT_TOPRIGHT, Frame_Info[i-2], JN_FRAMEPOINT_BOTTOMRIGHT, 0., -Equip_EDGEGAP)
    call DzFrameSetTexture(Frame_Info[i], "Equip_Back.blp", 0)
    set i = i + 1
  
    set i = Info(i, Frame_Info[i-1], .010, JN_FRAMEPOINT_TOPLEFT, JN_FRAMEPOINT_TOPLEFT, Equip_EDGEGAP2, -.005, "방어(감소율)")
    set i = Info(i, Frame_Info[i-1], .010, JN_FRAMEPOINT_TOPLEFT, JN_FRAMEPOINT_BOTTOMLEFT, 0., -Equip_EDGEGAP, "추가감소/회피")
    call Info3(i-2, .010, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .055, 0., I2S(GetRandomInt(1000,9999))+" ("+R2SW(GetRandomReal(10.,99.),2,1)+"%)")
    call Info3(i-1, .010, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .055, 0., I2S(GetRandomInt(100,999))+" / "+I2S(GetRandomInt(10,99))+"%")
    
    
    call SkillTree.MakeLineY(Frame_Info[0], .055, -.01, .265, 128)
    call SkillTree.MakeLineX(Frame_Info[0], .045, -.0275, .02, 128)
    call SkillTree.MakeLineX(Frame_Info[0], .035, -.0525, .04, 128)
    call SkillTree.MakeLineX(Frame_Info[0], .045, -.0770, .02, 128)
    call SkillTree.MakeLineX(Frame_Info[0], .035, -.1025, .04, 128)
    call SkillTree.MakeLineX(Frame_Info[0], .045, -.1380, .02, 128)
    call SkillTree.MakeLineX(Frame_Info[0], .035, -.1750, .04, 128)
    call SkillTree.MakeLineX(Frame_Info[0], .035, -.2125, .04, 128)
    call SkillTree.MakeLineX(Frame_Info[0], .025, -.2400, .06, 128)
    //set i = InfoCase(i, Frame_Info[i-2], Frame_InfoValue[i-1], Frame_InfoValue[i-2])
    
    set i = Info(i, Frame_Info[i-1], .010, JN_FRAMEPOINT_TOPLEFT, JN_FRAMEPOINT_BOTTOMLEFT, 0., -Equip_EDGEGAP, "마방(감소율)")
    set i = Info(i, Frame_Info[i-1], .010, JN_FRAMEPOINT_TOPLEFT, JN_FRAMEPOINT_BOTTOMLEFT, 0., -Equip_EDGEGAP, "추가감소/면역")
    call Info3(i-2, .010, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .055, -Equip_EDGEGAP, I2S(GetRandomInt(1000,9999))+" ("+R2SW(GetRandomReal(10.,99.),2,1)+"%)")
    call Info3(i-1, .010, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .055, -Equip_EDGEGAP, I2S(GetRandomInt(100,999))+" / "+I2S(GetRandomInt(10,99))+"%")
    //set i = InfoCase(i, Frame_Info[i-2], Frame_InfoValue[i-1], Frame_InfoValue[i-2])
    
    set i = Info(i, Frame_Info[i-1], .010, JN_FRAMEPOINT_TOPLEFT, JN_FRAMEPOINT_BOTTOMLEFT, 0., -.005, "공속")
    set i = Info(i, Frame_Info[i-1], .010, JN_FRAMEPOINT_TOPLEFT, JN_FRAMEPOINT_BOTTOMLEFT, 0., -Equip_EDGEGAP, "이속")
    call Info3(i-2, .010, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .055, 0., I2S(GetRandomInt(100,999))+"% ("+R2SW(GetRandomReal(0.,9.),1,1)+"/s)")
    call Info3(i-1, .010, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .055, 0., I2S(GetRandomInt(100,999))+"% ("+R2SW(GetRandomReal(0.,9.),1,1)+"/s)")
    //set i = InfoCase(i, Frame_Info[i-2], Frame_InfoValue[i-1], 0)
    set i = Info(i, Frame_Info[i-1], .010, JN_FRAMEPOINT_TOPLEFT, JN_FRAMEPOINT_BOTTOMLEFT, 0., -Equip_EDGEGAP, "체젠")
    set i = Info(i, Frame_Info[i-1], .010, JN_FRAMEPOINT_TOPLEFT, JN_FRAMEPOINT_BOTTOMLEFT, 0., -Equip_EDGEGAP, "마젠")
    call Info3(i-2, .010, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .055, 0., I2S(GetRandomInt(100,999))+" +"+R2SW(GetRandomReal(0.,9.),1,1)+"%")
    call Info3(i-1, .010, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .055, 0., I2S(GetRandomInt(100,999))+" +"+R2SW(GetRandomReal(0.,9.),1,1)+"%")
    //set i = InfoCase(i, Frame_Info[i-2], Frame_InfoValue[i-1], 0)
    
    set i = Info(i, Frame_Info[i-1], .010, JN_FRAMEPOINT_TOPLEFT, JN_FRAMEPOINT_BOTTOMLEFT, 0., -.005, "스킬뎀")
    set i = Info(i, Frame_Info[i-1], .010, JN_FRAMEPOINT_TOPLEFT, JN_FRAMEPOINT_BOTTOMLEFT, 0., -Equip_EDGEGAP, "스킬쿨")
    set i = Info(i, Frame_Info[i-1], .010, JN_FRAMEPOINT_TOPLEFT, JN_FRAMEPOINT_BOTTOMLEFT, 0., -Equip_EDGEGAP, "전체 능력")
    call Info3(i-3, .010, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .055, 0., I2S(GetRandomInt(100,999))+"%")
    call Info3(i-2, .010, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .055, 0., "-"+I2S(GetRandomInt(10,99))+"%")
    call Info3(i-1, .010, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .055, 0., "+"+I2S(GetRandomInt(1,9))+"레벨")
    //set i = InfoCase(i, Frame_Info[i-3], Frame_InfoValue[i-1], 0)
    
    set i = Info(i, Frame_Info[i-1], .010, JN_FRAMEPOINT_TOPLEFT, JN_FRAMEPOINT_BOTTOMLEFT, 0., -Equip_EDGEGAP, "마법뎀")
    set i = Info(i, Frame_Info[i-1], .010, JN_FRAMEPOINT_TOPLEFT, JN_FRAMEPOINT_BOTTOMLEFT, 0., -Equip_EDGEGAP, "마법쿨")
    set i = Info(i, Frame_Info[i-1], .010, JN_FRAMEPOINT_TOPLEFT, JN_FRAMEPOINT_BOTTOMLEFT, 0., -Equip_EDGEGAP, "캐스팅")
    call Info3(i-3, .010, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .055, 0., I2S(GetRandomInt(100,999))+"%")
    call Info3(i-2, .010, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .055, 0., "-"+I2S(GetRandomInt(10,99))+"%")
    call Info3(i-1, .010, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .055, 0., I2S(GetRandomInt(100,999))+"%")
    //set i = InfoCase(i, Frame_Info[i-3], Frame_InfoValue[i-1], 0)
    //call DzFrameSetPoint(Frame_Info[i], JN_FRAMEPOINT_RIGHT, Frame_InfoValue[i-2], JN_FRAMEPOINT_RIGHT, 0., 0.)
    
    set i = Info(i, Frame_Info[i-1], .010, JN_FRAMEPOINT_TOPLEFT, JN_FRAMEPOINT_BOTTOMLEFT, 0., -.005, "치명타")
    set i = Info(i, Frame_Info[i-1], .010, JN_FRAMEPOINT_TOPLEFT, JN_FRAMEPOINT_BOTTOMLEFT, 0., -Equip_EDGEGAP, "흡혈")
    set i = Info(i, Frame_Info[i-1], .010, JN_FRAMEPOINT_TOPLEFT, JN_FRAMEPOINT_BOTTOMLEFT, 0., -Equip_EDGEGAP, "내성")
    call Info3(i-3, .010, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .055, 0., I2S(GetRandomInt(10,99))+"% (x"+R2SW(GetRandomReal(1.,3.),1,2)+")")
    call Info3(i-2, .010, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .055, 0., I2S(GetRandomInt(100,999))+" +"+R2SW(GetRandomReal(1.,3.),2,1)+"%")
    call Info3(i-1, .010, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .055, 0., I2S(GetRandomInt(10,99))+"%")
    //set i = InfoCase(i, Frame_Info[i-3], Frame_InfoValue[i-1], Frame_InfoValue[i-3])
    set i = Info(i, Frame_Info[i-1], .010, JN_FRAMEPOINT_TOPLEFT, JN_FRAMEPOINT_BOTTOMLEFT, 0., -.005, "골드/드랍")
    set i = Info(i, Frame_Info[i-1], .010, JN_FRAMEPOINT_TOPLEFT, JN_FRAMEPOINT_BOTTOMLEFT, 0., -Equip_EDGEGAP, "발굴/경험치")
    call Info3(i-2, .010, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .055, 0., I2S(GetRandomInt(100,999))+"% / "+I2S(GetRandomInt(100,999))+"%")
    call Info3(i-1, .010, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .055, 0., I2S(GetRandomInt(100,999))+"% / "+I2S(GetRandomInt(100,999))+"%")
    //set i = InfoCase(i, Frame_Info[i-2], Frame_InfoValue[i-1], 0)
    
    set i = Info(i, Frame_Info[i-1], .012, JN_FRAMEPOINT_TOPLEFT, JN_FRAMEPOINT_BOTTOMLEFT, 0., -.005, "특성1")
    set i = Info(i, Frame_Info[i-1], .012, JN_FRAMEPOINT_TOPLEFT, JN_FRAMEPOINT_BOTTOMLEFT, 0., -Equip_EDGEGAP, "특성2")
    set i = Info(i, Frame_Info[i-1], .012, JN_FRAMEPOINT_TOPLEFT, JN_FRAMEPOINT_BOTTOMLEFT, 0., -Equip_EDGEGAP, "특성3")
    call Info3(i-3, .010, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .055, 0., "근력Lv00 (공격력)")
    call Info3(i-2, .010, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .055, 0., "없음 (Lv 200)")
    call Info3(i-1, .010, JN_FRAMEPOINT_LEFT, JN_FRAMEPOINT_LEFT, .055, 0., "없음 (Lv 300)")
    //set i = InfoCase(i, Frame_Info[i-3], Frame_InfoValue[i-1], Frame_InfoValue[i-3])
    call DzFrameShow(Frame_Info[0], false)
  endfunction
  private function Init takes nothing returns nothing
    call CreateInfo()
  endfunction
endscope