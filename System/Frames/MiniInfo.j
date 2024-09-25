scope MiniInfo initializer Init
    globals
      private integer array Frame_MiniInfoBackdrop
      private integer array Frame_MiniInfo
    endglobals
      private function MiniInfo takes integer no, string text, string IconTexture, real size returns integer
        set Frame_MiniInfo[no] = DzCreateFrameByTagName("BACKDROP", "", Frame_MiniInfoBackdrop[1], "", 0)
        call DzFrameSetAbsolutePoint(Frame_MiniInfo[no], JN_FRAMEPOINT_TOPLEFT, 0.68, 0.145-(no*0.015))
        call DzFrameSetSize(Frame_MiniInfo[no], 0.013, 0.013)
        call DzFrameSetTexture(Frame_MiniInfo[no], IconTexture, 0)
        
        set Frame_MiniInfoText[no] = DzCreateFrameByTagName("TEXT", "", Frame_MiniInfoBackdrop[1], "", no)
        call DzFrameSetFont(Frame_MiniInfoText[no], "Fonts\\DFHeiMd.ttf", size, 1)
        call DzFrameSetPoint(Frame_MiniInfoText[no], JN_FRAMEPOINT_LEFT, Frame_MiniInfo[no], JN_FRAMEPOINT_RIGHT, .002, 0.)
        call DzFrameSetText(Frame_MiniInfoText[no], text)
        return no+1
      endfunction
      private function MiniInfo2 takes integer no, string text returns nothing
        set Frame_MiniInfoText2[no] = DzCreateFrameByTagName("TEXT", "", Frame_MiniInfoBackdrop[0], "", no)
        call DzFrameSetFont(Frame_MiniInfoText2[no], "Fonts\\DFHeiMd.ttf", 0.011, 1)
        call DzFrameSetPoint(Frame_MiniInfoText2[no], JN_FRAMEPOINT_LEFT, Frame_MiniInfo[no], JN_FRAMEPOINT_LEFT, .06, 0.)
        call DzFrameSetText(Frame_MiniInfoText2[no], text)
      endfunction
      private function MiniInfo3 takes integer no, integer no2, string text, string IconTexture returns integer
        set Frame_MiniInfo[no] = DzCreateFrameByTagName("BACKDROP", "", Frame_MiniInfoBackdrop[1], "", 0)
        call DzFrameSetAbsolutePoint(Frame_MiniInfo[no], JN_FRAMEPOINT_TOPLEFT, 0.68+0.04*no2, 0.055)
        call DzFrameSetSize(Frame_MiniInfo[no], 0.013, 0.013)
        call DzFrameSetTexture(Frame_MiniInfo[no], IconTexture, 0)
        
        set Frame_MiniInfoText[no] = DzCreateFrameByTagName("TEXT", "", Frame_MiniInfoBackdrop[1], "", no)
        call DzFrameSetPoint(Frame_MiniInfoText[no], JN_FRAMEPOINT_LEFT, Frame_MiniInfo[no], JN_FRAMEPOINT_RIGHT, 0., 0.)
        call DzFrameSetFont(Frame_MiniInfoText[no], "Fonts\\DFHeiMd.ttf", 0.010, 1)
        call DzFrameSetText(Frame_MiniInfoText[no], text)
        
        return no+1
      endfunction
    private function CreateMiniInfo takes nothing returns nothing
     local integer i = 0
      //미니정보창 배경
      set Frame_MiniInfoBackdrop[0]=DzCreateFrameByTagName("BACKDROP", "", Frame_Sub, "QuestButtonBaseTemplate", 0)
      call DzFrameSetAbsolutePoint(Frame_MiniInfoBackdrop[0], JN_FRAMEPOINT_BOTTOMLEFT, 0.67, 0.03)
      call DzFrameSetSize(Frame_MiniInfoBackdrop[0], 0.13, 0.12)
      call DzFrameSetAlpha(Frame_MiniInfoBackdrop[0], 128)
      
      
      set Frame_MiniInfoBackdrop[1]=DzCreateFrameByTagName("BACKDROP", "", Frame_MiniInfoBackdrop[0], "QuestButtonBaseTemplate", 0)
      call DzFrameSetPoint(Frame_MiniInfoBackdrop[1], JN_FRAMEPOINT_CENTER, Frame_MiniInfoBackdrop[0], JN_FRAMEPOINT_TOP, 0., -0.005)
      call DzFrameSetSize(Frame_MiniInfoBackdrop[1], 0.07, 0.03)
      call DzFrameSetAlpha(Frame_MiniInfoBackdrop[0], 196)
      
      
      set Frame_MiniInfo[0]=DzCreateFrameByTagName("TEXT", "", Frame_MiniInfoBackdrop[1], "", 0)
      call DzFrameSetPoint(Frame_MiniInfo[0], JN_FRAMEPOINT_CENTER, Frame_MiniInfoBackdrop[1] , JN_FRAMEPOINT_CENTER, 0., 0.)
      call DzFrameSetText(Frame_MiniInfo[0], "몬스터 이름")
      
      //call MiniInfo
      set i = i + 1
      set i = MiniInfo(i, "체력", "ReplaceableTextures\\PassiveButtons\\PASBTNStatUp.blp", .013)
      call MiniInfo2(i-1, I2S(GetRandomInt(1000,2000))+"/"+I2S(GetRandomInt(2000,9999)))
      
      set i = MiniInfo(i, "데미지", "ReplaceableTextures\\PassiveButtons\\PASBTNStatUp.blp", .013)
      call MiniInfo2(i-1, I2S(GetRandomInt(1000,9999))+" x"+R2SW(GetRandomReal(.5,5.),1,2))
      
      set i = MiniInfo(i, "방어/마방", "ReplaceableTextures\\PassiveButtons\\PASBTNStatUp.blp", .013)
      call MiniInfo2(i-1, I2S(GetRandomInt(100,999))+" / "+I2S(GetRandomInt(100,999)))
      
      set i = MiniInfo(i, "스킬/마법뎀", "ReplaceableTextures\\PassiveButtons\\PASBTNStatUp.blp", .011)
      call MiniInfo2(i-1, I2S(GetRandomInt(100,999))+"% / "+I2S(GetRandomInt(100,999)) + "%")
      
      set i = MiniInfo(i, "치명타", "ReplaceableTextures\\PassiveButtons\\PASBTNStatUp.blp", .013)
      call MiniInfo2(i-1, I2S(GetRandomInt(10,99))+"% (x"+R2SW(GetRandomReal(1.,3.),1,2)+")")
      
      set i = MiniInfo3(i, 0, "체력많음", "ReplaceableTextures\\CommandButtons\\BTNSkillz.tga")
      set i = MiniInfo3(i, 1, "강한공격", "ReplaceableTextures\\CommandButtons\\BTNGauntletsOfOgrePower.blp")
      set i = MiniInfo3(i, 2, "마법면역", "ReplaceableTextures\\PassiveButtons\\PASBTNGenericSpellImmunity.blp")
      call DzFrameShow(Frame_Sub, false)
    endfunction
    private function Init takes nothing returns nothing
      call CreateMiniInfo()
    endfunction
  endscope