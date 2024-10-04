scope EMainMenus
  globals
    key QUICK_MENU_ITEMSLOT
    key QUICK_MENU_SKILLSLOT
    key QUICK_MENU_MENU

    key SELECT_MENU_PRESKILL
    key SELECT_MENU_CHARACTER

    key SKILL_TREE_MAIN
    key SKILL_TREE_EXTEND

    key SELECT_OTHER
    
    key HOTKEY_FRAME_BACK
    key HOTKEY_FRAME_TEXT

    key SKILL_TREE_HOTKEY
    key SKILL_TREE_HOTKEY_TEXT

    constant integer = QUICK_MENU_ITEM_COUNT = 7
    constant integer = QUICK_MENU_SKILL_COUNT = 8
    constant integer = QUICK_MENU_MENU_COUNT = 8

    constant integer = QUICK_MENU_COUNT_ALL = QUICK_MENU_ITEM_COUNT + QUICK_MENU_SKILL_COUNT + QUICK_MENU_MENU_COUNT
    integer array Quickmenu_Buttons[QUICK_MENU_COUNT_ALL]
    integer array Quickmenu_Backdrops[QUICK_MENU_COUNT_ALL]
    // integer array Frame_SelectSkills
  endglobals

  struct EMenus
    /* Local Only */
    static boolean OX_Option = false
    static boolean OX_Inven = false
    static boolean OX_Stats = false
    static boolean OX_Skills1 = false
    static boolean OX_Skills2 = false

    static method FrameSaveIDs takes integer frame, integer types, integer subTypes returns nothing
      call SaveInteger(hash, StringHash("Menu_TypeMain"), frame, types)
      call SaveInteger(hash, StringHash("Menu_TypeSub"), frame, subTypes)
    endmethod
    static method FrameSaveIDAndHotkey takes integer frame, integer types, integer subTypes, integer addIndex returns nothing
      call SaveInteger(hash, StringHash("Menu_TypeMain"), frame, types)
      call SaveInteger(hash, StringHash("Menu_TypeSub"), frame, subTypes)
      call SaveInteger(hash, StringHash("Menu_TypeAdd"), frame, subTypes-addIndex)
      call DzFrameSetText(frame, MenuQuickSlot.BaseHotKey(types, subTypes-addIndex))
    endmethod
    static method GetMainType takes integer frame returns integer
      return LoadInteger(hash, StringHash("Menu_TypeMain"), frame)
    endmethod
    static method GetSubTypeId takes integer frame returns integer
      return LoadInteger(hash, StringHash("Menu_TypeSub"), frame)
    endmethod
    static method GetAddIndex takes integer frame returns integer
      return LoadInteger(hash, StringHash("Menu_TypeAdd"), frame)
    endmethod
    static method GetTypeName takes integer input returns string
      if ( input == QUICK_MENU_ITEMSLOT ) then
        return "아이템"
      elseif ( input == QUICK_MENU_SKILLSLOT ) then
        return "스킬"
      elseif ( input == QUICK_MENU_MENU ) then
        return "메인메뉴"
      elseif ( input == SELECT_MENU_PRESKILL ) then
        return "스킬 미리보기"
      elseif ( input == SELECT_MENU_CHARACTER ) then
        return "캐릭터 선택"
      endif

      return ""
    endmethod


  endstruct
endscope