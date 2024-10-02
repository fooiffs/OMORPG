scope EMenuButtons
  struct EHotkeyMenu
    // 수정시 Option.j의 SettingHotKey 내부 수정 필요
    static constant integer SkillSlot1 = 1
    static constant integer SkillSlot2 = 2
    static constant integer SkillSlot3 = 3
    static constant integer SkillSlot4 = 4
    static constant integer SkillSlot5 = 5
    static constant integer SkillSlot6 = 6
    static constant integer SkillSlot7 = 7
    static constant integer SkillSlot8 = 8
    static constant integer HOTKEY_SKILL_END = SkillSlot8

    static constant integer ItemSlot1 = 9
    static constant integer ItemSlot2 = 10
    static constant integer ItemSlot3 = 11
    static constant integer ItemSlot4 = 12
    static constant integer ItemSlot5 = 13
    static constant integer ItemSlot6 = 14
    static constant integer ItemSlot7 = 15
    static constant integer HOTKEY_ITEM_END = ItemSlot7
    
    static constant integer SubMenuKakaotalk = 16
    static constant integer SubMenuDiscord = 17
    static constant integer SubMenuSetting = 18
    static constant integer SubMenuAutoCombat = 19
    static constant integer SubMenuInventory = 20
    static constant integer SubMenuStatus = 21
    static constant integer SubMenuSkillTree = 22
    static constant integer SubMenuSmartMode = 23
    static constant integer HOTKEY_MENU_END = SubMenuSmartMode
  
    static constant integer Main1MiniInfo = 24
    static constant integer Main2SimpleEffect = 25
    static constant integer Main3GlobalEffect = 26
    static constant integer Main4FeildOfView = 27
    static constant integer Main5HoldFieldOfView = 28
    static constant integer Main6ViewHotkeys = 29
    static constant integer Main7ServerSaveLeft = 30
  endstruct
endscope