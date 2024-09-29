scope EMainMenus
  globals
    constant integer FRAME_TYPE_ITEMSLOT = 1
    constant integer FRAME_TYPE_SKILLSLOT = 2
    constant integer FRAME_TYPE_MENU = 3
    constant integer FRAME_TYPE_PRESKILL = 4
    constant integer FRAME_TYPE_CHARACTER = 5

    integer array Frame_SelectSkills
  endglobals
  

  struct EMenus
    static method F2IN takes integer MenuNo returns integer 
      //m번째 값이 아이템/스킬/메뉴의 n번째 값인지 반환 
      if(MenuNo > 0) then 
        if(MenuNo <= 7) then 
          return MenuNo 
        elseif(MenuNo <= 15) then 
          return MenuNo - 7 
        elseif(MenuNo <= 23) then 
          return MenuNo - 15 
        endif 
      endif 
      return 0 
    endmethod 
    static method FI2S takes integer FRAME_TYPE returns string 
      if(FRAME_TYPE == FRAME_TYPE_ITEMSLOT) then 
        return "아이템" 
      elseif(FRAME_TYPE == FRAME_TYPE_SKILLSLOT) then 
        return "스킬" 
      elseif(FRAME_TYPE == FRAME_TYPE_MENU) then 
        return "메인메뉴" 
      elseif(FRAME_TYPE == FRAME_TYPE_PRESKILL) then 
        return "스킬 미리보기" 
      elseif(FRAME_TYPE == FRAME_TYPE_CHARACTER) then 
        return "캐릭터 선택"
      endif 
      return "" 
    endmethod 
    static method F2IT takes integer MenuNo returns integer 
      //m번째 값이 아이템/스킬/메뉴인지 반환(1=FRAME_TYPE_ITEMSLOT/2=FRAME_TYPE_SKILL/3=FRAME_TYPE_MENU) 
      if(MenuNo > 0) then 
        if(MenuNo <= 7) then 
          return FRAME_TYPE_ITEMSLOT 
        elseif(MenuNo <= 15) then 
          return FRAME_TYPE_SKILLSLOT 
        elseif(MenuNo <= 23) then 
          return FRAME_TYPE_MENU 
        endif 
      endif 
      return 0 
    endmethod
    static method F2In takes integer frame returns integer
    //아이템/스킬/메뉴의 n번째 값인지 반환
      if ( frame == Frame_Buttons[1] or frame == Frame_Buttons[8] or frame == Frame_Buttons[16] or frame == Frame_SelectSkills[1] or frame == Frame_SelectBack[8] ) then
        return 1
      elseif ( frame == Frame_Buttons[2] or frame == Frame_Buttons[9] or frame == Frame_Buttons[17] or frame == Frame_SelectSkills[3] or frame == Frame_SelectBack[10] ) then
        return 2
      elseif ( frame == Frame_Buttons[3] or frame == Frame_Buttons[10] or frame == Frame_Buttons[18] or frame == Frame_SelectSkills[5] or frame == Frame_SelectBack[12] ) then
        return 3
      elseif ( frame == Frame_Buttons[4] or frame == Frame_Buttons[11] or frame == Frame_Buttons[19] or frame == Frame_SelectSkills[7] or frame == Frame_SelectBack[14] ) then
        return 4
      elseif ( frame == Frame_Buttons[5] or frame == Frame_Buttons[12] or frame == Frame_Buttons[20]                                  or frame == Frame_SelectBack[16]  ) then
        return 5
      elseif ( frame == Frame_Buttons[6] or frame == Frame_Buttons[13] or frame == Frame_Buttons[21]                                  or frame == Frame_SelectBack[18]  ) then
        return 6
      elseif ( frame == Frame_Buttons[7] or frame == Frame_Buttons[14] or frame == Frame_Buttons[22] ) then
        return 7
      elseif (                              frame == Frame_Buttons[15] or frame == Frame_Buttons[23] ) then
        return 8
      endif
      return 0
    endmethod
    static method F2It takes integer frame returns integer
    //아이템/스킬/메뉴인지 반환(1=FRAME_TYPE_ITEMSLOT/2=FRAME_TYPE_SKILL/3=FRAME_TYPE_MENU)
      if ( frame == Frame_Buttons[1] or frame == Frame_Buttons[2] or frame == Frame_Buttons[3] or frame == Frame_Buttons[4] or frame == Frame_Buttons[5] or frame == Frame_Buttons[6] or frame == Frame_Buttons[7] ) then
        return FRAME_TYPE_ITEMSLOT
      elseif ( frame == Frame_Buttons[8] or frame == Frame_Buttons[9] or frame == Frame_Buttons[10] or frame == Frame_Buttons[11] or frame == Frame_Buttons[12] or frame == Frame_Buttons[13] or frame == Frame_Buttons[14] or frame == Frame_Buttons[15] ) then
        return FRAME_TYPE_SKILLSLOT
      elseif ( frame == Frame_Buttons[16] or frame == Frame_Buttons[17] or frame == Frame_Buttons[18] or frame == Frame_Buttons[19] or frame == Frame_Buttons[20] or frame == Frame_Buttons[21] or frame == Frame_Buttons[22] or frame == Frame_Buttons[23] ) then
        return FRAME_TYPE_MENU
      elseif ( frame == Frame_SelectSkills[1] or frame == Frame_SelectSkills[3] or frame == Frame_SelectSkills[5] or frame == Frame_SelectSkills[7] ) then
        return FRAME_TYPE_PRESKILL
      elseif ( frame == Frame_SelectBack[8] or frame == Frame_SelectBack[10] or frame == Frame_SelectBack[12] or frame == Frame_SelectBack[14] or frame == Frame_SelectBack[16] or frame == Frame_SelectBack[18] ) then
        return FRAME_TYPE_CHARACTER
      endif
      return 0
    endmethod
  endstruct
endscope