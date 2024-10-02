globals
//globals from MemoryLibBase:
constant boolean LIBRARY_MemoryLibBase=true
integer pGameDll
//endglobals from MemoryLibBase
//globals from MemoryLibEnd:
constant boolean LIBRARY_MemoryLibEnd=true
//endglobals from MemoryLibEnd
//globals from MemoryLibPrimitiveType:
constant boolean LIBRARY_MemoryLibPrimitiveType=true
//endglobals from MemoryLibPrimitiveType
//globals from MemoryLibCommandButtonData:
constant boolean LIBRARY_MemoryLibCommandButtonData=true
//endglobals from MemoryLibCommandButtonData
//globals from MemoryLibGameUI:
constant boolean LIBRARY_MemoryLibGameUI=true
constant hashtable JNProc_ht= InitHashtable()
constant integer JNProc_key= StringHash("jass")

constant integer JNProc__stdcall= 2
constant integer JNProc__thiscall= 4
//endglobals from MemoryLibGameUI
//globals from MemoryLibMemoryBlock:
constant boolean LIBRARY_MemoryLibMemoryBlock=true
        
constant integer MemoryLib_MAX_MEMORY_BLOCK_SIZE= JASS_MAX_ARRAY_SIZE * 4
//endglobals from MemoryLibMemoryBlock
//globals from MemoryLibCommandButton:
constant boolean LIBRARY_MemoryLibCommandButton=true
//endglobals from MemoryLibCommandButton
//globals from MemoryLib:
constant boolean LIBRARY_MemoryLib=true
//endglobals from MemoryLib
    // User-defined
integer udg_ExitOption= 0
unit array udg_hero

    // Generated
rect gg_rct_Rect_Tutorial= null
rect gg_rct_Env_Moonlight= null
rect gg_rct_Hunting_Enter_01_Down= null
rect gg_rct_Player_Hunting_Rect_01= null
rect gg_rct_Hunting_Enter_02= null
rect gg_rct_Player_Hunting_Rect_02= null
rect gg_rct________006= null
sound gg_snd_BigButtonClick= null
sound gg_snd_MouseClick1= null
sound gg_snd_HeroDropItem1= null
trigger gg_trg_Import_File= null
integer JNMemory___FrameMouseXOffset
integer JNMemory___FrameMouseYOffset
constant integer JN_FRAMEPOINT_TOPLEFT= 0
constant integer JN_FRAMEPOINT_TOP= 1
constant integer JN_FRAMEPOINT_TOPRIGHT= 2
constant integer JN_FRAMEPOINT_LEFT= 3
constant integer JN_FRAMEPOINT_CENTER= 4
constant integer JN_FRAMEPOINT_RIGHT= 5
constant integer JN_FRAMEPOINT_BOTTOMLEFT= 6
constant integer JN_FRAMEPOINT_BOTTOM= 7
constant integer JN_FRAMEPOINT_BOTTOMRIGHT= 8
    
constant integer JN_FRAMEEVENT_MOUSE_ENTER= 2
constant integer JN_FRAMEEVENT_MOUSE_LEAVE= 3
constant integer JN_FRAMEEVENT_MOUSE_UP= 4
  
constant integer JN_OSKEY_BACKSPACE= $08
constant integer JN_OSKEY_TAB= $09
constant integer JN_OSKEY_RETURN= $0D
constant integer JN_OSKEY_SHIFT= $10
constant integer JN_OSKEY_CONTROL= $11
constant integer JN_OSKEY_ALT= $12
constant integer JN_OSKEY_CAPSLOCK= $14
constant integer JN_OSKEY_SPACE= $20
constant integer JN_OSKEY_SEPARATOR= $6C
constant integer JN_OSKEY_RSHIFT= $A1
constant integer JN_OSKEY_RCONTROL= $A3
constant integer JN_OSKEY_RALT= $A5
constant integer JN_OSKEY_OEM_1= $BA
constant integer JN_OSKEY_OEM_PLUS= $BB
constant integer JN_OSKEY_OEM_COMMA= $BC
constant integer JN_OSKEY_OEM_MINUS= $BD
constant integer JN_OSKEY_OEM_PERIOD= $BE
constant integer JN_OSKEY_OEM_2= $BF
constant integer JN_OSKEY_OEM_3= $C0
constant integer JN_OSKEY_OEM_4= $DB
constant integer JN_OSKEY_OEM_5= $DC
constant integer JN_OSKEY_OEM_6= $DD
constant integer JN_OSKEY_OEM_7= $DE
    
constant integer JN_MOUSE_BUTTON_TYPE_RIGHT= 2
constant integer QUICK_MENU_ITEMSLOT=10
constant integer QUICK_MENU_SKILLSLOT=11
constant integer QUICK_MENU_MENU=12

constant integer SELECT_MENU_PRESKILL=13
constant integer SELECT_MENU_CHARACTER=14

constant integer SKILL_TREE_MAIN=15
constant integer SKILL_TREE_EXTEND=16

constant integer QUICK_MENU_ITEM_COUNT= 7
constant integer QUICK_MENU_SKILL_COUNT= 8
constant integer QUICK_MENU_MENU_COUNT= 8

constant integer QUICK_MENU_COUNT_ALL= QUICK_MENU_ITEM_COUNT + QUICK_MENU_SKILL_COUNT + QUICK_MENU_MENU_COUNT
// processed:     integer array Quickmenu_Buttons[QUICK_MENU_COUNT_ALL]
// processed:     integer array Quickmenu_Backdrops[QUICK_MENU_COUNT_ALL]


integer array Frame_SelectSkills
integer array NowSelect
    // 전역 설정, 초기 설정 관련 scope, like DataBase  
hashtable hash= InitHashtable()
constant integer MAX_PLAYER_COUNT= 12 + 1
constant integer MAX_CHARACTER_COUNT= 6 + 1
constant integer MAX_STAT_COUNT= 32 + 1
constant integer MAX_SKILL_COUNT= 205 + 1
constant integer MAX_OPTION_MENU_COUNT= 30 + 1
constant integer MAX_SKILL_SLOT= 8 + 1
constant real StoreX= 1280.
constant real StoreY= 1024.

    // 지역 설정  
// processed:     SkillData array GlobalInitializer___privateSkillData[MAX_SKILL_COUNT]
// processed:     StatData array GlobalInitializer___privateStatData[MAX_STAT_COUNT]
// processed:     SlotData array GlobalInitializer___privateSkillSlotData[MAX_SKILL_SLOT]
// processed:     HotkeyData array GlobalInitializer___privateHotkeyData[MAX_OPTION_MENU_COUNT]
// processed:     CharacterData array GlobalInitializer___privateCharacterData[MAX_CHARACTER_COUNT]
// processed:     TreeMainCoreData array GlobalInitializer___privateTreeMainData[MAX_CHARACTER_COUNT]

    // 캐릭터
unit gg_unit_H005_0003= null
unit gg_unit_H004_0007= null
unit gg_unit_H003_0008= null
unit gg_unit_H002_0009= null
unit gg_unit_H001_0010= null
unit gg_unit_H000_0011= null

    // 저장
constant integer MAX_SAVE_INVENTORY= 49 + 1
constant integer MAX_SAVE_EQUIP= 16 + 1
constant integer MAX_SAVE_CHARACTER= 6
    //These are not used, they are here just to fool Jasshelper.
code Code
integer Int
string Str
boolean Bool
 
    //These are the actual ones used for typecasting.
code l__Code
integer l__Int
string l__Str
boolean l__Bool
integer EndGameHook___pGameWar3
integer EndGameHook___pSub_35FDF0
integer EndGameHook___pTrampoline
integer EndGameHook___pCallback
integer EndGameHook___pCallbackCodeIndex
integer EndGameHook___MemoryBlockOldProtect
integer EndGameHook___pDummy1
integer EndGameHook___pDummy2
integer array EndGameHook___originalSub_35FDF0

string EndGameHook___userCallbackName= null
code EndGameHook___userCallbackCode= null
integer GameExitHook__MemoryBlock_block
integer array l__GameExitHook__MemoryBlock_block
dialog MainFrame___NoSaveDialog= DialogCreate()
      
      // integer array Frame_SelectBack
      // integer array Frame_SelectText

      // integer array Frame_ButtonsBackDrop       //아이템/스킬/메뉴 버튼 배경 아이콘
      
integer array Frame_Info
integer array Frame_InfoValue
      
integer array Frame_MiniInfo
integer array Frame_MiniInfoBackdrop
integer array Frame_MiniInfoText
integer array Frame_MiniInfoText2
      
integer array Frame_Setting
integer array Frame_SettingBackdrop
integer Frame_Main
integer Frame_Sub
integer SkillTree_TreeMainFrame
integer SkillTree___TreePopupFrame
integer SkillTree___TreeExtendFrame

      // Link : ESkillTree.MainCharacterName 등
integer array SkillTree___TreeChangeableFrame
integer array SkillTree___TreeMainSkillButtons
integer array SkillTree___TreeExtendSmallButtons

integer SkillTree___SkillTreeNow

      // private integer array SkillTreeButton
      // public integer array SkillTreeBackdrop
      // private integer array SkillTreeText
      // private integer array SkillTreePopup
      
      // private integer array SkillTree2Button
      // private integer array SkillTree2Backdrop
      // private integer array SkillTree2Text
      // private integer array SkillTree2Popup
      
      // public integer array Info
trigger SkillTree___skillTreeTrigger= CreateTrigger()

integer SkillTree___currentPlayerId= 0
integer SkillTree___currentTreeTypeId= 0
integer SkillTree___currentContentsId= 0
integer PortraitEditor___pGameDll
integer PortraitEditor___pGameUI
constant integer PortraitEditor___JNProc__fastcall= 3
boolean PortraitEditor___initializered= false
boolean array PushKey___ChatState
integer array Option___Frame_Setting
integer array Option_Frame_SettingBackdrop
constant real Equip___EQUIPSPACEGAP= 0.040
constant real Equip___EQUIPEDGEGAP=  0.003
      
integer array Equip___Equip
integer array Equip_EquipBackdrop
      
constant integer JN_FRAMEEVENT_MOUSE_DOUBLECLICK= 12
boolean array Equip___AllowRightClick
integer array Equip___OnButtonNumber
      
      
constant real Equip_EDGEGAP=  0.0015
constant real Equip_SPACEGAP= 0.025
constant real Equip_EDGEGAP2= 0.008
      
constant integer ITEM_TOOLTIP_MAXIMUM= 25
constant integer ITEM_TOOLTIP_HIDE= 8
      
integer array Equip___Frame_InvenInfo
integer array Equip___Frame_EquipInfo
integer array Equip___Frame_Equip2Info
string array Equip___InvenInfo
      
integer array Frame_InvenButtons
integer array Frame_InvenButtonsBackDrop
      
integer array Equip___ClickNow
      
integer Equip___ClickView= 0
      
constant real Equip___GRADE_BONUS= 1.08
      
string array Equip___STATS_ALL
      
integer Equip___FrameMouseXOffset
integer Equip___FrameMouseYOffset
integer array MiniInfo___Frame_MiniInfoBackdrop
integer array MiniInfo___Frame_MiniInfo
constant string JN_MAPID= "LoD"
constant string JN_SECRETKEY= "9d316ce7-eb22-4637-8dd0-9d869aabfb7a"
player GetServerPlayer
string GetServerCode= null
integer JN_LoaderNow= 0
integer Time_StopWatch= 0
integer array Time_last
integer array Time_Original
string array Name
integer LoadAuto___int= 0
string array Save___InvenData
string array Save___EquipData
region Hunting__tempRegion= null
rect array Hunting__PlayerRect
trigger Hunting__tempEnterTrigger= CreateTrigger()
trigger Hunting__DyingTrigger= CreateTrigger()
effect array Hunting__PlayerDecorationEffects
integer array Hunting__PlayerDecorationNumber
    
constant integer Hunting__MAX_ROW= 10
constant integer Hunting__MAX_COL= 8
trigger Enchant__triggerEnchant= CreateTrigger()
trigger exitTrigger= CreateTrigger()
trigger gg_trg_test_1_add= null
constant integer DisplayGrid__GRID_ALPHA= 255
      
integer DisplayGrid__GridLine
integer DisplayGrid__GridLine_Small
integer DisplayGrid__GridLine_Medium
integer DisplayGrid__GridLine_Large
trigger ItemRandomEnchanter__triggerItemRandomEnchanter= CreateTrigger()

trigger l__library_init

//JASSHelper struct globals:
constant integer si__Ptr=1
integer si__Ptr_F=0
integer si__Ptr_I=0
integer array si__Ptr_V
integer array si__Ptr_type
trigger array st__Ptr_onDestroy
constant integer si__BytePtr=2
constant integer si__IntPtr=3
constant integer si__RealPtr=4
constant integer si__PtrPtr=5
constant integer si__CommandButtonData=6
constant integer si__GameUI=7
constant integer si__CommandButton=8
constant integer si__ETile=9
integer si__ETile_F=0
integer si__ETile_I=0
integer array si__ETile_V
constant integer s__ETile_BLIGHT= - 1
constant integer s__ETile_SUMMER_DIRT= 'Ldrt'
constant integer s__ETile_SUMMER_DIRT_ROUGH= 'Ldro'
constant integer s__ETile_SUMMER_DIRT_GRASSY= 'Ldrg'
constant integer s__ETile_SUMMER_ROCK= 'Lrok'
constant integer s__ETile_SUMMER_GRASS= 'Lgrs'
constant integer s__ETile_SUMMER_GRASS_DARK= 'Lgrd'
constant integer s__ETile_FALL_DIRT= 'Fdrt'
constant integer s__ETile_FALL_DIRT_ROUGH= 'Fdro'
constant integer s__ETile_FALL_DIRT_GRASSY= 'Fdrg'
constant integer s__ETile_FALL_ROCK= 'Frok'
constant integer s__ETile_FALL_GRASS= 'Fgrs'
constant integer s__ETile_FALL_GRASS_DARK= 'Fgrd'
constant integer s__ETile_WINTER_DIRT= 'Wdrt'
constant integer s__ETile_WINTER_DIRT_ROUGH= 'Wdro'
constant integer s__ETile_WINTER_SNOW_GRASSY= 'Wsng'
constant integer s__ETile_WINTER_ROCK= 'Wrok'
constant integer s__ETile_WINTER_GRASS= 'Wgrs'
constant integer s__ETile_WINTER_SNOW= 'Wsnw'
constant integer s__ETile_BARRENS_DIRT= 'Bdrt'
constant integer s__ETile_BARRENS_DIRT_ROUGH= 'Bdrh'
constant integer s__ETile_BARRENS_DIRT_GRASSY= 'Bdrg'
constant integer s__ETile_BARRENS_PEBBLES= 'Bdrr'
constant integer s__ETile_BARRENS_ROCK= 'Bflr'
constant integer s__ETile_BARRENS_GRASS= 'Bgrr'
constant integer s__ETile_BARRENS_DESERT= 'Bdsr'
constant integer s__ETile_BARRENS_DESERT_DARK= 'Bdsd'
constant integer s__ETile_ASHEN_DIRT= 'Adrt'
constant integer s__ETile_ASHEN_DIRT_ROUGH= 'Adrd'
constant integer s__ETile_ASHEN_DIRT_GRASSY= 'Adrg'
constant integer s__ETile_ASHEN_ROCK= 'Arck'
constant integer s__ETile_ASHEN_GRASS= 'Agrs'
constant integer s__ETile_ASHEN_GRASS_LUMPY= 'Agrd'
constant integer s__ETile_ASHEN_VINES= 'Avin'
constant integer s__ETile_ASHEN_LEAVES= 'Alvd'
constant integer s__ETile_FELWOOD_DIRT= 'Cdrt'
constant integer s__ETile_FELWOOD_DIRT_ROUGH= 'Cdrd'
constant integer s__ETile_FELWOOD_ROCK= 'Crck'
constant integer s__ETile_FELWOOD_GRASS= 'Cgrs'
constant integer s__ETile_FELWOOD_POISON= 'Cpos'
constant integer s__ETile_FELWOOD_VINES= 'Cvin'
constant integer s__ETile_FELWOOD_LEAVES= 'Clvg'
constant integer s__ETile_NORTH_DIRT= 'Ndrt'
constant integer s__ETile_NORTH_DIRT_DARK= 'Ndrd'
constant integer s__ETile_NORTH_ROCK= 'Nrck'
constant integer s__ETile_NORTH_GRASS= 'Ngrs'
constant integer s__ETile_NORTH_ICE= 'Nice'
constant integer s__ETile_NORTH_SNOW= 'Nsnw'
constant integer s__ETile_NORTH_SNOW_ROCKY= 'Nsnr'
constant integer s__ETile_CITY_DIRT= 'Ydrt'
constant integer s__ETile_CITY_DIRT_ROUGH= 'Ydtr'
constant integer s__ETile_CITY_MARBLE_BLACK= 'Yblm'
constant integer s__ETile_CITY_MARBLE_WHITE= 'Ywmb'
constant integer s__ETile_CITY_BRICK= 'Ybtl'
constant integer s__ETile_CITY_TILE_SQUARE= 'Ysqd'
constant integer s__ETile_CITY_TILE_ROUND= 'Yrtl'
constant integer s__ETile_CITY_GRASS= 'Ygsb'
constant integer s__ETile_CITY_GRASS_TRIM= 'Yhdg'
constant integer s__ETile_VILLAGE_DIRT= 'Vdrt'
constant integer s__ETile_VILLAGE_DIRT_ROUGH= 'Vdrr'
constant integer s__ETile_VILLAGE_CROP= 'Vcrp'
constant integer s__ETile_VILLAGE_PATH_COBBLE= 'Vcbp'
constant integer s__ETile_VILLAGE_PATH_STONE= 'Vstp'
constant integer s__ETile_VILLAGE_ROCK= 'Vrck'
constant integer s__ETile_VILLAGE_GRASS_SHORT= 'Vgrs'
constant integer s__ETile_VILLAGE_GRASS_THICK= 'Vgrt'
constant integer s__ETile_VFALL_DIRT= 'Qdrt'
constant integer s__ETile_VFALL_DIRT_ROUGH= 'Qdrr'
constant integer s__ETile_VFALL_CROP= 'Qcrp'
constant integer s__ETile_VFALL_PATH_COBBLE= 'Qcbp'
constant integer s__ETile_VFALL_PATH_STONE= 'Qstp'
constant integer s__ETile_VFALL_ROCK= 'Qrck'
constant integer s__ETile_VFALL_GRASS_SHORT= 'Qgrs'
constant integer s__ETile_VFALL_GRASS_THICK= 'Qgrt'
constant integer s__ETile_DALARAN_DIRT= 'Xdrt'
constant integer s__ETile_DALARAN_DIRT_ROUGH= 'Xdtr'
constant integer s__ETile_DALARAN_MARBLE_BLACK= 'Xblm'
constant integer s__ETile_DALARAN_MARBLE_WHITE= 'Xwmb'
constant integer s__ETile_DALARAN_TILE_BRICK= 'Xbtl'
constant integer s__ETile_DALARAN_TILE_SQUARE= 'Xsqd'
constant integer s__ETile_DALARAN_TILE_ROUND= 'Xrtl'
constant integer s__ETile_DALARAN_GRASS= 'Xgsb'
constant integer s__ETile_DALARAN_GRASS_TRIM= 'Xhdg'
constant integer s__ETile_DUNGEON_DIRT= 'Ddrt'
constant integer s__ETile_DUNGEON_BRICK= 'Dbrk'
constant integer s__ETile_DUNGEON_STONE_RED= 'Drds'
constant integer s__ETile_DUNGEON_ROCK_DARK= 'Ddkr'
constant integer s__ETile_DUNGEON_STONE_GRAY= 'Dgrs'
constant integer s__ETile_DUNGEON_LAVA= 'Dlav'
constant integer s__ETile_DUNGEON_LAVA_CRACK= 'Dlvc'
constant integer s__ETile_DUNGEON_TILE_SQUARE= 'Dsqd'
constant integer s__ETile_UNDER_DIRT= 'Gdrt'
constant integer s__ETile_UNDER_BRICK= 'Gbrk'
constant integer s__ETile_UNDER_STONE_RED= 'Grds'
constant integer s__ETile_UNDER_ROCK_DARK= 'Gdkr'
constant integer s__ETile_UNDER_STONE_GRAY= 'Ggrs'
constant integer s__ETile_UNDER_LAVA= 'Glav'
constant integer s__ETile_UNDER_LAVA_CRACK= 'Glvc'
constant integer s__ETile_UNDER_TILE_SQUARE= 'Gsqd'
constant integer s__ETile_SUNKEN_DIRT= 'Zdrt'
constant integer s__ETile_SUNKEN_DIRT_ROUGH= 'Zdtr'
constant integer s__ETile_SUNKEN_DIRT_GRASSY= 'Zdrg'
constant integer s__ETile_SUNKEN_BRICK_SMALL= 'Zbks'
constant integer s__ETile_SUNKEN_BRICK_LARGE= 'Zbkl'
constant integer s__ETile_SUNKEN_SAND= 'Zsan'
constant integer s__ETile_SUNKEN_TILE_ROUND= 'Ztil'
constant integer s__ETile_SUNKEN_GRASS= 'Zgrs'
constant integer s__ETile_SUNKEN_GRASS_DARK= 'Zvin'
constant integer s__ETile_GLACIER_DIRT= 'Idrt'
constant integer s__ETile_GLACIER_DIRT_ROUGH= 'Idtr'
constant integer s__ETile_GLACIER_ICE_DARK= 'Idki'
constant integer s__ETile_GLACIER_ICE= 'Iice'
constant integer s__ETile_GLACIER_BRICK_BLACK= 'Ibkb'
constant integer s__ETile_GLACIER_BRICK_RUNE= 'Irbk'
constant integer s__ETile_GLACIER_BRICK_TILE= 'Itbk'
constant integer s__ETile_GLACIER_SQUARE_BLACK= 'Ibsq'
constant integer s__ETile_GLACIER_SNOW= 'Isnw'
constant integer s__ETile_OUTLAND_DIRT= 'Odrt'
constant integer s__ETile_OUTLAND_DIRT_ROUGH= 'Osmb'
constant integer s__ETile_OUTLAND_DIRT_LIGHT= 'Odtr'
constant integer s__ETile_OUTLAND_DIRT_CRACK= 'Ofst'
constant integer s__ETile_OUTLAND_STONE_FLAT= 'Olgb'
constant integer s__ETile_OUTLAND_ROCK= 'Orok'
constant integer s__ETile_OUTLAND_STONE_LIGHT= 'Ofsl'
constant integer s__ETile_OUTLAND_ABYSS= 'Oaby'
constant integer s__ETile_CITADEL_DIRT= 'Kdrt'
constant integer s__ETile_CITADEL_DIRT_LIGHT= 'Kfsl'
constant integer s__ETile_CITADEL_DIRT_ROUGH= 'Kdtr'
constant integer s__ETile_CITADEL_STONE_FLAT= 'Kfst'
constant integer s__ETile_CITADEL_BRICK_SMALL= 'Ksmb'
constant integer s__ETile_CITADEL_BRICK_LARGE= 'Klgb'
constant integer s__ETile_CITADEL_TILE_SQUARE= 'Ksqt'
constant integer s__ETile_CITADEL_TILE_DARK= 'Kdkt'
constant integer s__ETile_RUIN_DIRT= 'Jdrt'
constant integer s__ETile_RUIN_DIRT_ROUGH= 'Jdtr'
constant integer s__ETile_RUIN_MARBLE_BLACK= 'Jblm'
constant integer s__ETile_RUIN_MARBLE_WHITE= 'Jwmb'
constant integer s__ETile_RUIN_TILE_BRICK= 'Jbtl'
constant integer s__ETile_RUIN_TILE_SQUARE= 'Jsqd'
constant integer s__ETile_RUIN_TILE_ROUND= 'Jrtl'
constant integer s__ETile_RUIN_GRASS= 'Jgsb'
constant integer s__ETile_RUIN_GRASS_TRIM= 'Jhdg'
constant integer s__ETile_CLIFF_ASHEN_DIRT= 'cAc2'
constant integer s__ETile_CLIFF_ASHEN_GRASS= 'cAc1'
constant integer s__ETile_CLIFF_BARRENS_DESERT= 'cBc2'
constant integer s__ETile_CLIFF_BARRENS_GRASS= 'cBc1'
constant integer s__ETile_CLIFF_CITADEL_DIRT= 'cKc1'
constant integer s__ETile_CLIFF_CITADEL_TILE= 'cKc2'
constant integer s__ETile_CLIFF_CITY_DIRT= 'cYc2'
constant integer s__ETile_CLIFF_CITY_TILE= 'cYc1'
constant integer s__ETile_CLIFF_DALARAN_DIRT= 'cXc2'
constant integer s__ETile_CLIFF_DALARAN_TILE= 'cXc1'
constant integer s__ETile_CLIFF_RUIN_DIRT= 'cJc2'
constant integer s__ETile_CLIFF_RUIN_TILE= 'cJc1'
constant integer s__ETile_CLIFF_DUNGEON_DIRT= 'cDc2'
constant integer s__ETile_CLIFF_DUNGEON_TILE= 'cDc1'
constant integer s__ETile_CLIFF_FELWOOD_DIRT= 'cCc2'
constant integer s__ETile_CLIFF_FELWOOD_GRASS= 'cCc1'
constant integer s__ETile_CLIFF_GLACIER_TILE= 'cIc2'
constant integer s__ETile_CLIFF_GLACIER_SNOW= 'cIc1'
constant integer s__ETile_CLIFF_FALL_DIRT= 'cFc2'
constant integer s__ETile_CLIFF_FALL_GRASS= 'cFc1'
constant integer s__ETile_CLIFF_SUMMER_DIRT= 'cLc2'
constant integer s__ETile_CLIFF_SUMMER_GRASS= 'cLc1'
constant integer s__ETile_CLIFF_WINTER_GRASS= 'cWc2'
constant integer s__ETile_CLIFF_WINTER_SNOW= 'cWc1'
constant integer s__ETile_CLIFF_NORTH_DIRT= 'cNc2'
constant integer s__ETile_CLIFF_NORTH_SNOW= 'cNc1'
constant integer s__ETile_CLIFF_OUTLAND_ABYSS= 'cOc1'
constant integer s__ETile_CLIFF_OUTLAND_DIRT= 'cOc2'
constant integer s__ETile_CLIFF_SUNKEN_DIRT= 'cZc2'
constant integer s__ETile_CLIFF_SUNKEN_TILE= 'cZc1'
constant integer s__ETile_CLIFF_UNDER_DIRT= 'cGc2'
constant integer s__ETile_CLIFF_UNDER_TILE= 'cGc1'
constant integer s__ETile_CLIFF_VILLAGE_DIRT= 'cVc2'
constant integer s__ETile_CLIFF_VILLAGE_GRASS= 'cVc1'
constant integer s__ETile_CLIFF_VFALL_DIRT= 'cQc2'
constant integer s__ETile_CLIFF_VFALL_GRASS= 'cQc1'
constant integer si__ECharacter=10
integer si__ECharacter_F=0
integer si__ECharacter_I=0
integer array si__ECharacter_V
constant integer s__ECharacter_ICHIGO=17
constant integer s__ECharacter_RUKIA=18
constant integer s__ECharacter_URYU=19
constant integer s__ECharacter_ORIHIME=20
constant integer s__ECharacter_RENJI=21
constant integer s__ECharacter_SADO=22
constant integer si__EHotkeyMenu=11
integer si__EHotkeyMenu_F=0
integer si__EHotkeyMenu_I=0
integer array si__EHotkeyMenu_V
constant integer s__EHotkeyMenu_Main1MiniInfo=23
constant integer s__EHotkeyMenu_Main2SimpleEffect=24
constant integer s__EHotkeyMenu_Main3GlobalEffect=25
constant integer s__EHotkeyMenu_Main4FeildOfView=26
constant integer s__EHotkeyMenu_Main5HoldFieldOfView=27
constant integer s__EHotkeyMenu_Main6ViewHotkeys=28
constant integer s__EHotkeyMenu_Main7ServerSaveLeft=29
constant integer s__EHotkeyMenu_SkillSlot1=30
constant integer s__EHotkeyMenu_SkillSlot2=31
constant integer s__EHotkeyMenu_SkillSlot3=32
constant integer s__EHotkeyMenu_SkillSlot4=33
constant integer s__EHotkeyMenu_SkillSlot5=34
constant integer s__EHotkeyMenu_SkillSlot6=35
constant integer s__EHotkeyMenu_SkillSlot7=36
constant integer s__EHotkeyMenu_SkillSlot8=37
constant integer s__EHotkeyMenu_ItemSlot1=38
constant integer s__EHotkeyMenu_ItemSlot2=39
constant integer s__EHotkeyMenu_ItemSlot3=40
constant integer s__EHotkeyMenu_ItemSlot4=41
constant integer s__EHotkeyMenu_ItemSlot5=42
constant integer s__EHotkeyMenu_ItemSlot6=43
constant integer s__EHotkeyMenu_ItemSlot7=44
constant integer s__EHotkeyMenu_SubMenuKakaotalk=45
constant integer s__EHotkeyMenu_SubMenuDiscord=46
constant integer s__EHotkeyMenu_SubMenuSetting=47
constant integer s__EHotkeyMenu_SubMenuAutoCombat=48
constant integer s__EHotkeyMenu_SubMenuInventory=49
constant integer s__EHotkeyMenu_SubMenuStatus=50
constant integer s__EHotkeyMenu_SubMenuSkillTree=51
constant integer s__EHotkeyMenu_SubMenuSmartMode=52
constant integer si__ESkillClass=12
integer si__ESkillClass_F=0
integer si__ESkillClass_I=0
integer array si__ESkillClass_V
constant integer s__ESkillClass_BASE_ACTIVE= 0
constant integer s__ESkillClass_CORE_ACTIVE= 1
constant integer s__ESkillClass_CORE_ULTIMATE= 2
constant integer s__ESkillClass_TRANSFORM= 3
constant integer s__ESkillClass_BASE_PASSIVE= 4
constant integer si__ESkillSubClass=13
integer si__ESkillSubClass_F=0
integer si__ESkillSubClass_I=0
integer array si__ESkillSubClass_V
constant integer s__ESkillSubClass_AVOID= 	1
constant integer s__ESkillSubClass_DASH= 	2
constant integer s__ESkillSubClass_JUMP= 	3
constant integer s__ESkillSubClass_CUT_OF_HORIZONTAL= 	4
constant integer s__ESkillSubClass_CUT_OF_VERTICAL= 	5
constant integer s__ESkillSubClass_PIERCE= 	6
constant integer s__ESkillSubClass_SPECIAL_BEAM= 	7
constant integer s__ESkillSubClass_DEMON_ARTS= 	8
constant integer s__ESkillSubClass_SWORD_DANCE= 	9
constant integer s__ESkillSubClass_CONTROL_ENVIRONMENT= 	10
constant integer s__ESkillSubClass_SILVER_TIN= 	11
constant integer s__ESkillSubClass_COMBAT= 	12
constant integer s__ESkillSubClass_SPIRITUAL_WEAPON= 	13
constant integer s__ESkillSubClass_MELEE_ATTACK= 	14
constant integer s__ESkillSubClass_UPGRADE_TRANSFORM= 	15
constant integer s__ESkillSubClass_SINGLE= 	16
constant integer s__ESkillSubClass_COMBINE= 	17
constant integer s__ESkillSubClass_AURA= 	18
constant integer s__ESkillSubClass_SWORD_MANSHIP= 	19
constant integer s__ESkillSubClass_CLOSE_COMBAT= 	20
constant integer s__ESkillSubClass_STRENGTH= 	21
constant integer s__ESkillSubClass_STRENGTH_PECULIARITY= 	22
constant integer s__ESkillSubClass_MARTIAL_ARTS= 	23
constant integer s__ESkillSubClass_SEISMIC_STRIKES= 	24
constant integer s__ESkillSubClass_DEFENSE= 	25
constant integer s__ESkillSubClass_TRANSFORM= 	26
constant integer si__ESkillMethod=14
integer si__ESkillMethod_F=0
integer si__ESkillMethod_I=0
integer array si__ESkillMethod_V
constant integer s__ESkillMethod_MOVING= 0
constant integer s__ESkillMethod_INCHANT= 1
constant integer s__ESkillMethod_FIRE_AND_LAUNCH= 2
constant integer s__ESkillMethod_SWITCH_AURA= 3
constant integer s__ESkillMethod_RUSH= 4
constant integer s__ESkillMethod_PERMANENT= 5
constant integer s__ESkillMethod_TARGETING= 6
constant integer s__ESkillMethod_NEAR_RANGE= 7
constant integer si__ESkillTypeUI=15
integer si__ESkillTypeUI_F=0
integer si__ESkillTypeUI_I=0
integer array si__ESkillTypeUI_V
constant integer s__ESkillTypeUI_UN_CLICKABLE= 1
constant integer s__ESkillTypeUI_IMMEDIATELY= 2
constant integer s__ESkillTypeUI_SOLO_TARGET= 3
constant integer s__ESkillTypeUI_LOCATION_WITH_DIRECTION= 4
constant integer s__ESkillTypeUI_LOCATION_WITH_RANGE= 5
constant integer si__EStatType=16
integer si__EStatType_F=0
integer si__EStatType_I=0
integer array si__EStatType_V
constant integer s__EStatType_MainPower= 1
constant integer s__EStatType_MainFocus= 2
constant integer s__EStatType_MainVitality= 3
constant integer s__EStatType_AttackPower= 4
constant integer s__EStatType_AttackSpeedPercent= 5
constant integer s__EStatType_CriticalChance= 6
constant integer s__EStatType_CriticalMultiplier= 7
constant integer s__EStatType_LifeSteal= 8
constant integer s__EStatType_LifeStealPercent= 9
constant integer s__EStatType_MeleeDefense= 10
constant integer s__EStatType_MeleeReduce= 11
constant integer s__EStatType_MeleeEvationChance= 12
constant integer s__EStatType_RangedDefense= 13
constant integer s__EStatType_RangedReduce= 14
constant integer s__EStatType_RangeImmuneChance= 15
constant integer s__EStatType_MysticReduce= 16
constant integer s__EStatType_MysticDispellChance= 17
constant integer s__EStatType_MovementSpeedPercent= 18
constant integer s__EStatType_HpRegenPerSecond= 19
constant integer s__EStatType_HpRegenMultiplier= 20
constant integer s__EStatType_MpRegenPerSecond= 21
constant integer s__EStatType_MpRegenMultiplier= 22
constant integer s__EStatType_PhysicalMultiplier= 23
constant integer s__EStatType_PhysicalCooldownReduce= 24
constant integer s__EStatType_MagicalPower= 25
constant integer s__EStatType_MagicalMultiplier= 26
constant integer s__EStatType_MagicalCooldownReduce= 27
constant integer s__EStatType_MagicalCastingReduce= 28
constant integer s__EStatType_AilibtyLevelAdd= 29
constant integer s__EStatType_GoldDropMultiplier= 30
constant integer s__EStatType_ItemDropMultiplier= 31
constant integer s__EStatType_ExperienceMultiplier= 32
constant integer si__EHotkeys=17
integer si__EHotkeys_F=0
integer si__EHotkeys_I=0
integer array si__EHotkeys_V
constant integer si__EMenus=18
integer si__EMenus_F=0
integer si__EMenus_I=0
integer array si__EMenus_V
boolean s__EMenus_OX_Option= false
boolean s__EMenus_OX_Inven= false
boolean s__EMenus_OX_Stats= false
boolean s__EMenus_OX_Skills1= false
boolean s__EMenus_OX_Skills2= false
constant integer si__ESkillTree=19
integer si__ESkillTree_F=0
integer si__ESkillTree_I=0
integer array si__ESkillTree_V
constant integer s__ESkillTree_MainCharacterName=54
constant integer s__ESkillTree_MainTreeTypeLeft=56
constant integer s__ESkillTree_MainTreeTypeCenter=58
constant integer s__ESkillTree_MainTreeTypeRight=60
constant integer s__ESkillTree_PopupTitle=62
constant integer s__ESkillTree_PopupDetailPoint=64
constant integer s__ESkillTree_PopupDetailCurrentLevel=66
constant integer s__ESkillTree_SubIcon=68
constant integer s__ESkillTree_SubTitle=70
constant integer s__ESkillTree_SubShortDescriptionTop=72
constant integer s__ESkillTree_SubShortDescriptionMiddle=74
constant integer s__ESkillTree_SubShortDescriptionLow=76
constant integer s__ESkillTree_SubLongDescriptionCost=78
constant integer s__ESkillTree_SubLongDescriptionDetials=80
constant integer s__ESkillTree_SubLongDescriptionNextLevels=82
constant integer s__ESkillTree_SubSkillMinusAll=84
constant integer s__ESkillTree_SubSkillMinusOne=86
constant integer s__ESkillTree_SubSkillPlusOne=88
constant integer s__ESkillTree_SubSkillPlusAll=90
constant integer s__ESkillTree_MAX_SUBTYPE_COUNT= 3
string s__ESkillTree_tempString= ""
constant integer si__StatData=20
integer si__StatData_F=0
integer si__StatData_I=0
integer array si__StatData_V
string array s__StatData_Name
constant integer si__SkillData=21
integer si__SkillData_F=0
integer si__SkillData_I=0
integer array si__SkillData_V
integer array s__SkillData_Character
integer array s__SkillData_TypeMain
integer array s__SkillData_TypeTree
integer array s__SkillData_RequireLevel
integer array s__SkillData_TypeCore
integer array s__SkillData_TypeUI
string array s__SkillData_Name
string array s__SkillData_Detail
string array s__SkillData_ValueUse
string array s__SkillData_ValueChange
integer array s__SkillData_Distance
integer array s__SkillData_DistanceAdd
integer array s__SkillData_CastingTime
integer array s__SkillData_CastingTimeAdd
integer array s__SkillData_Duration
integer array s__SkillData_DurationAdd
integer array s__SkillData_CoolTime
integer array s__SkillData_CoolTimeAdd
integer array s__SkillData_Damage
integer array s__SkillData_DamageAdd
integer array s__SkillData_Range
integer array s__SkillData_RangeAdd
integer array s__SkillData_CostMana
integer array s__SkillData_CostManaAdd
constant integer si__SlotData=22
integer si__SlotData_F=0
integer si__SlotData_I=0
integer array si__SlotData_V
integer array s__SlotData_slot
integer array s__SlotData_SkillCode
integer array s__SlotData_SmartCode
integer array s__SlotData_SelfHotkeyID
integer array s__SlotData_OrderID
constant integer si__HotkeyData=23
integer si__HotkeyData_F=0
integer si__HotkeyData_I=0
integer array si__HotkeyData_V
string array s__HotkeyData_Name
boolean array s__HotkeyData_IsBoolType
integer array s__HotkeyData_BaseValue
constant integer si__CharacterData=24
integer si__CharacterData_F=0
integer si__CharacterData_I=0
integer array si__CharacterData_V
unit array s__CharacterData_SelectUnit
integer array s__CharacterData_UnitCode
string array s__CharacterData_SelectDatas
constant integer si__TreeMainCoreData=25
integer si__TreeMainCoreData_F=0
integer si__TreeMainCoreData_I=0
integer array si__TreeMainCoreData_V
integer array s__TreeMainCoreData_MAX_TREE_SKILL_COUNT
integer array s___TreeMainCoreData_SkillNumber
constant integer s___TreeMainCoreData_SkillNumber_size=12
integer array s__TreeMainCoreData_SkillNumber
real array s___TreeMainCoreData_positionX
constant integer s___TreeMainCoreData_positionX_size=12
integer array s__TreeMainCoreData_positionX
real array s___TreeMainCoreData_positionY
constant integer s___TreeMainCoreData_positionY_size=12
integer array s__TreeMainCoreData_positionY
string array s___TreeMainCoreData_iconPath
constant integer s___TreeMainCoreData_iconPath_size=12
integer array s__TreeMainCoreData_iconPath
constant integer si__OptionResource=30
boolean array s__OptionResource_isBooleanType
constant integer si__PlayerResource=31
integer s__PlayerResource_ALL_PLAYING_COUNT= 0
boolean array s__PlayerResource_isPlaying
integer array s__PlayerResource_character
integer array s___PlayerResource_options
constant integer s___PlayerResource_options_size=30
integer array s__PlayerResource_options
integer si__PlayerResource_arrI=0
integer si__PlayerResource_arrN=0
integer array si__PlayerResource_arr
integer array si__PlayerResource_arrV
constant integer si__CharacterResource=33
unit array s__CharacterResource_Unit
integer array s__CharacterResource_playerId
integer array s__CharacterResource_Level
integer array s__CharacterResource_changeLevel
integer array s___CharacterResource_Skills
constant integer s___CharacterResource_Skills_size=8
integer array s__CharacterResource_Skills
integer si__CharacterResource_arrI=0
integer si__CharacterResource_arrN=0
integer array si__CharacterResource_arr
integer array si__CharacterResource_arrV
integer array s___CharacterResource_Stats
constant integer s___CharacterResource_Stats_size=32
integer array s__CharacterResource_Stats
constant integer si__StatResource=36
integer array s__StatResource_owner
integer array s__StatResource_baseValue
integer array s__StatResource_addValue
constant integer si__SlotResource=37
string s__SlotResource_tempString= ""
integer array s__SlotResource_owner
integer array s__SlotResource_slot
integer array s__SlotResource_level
integer array s__SlotResource_lastDamage
integer array s__SlotResource_lastDistance
integer array s__SlotResource_lastRange
integer array s__SlotResource_lastDuration
integer array s__SlotResource_lastCostMana
integer array s__SlotResource_lastCastingTime
integer array s__SlotResource_lastCooldownTime
constant integer si__IResource=38
integer si__IResource_F=0
integer si__IResource_I=0
integer array si__IResource_V
integer array si__IResource_type
trigger array st__IResource_onDestroy
integer array s__IResource_id
constant integer si__EndGameHook___MemoryBlock=39
integer s__EndGameHook___MemoryBlock_pHead
integer s__EndGameHook___MemoryBlock_size
constant integer si__EndGameHook___AssemblyWriter=40
integer si__EndGameHook___AssemblyWriter_F=0
integer si__EndGameHook___AssemblyWriter_I=0
integer array si__EndGameHook___AssemblyWriter_V
integer array s__EndGameHook___AssemblyWriter_pCursor
constant integer si__MenuQuickSlot=41
integer si__MenuQuickSlot_F=0
integer si__MenuQuickSlot_I=0
integer array si__MenuQuickSlot_V
integer s__MenuQuickSlot_currentCount= 1
constant integer si__Select=42
integer si__Select_F=0
integer si__Select_I=0
integer array si__Select_V
trigger s__Select_selectTrigger= CreateTrigger()
trigger s__Select_deSelectTrigger= CreateTrigger()
trigger s__Select_syncTrigger= CreateTrigger()
constant string s__Select_DEFAULT_DATA= "0'0/1_0'1.2500/2_0'0/3_0'0/4_0'0/5_0'0/6_0'0/"
constant real s__Select_startCreateX= - 9696.
constant real s__Select_startCreateY= 4288.
constant real s__Select_selectX= - 9664.
constant real s__Select_selectY= 5440.
integer s__Select_currentCount= 0
integer s__Select_select_Main= 0
integer s__Select_select_LeftPreview= 0
integer s__Select_select_SkillPreview= 0
integer s__Select_selectTextCharacterNameEnglish= 0
integer s__Select_selectTextCharacterNameKorean= 0
integer s__Select_selectTextCharacterDescription1= 0
integer s__Select_selectTextCharacterDescription2= 0
integer s__Select_selectTextCharacterDamageType= 0
integer s__Select_selectTextCharacterMainWeapon= 0
integer s__Select_selectTextSkillPreviewName= 0
integer s__Select_selectTextSkillPreviewDescription1= 0
integer s__Select_selectTextSkillPreviewDescription2= 0
integer s__Select_selectButtonStart= 0
integer s__Select_selectBackStart= 0
constant integer si__Load=44
integer si__Load_F=0
integer si__Load_I=0
integer array si__Load_V
trigger s__Load_triggerLoad= CreateTrigger()
integer array s__Quickmenu_Buttons
integer array s__Quickmenu_Backdrops
integer array s__GlobalInitializer___privateSkillData
integer array s__GlobalInitializer___privateStatData
integer array s__GlobalInitializer___privateSkillSlotData
integer array s__GlobalInitializer___privateHotkeyData
integer array s__GlobalInitializer___privateCharacterData
integer array s__GlobalInitializer___privateTreeMainData
string array s__s__SkillData_ranks
integer array s__s__PlayerResource_privatePlayerResource
boolean array s__s__Select_isSelected
integer array s__s__Select_selectBackBottoms
integer array s__s__Select_selectBackStars
integer array s__s__Select_selectBackSkills
integer array s__s__Select_selectButtonBottoms
integer array s__s__Select_selectButtonSkills
integer array s__s__Select_selectTextBottomNameLevels
integer array s__s__Select_selectTextBottomPlayTimes
integer array s__s__Select_selectTextBottomLoadTypes
string array s__s__Load_EquipData2
string array s__s__Load_InvenData2
trigger st__PlayerResource__staticgetindex
trigger st__StatResource_Create
trigger st__SlotResource_Create
trigger st__SlotResource_ChangeBaseID
trigger st__SlotResource_ChangeIcon
trigger st__SlotResource_InitVariables
trigger st__SlotResource_UpdateInitVariables
trigger st__SlotResource_ChangeObjectData
trigger st__IResource__factory
trigger st__MenuQuickSlot_MenuClick
trigger st__MenuQuickSlot_ButtonClickDetail
trigger st__Select_ViewInfo
trigger st__Select_CountAdder
trigger array st___prototype67
integer f__arg_integer1
integer f__arg_integer2
integer f__arg_integer3
integer f__arg_integer4
ability f__arg_ability1
player f__arg_player1
string f__arg_string1
boolean f__arg_boolean1
integer f__arg_this
integer f__result_integer

endglobals
native DzGetTriggerSyncPlayer takes nothing returns player 
native DzGetTriggerSyncData takes nothing returns string 
native DzSyncData takes string prefix, string data returns nothing 
native DzTriggerRegisterSyncData takes trigger trig, string prefix, boolean server returns nothing 
native DzGetTriggerKeyPlayer takes nothing returns player 
native DzGetTriggerKey takes nothing returns integer 
native DzTriggerRegisterKeyEventByCode takes trigger trig, integer key, integer status, boolean sync, code funcHandle returns nothing 
native DzTriggerRegisterMouseEventByCode takes trigger trig, integer btn, integer status, boolean sync, code funcHandle returns nothing 
native JNMemoryGetInteger takes integer offset returns integer 
native JNGetModuleHandle takes string moduleName returns integer 
native JNMemoryGetReal takes integer offset returns real 
native JNProcCall takes integer callConv, integer address, hashtable params returns boolean 
native JNStopwatchCreate takes nothing returns integer
native JNStopwatchStart takes integer id returns nothing
native JNStopwatchReset takes integer id returns nothing
native JNStopwatchElapsedMinute takes integer id returns integer
native JNStopwatchElapsedHour takes integer id returns integer
native EXGetItemDataString takes integer itemcode, integer data_type returns string
native JNWriteLog takes string str returns nothing
native JNStringInsert takes string str, integer index, string val returns string
native JNStringPos takes string str, string sub returns integer
native JNStringContains takes string str, string sub returns boolean
native JNStringSplit takes string str, string sub, integer index returns string
native JNStringReplace takes string str, string old, string newstr returns string
native JNStringLength takes string str returns integer
native JNStringSub takes string str, integer start, integer length returns string
native JNStringCount takes string str, string sub returns integer
native EXEffectMatRotateZ takes effect e, real angle returns nothing
native EXSetEffectSize takes effect e, real size returns nothing
native JNUse takes nothing returns boolean
native JNObjectCharacterResetCharacter takes string UserId returns nothing
native JNObjectCharacterSetInt takes string UserId, string Field, integer value returns nothing
native JNObjectCharacterSetString takes string UserId, string Field, string value returns nothing
native JNObjectCharacterSave takes string MapId, string UserId, string SecretKey, string Character returns string
native JNObjectCharacterGetInt takes string UserId, string Field returns integer
native JNObjectCharacterGetString takes string UserId, string Field returns string
native JNObjectCharacterInit takes string MapId, string UserId, string SecretKey, string Character returns integer
native JNServerTime takes string Format returns string
native JNObjectCharacterServerConnectCheck takes nothing returns boolean
native JNObjectCharacterRemoveField takes string UserId, string Field returns nothing
native EXGetAbilityDataInteger takes ability abil, integer level, integer data_type returns integer
native EXSetAbilityDataInteger takes ability abil, integer level, integer data_type, integer id returns boolean
native EXSetAbilityDataReal takes ability abil, integer level, integer data_type, real value returns boolean
native EXGetUnitAbility takes unit u, integer abilcode returns ability
native EXSetAbilityDataString takes ability abil, integer level, integer data_type, string value returns boolean
native DzFrameGetText takes integer frame returns string 
native DzFrameGetHeight takes integer frame returns real 
native DzFrameShow takes integer frame, boolean enable returns nothing 
native DzCreateFrameByTagName takes string frameType, string name, integer parent, string template, integer id returns integer 
native DzFrameSetAlpha takes integer frame, integer alpha returns nothing 
native DzFrameSetTexture takes integer frame, string texture, integer flag returns nothing 
native DzFrameSetAbsolutePoint takes integer frame, integer point, real x, real y returns nothing 
native DzFrameSetSize takes integer frame, real w, real h returns nothing 
native DzGetGameUI takes nothing returns integer 
native DzFrameSetText takes integer frame, string text returns nothing 
native DzFrameGetCommandBarButton takes integer row, integer column returns integer 
native DzFrameFindByName takes string name, integer id returns integer 
native DzSimpleFrameFindByName takes string name, integer id returns integer 
native DzGetTriggerUIEventFrame takes nothing returns integer 
native DzGetTriggerUIEventPlayer takes nothing returns player 
native DzFrameSetFont takes integer frame, string fileName, real height, integer flag returns nothing 
native DzFrameSetAllPoints takes integer frame, integer relativeFrame returns boolean 
native DzFrameSetScriptByCode takes integer frame, integer eventId, code funcHandle, boolean sync returns nothing 
native DzFrameGetMinimap takes nothing returns integer 
native DzCreateFrame takes string frame, integer parent, integer id returns integer 
native DzFrameSetPoint takes integer frame, integer point, integer relativeFrame, integer relativePoint, real x, real y returns nothing 
native DzFrameSetEnable takes integer name, boolean enable returns nothing 
native DzFrameClearAllPoints takes integer frame returns nothing 
native DzFrameHideInterface takes nothing returns nothing 
native DzFrameGetUpperButtonBarButton takes integer buttonId returns integer 
native DzFrameGetHeroBarButton takes integer buttonId returns integer 
native DzFrameGetHeroHPBar takes integer buttonId returns integer 
native DzFrameGetHeroManaBar takes integer buttonId returns integer 
native DzFrameGetMinimapButton takes integer buttonId returns integer 
native DzFrameEditBlackBorders takes real upperHeight, real bottomHeight returns nothing 
native DzEnableWideScreen takes boolean enable returns nothing 
native DzFrameGetChatMessage takes nothing returns integer 
native DzFrameGetUnitMessage takes nothing returns integer 
native DzLoadToc takes string fileName returns nothing 
native DzFrameGetPortrait takes nothing returns integer 
native DzFrameGetParent takes integer frame returns integer 
native DzFrameSetUpdateCallback takes string func returns nothing 
native DzSimpleFontStringFindByName takes string name, integer id returns integer 
native DzFrameSetParent takes integer frame, integer parent returns nothing 
native DzFrameGetName takes integer frame returns string 
 native DzSimpleTextureFindByName takes string name, integer id returns integer 
native DzFrameSetModel takes integer frame, string modelFile, integer modelType, integer flag returns nothing 
native JNMemoryGetByte takes integer offset returns integer
native JNMemorySetInteger takes integer offset, integer value returns nothing
native JNMemorySetReal takes integer offset, real value returns nothing
native JNMemoryGetString takes integer offset, integer length returns string
native JNMemorySetByte takes integer offset, integer value returns nothing
native JNMemorySetString takes integer offset, string value returns nothing
native BitAnd takes integer x, integer y returns integer
native BitOr takes integer x, integer y returns integer
native JNOpenBrowser takes string uri returns nothing 
native EXExecuteScript takes string script returns string 

//Generated destructor of Ptr
function sc__Ptr_deallocate takes integer this returns nothing
    if this==null then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: Ptr")
        return
    elseif (si__Ptr_V[this]!=-1) then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: Ptr")
        return
    endif
    set f__arg_this=this
    call TriggerEvaluate(st__Ptr_onDestroy[si__Ptr_type[this]])
    set si__Ptr_V[this]=si__Ptr_F
    set si__Ptr_F=this
endfunction

//Generated allocator of Load
function s__Load__allocate takes nothing returns integer
 local integer this=si__Load_F
    if (this!=0) then
        set si__Load_F=si__Load_V[this]
    else
        set si__Load_I=si__Load_I+1
        set this=si__Load_I
    endif
    if (this>8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: Load")
        return 0
    endif

    set si__Load_V[this]=-1
 return this
endfunction

//Generated destructor of Load
function s__Load_deallocate takes integer this returns nothing
    if this==null then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: Load")
        return
    elseif (si__Load_V[this]!=-1) then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: Load")
        return
    endif
    set si__Load_V[this]=si__Load_F
    set si__Load_F=this
endfunction

//Generated method caller for Select.ViewInfo
function sc__Select_ViewInfo takes string s,boolean Continue returns nothing
    set f__arg_string1=s
    set f__arg_boolean1=Continue
    call TriggerEvaluate(st__Select_ViewInfo)
endfunction

//Generated method caller for Select.CountAdder
function sc__Select_CountAdder takes nothing returns integer
      set s__Select_currentCount=s__Select_currentCount + 1
      return s__Select_currentCount
endfunction

//Generated allocator of Select
function s__Select__allocate takes nothing returns integer
 local integer this=si__Select_F
    if (this!=0) then
        set si__Select_F=si__Select_V[this]
    else
        set si__Select_I=si__Select_I+1
        set this=si__Select_I
    endif
    if (this>8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: Select")
        return 0
    endif

    set si__Select_V[this]=-1
 return this
endfunction

//Generated destructor of Select
function s__Select_deallocate takes integer this returns nothing
    if this==null then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: Select")
        return
    elseif (si__Select_V[this]!=-1) then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: Select")
        return
    endif
    set si__Select_V[this]=si__Select_F
    set si__Select_F=this
endfunction

//Generated method caller for MenuQuickSlot.MenuClick
function sc__MenuQuickSlot_MenuClick takes integer i returns nothing
    set f__arg_integer1=i
    call TriggerEvaluate(st__MenuQuickSlot_MenuClick)
endfunction

//Generated method caller for MenuQuickSlot.ButtonClickDetail
function sc__MenuQuickSlot_ButtonClickDetail takes player p,integer frame returns nothing
    set f__arg_player1=p
    set f__arg_integer1=frame
    call TriggerEvaluate(st__MenuQuickSlot_ButtonClickDetail)
endfunction

//Generated allocator of MenuQuickSlot
function s__MenuQuickSlot__allocate takes nothing returns integer
 local integer this=si__MenuQuickSlot_F
    if (this!=0) then
        set si__MenuQuickSlot_F=si__MenuQuickSlot_V[this]
    else
        set si__MenuQuickSlot_I=si__MenuQuickSlot_I+1
        set this=si__MenuQuickSlot_I
    endif
    if (this>8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: MenuQuickSlot")
        return 0
    endif

    set si__MenuQuickSlot_V[this]=-1
 return this
endfunction

//Generated destructor of MenuQuickSlot
function s__MenuQuickSlot_deallocate takes integer this returns nothing
    if this==null then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: MenuQuickSlot")
        return
    elseif (si__MenuQuickSlot_V[this]!=-1) then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: MenuQuickSlot")
        return
    endif
    set si__MenuQuickSlot_V[this]=si__MenuQuickSlot_F
    set si__MenuQuickSlot_F=this
endfunction

//Generated allocator of EndGameHook___AssemblyWriter
function s__EndGameHook___AssemblyWriter__allocate takes nothing returns integer
 local integer this=si__EndGameHook___AssemblyWriter_F
    if (this!=0) then
        set si__EndGameHook___AssemblyWriter_F=si__EndGameHook___AssemblyWriter_V[this]
    else
        set si__EndGameHook___AssemblyWriter_I=si__EndGameHook___AssemblyWriter_I+1
        set this=si__EndGameHook___AssemblyWriter_I
    endif
    if (this>8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: EndGameHook___AssemblyWriter")
        return 0
    endif

    set si__EndGameHook___AssemblyWriter_V[this]=-1
 return this
endfunction

//Generated destructor of EndGameHook___AssemblyWriter
function s__EndGameHook___AssemblyWriter_deallocate takes integer this returns nothing
    if this==null then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: EndGameHook___AssemblyWriter")
        return
    elseif (si__EndGameHook___AssemblyWriter_V[this]!=-1) then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: EndGameHook___AssemblyWriter")
        return
    endif
    set si__EndGameHook___AssemblyWriter_V[this]=si__EndGameHook___AssemblyWriter_F
    set si__EndGameHook___AssemblyWriter_F=this
endfunction
//generated factory of IResource
function sc__IResource__factory takes integer typeid returns integer
    set f__result_integer=0
    set f__arg_integer1=typeid
    call TriggerEvaluate(st__IResource__factory)
    return f__result_integer
endfunction
//Generated destructor of IResource
function sc__IResource_deallocate takes integer this returns nothing
    if this==null then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: IResource")
        return
    elseif (si__IResource_V[this]!=-1) then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: IResource")
        return
    endif
    set f__arg_this=this
    call TriggerEvaluate(st__IResource_onDestroy[si__IResource_type[this]])
    set si__IResource_V[this]=si__IResource_F
    set si__IResource_F=this
endfunction

//Generated method caller for SlotResource.Create
function sc__SlotResource_Create takes integer inputCharacter,integer slot,integer id,integer level returns integer
    set f__arg_integer1=inputCharacter
    set f__arg_integer2=slot
    set f__arg_integer3=id
    set f__arg_integer4=level
    call TriggerEvaluate(st__SlotResource_Create)
 return f__result_integer
endfunction

//Generated method caller for SlotResource.ChangeBaseID
function sc__SlotResource_ChangeBaseID takes integer this,integer id,integer level returns nothing
    set f__arg_this=this
    set f__arg_integer1=id
    set f__arg_integer2=level
    call TriggerEvaluate(st__SlotResource_ChangeBaseID)
endfunction

//Generated method caller for SlotResource.ChangeIcon
function sc__SlotResource_ChangeIcon takes integer playerId,integer characterId,integer slot returns nothing
    set f__arg_integer1=playerId
    set f__arg_integer2=characterId
    set f__arg_integer3=slot
    call TriggerEvaluate(st__SlotResource_ChangeIcon)
endfunction

//Generated method caller for SlotResource.InitVariables
function sc__SlotResource_InitVariables takes integer this returns nothing
    set f__arg_this=this
    call TriggerEvaluate(st__SlotResource_InitVariables)
endfunction

//Generated method caller for SlotResource.UpdateInitVariables
function sc__SlotResource_UpdateInitVariables takes integer this returns nothing
    set f__arg_this=this
    call TriggerEvaluate(st__SlotResource_UpdateInitVariables)
endfunction

//Generated method caller for SlotResource.ChangeObjectData
function sc__SlotResource_ChangeObjectData takes integer this,ability abil returns nothing
    set f__arg_this=this
    set f__arg_ability1=abil
    call TriggerEvaluate(st__SlotResource_ChangeObjectData)
endfunction

//Generated allocator of SlotResource
function s__SlotResource__allocate takes nothing returns integer
 local integer kthis
 local integer this=si__IResource_F
    if (this!=0) then
        set si__IResource_F=si__IResource_V[this]
    else
        set si__IResource_I=si__IResource_I+1
        set this=si__IResource_I
    endif
    if (this>8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: SlotResource")
        return 0
    endif

    set si__IResource_type[this]=37
    set kthis=this

   set s__SlotResource_slot[this]= 0
   set s__SlotResource_level[this]= 0
   set s__SlotResource_lastDamage[this]= 0
   set s__SlotResource_lastDistance[this]= 0
   set s__SlotResource_lastRange[this]= 0
   set s__SlotResource_lastDuration[this]= 0
   set s__SlotResource_lastCostMana[this]= 0
   set s__SlotResource_lastCastingTime[this]= 0
   set s__SlotResource_lastCooldownTime[this]= 0
    set si__IResource_V[this]=-1
 return this
endfunction


//Generated method caller for StatResource.Create
function sc__StatResource_Create takes integer inputCharacter,integer inputSubTypeId returns integer
    set f__arg_integer1=inputCharacter
    set f__arg_integer2=inputSubTypeId
    call TriggerEvaluate(st__StatResource_Create)
 return f__result_integer
endfunction

//Generated allocator of StatResource
function s__StatResource__allocate takes nothing returns integer
 local integer kthis
 local integer this=si__IResource_F
    if (this!=0) then
        set si__IResource_F=si__IResource_V[this]
    else
        set si__IResource_I=si__IResource_I+1
        set this=si__IResource_I
    endif
    if (this>8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: StatResource")
        return 0
    endif

    set si__IResource_type[this]=36
    set kthis=this

   set s__StatResource_baseValue[this]= 0
   set s__StatResource_addValue[this]= 0
    set si__IResource_V[this]=-1
 return this
endfunction


//Generated allocator of CharacterResource
function s__CharacterResource__allocate takes nothing returns integer
 local integer kthis
 local integer this=si__IResource_F
    if (this!=0) then
        set si__IResource_F=si__IResource_V[this]
    else
        set si__IResource_I=si__IResource_I+1
        set this=si__IResource_I
    endif
    if (this>8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: CharacterResource")
        return 0
    endif

    set si__IResource_type[this]=33
    if (si__CharacterResource_arrN==0) then
        set si__CharacterResource_arrI=si__CharacterResource_arrI+1
        set kthis=si__CharacterResource_arrI
        if (kthis>254) then
            set si__IResource_V[this]=si__IResource_F
            set si__IResource_F=this
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: CharacterResource")
            return 0
        endif
    else
        set kthis=si__CharacterResource_arrV[si__CharacterResource_arrN]
        set si__CharacterResource_arrN=si__CharacterResource_arrN-1
    endif
    set si__CharacterResource_arr[this]=kthis
    set s__CharacterResource_Skills[this]=(kthis-1)*8
    set s__CharacterResource_Stats[this]=(kthis-1)*32
    set si__IResource_V[this]=-1
 return this
endfunction


//Generated method caller for PlayerResource._staticgetindex
function sc__PlayerResource__staticgetindex takes integer input returns integer
    set f__arg_integer1=input
    call TriggerEvaluate(st__PlayerResource__staticgetindex)
 return f__result_integer
endfunction

//Generated allocator of PlayerResource
function s__PlayerResource__allocate takes nothing returns integer
 local integer kthis
 local integer this=si__IResource_F
    if (this!=0) then
        set si__IResource_F=si__IResource_V[this]
    else
        set si__IResource_I=si__IResource_I+1
        set this=si__IResource_I
    endif
    if (this>8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: PlayerResource")
        return 0
    endif

    set si__IResource_type[this]=31
    if (si__PlayerResource_arrN==0) then
        set si__PlayerResource_arrI=si__PlayerResource_arrI+1
        set kthis=si__PlayerResource_arrI
        if (kthis>272) then
            set si__IResource_V[this]=si__IResource_F
            set si__IResource_F=this
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: PlayerResource")
            return 0
        endif
    else
        set kthis=si__PlayerResource_arrV[si__PlayerResource_arrN]
        set si__PlayerResource_arrN=si__PlayerResource_arrN-1
    endif
    set si__PlayerResource_arr[this]=kthis
    set s__PlayerResource_options[this]=(kthis-1)*30
    set si__IResource_V[this]=-1
 return this
endfunction


//Generated allocator of OptionResource
function s__OptionResource__allocate takes nothing returns integer
 local integer kthis
 local integer this=si__IResource_F
    if (this!=0) then
        set si__IResource_F=si__IResource_V[this]
    else
        set si__IResource_I=si__IResource_I+1
        set this=si__IResource_I
    endif
    if (this>8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: OptionResource")
        return 0
    endif

    set si__IResource_type[this]=30
    set kthis=this

    set si__IResource_V[this]=-1
 return this
endfunction


//Generated allocator of TreeMainCoreData
function s__TreeMainCoreData__allocate takes nothing returns integer
 local integer this=si__TreeMainCoreData_F
    if (this!=0) then
        set si__TreeMainCoreData_F=si__TreeMainCoreData_V[this]
    else
        set si__TreeMainCoreData_I=si__TreeMainCoreData_I+1
        set this=si__TreeMainCoreData_I
    endif
    if (this>681) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: TreeMainCoreData")
        return 0
    endif
    set s__TreeMainCoreData_SkillNumber[this]=(this-1)*12
    set s__TreeMainCoreData_positionX[this]=(this-1)*12
    set s__TreeMainCoreData_positionY[this]=(this-1)*12
    set s__TreeMainCoreData_iconPath[this]=(this-1)*12
   set s__TreeMainCoreData_MAX_TREE_SKILL_COUNT[this]= 0
    set si__TreeMainCoreData_V[this]=-1
 return this
endfunction

//Generated destructor of TreeMainCoreData
function s__TreeMainCoreData_deallocate takes integer this returns nothing
    if this==null then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: TreeMainCoreData")
        return
    elseif (si__TreeMainCoreData_V[this]!=-1) then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: TreeMainCoreData")
        return
    endif
    set si__TreeMainCoreData_V[this]=si__TreeMainCoreData_F
    set si__TreeMainCoreData_F=this
endfunction

//Generated allocator of CharacterData
function s__CharacterData__allocate takes nothing returns integer
 local integer this=si__CharacterData_F
    if (this!=0) then
        set si__CharacterData_F=si__CharacterData_V[this]
    else
        set si__CharacterData_I=si__CharacterData_I+1
        set this=si__CharacterData_I
    endif
    if (this>8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: CharacterData")
        return 0
    endif

    set si__CharacterData_V[this]=-1
 return this
endfunction

//Generated destructor of CharacterData
function s__CharacterData_deallocate takes integer this returns nothing
    if this==null then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: CharacterData")
        return
    elseif (si__CharacterData_V[this]!=-1) then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: CharacterData")
        return
    endif
    set si__CharacterData_V[this]=si__CharacterData_F
    set si__CharacterData_F=this
endfunction

//Generated allocator of HotkeyData
function s__HotkeyData__allocate takes nothing returns integer
 local integer this=si__HotkeyData_F
    if (this!=0) then
        set si__HotkeyData_F=si__HotkeyData_V[this]
    else
        set si__HotkeyData_I=si__HotkeyData_I+1
        set this=si__HotkeyData_I
    endif
    if (this>8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: HotkeyData")
        return 0
    endif

    set si__HotkeyData_V[this]=-1
 return this
endfunction

//Generated destructor of HotkeyData
function s__HotkeyData_deallocate takes integer this returns nothing
    if this==null then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: HotkeyData")
        return
    elseif (si__HotkeyData_V[this]!=-1) then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: HotkeyData")
        return
    endif
    set si__HotkeyData_V[this]=si__HotkeyData_F
    set si__HotkeyData_F=this
endfunction

//Generated allocator of SlotData
function s__SlotData__allocate takes nothing returns integer
 local integer this=si__SlotData_F
    if (this!=0) then
        set si__SlotData_F=si__SlotData_V[this]
    else
        set si__SlotData_I=si__SlotData_I+1
        set this=si__SlotData_I
    endif
    if (this>8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: SlotData")
        return 0
    endif

    set si__SlotData_V[this]=-1
 return this
endfunction

//Generated destructor of SlotData
function s__SlotData_deallocate takes integer this returns nothing
    if this==null then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: SlotData")
        return
    elseif (si__SlotData_V[this]!=-1) then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: SlotData")
        return
    endif
    set si__SlotData_V[this]=si__SlotData_F
    set si__SlotData_F=this
endfunction

//Generated allocator of SkillData
function s__SkillData__allocate takes nothing returns integer
 local integer this=si__SkillData_F
    if (this!=0) then
        set si__SkillData_F=si__SkillData_V[this]
    else
        set si__SkillData_I=si__SkillData_I+1
        set this=si__SkillData_I
    endif
    if (this>8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: SkillData")
        return 0
    endif

    set si__SkillData_V[this]=-1
 return this
endfunction

//Generated destructor of SkillData
function s__SkillData_deallocate takes integer this returns nothing
    if this==null then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: SkillData")
        return
    elseif (si__SkillData_V[this]!=-1) then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: SkillData")
        return
    endif
    set si__SkillData_V[this]=si__SkillData_F
    set si__SkillData_F=this
endfunction

//Generated allocator of StatData
function s__StatData__allocate takes nothing returns integer
 local integer this=si__StatData_F
    if (this!=0) then
        set si__StatData_F=si__StatData_V[this]
    else
        set si__StatData_I=si__StatData_I+1
        set this=si__StatData_I
    endif
    if (this>8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: StatData")
        return 0
    endif

   set s__StatData_Name[this]= ""
    set si__StatData_V[this]=-1
 return this
endfunction

//Generated destructor of StatData
function s__StatData_deallocate takes integer this returns nothing
    if this==null then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: StatData")
        return
    elseif (si__StatData_V[this]!=-1) then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: StatData")
        return
    endif
    set si__StatData_V[this]=si__StatData_F
    set si__StatData_F=this
endfunction

//Generated allocator of ESkillTree
function s__ESkillTree__allocate takes nothing returns integer
 local integer this=si__ESkillTree_F
    if (this!=0) then
        set si__ESkillTree_F=si__ESkillTree_V[this]
    else
        set si__ESkillTree_I=si__ESkillTree_I+1
        set this=si__ESkillTree_I
    endif
    if (this>8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: ESkillTree")
        return 0
    endif

    set si__ESkillTree_V[this]=-1
 return this
endfunction

//Generated destructor of ESkillTree
function s__ESkillTree_deallocate takes integer this returns nothing
    if this==null then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: ESkillTree")
        return
    elseif (si__ESkillTree_V[this]!=-1) then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: ESkillTree")
        return
    endif
    set si__ESkillTree_V[this]=si__ESkillTree_F
    set si__ESkillTree_F=this
endfunction

//Generated allocator of EMenus
function s__EMenus__allocate takes nothing returns integer
 local integer this=si__EMenus_F
    if (this!=0) then
        set si__EMenus_F=si__EMenus_V[this]
    else
        set si__EMenus_I=si__EMenus_I+1
        set this=si__EMenus_I
    endif
    if (this>8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: EMenus")
        return 0
    endif

    set si__EMenus_V[this]=-1
 return this
endfunction

//Generated destructor of EMenus
function s__EMenus_deallocate takes integer this returns nothing
    if this==null then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: EMenus")
        return
    elseif (si__EMenus_V[this]!=-1) then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: EMenus")
        return
    endif
    set si__EMenus_V[this]=si__EMenus_F
    set si__EMenus_F=this
endfunction

//Generated allocator of EHotkeys
function s__EHotkeys__allocate takes nothing returns integer
 local integer this=si__EHotkeys_F
    if (this!=0) then
        set si__EHotkeys_F=si__EHotkeys_V[this]
    else
        set si__EHotkeys_I=si__EHotkeys_I+1
        set this=si__EHotkeys_I
    endif
    if (this>8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: EHotkeys")
        return 0
    endif

    set si__EHotkeys_V[this]=-1
 return this
endfunction

//Generated destructor of EHotkeys
function s__EHotkeys_deallocate takes integer this returns nothing
    if this==null then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: EHotkeys")
        return
    elseif (si__EHotkeys_V[this]!=-1) then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: EHotkeys")
        return
    endif
    set si__EHotkeys_V[this]=si__EHotkeys_F
    set si__EHotkeys_F=this
endfunction

//Generated allocator of EStatType
function s__EStatType__allocate takes nothing returns integer
 local integer this=si__EStatType_F
    if (this!=0) then
        set si__EStatType_F=si__EStatType_V[this]
    else
        set si__EStatType_I=si__EStatType_I+1
        set this=si__EStatType_I
    endif
    if (this>8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: EStatType")
        return 0
    endif

    set si__EStatType_V[this]=-1
 return this
endfunction

//Generated destructor of EStatType
function s__EStatType_deallocate takes integer this returns nothing
    if this==null then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: EStatType")
        return
    elseif (si__EStatType_V[this]!=-1) then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: EStatType")
        return
    endif
    set si__EStatType_V[this]=si__EStatType_F
    set si__EStatType_F=this
endfunction

//Generated allocator of ESkillTypeUI
function s__ESkillTypeUI__allocate takes nothing returns integer
 local integer this=si__ESkillTypeUI_F
    if (this!=0) then
        set si__ESkillTypeUI_F=si__ESkillTypeUI_V[this]
    else
        set si__ESkillTypeUI_I=si__ESkillTypeUI_I+1
        set this=si__ESkillTypeUI_I
    endif
    if (this>8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: ESkillTypeUI")
        return 0
    endif

    set si__ESkillTypeUI_V[this]=-1
 return this
endfunction

//Generated destructor of ESkillTypeUI
function s__ESkillTypeUI_deallocate takes integer this returns nothing
    if this==null then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: ESkillTypeUI")
        return
    elseif (si__ESkillTypeUI_V[this]!=-1) then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: ESkillTypeUI")
        return
    endif
    set si__ESkillTypeUI_V[this]=si__ESkillTypeUI_F
    set si__ESkillTypeUI_F=this
endfunction

//Generated allocator of ESkillMethod
function s__ESkillMethod__allocate takes nothing returns integer
 local integer this=si__ESkillMethod_F
    if (this!=0) then
        set si__ESkillMethod_F=si__ESkillMethod_V[this]
    else
        set si__ESkillMethod_I=si__ESkillMethod_I+1
        set this=si__ESkillMethod_I
    endif
    if (this>8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: ESkillMethod")
        return 0
    endif

    set si__ESkillMethod_V[this]=-1
 return this
endfunction

//Generated destructor of ESkillMethod
function s__ESkillMethod_deallocate takes integer this returns nothing
    if this==null then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: ESkillMethod")
        return
    elseif (si__ESkillMethod_V[this]!=-1) then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: ESkillMethod")
        return
    endif
    set si__ESkillMethod_V[this]=si__ESkillMethod_F
    set si__ESkillMethod_F=this
endfunction

//Generated allocator of ESkillSubClass
function s__ESkillSubClass__allocate takes nothing returns integer
 local integer this=si__ESkillSubClass_F
    if (this!=0) then
        set si__ESkillSubClass_F=si__ESkillSubClass_V[this]
    else
        set si__ESkillSubClass_I=si__ESkillSubClass_I+1
        set this=si__ESkillSubClass_I
    endif
    if (this>8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: ESkillSubClass")
        return 0
    endif

    set si__ESkillSubClass_V[this]=-1
 return this
endfunction

//Generated destructor of ESkillSubClass
function s__ESkillSubClass_deallocate takes integer this returns nothing
    if this==null then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: ESkillSubClass")
        return
    elseif (si__ESkillSubClass_V[this]!=-1) then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: ESkillSubClass")
        return
    endif
    set si__ESkillSubClass_V[this]=si__ESkillSubClass_F
    set si__ESkillSubClass_F=this
endfunction

//Generated allocator of ESkillClass
function s__ESkillClass__allocate takes nothing returns integer
 local integer this=si__ESkillClass_F
    if (this!=0) then
        set si__ESkillClass_F=si__ESkillClass_V[this]
    else
        set si__ESkillClass_I=si__ESkillClass_I+1
        set this=si__ESkillClass_I
    endif
    if (this>8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: ESkillClass")
        return 0
    endif

    set si__ESkillClass_V[this]=-1
 return this
endfunction

//Generated destructor of ESkillClass
function s__ESkillClass_deallocate takes integer this returns nothing
    if this==null then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: ESkillClass")
        return
    elseif (si__ESkillClass_V[this]!=-1) then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: ESkillClass")
        return
    endif
    set si__ESkillClass_V[this]=si__ESkillClass_F
    set si__ESkillClass_F=this
endfunction

//Generated allocator of EHotkeyMenu
function s__EHotkeyMenu__allocate takes nothing returns integer
 local integer this=si__EHotkeyMenu_F
    if (this!=0) then
        set si__EHotkeyMenu_F=si__EHotkeyMenu_V[this]
    else
        set si__EHotkeyMenu_I=si__EHotkeyMenu_I+1
        set this=si__EHotkeyMenu_I
    endif
    if (this>8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: EHotkeyMenu")
        return 0
    endif

    set si__EHotkeyMenu_V[this]=-1
 return this
endfunction

//Generated destructor of EHotkeyMenu
function s__EHotkeyMenu_deallocate takes integer this returns nothing
    if this==null then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: EHotkeyMenu")
        return
    elseif (si__EHotkeyMenu_V[this]!=-1) then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: EHotkeyMenu")
        return
    endif
    set si__EHotkeyMenu_V[this]=si__EHotkeyMenu_F
    set si__EHotkeyMenu_F=this
endfunction

//Generated allocator of ECharacter
function s__ECharacter__allocate takes nothing returns integer
 local integer this=si__ECharacter_F
    if (this!=0) then
        set si__ECharacter_F=si__ECharacter_V[this]
    else
        set si__ECharacter_I=si__ECharacter_I+1
        set this=si__ECharacter_I
    endif
    if (this>8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: ECharacter")
        return 0
    endif

    set si__ECharacter_V[this]=-1
 return this
endfunction

//Generated destructor of ECharacter
function s__ECharacter_deallocate takes integer this returns nothing
    if this==null then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: ECharacter")
        return
    elseif (si__ECharacter_V[this]!=-1) then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: ECharacter")
        return
    endif
    set si__ECharacter_V[this]=si__ECharacter_F
    set si__ECharacter_F=this
endfunction

//Generated allocator of ETile
function s__ETile__allocate takes nothing returns integer
 local integer this=si__ETile_F
    if (this!=0) then
        set si__ETile_F=si__ETile_V[this]
    else
        set si__ETile_I=si__ETile_I+1
        set this=si__ETile_I
    endif
    if (this>8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: ETile")
        return 0
    endif

    set si__ETile_V[this]=-1
 return this
endfunction

//Generated destructor of ETile
function s__ETile_deallocate takes integer this returns nothing
    if this==null then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: ETile")
        return
    elseif (si__ETile_V[this]!=-1) then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: ETile")
        return
    endif
    set si__ETile_V[this]=si__ETile_F
    set si__ETile_F=this
endfunction

//Generated allocator of CommandButton
function s__CommandButton__allocate takes nothing returns integer
 local integer kthis
 local integer this=si__Ptr_F
    if (this!=0) then
        set si__Ptr_F=si__Ptr_V[this]
    else
        set si__Ptr_I=si__Ptr_I+1
        set this=si__Ptr_I
    endif
    if (this>8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: CommandButton")
        return 0
    endif

    set si__Ptr_type[this]=8
    set kthis=this

    set si__Ptr_V[this]=-1
 return this
endfunction


//Generated allocator of GameUI
function s__GameUI__allocate takes nothing returns integer
 local integer kthis
 local integer this=si__Ptr_F
    if (this!=0) then
        set si__Ptr_F=si__Ptr_V[this]
    else
        set si__Ptr_I=si__Ptr_I+1
        set this=si__Ptr_I
    endif
    if (this>8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: GameUI")
        return 0
    endif

    set si__Ptr_type[this]=7
    set kthis=this

    set si__Ptr_V[this]=-1
 return this
endfunction


//Generated allocator of CommandButtonData
function s__CommandButtonData__allocate takes nothing returns integer
 local integer kthis
 local integer this=si__Ptr_F
    if (this!=0) then
        set si__Ptr_F=si__Ptr_V[this]
    else
        set si__Ptr_I=si__Ptr_I+1
        set this=si__Ptr_I
    endif
    if (this>8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: CommandButtonData")
        return 0
    endif

    set si__Ptr_type[this]=6
    set kthis=this

    set si__Ptr_V[this]=-1
 return this
endfunction


//Generated allocator of PtrPtr
function s__PtrPtr__allocate takes nothing returns integer
 local integer kthis
 local integer this=si__Ptr_F
    if (this!=0) then
        set si__Ptr_F=si__Ptr_V[this]
    else
        set si__Ptr_I=si__Ptr_I+1
        set this=si__Ptr_I
    endif
    if (this>8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: PtrPtr")
        return 0
    endif

    set si__Ptr_type[this]=5
    set kthis=this

    set si__Ptr_V[this]=-1
 return this
endfunction


//Generated allocator of RealPtr
function s__RealPtr__allocate takes nothing returns integer
 local integer kthis
 local integer this=si__Ptr_F
    if (this!=0) then
        set si__Ptr_F=si__Ptr_V[this]
    else
        set si__Ptr_I=si__Ptr_I+1
        set this=si__Ptr_I
    endif
    if (this>8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: RealPtr")
        return 0
    endif

    set si__Ptr_type[this]=4
    set kthis=this

    set si__Ptr_V[this]=-1
 return this
endfunction


//Generated allocator of IntPtr
function s__IntPtr__allocate takes nothing returns integer
 local integer kthis
 local integer this=si__Ptr_F
    if (this!=0) then
        set si__Ptr_F=si__Ptr_V[this]
    else
        set si__Ptr_I=si__Ptr_I+1
        set this=si__Ptr_I
    endif
    if (this>8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: IntPtr")
        return 0
    endif

    set si__Ptr_type[this]=3
    set kthis=this

    set si__Ptr_V[this]=-1
 return this
endfunction


//Generated allocator of BytePtr
function s__BytePtr__allocate takes nothing returns integer
 local integer kthis
 local integer this=si__Ptr_F
    if (this!=0) then
        set si__Ptr_F=si__Ptr_V[this]
    else
        set si__Ptr_I=si__Ptr_I+1
        set this=si__Ptr_I
    endif
    if (this>8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: BytePtr")
        return 0
    endif

    set si__Ptr_type[this]=2
    set kthis=this

    set si__Ptr_V[this]=-1
 return this
endfunction

function sc___prototype67_execute takes integer i,player a1,integer a2 returns nothing
    set f__arg_player1=a1
    set f__arg_integer1=a2

    call TriggerExecute(st___prototype67[i])
endfunction
function sc___prototype67_evaluate takes integer i,player a1,integer a2 returns nothing
    set f__arg_player1=a1
    set f__arg_integer1=a2

    call TriggerEvaluate(st___prototype67[i])

endfunction

//library MemoryLibBase:


    function MemoryLibBase___Init takes nothing returns nothing
        set pGameDll=JNGetModuleHandle("Game.dll")
    endfunction

//library MemoryLibBase ends
//library MemoryLibEnd:

//library MemoryLibEnd ends
//library MemoryLibPrimitiveType:

        function s__BytePtr__staticgetindex takes integer address returns integer
            return JNMemoryGetByte(address)
        endfunction

        function s__BytePtr__staticsetindex takes integer address,integer value returns nothing
            call JNMemorySetByte(address, value)
        endfunction

        function s__BytePtr__get_value takes integer this returns integer
            return JNMemoryGetByte(this)
        endfunction

        function s__BytePtr__set_value takes integer this,integer value returns nothing
            call JNMemorySetByte(this, value)
        endfunction

        function s__BytePtr__getindex takes integer this,integer offset returns integer
            return JNMemoryGetInteger(this + offset)
        endfunction

        function s__BytePtr__setindex takes integer this,integer offset,integer value returns nothing
            call JNMemorySetByte(this + offset, value)
        endfunction

        function s__IntPtr__staticgetindex takes integer address returns integer
            return JNMemoryGetInteger(address)
        endfunction

        function s__IntPtr__staticsetindex takes integer address,integer value returns nothing
            call JNMemorySetInteger(address, value)
        endfunction

        function s__IntPtr__get_value takes integer this returns integer
            return JNMemoryGetInteger(this)
        endfunction

        function s__IntPtr__set_value takes integer this,integer value returns nothing
            call JNMemorySetInteger(this, value)
        endfunction

        function s__IntPtr__getindex takes integer this,integer offset returns integer
            return JNMemoryGetInteger(this + ( offset * 4 ))
        endfunction

        function s__IntPtr__setindex takes integer this,integer offset,integer value returns nothing
            call JNMemorySetInteger(this + ( offset * 4 ), value)
        endfunction

        function s__RealPtr__staticgetindex takes integer address returns real
            return JNMemoryGetReal(address)
        endfunction

        function s__RealPtr__staticsetindex takes integer address,real value returns nothing
            call JNMemorySetReal(address, value)
        endfunction

        function s__RealPtr__get_value takes integer this returns real
            return JNMemoryGetReal(this)
        endfunction

        function s__RealPtr__set_value takes integer this,real value returns nothing
            call JNMemorySetReal(this, value)
        endfunction

        function s__RealPtr__getindex takes integer this,integer offset returns real
            return JNMemoryGetReal(this + ( offset * 4 ))
        endfunction

        function s__RealPtr__setindex takes integer this,integer offset,real value returns nothing
            call JNMemorySetReal(this + ( offset * 4 ), value)
        endfunction

        function s__PtrPtr__staticgetindex takes integer address returns integer
            return JNMemoryGetInteger(address)
        endfunction

        function s__PtrPtr__staticsetindex takes integer address,integer value returns nothing
            call JNMemorySetInteger(address, value)
        endfunction

        function s__PtrPtr__get_value takes integer this returns integer
            return JNMemoryGetInteger(this)
        endfunction

        function s__PtrPtr__set_value takes integer this,integer value returns nothing
            call JNMemorySetInteger(this, value)
        endfunction

        function s__PtrPtr__getindex takes integer this,integer offset returns integer
            return JNMemoryGetInteger(this + ( offset * 4 ))
        endfunction

        function s__PtrPtr__setindex takes integer this,integer offset,integer value returns nothing
            call JNMemorySetInteger(this + ( offset * 4 ), value)
        endfunction


//library MemoryLibPrimitiveType ends
//library MemoryLibCommandButtonData:

        function s__CommandButtonData__get_abilityId takes integer this returns integer
            return s__IntPtr__staticgetindex(this + 0x4)
        endfunction
        function s__CommandButtonData__get_orderId takes integer this returns integer
            return s__IntPtr__staticgetindex(this + 0x8)
        endfunction
        function s__CommandButtonData__get_targets takes integer this returns integer
            return s__IntPtr__staticgetindex(this + 0x10)
        endfunction
        function s__CommandButtonData__get_tip takes integer this returns string
            return JNMemoryGetString(this + 0x2C, 348) // 348 is not sure
        endfunction
        function s__CommandButtonData__get_ubertip takes integer this returns string
            return JNMemoryGetString(this + 0x18C, 1024) // 1024 is not sure
        endfunction
        function s__CommandButtonData__get_cost takes integer this returns integer
            return s__IntPtr__staticgetindex(this + 0x594)
        endfunction
        function s__CommandButtonData__get_buttonPosX takes integer this returns integer
            return s__IntPtr__staticgetindex(this + 0x59C)
        endfunction
        function s__CommandButtonData__get_buttonPosY takes integer this returns integer
            return s__IntPtr__staticgetindex(this + 0x5A0)
        endfunction
        function s__CommandButtonData__get_hotkey takes integer this returns integer
            return s__IntPtr__staticgetindex(this + 0x5AC)
        endfunction
        function s__CommandButtonData__get_art takes integer this returns string
            return JNMemoryGetString(this + 0x5C8, 200) // 200 is not sure
        endfunction
        function s__CommandButtonData__get_state takes integer this returns integer
            return s__IntPtr__staticgetindex(this + 0x6D0)
        endfunction


//library MemoryLibCommandButtonData ends
//library MemoryLibGameUI:
        function s__GameUI_getInstance takes nothing returns integer
            return s__PtrPtr__staticgetindex(pGameDll + 0xD0F600)
        endfunction

        function s__GameUI__get_cursorFrame takes integer this returns integer
            return s__PtrPtr__staticgetindex(this + 0x16C)
        endfunction

        function s__GameUI__get_worldFrame takes integer this returns integer
            return s__PtrPtr__staticgetindex(this + 0x3BC)
        endfunction

        function s__GameUI__get_currentMode takes integer this returns integer
            return s__PtrPtr__staticgetindex(this + 0x1B4)
        endfunction
        function s__GameUI__get_targetMode takes integer this returns integer
            return s__PtrPtr__staticgetindex(this + 0x210)
        endfunction
        function s__GameUI__get_selectMode takes integer this returns integer
            return s__PtrPtr__staticgetindex(this + 0x214)
        endfunction
        function s__GameUI__get_dragSelectMode takes integer this returns integer
            return s__PtrPtr__staticgetindex(this + 0x218)
        endfunction
        function s__GameUI__get_dragScrollMode takes integer this returns integer
            return s__PtrPtr__staticgetindex(this + 0x21C)
        endfunction
        function s__GameUI__get_buildMode takes integer this returns integer
            return s__PtrPtr__staticgetindex(this + 0x220)
        endfunction
        function s__GameUI__get_signalMode takes integer this returns integer
            return s__PtrPtr__staticgetindex(this + 0x224)
        endfunction
        function s__GameUI__get_escMenu takes integer this returns integer
            return s__PtrPtr__staticgetindex(this + 0x228)
        endfunction

        function s__GameUI_handleEvent takes integer this,integer pEvent returns integer
            local integer pFunc= pGameDll + 0x3A3190
            call SaveStr(JNProc_ht, JNProc_key, 0, "(II)I")
            call SaveInteger(JNProc_ht, JNProc_key, 1, this)
            call SaveInteger(JNProc_ht, JNProc_key, 2, pEvent)
            if ( JNProcCall(JNProc__thiscall, pFunc, JNProc_ht) ) then
                return LoadInteger(JNProc_ht, JNProc_key, 0)
            endif
            return 0
        endfunction


//library MemoryLibGameUI ends
//library MemoryLibMemoryBlock:


    


//library MemoryLibMemoryBlock ends
//library MemoryLibCommandButton:

        function s__CommandButton_getCommandBarButton takes integer x,integer y returns integer
            return DzFrameGetCommandBarButton(y, x)
        endfunction

        function s__CommandButton__get_data takes integer this returns integer
            return s__PtrPtr__staticgetindex(this + 0x190)
        endfunction


//library MemoryLibCommandButton ends
//library MemoryLib:

//library MemoryLib ends
//===========================================================================
// 
// 다른 워크래프트 III 지도
// 
//   Warcraft III map script
//   Generated by the Warcraft III World Editor
//   Date: Fri Sep 27 17:29:00 2024
//   Map Author: 알려지지 않음
// 
//===========================================================================

//***************************************************************************
//*
//*  Global Variables
//*
//***************************************************************************


function InitGlobals takes nothing returns nothing
    local integer i= 0
    set udg_ExitOption=0
endfunction

//***************************************************************************
//*
//*  Sounds
//*
//***************************************************************************

function InitSounds takes nothing returns nothing
    set gg_snd_BigButtonClick=CreateSound("Sound\\Interface\\BigButtonClick.wav", false, false, false, 10, 10, "")
    call SetSoundParamsFromLabel(gg_snd_BigButtonClick, "GlueScreenClick")
    call SetSoundDuration(gg_snd_BigButtonClick, 390)
    set gg_snd_MouseClick1=CreateSound("Sound\\Interface\\MouseClick1.wav", false, false, false, 10, 10, "")
    call SetSoundParamsFromLabel(gg_snd_MouseClick1, "InterfaceClick")
    call SetSoundDuration(gg_snd_MouseClick1, 239)
    set gg_snd_HeroDropItem1=CreateSound("Sound\\Interface\\HeroDropItem1.wav", false, true, true, 10, 10, "")
    call SetSoundParamsFromLabel(gg_snd_HeroDropItem1, "ItemDrop")
    call SetSoundDuration(gg_snd_HeroDropItem1, 486)
endfunction

//***************************************************************************
//*
//*  Items
//*
//***************************************************************************

function CreateAllItems takes nothing returns nothing
    local integer itemID

    call CreateItem('azhr', - 9377.4, 2851.1)
    call CreateItem('azhr', - 9371.1, 2747.5)
    call CreateItem('azhr', - 9369.2, 2953.1)
    call CreateItem('ckng', - 9449.0, 2755.7)
    call CreateItem('ckng', - 9455.3, 2859.2)
    call CreateItem('ckng', - 9447.1, 2961.3)
    call CreateItem('desc', - 9540.2, 2861.3)
    call CreateItem('desc', - 9534.0, 2757.7)
    call CreateItem('desc', - 9532.1, 2963.3)
    call CreateItem('modt', - 9713.9, 2967.5)
    call CreateItem('modt', - 9715.8, 2761.8)
    call CreateItem('modt', - 9722.1, 2865.4)
    call CreateItem('ofro', - 9287.8, 2749.5)
    call CreateItem('ofro', - 9294.1, 2853.1)
    call CreateItem('ratf', - 9627.1, 2967.5)
    call CreateItem('ratf', - 9635.3, 2865.4)
    call CreateItem('ratf', - 9629.0, 2761.8)
    call CreateItem('rde4', - 9206.0, 2763.9)
    call CreateItem('rde4', - 9212.3, 2867.5)
    call CreateItem('tkno', - 9411.2, 2360.1)
    call CreateItem('tkno', - 9531.7, 2350.4)
    call CreateItem('tkno', - 9348.6, 2360.1)
    call CreateItem('tkno', - 9217.0, 2331.3)
    call CreateItem('tkno', - 9286.8, 2350.4)
    call CreateItem('tkno', - 9585.0, 2369.8)
    call CreateItem('tkno', - 9478.6, 2369.8)
endfunction

//***************************************************************************
//*
//*  Unit Creation
//*
//***************************************************************************

//===========================================================================
function CreateBuildingsForPlayer10 takes nothing returns nothing
    local player p= Player(10)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=CreateUnit(p, 'ncop', - 64.0, 896.0, 270.000)
endfunction

//===========================================================================
function CreateUnitsForPlayer10 takes nothing returns nothing
    local player p= Player(10)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=CreateUnit(p, 'nvlk', - 952.6, 571.8, 336.983)
    set u=CreateUnit(p, 'nvl2', - 3062.5, 2413.8, 277.974)
    set u=CreateUnit(p, 'nvl2', - 2352.1, 2850.3, 65.074)
    set u=CreateUnit(p, 'nvlw', - 2421.5, 2950.8, 321.799)
    set u=CreateUnit(p, 'nvil', - 888.1, 680.9, 308.802)
    set u=CreateUnit(p, 'nvil', 161.1, 347.9, 28.181)
    set u=CreateUnit(p, 'nvlk', 289.7, 379.8, 226.446)
    set u=CreateUnit(p, 'nvlk', - 360.9, 1191.0, 150.166)
    set u=CreateUnit(p, 'nvil', - 867.8, 421.7, 43.123)
    set u=CreateUnit(p, 'nvlw', - 108.7, 1288.0, 251.946)
    set u=CreateUnit(p, 'nvl2', - 403.6, 1019.9, 31.158)
    set u=CreateUnit(p, 'nvl2', - 269.8, 902.3, 359.758)
    set u=CreateUnit(p, 'nvk2', - 2495.9, 2827.2, 263.010)
    set u=CreateUnit(p, 'nvk2', - 135.5, 850.4, 19.556)
    set u=CreateUnit(p, 'nvk2', - 1465.0, 1082.0, 177.742)
    set u=CreateUnit(p, 'nvk2', - 1323.0, 1439.7, 221.370)
    set u=CreateUnit(p, 'nvlk', - 1519.3, 1402.3, 3.153)
    set u=CreateUnit(p, 'nvl2', - 1210.5, 1154.0, 152.715)
    set u=CreateUnit(p, 'nvl2', - 1306.5, 1042.5, 109.504)
    set u=CreateUnit(p, 'nvlk', - 2595.4, 1875.5, 98.008)
    set u=CreateUnit(p, 'nvlw', - 1230.3, 1365.5, 217.096)
    set u=CreateUnit(p, 'nvlw', - 2668.4, 1924.0, 126.529)
    set u=CreateUnit(p, 'nvil', - 1391.6, 1389.7, 358.231)
    set u=CreateUnit(p, 'hsor', - 694.1, 936.1, 88.305)
    set u=CreateUnit(p, 'hsor', - 611.6, 1012.9, 186.271)
    set u=CreateUnit(p, 'hmpr', - 784.3, 1029.3, 1.060)
    set u=CreateUnit(p, 'hsor', - 201.2, 1026.8, 349.802)
    set u=CreateUnit(p, 'hsor', - 36.7, 1026.8, 186.271)
    set u=CreateUnit(p, 'hmpr', - 115.4, 953.4, 86.077)
    set u=CreateUnit(p, 'hrif', - 827.5, 1124.3, 86.103)
    set u=CreateUnit(p, 'hrif', 40.1, 1120.0, 94.107)
endfunction

//===========================================================================
function CreateNeutralHostile takes nothing returns nothing
    local player p= Player(PLAYER_NEUTRAL_AGGRESSIVE)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=CreateUnit(p, 'nban', - 6995.1, 4196.8, 214.991)
    set u=CreateUnit(p, 'nban', - 7007.9, 4108.0, 127.739)
    set u=CreateUnit(p, 'nenf', - 7685.6, 4509.8, 165.648)
endfunction

//===========================================================================
function CreateNeutralPassiveBuildings takes nothing returns nothing
    local player p= Player(PLAYER_NEUTRAL_PASSIVE)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=CreateUnit(p, 'n000', - 10016.0, 4384.0, 270.000)
    set u=CreateUnit(p, 'ncop', - 9088.0, 4608.0, 270.000)
    set u=CreateUnit(p, 'ncop', - 640.0, 1344.0, 270.000)
    set u=CreateUnit(p, 'ncp3', 384.0, 384.0, 270.000)
endfunction

//===========================================================================
function CreateNeutralPassive takes nothing returns nothing
    local player p= Player(PLAYER_NEUTRAL_PASSIVE)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=CreateUnit(p, 'Hamg', - 9823.8, 4220.1, 248.391)
endfunction

//===========================================================================
function CreatePlayerBuildings takes nothing returns nothing
    call CreateBuildingsForPlayer10()
endfunction

//===========================================================================
function CreatePlayerUnits takes nothing returns nothing
    call CreateUnitsForPlayer10()
endfunction

//===========================================================================
function CreateAllUnits takes nothing returns nothing
    call CreateNeutralPassiveBuildings()
    call CreatePlayerBuildings()
    call CreateNeutralHostile()
    call CreateNeutralPassive()
    call CreatePlayerUnits()
endfunction

//***************************************************************************
//*
//*  Regions
//*
//***************************************************************************

function CreateRegions takes nothing returns nothing
    local weathereffect we

    set gg_rct_Rect_Tutorial=Rect(- 10112.0, 3584.0, - 8704.0, 4736.0)
    set gg_rct_Env_Moonlight=Rect(- 10112.0, 4992.0, - 9088.0, 6016.0)
    set we=AddWeatherEffect(gg_rct_Env_Moonlight, 'LRma')
    call EnableWeatherEffect(we, true)
    set gg_rct_Hunting_Enter_01_Down=Rect(- 9184.0, 4512.0, - 8992.0, 4704.0)
    set gg_rct_Player_Hunting_Rect_01=Rect(- 8320.0, 4992.0, - 7040.0, 6016.0)
    set gg_rct_Hunting_Enter_02=Rect(- 9120.0, 4000.0, - 8928.0, 4192.0)
    set gg_rct_Player_Hunting_Rect_02=Rect(- 6784.0, 4992.0, - 5504.0, 6016.0)
    set gg_rct________006=Rect(- 7648.0, 4864.0, - 7200.0, 5024.0)
endfunction

//***************************************************************************
//*
//*  Triggers
//*
//***************************************************************************

//===========================================================================
// Trigger: Import File
//===========================================================================
// BEGIN IMPORT OF C:\Program Files\Warcraft\New\Breach\Script\GitAdder.j
// database 관련 : enums가 가장 먼저 로드되어야 함. enums간에 순서는 상관 없음.
// BEGIN IMPORT OF Native\DzAPIs.j
// DzAPISync.j   






// DzAPIHardware.j   




// /* trig: 말 그대로 이벤트 넣을 트리거 */   
// /* btn: 마우스 버튼을 선택. */   
// /* status: 0을 넣으면 버튼 땜, 1을 넣으면 버튼 누름. */   
// /* sync: false는 비동기화, true는 동기화이다. 비동기화는 반응속도가 매우매우매우 빠르지만 멀티 불가. */   
// /* 동기화는 반응속도는 보통이지만 멀티 가능 */   
// /* func, funcHandle: 뭔진 모르겠지만 null 값을 넣어도 무방함 */   







// scope JNMemory begins
  // Thanks to Howww   
  
  //프레임 UI단위로 마우스 X축 반환(0.0 ~ 0.8)   
  function GetFrameMouseX takes nothing returns real
    return JNMemoryGetReal(JNMemory___FrameMouseXOffset)
  endfunction 
  //프레임 UI단위로 마우스 Y축 반환(0.0 ~ 0.6)   
  function GetFrameMouseY takes nothing returns real
    return JNMemoryGetReal(JNMemory___FrameMouseYOffset)
  endfunction 
  function JNMemory___Init takes nothing returns nothing
    set JNMemory___FrameMouseXOffset=JNGetModuleHandle("Game.dll") + 0xCB1AF8
    set JNMemory___FrameMouseYOffset=JNGetModuleHandle("Game.dll") + 0xCB1AFC
  endfunction 
// scope JNMemory ends
// END IMPORT OF Native\DzAPIs.j
// BEGIN IMPORT OF Native\JNMics.j
// JNStopwatch.j






// JAPIItemState.j


// JNCommon.j


// JNString.j









// JAPIEffect.j


// END IMPORT OF Native\JNMics.j
// BEGIN IMPORT OF Native\JNServers.j













// END IMPORT OF Native\JNServers.j
// BEGIN IMPORT OF Native\JNUnits.j





// END IMPORT OF Native\JNUnits.j
// BEGIN IMPORT OF Native\JNFrame.j



// DzAPIFrameHandle.j  










































function JNGetFrameByName2 takes string name,integer createContext returns integer
  local integer frame= DzFrameFindByName(name, createContext)
  if frame == 0 then
    set frame=DzSimpleFrameFindByName(name, createContext)
     if frame != 0 then
     call BJDebugMsg("2. name: " + name + " / DzSimpleFrameFindByName " + I2S(frame))
     endif
     else
     call BJDebugMsg("1. name: " + name + " / DzFrameFindByName " + I2S(frame))
    if frame == 0 then
      set frame=DzSimpleFontStringFindByName(name, createContext)
       if frame != 0 then
       call BJDebugMsg("3. name: " + name + " / DzSimpleFontStringFindByName " + I2S(frame))
       endif
      if frame == 0 then
        set frame=DzSimpleTextureFindByName(name, createContext)
         if frame != 0 then
         call BJDebugMsg("4. name: " + name + " / DzSimpleTextureFindByName " + I2S(frame))
         endif
      endif
    endif
  endif
   if frame == 0 then
   call BJDebugMsg("0. name: " + name + " / Result " + I2S(frame))
   endif
  return frame
endfunction
// END IMPORT OF Native\JNFrame.j

// BEGIN IMPORT OF Data\Enums\ETile.j
// [출처] 워크래프트 내의 모든 타일셋 id (워크래프트3 리포지드 유즈맵 포럼 [W3UMF]) | 작성자 동동주
// Tile.SUMMER_DIRT_ROUGH 같은 방법으로 사용할 수 있습니다.
// 푸잎 - 안쓰는 타일은 굳이 저장할 필요 없지만 바이트단위로 먹으니 그냥 리스트로 남겨둠.
// scope ETile begins
    
    // Lordaeron Summer 로데론 여름
    
    // Lordaeron Fall 로데론 가을
    
    // Lordaeron Winter 로데론 겨울
    
    // Barrens
    
    // Ashenvale
    
    // Felwood
    
    // Northrend
    
    // Cityscape 도시 풍경
    
    // Village 마을
    
    // Village Fall 마을-가을
    
    // Dalaran
    
    // Dungeon
    
    // Underground 지하
    
    // Sunken Ruins 파묻힌 폐허
    
    // Icecrown Glacier 아이스크라운 빙하
    
    // Outland
    
    // Black Citadel
    
    // Dalaran Ruins 달다란 폐허
    
    // Cliffs
// scope ETile ends
// END IMPORT OF Data\Enums\ETile.j
// BEGIN IMPORT OF Data\Enums\ECharacter.j
// scope ECharacter begins
    // { '이치고': 1, '루키아': 2, '우류': 3, '렌지': 4, '오리히메': 5, '사도': 6 },
    
    function s__ECharacter_U2I takes unit u returns integer
      if ( u == gg_unit_H000_0011 ) then
        return 1
      elseif ( u == gg_unit_H001_0010 ) then
        return 2
      elseif ( u == gg_unit_H002_0009 ) then
        return 3
      elseif ( u == gg_unit_H003_0008 ) then
        return 4
      elseif ( u == gg_unit_H005_0003 ) then
        return 5
      elseif ( u == gg_unit_H004_0007 ) then
        return 6
      else
        return 0
      endif
    endfunction
    function s__ECharacter_UT2I takes integer unitTypeId returns integer
      if ( unitTypeId == 'H000' ) then
        return 1
      elseif ( unitTypeId == 'H001' ) then
        return 2
      elseif ( unitTypeId == 'H002' ) then
        return 3
      elseif ( unitTypeId == 'H003' ) then
        return 4
      elseif ( unitTypeId == 'H005' ) then
        return 5
      elseif ( unitTypeId == 'H004' ) then
        return 6
      else
        return 0
      endif
    endfunction

  
// scope ECharacter ends
// END IMPORT OF Data\Enums\ECharacter.j
// BEGIN IMPORT OF Data\Enums\EMenuButtons.j
// scope EMenuButtons begins
// scope EMenuButtons ends
// END IMPORT OF Data\Enums\EMenuButtons.j
// BEGIN IMPORT OF Data\Enums\ESkillDatas.j
// scope ESkillDatas begins
    
// scope ESkillDatas ends


// END IMPORT OF Data\Enums\ESkillDatas.j
// BEGIN IMPORT OF Data\Enums\EStatDatas.j
// scope EStatDatas begins
    // 용어 설명
      // 평타 공격 : 일반, 투사체 두종류
        // 일반   (Normal)
        // 투사체 (Missile)
      // 능력 : 기술과 주술 능력 총칭.
        // 기술 (Physical): 신체/물리 기반
        // 마법 (Magical) : 에너지/마법 기반. 주술을 포함함.
          // 주술 (Mystic): 상태 이상 기반 (CC, 데미지는 없음)
      // 데미지 타입
        // 근접  (Melee)  : 평타-일반, 능력-기술 기반 데미지
        // 원격 (Ranged)  : 평타-투사체, 능력-마법 기반 데미지
      
      // 접미사 정의
        // 확률  (Percent)  : add-분자이며, 30 기준 130/100 = x1.3 (+30%) 의미
        // 감소   (Reduce)  : add-분모이며, 30 기준 100/130 = /1.3 (-24%) 의미
        // 기회   (Chance)  : set-분자이며, 30 기준  30/100 = x0.3 (=30%) 의미
        // 증폭 (Multiplier): 확률과 같으나, 총 '값'을 한번 더 증폭시킴.
          // 치명타에 5% 증폭 : 치명타 데미지 105% (치명타 확률이 5% 늘지 않음)
          // 체력회복에 5% 증폭 : 체력 회복량 105% (최대 체력의 5% 회복이 아님)

    // 메인스텟 3종

    // 평타 관련

    // 방어 관련

    // 이동, 체력 관련

    // 능력 기반
    
    // 특수, 확률 관련
// scope EStatDatas ends
// END IMPORT OF Data\Enums\EStatDatas.j
// BEGIN IMPORT OF Data\Enums\EHotkeys.j
// scope EHotkeys begins
    function s__EHotkeys_H2I takes string s returns integer
      if ( s == "0" ) then
        return $30
      elseif ( s == "1" ) then
        return $31
      elseif ( s == "2" ) then
        return $32
      elseif ( s == "3" ) then
        return $33
      elseif ( s == "4" ) then
        return $34
      elseif ( s == "5" ) then
        return $35
      elseif ( s == "6" ) then
        return $36
      elseif ( s == "7" ) then
        return $37
      elseif ( s == "8" ) then
        return $38
      elseif ( s == "9" ) then
        return $39
      elseif ( s == "n0" ) then
        return $60
      elseif ( s == "n1" ) then
        return $61
      elseif ( s == "n2" ) then
        return $62
      elseif ( s == "n3" ) then
        return $63
      elseif ( s == "n4" ) then
        return $64
      elseif ( s == "n5" ) then
        return $65
      elseif ( s == "n6" ) then
        return $66
      elseif ( s == "n7" ) then
        return $67
      elseif ( s == "n8" ) then
        return $68
      elseif ( s == "n9" ) then
        return $69
    
      elseif ( s == "B" ) then
        return $42
      elseif ( s == "C" ) then
        return $43
      elseif ( s == "D" ) then
        return $44
      elseif ( s == "E" ) then
        return $45
      elseif ( s == "F" ) then
        return $46
      elseif ( s == "G" ) then
        return $47
      elseif ( s == "H" ) then
        return $48
      elseif ( s == "I" ) then
        return $49
      elseif ( s == "J" ) then
        return $4A
      elseif ( s == "K" ) then
        return $4B
      elseif ( s == "L" ) then
        return $4C
      elseif ( s == "M" ) then
        return $4D
      elseif ( s == "N" ) then
        return $4E
      elseif ( s == "O" ) then
        return $4F
    
      elseif ( s == "Q" ) then
        return $51
      elseif ( s == "R" ) then
        return $52
      elseif ( s == "S" ) then
        return $53
      elseif ( s == "T" ) then
        return $54
      elseif ( s == "U" ) then
        return $55
      elseif ( s == "V" ) then
        return $56
      elseif ( s == "W" ) then
        return $57
      elseif ( s == "X" ) then
        return $58
      elseif ( s == "Y" ) then
        return $59
      elseif ( s == "Z" ) then
        return $5A
      elseif ( s == "F1" ) then
        return $70
      elseif ( s == "F2" ) then
        return $71
      elseif ( s == "F3" ) then
        return $72
      elseif ( s == "F4" ) then
        return $73
      elseif ( s == "F5" ) then
        return $74
      elseif ( s == "F6" ) then
        return $75
      elseif ( s == "F7" ) then
        return $76
      elseif ( s == "F8" ) then
        return $77
      elseif ( s == "TAB" ) then
        return $09
      elseif ( s == "CAP" ) then
        return $14
      elseif ( s == "SFT" ) then
        return $10
      elseif ( s == "CTR" ) then
        return $11
      elseif ( s == "ALT" ) then
        return $12
      elseif ( s == "SPC" ) then
        return $20
      elseif ( s == "n/" ) then
        return $6F
      elseif ( s == "n*" ) then
        return $6A
      elseif ( s == "n-" ) then
        return $6D
      elseif ( s == "n+" ) then
        return $6B
      elseif ( s == "n." ) then
        return $6E
      elseif ( s == "｀" ) then
        return $C0
      elseif ( s == "-" ) then
        return $BD
      elseif ( s == "=" ) then
        return $BB
      elseif ( s == "\\" ) then
        return $DC
      elseif ( s == "←" ) then
        return $08
      elseif ( s == "[" ) then
        return $DB
      elseif ( s == "]" ) then
        return $DD
      elseif ( s == ";" ) then
        return $BA
      elseif ( s == "'" ) then
        return $DE
      elseif ( s == "," ) then
        return $BC
      elseif ( s == "." ) then
        return $BE
      elseif ( s == "/" ) then
        return $BF
      elseif ( s == "sft" ) then
        return $A1
      elseif ( s == "alt" ) then
        return $A5
      elseif ( s == "ctr" ) then
        return $A3
      else
        return 0
      endif
    endfunction
    function s__EHotkeys_I2H takes integer iKey returns string
      if ( iKey == $30 ) then
        return "0"
      elseif ( iKey == $31 ) then
        return "1"
      elseif ( iKey == $32 ) then
        return "2"
      elseif ( iKey == $33 ) then
        return "3"
      elseif ( iKey == $34 ) then
        return "4"
      elseif ( iKey == $35 ) then
        return "5"
      elseif ( iKey == $36 ) then
        return "6"
      elseif ( iKey == $37 ) then
        return "7"
      elseif ( iKey == $38 ) then
        return "8"
      elseif ( iKey == $39 ) then
        return "9"
      elseif ( iKey == $60 ) then
        return "n0"
      elseif ( iKey == $61 ) then
        return "n1"
      elseif ( iKey == $62 ) then
        return "n2"
      elseif ( iKey == $63 ) then
        return "n3"
      elseif ( iKey == $64 ) then
        return "n4"
      elseif ( iKey == $65 ) then
        return "n5"
      elseif ( iKey == $66 ) then
        return "n6"
      elseif ( iKey == $67 ) then
        return "n7"
      elseif ( iKey == $68 ) then
        return "n8"
      elseif ( iKey == $69 ) then
        return "n9"
    
      elseif ( iKey == $42 ) then
        return "B"
      elseif ( iKey == $43 ) then
        return "C"
      elseif ( iKey == $44 ) then
        return "D"
      elseif ( iKey == $45 ) then
        return "E"
      elseif ( iKey == $46 ) then
        return "F"
      elseif ( iKey == $47 ) then
        return "G"
      elseif ( iKey == $48 ) then
        return "H"
      elseif ( iKey == $49 ) then
        return "I"
      elseif ( iKey == $4A ) then
        return "J"
      elseif ( iKey == $4B ) then
        return "K"
      elseif ( iKey == $4C ) then
        return "L"
      elseif ( iKey == $4D ) then
        return "M"
      elseif ( iKey == $4E ) then
        return "N"
      elseif ( iKey == $4F ) then
        return "O"
    
      elseif ( iKey == $51 ) then
        return "Q"
      elseif ( iKey == $52 ) then
        return "R"
      elseif ( iKey == $53 ) then
        return "S"
      elseif ( iKey == $54 ) then
        return "T"
      elseif ( iKey == $55 ) then
        return "U"
      elseif ( iKey == $56 ) then
        return "V"
      elseif ( iKey == $57 ) then
        return "W"
      elseif ( iKey == $58 ) then
        return "X"
      elseif ( iKey == $59 ) then
        return "Y"
      elseif ( iKey == $5A ) then
        return "Z"
      elseif ( iKey == $70 ) then
        return "F1"
      elseif ( iKey == $71 ) then
        return "F2"
      elseif ( iKey == $72 ) then
        return "F3"
      elseif ( iKey == $73 ) then
        return "F4"
      elseif ( iKey == $74 ) then
        return "F5"
      elseif ( iKey == $75 ) then
        return "F6"
      elseif ( iKey == $76 ) then
        return "F7"
      elseif ( iKey == $77 ) then
        return "F8"
      elseif ( iKey == $09 ) then
        return "TAB"
      elseif ( iKey == $14 ) then
        return "CAP"
      elseif ( iKey == $10 ) then
        return "SFT"
      elseif ( iKey == $11 ) then
        return "CTR"
      elseif ( iKey == $12 ) then
        return "ALT"
      elseif ( iKey == $20 ) then
        return "SPC"
      elseif ( iKey == $6F ) then
        return "n/"
      elseif ( iKey == $6A ) then
        return "n*"
      elseif ( iKey == $6D ) then
        return "n-"
      elseif ( iKey == $6B ) then
        return "n+"
      elseif ( iKey == $6E ) then
        return "n."
      elseif ( iKey == $C0 ) then
        return "｀"
      elseif ( iKey == $BD ) then
        return "-"
      elseif ( iKey == $BB ) then
        return "="
      elseif ( iKey == $DC ) then
        return "\\"
      elseif ( iKey == $08 ) then
        return "←"
      elseif ( iKey == $DB ) then
        return "["
      elseif ( iKey == $DD ) then
        return "]"
      elseif ( iKey == $BA ) then
        return ";"
      elseif ( iKey == $DE ) then
        return "'"
      elseif ( iKey == $BC ) then
        return ","
      elseif ( iKey == $BE ) then
        return "."
      elseif ( iKey == $BF ) then
        return "/"
      elseif ( iKey == $A1 ) then
        return "sft"
      elseif ( iKey == $A5 ) then
        return "alt"
      elseif ( iKey == $A3 ) then
        return "ctr"
      else
        return ""
      endif
    endfunction
// scope EHotkeys ends
// END IMPORT OF Data\Enums\EHotkeys.j
// BEGIN IMPORT OF Data\Enums\EMainMenus.j
// scope EMainMenus begins

    

    function s__EMenus_GetMainType takes integer frame returns integer
      return LoadInteger(hash, StringHash("Menu_TypeMain"), frame)
    endfunction
    function s__EMenus_GetSubTypeId takes integer frame returns integer
      return LoadInteger(hash, StringHash("Menu_TypeSub"), frame)
    endfunction
    function s__EMenus_GetTypeName takes integer input returns string
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
    endfunction

    function s__EMenus_FrameSaveIDs takes integer frame,integer types,integer subTypes returns nothing
      call SaveInteger(hash, StringHash("Menu_TypeMain"), frame, types)
      call SaveInteger(hash, StringHash("Menu_TypeSub"), frame, subTypes)
    endfunction
// scope EMainMenus ends
// END IMPORT OF Data\Enums\EMainMenus.j
// BEGIN IMPORT OF Data\Enums\ESkillTrees.j
// scope ESkillTrees begins
    
    


    // (GlobalInitializer.j)private static integer MAX_CHARACTER_COUNT

    // struct SkillTreeData extends IResource
    // super.id => 이 스킬트리의 캐릭터 id 값
  
    // static 가공 왼쪽으로 몇자리, 소숫점 표시, 추가 문자열
    function s__ESkillTree_ProcessI2S takes integer input,boolean isRoundUp,integer cutLength,boolean hasDot returns string
      if ( isRoundUp ) then
        set input=input + 5
      endif
      set cutLength=StringLength(I2S(input)) - cutLength
      if ( hasDot ) then
        return JNStringInsert(SubString(I2S(input), 0, cutLength), cutLength - 1, ".")
      else
        return SubString(I2S(input), 0, cutLength)
      endif
    endfunction
// scope ESkillTrees ends
// END IMPORT OF Data\Enums\ESkillTrees.j

// BEGIN IMPORT OF Data\GlobalInitializer.j
// scope GlobalInitializer begins
  function IsEmpty takes string s returns boolean
    return ( s == "" ) or ( s == null )
  endfunction
  function IsVaild takes string s returns boolean
    return ( s != "" ) and ( s != null )
  endfunction
  function IfEmpty takes string s,string s2 returns string
    if ( s != "" ) and ( s != null ) then
      return s
    else
      return s2
    endif
  endfunction
  function AddCommaIfFilled takes string head returns string
    if ( head == "" ) then
      return " : "
    else
      return head + ", "
    endif
  endfunction
  function AddZeroIfShort takes integer inputLength,boolean isNegative returns string
    if ( isNegative ) then
      set inputLength=inputLength - 1
    endif
    if ( inputLength <= 2 ) then
      return "0."
    else
      return "."
    endif
  endfunction
  function AddSignalIfPositive takes boolean isPositive returns string
    if ( isPositive ) then
      return "+"
    else
      return ""
    endif
  endfunction
  function AddSignal takes integer input,integer cutLength,boolean hasDot returns string
    set cutLength=StringLength(I2S(input)) - cutLength
    if ( hasDot ) then
      return AddSignalIfPositive(0 <= input) + JNStringInsert(SubString(I2S(input), 0, cutLength), cutLength - 1, AddZeroIfShort(cutLength , input < 0))
    else
      return AddSignalIfPositive(0 <= input) + SubString(I2S(input), 0, cutLength)
    endif
  endfunction

  function Msg takes player p,string msg returns nothing
    call DisplayTimedTextToPlayer(p, 0, 0, 6., msg)
  endfunction
  function MsgAll takes string msg returns nothing
    call DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, 6., msg)
  endfunction
  function Bufftt takes texttag t returns nothing
    call SetTextTagVelocity(t, 0., .009)
    call SetTextTagPermanent(t, false)
    call SetTextTagLifespan(t, 3.)
    call SetTextTagFadepoint(t, 1.)
  endfunction
 
    function s__StatData_Create takes string name returns integer
      local integer this= s__StatData__allocate()
      set s__StatData_Name[this]=name
      return this
    endfunction
    function s__StatData__staticgetindex takes integer input returns integer
      if ( input <= 0 or MAX_STAT_COUNT <= input ) then
        call MsgAll("오류9-3B, 스텟(" + I2S(input) + ")는 설정값(1~" + I2S(MAX_STAT_COUNT) + ")을 벗어납니다")
        return 0
      elseif ( s__GlobalInitializer___privateStatData[input] == 0 ) then
        call MsgAll("오류9-3C, 스텟(" + I2S(input) + ")는 설정되지 않았습니다")
        return 0
      endif
      return s__GlobalInitializer___privateStatData[input]
    endfunction
    function s__StatData_onInit takes nothing returns nothing
      set s__GlobalInitializer___privateStatData[s__EStatType_MainPower]= s__StatData_Create("파워")
      set s__GlobalInitializer___privateStatData[s__EStatType_MainFocus]= s__StatData_Create("집중")
      set s__GlobalInitializer___privateStatData[s__EStatType_MainVitality]= s__StatData_Create("활력")
      set s__GlobalInitializer___privateStatData[s__EStatType_AttackPower]= s__StatData_Create("공격력")
      set s__GlobalInitializer___privateStatData[s__EStatType_AttackSpeedPercent]= s__StatData_Create("공격속도")
      set s__GlobalInitializer___privateStatData[s__EStatType_CriticalChance]= s__StatData_Create("치명타 기회")
      set s__GlobalInitializer___privateStatData[s__EStatType_CriticalMultiplier]= s__StatData_Create("치명타 증폭")
      set s__GlobalInitializer___privateStatData[s__EStatType_LifeSteal]= s__StatData_Create("흡혈 고정값")
      set s__GlobalInitializer___privateStatData[s__EStatType_LifeStealPercent]= s__StatData_Create("흡혈 비례값")
      set s__GlobalInitializer___privateStatData[s__EStatType_MeleeDefense]= s__StatData_Create("근접 방어")
      set s__GlobalInitializer___privateStatData[s__EStatType_MeleeReduce]= s__StatData_Create("근접 감소")
      set s__GlobalInitializer___privateStatData[s__EStatType_MeleeEvationChance]= s__StatData_Create("근접 차단")
      set s__GlobalInitializer___privateStatData[s__EStatType_RangedDefense]= s__StatData_Create("원격 방어")
      set s__GlobalInitializer___privateStatData[s__EStatType_RangedReduce]= s__StatData_Create("원격 감소")
      set s__GlobalInitializer___privateStatData[s__EStatType_RangeImmuneChance]= s__StatData_Create("원격 차단")
      set s__GlobalInitializer___privateStatData[s__EStatType_MysticReduce]= s__StatData_Create("주술 지속 감소")
      set s__GlobalInitializer___privateStatData[s__EStatType_MysticDispellChance]= s__StatData_Create("주술 차단")
      set s__GlobalInitializer___privateStatData[s__EStatType_MovementSpeedPercent]= s__StatData_Create("이동속도")
      set s__GlobalInitializer___privateStatData[s__EStatType_HpRegenPerSecond]= s__StatData_Create("체력 회복")
      set s__GlobalInitializer___privateStatData[s__EStatType_HpRegenMultiplier]= s__StatData_Create("체력 회복 증폭")
      set s__GlobalInitializer___privateStatData[s__EStatType_MpRegenPerSecond]= s__StatData_Create("마나 회복")
      set s__GlobalInitializer___privateStatData[s__EStatType_MpRegenMultiplier]= s__StatData_Create("마나 회복 증폭")
      set s__GlobalInitializer___privateStatData[s__EStatType_PhysicalMultiplier]= s__StatData_Create("기술 증폭")
      set s__GlobalInitializer___privateStatData[s__EStatType_PhysicalCooldownReduce]= s__StatData_Create("기술 가속")
      set s__GlobalInitializer___privateStatData[s__EStatType_MagicalPower]= s__StatData_Create("마법 데미지")
      set s__GlobalInitializer___privateStatData[s__EStatType_MagicalMultiplier]= s__StatData_Create("마법 증폭")
      set s__GlobalInitializer___privateStatData[s__EStatType_MagicalCooldownReduce]= s__StatData_Create("마법 가속")
      set s__GlobalInitializer___privateStatData[s__EStatType_MagicalCastingReduce]= s__StatData_Create("마법 시전 가속")
      set s__GlobalInitializer___privateStatData[s__EStatType_AilibtyLevelAdd]= s__StatData_Create("능력 레벨")
      set s__GlobalInitializer___privateStatData[s__EStatType_GoldDropMultiplier]= s__StatData_Create("골드 드랍률")
      set s__GlobalInitializer___privateStatData[s__EStatType_ItemDropMultiplier]= s__StatData_Create("아이템 드랍률")
      set s__GlobalInitializer___privateStatData[s__EStatType_ExperienceMultiplier]= s__StatData_Create("경험치 획득률")
    endfunction
 
    // string IconPath --- 모든 스킬이 아이콘이 있지 않으니 생략.


    function s__SkillData__staticgetindex takes integer input returns integer
      if ( input <= 0 or MAX_SKILL_COUNT <= input ) then
        call MsgAll("오류/SkillData[" + I2S(input) + "]는 설정 범위(1~" + I2S(MAX_SKILL_COUNT - 1) + ")를 벗어납니다.")
        return 0
      elseif ( s__GlobalInitializer___privateSkillData[input] == 0 ) then
        call MsgAll("오류/SkillData[" + I2S(input) + "]는 설정되지 않았습니다.")
        return 0
      else
        return s__GlobalInitializer___privateSkillData[input]
      endif
    endfunction
    function s__SkillData_getFromKey takes integer input returns integer
      if ( input <= 0 or MAX_SKILL_COUNT <= input ) then
        call MsgAll("오류/GFK/스킬(" + I2S(input) + ")는 설정 범위(1~" + I2S(MAX_SKILL_COUNT - 1) + ")를 벗어납니다.")
        return 0
      elseif ( s__GlobalInitializer___privateSkillData[input] == 0 ) then
        set s__GlobalInitializer___privateSkillData[input]= s__SkillData__allocate()
      endif
      return s__GlobalInitializer___privateSkillData[input]
    endfunction
    function s__SkillData_onInit takes nothing returns nothing
      set s__s__SkillData_ranks[0]= "미습득"
      set s__s__SkillData_ranks[1]= "F"
      set s__s__SkillData_ranks[2]= "D"
      set s__s__SkillData_ranks[3]= "D+"
      set s__s__SkillData_ranks[4]= "C"
      set s__s__SkillData_ranks[5]= "C+"
      set s__s__SkillData_ranks[6]= "B"
      set s__s__SkillData_ranks[7]= "B+"
      set s__s__SkillData_ranks[8]= "A"
      set s__s__SkillData_ranks[9]= "A+"
      set s__s__SkillData_ranks[10]= "S"
      set s__s__SkillData_ranks[11]= "O"
    endfunction

    function s__SkillData_AddSuffix takes boolean isFullName,integer level returns string
      local integer overLevel= level - 10
      if ( 0 < overLevel ) then
        if ( isFullName ) then
          return "ver Rank " + I2S(overLevel)
        else
          return I2S(overLevel)
        endif
      elseif ( isFullName ) then
        return " Rank"
      endif
      return ""
    endfunction
    
    // 스킬 레벨에 따른 랭크 변환
    // - level : 가져올 레벨 (11 이상은 Over Rank로 표시)
    // - isFullName: "B" -> "B Rank" 표시할지 여부
    // - inBracket: 결과를 "[B Rank]" 형태로 표시할지 여부
    function s__SkillData_GetRank takes integer level,boolean isFullName,boolean inBracket returns string
      local string rank= s__s__SkillData_ranks[IMaxBJ(0, IMinBJ(11, level))]

      // 접미사 처리
      set rank=rank + s__SkillData_AddSuffix(isFullName , level)
      
      // inBracket 처리
      if ( inBracket ) then
        set rank="[" + rank + "]"
      endif

      return rank
    endfunction

    function s__SkillData_ConvertLevelToPoint takes integer skillLevel returns integer
      if ( skillLevel <= 1 ) then
        return 0
      elseif ( skillLevel <= 6 ) then
        return 1
      elseif ( skillLevel <= 9 ) then
        return 2
      elseif ( skillLevel == 10 ) then
        return 3
      endif
      return 999
    endfunction
    // 이 스킬의 레벨업시 변화량을 가져옴.
    // - changeLevel : 변화할 레벨(1(기본값), 7→10의 경우 3)
    function s__SkillData_GetLevelDescription takes integer this,integer changeLevel returns string
      local string returnString= ""
      if ( 0 < changeLevel ) then
        if ( JNStringContains(s__SkillData_ValueChange[this], "~") ) then
          if ( JNStringContains(s__SkillData_ValueChange[this], "~CastingTime") ) then
            set returnString=AddCommaIfFilled(returnString) + "시전시간 " + AddSignal(s__SkillData_CastingTimeAdd[this] * changeLevel , 1 , true) + "초"
          endif
          if ( JNStringContains(s__SkillData_ValueChange[this], "~Damage") ) then
            set returnString=AddCommaIfFilled(returnString) + "데미지 " + AddSignal(s__SkillData_DamageAdd[this] * changeLevel , 0 , false)
            if ( JNStringContains(s__SkillData_Detail[this], "#Damage%") ) then
              set returnString=returnString + "%"
            endif
          endif
          if ( JNStringContains(s__SkillData_ValueChange[this], "~Distance") ) then
            set returnString=AddCommaIfFilled(returnString) + "거리 " + AddSignal(s__SkillData_DistanceAdd[this] * changeLevel , 0 , false)
          endif
          if ( JNStringContains(s__SkillData_ValueChange[this], "~Range") ) then
            set returnString=AddCommaIfFilled(returnString) + "범위 " + AddSignal(s__SkillData_RangeAdd[this] * changeLevel , 0 , false)
          endif
          if ( JNStringContains(s__SkillData_ValueChange[this], "~Duration") ) then
            set returnString=AddCommaIfFilled(returnString) + "지속시간 " + AddSignal(s__SkillData_DurationAdd[this] * changeLevel , 1 , true) + "초"
          endif
          if ( JNStringContains(s__SkillData_ValueChange[this], "~Mana") ) then
            set returnString=AddCommaIfFilled(returnString) + "마나소모 " + AddSignal(s__SkillData_CostManaAdd[this] * changeLevel , 0 , true)
          endif
          if ( JNStringContains(s__SkillData_ValueChange[this], "~CoolDown") ) then
            set returnString=AddCommaIfFilled(returnString) + "쿨다운 " + AddSignal(s__SkillData_CoolTimeAdd[this] * changeLevel , 1 , true) + "초"
          endif
        endif
        set returnString="다음레벨(+" + I2S(changeLevel) + ")" + returnString
      endif
      return returnString
    endfunction
 
    function s__SlotData__staticgetindex takes integer input returns integer
      if ( input <= 0 or MAX_SKILL_SLOT <= input ) then
        call MsgAll("오류/SkillSlot[" + I2S(input) + "]는 설정 범위(1~" + I2S(MAX_SKILL_SLOT - 1) + ")를 벗어납니다.")
        return 0
      elseif ( s__GlobalInitializer___privateSkillSlotData[input] == 0 ) then
        call MsgAll("오류/SkillSlot[" + I2S(input) + "]는 설정되지 않았습니다.")
        return 0
      else
        return s__GlobalInitializer___privateSkillSlotData[input]
      endif
    endfunction
    function s__SlotData_Create takes integer index,integer skillId,integer smartId,integer hotkeyId,integer orderId returns nothing
      set s__GlobalInitializer___privateSkillSlotData[index]= s__SlotData__allocate()
      set s__SlotData_slot[s__GlobalInitializer___privateSkillSlotData[index]]=index
      set s__SlotData_SkillCode[s__GlobalInitializer___privateSkillSlotData[index]]=skillId
      set s__SlotData_SmartCode[s__GlobalInitializer___privateSkillSlotData[index]]=smartId
      set s__SlotData_SelfHotkeyID[s__GlobalInitializer___privateSkillSlotData[index]]=hotkeyId
      set s__SlotData_OrderID[s__GlobalInitializer___privateSkillSlotData[index]]=orderId
    endfunction
    function s__SlotData_onInit takes nothing returns nothing
//#       static if false then
//#         No Code Smart	Hotkey OrderId
//#         1	A000	A008	81 (Q)	852529 / absorb
//#         2	A001	A009	87 (W)	852662 / acidbomb
//#         3	A002	A00A	69 (E)	852185 / acolyteharvest
//#         4	A003	A00B	82 (R)	852131 / ambush
//#         5	A004	A00C	84 (T)	852490 / ancestralspirit
//#         6	A005	A00D	68 (D)	852491 / ancestralspirittarget
//#         7	A006	A00E	70 (F)	852217 / animatedead
//#         8	A007	A00F	71 (G)	852186 / antimagicshell
//#       endif
      call s__SlotData_Create(1 , 'A000' , 'A008' , 81 , 852529)
      call s__SlotData_Create(2 , 'A001' , 'A009' , 87 , 852662)
      call s__SlotData_Create(3 , 'A002' , 'A00A' , 69 , 852185)
      call s__SlotData_Create(4 , 'A003' , 'A00B' , 82 , 852131)
      call s__SlotData_Create(5 , 'A004' , 'A00C' , 84 , 852490)
      call s__SlotData_Create(6 , 'A005' , 'A00D' , 68 , 852491)
      call s__SlotData_Create(7 , 'A006' , 'A00E' , 70 , 852217)
      call s__SlotData_Create(8 , 'A007' , 'A00F' , 71 , 852186)
    endfunction

    function s__SlotData_GetInfoRequire takes integer playerId,integer skillId,integer currentLevel returns string
      local string returnString= ""
      if ( currentLevel == 0 ) then
        if ( s__CharacterResource_changeLevel[s__PlayerResource_character[sc__PlayerResource__staticgetindex(playerId)]] < s__SkillData_RequireLevel[s__SkillData__staticgetindex(skillId)] ) then
          return "변신레벨 " + I2S(s__SkillData_RequireLevel[s__SkillData__staticgetindex(skillId)]) + " 이상 필요"
        else
          return "습득이 가능합니다"
        endif
      else
        set returnString=s__SkillData_ValueUse[s__SkillData__staticgetindex(skillId)]
        if ( JNStringContains(returnString, "#Mana") ) then
          if ( JNStringContains(returnString, "#CoolDown") ) then
            return "마나소모 " + s__ESkillTree_ProcessI2S(s__SkillData_CostMana[s__SkillData__staticgetindex(skillId)] , true , 1 , false) + ", 쿨다운 " + s__ESkillTree_ProcessI2S(s__SkillData_CoolTime[s__SkillData__staticgetindex(skillId)] , true , 1 , true) + "초"
          else
            return "마나소모 " + s__ESkillTree_ProcessI2S(s__SkillData_CostMana[s__SkillData__staticgetindex(skillId)] , true , 1 , false)
          endif
        elseif ( JNStringContains(returnString, "#CoolDown") ) then
          return "쿨다운 " + s__ESkillTree_ProcessI2S(s__SkillData_CoolTime[s__SkillData__staticgetindex(skillId)] , true , 1 , true) + "초"
        else
          return "오류/GIR/" + I2S(playerId) + "/" + I2S(skillId) + "/" + I2S(currentLevel) + "/" + returnString
        endif
      endif
      return returnString
    endfunction
    function s__SlotData_GetSkillCode takes integer this,boolean isSmart returns integer
      if ( isSmart ) then
        return s__SlotData_SmartCode[this]
      else
        return s__SlotData_SkillCode[this]
      endif
    endfunction

   
    function s__HotkeyData__staticgetindex takes integer input returns integer
      if ( input <= 0 or MAX_OPTION_MENU_COUNT <= input ) then
        call MsgAll("오류/HotKey[" + I2S(input) + "]는 설정 범위(1~" + I2S(MAX_OPTION_MENU_COUNT - 1) + ")를 벗어납니다.")
        return 0
      elseif ( s__GlobalInitializer___privateHotkeyData[input] == 0 ) then
        set s__GlobalInitializer___privateHotkeyData[input]= s__HotkeyData__allocate()
      endif
      return s__GlobalInitializer___privateHotkeyData[input]
    endfunction
    function s__HotkeyData_Create takes integer input,string name,boolean bool,integer value returns nothing
      set s__HotkeyData_Name[s__GlobalInitializer___privateHotkeyData[input]]=name
      set s__HotkeyData_IsBoolType[s__GlobalInitializer___privateHotkeyData[input]]=bool
      set s__HotkeyData_BaseValue[s__GlobalInitializer___privateHotkeyData[input]]=value
    endfunction
    function s__HotkeyData_onInit takes nothing returns nothing
      call s__HotkeyData_Create(s__EHotkeyMenu_Main1MiniInfo , "미니 정보창" , true , 1)
      call s__HotkeyData_Create(s__EHotkeyMenu_Main2SimpleEffect , "이펙트(개인)" , true , 1)
      call s__HotkeyData_Create(s__EHotkeyMenu_Main3GlobalEffect , "이펙트(방장)" , true , 0)
      call s__HotkeyData_Create(s__EHotkeyMenu_Main4FeildOfView , "시야 설정" , false , 150)
      call s__HotkeyData_Create(s__EHotkeyMenu_Main5HoldFieldOfView , "시야 고정" , true , 0)
      call s__HotkeyData_Create(s__EHotkeyMenu_Main6ViewHotkeys , "단축키 표시" , true , 1)
      call s__HotkeyData_Create(s__EHotkeyMenu_Main7ServerSaveLeft , "서버저장" , false , 2)
      call s__HotkeyData_Create(s__EHotkeyMenu_SkillSlot1 , "스킬슬롯1" , false , s__EHotkeys_H2I("Q"))
      call s__HotkeyData_Create(s__EHotkeyMenu_SkillSlot2 , "스킬슬롯2" , false , s__EHotkeys_H2I("W"))
      call s__HotkeyData_Create(s__EHotkeyMenu_SkillSlot3 , "스킬슬롯3" , false , s__EHotkeys_H2I("E"))
      call s__HotkeyData_Create(s__EHotkeyMenu_SkillSlot4 , "스킬슬롯4" , false , s__EHotkeys_H2I("R"))
      call s__HotkeyData_Create(s__EHotkeyMenu_SkillSlot5 , "스킬슬롯5" , false , s__EHotkeys_H2I("T"))
      call s__HotkeyData_Create(s__EHotkeyMenu_SkillSlot6 , "스킬슬롯6" , false , s__EHotkeys_H2I("D"))
      call s__HotkeyData_Create(s__EHotkeyMenu_SkillSlot7 , "스킬슬롯7" , false , s__EHotkeys_H2I("F"))
      call s__HotkeyData_Create(s__EHotkeyMenu_SkillSlot8 , "스킬슬롯8" , false , s__EHotkeys_H2I("G"))
      call s__HotkeyData_Create(s__EHotkeyMenu_ItemSlot1 , "아이템슬롯1" , false , s__EHotkeys_H2I("1"))
      call s__HotkeyData_Create(s__EHotkeyMenu_ItemSlot2 , "아이템슬롯2" , false , s__EHotkeys_H2I("2"))
      call s__HotkeyData_Create(s__EHotkeyMenu_ItemSlot3 , "아이템슬롯3" , false , s__EHotkeys_H2I("3"))
      call s__HotkeyData_Create(s__EHotkeyMenu_ItemSlot4 , "아이템슬롯4" , false , s__EHotkeys_H2I("4"))
      call s__HotkeyData_Create(s__EHotkeyMenu_ItemSlot5 , "아이템슬롯5" , false , s__EHotkeys_H2I("5"))
      call s__HotkeyData_Create(s__EHotkeyMenu_ItemSlot6 , "아이템슬롯6" , false , s__EHotkeys_H2I("6"))
      call s__HotkeyData_Create(s__EHotkeyMenu_ItemSlot7 , "아이템슬롯7" , false , s__EHotkeys_H2I("7"))
      call s__HotkeyData_Create(s__EHotkeyMenu_SubMenuKakaotalk , "카톡" , false , s__EHotkeys_H2I("F6"))
      call s__HotkeyData_Create(s__EHotkeyMenu_SubMenuDiscord , "디코" , false , s__EHotkeys_H2I("F7"))
      call s__HotkeyData_Create(s__EHotkeyMenu_SubMenuSetting , "설정" , false , s__EHotkeys_H2I("F8"))
      call s__HotkeyData_Create(s__EHotkeyMenu_SubMenuAutoCombat , "자동사냥" , false , s__EHotkeys_H2I("F5"))
      call s__HotkeyData_Create(s__EHotkeyMenu_SubMenuInventory , "인벤토리" , false , s__EHotkeys_H2I("I"))
      call s__HotkeyData_Create(s__EHotkeyMenu_SubMenuStatus , "상태창" , false , s__EHotkeys_H2I("S"))
      call s__HotkeyData_Create(s__EHotkeyMenu_SubMenuSkillTree , "스킬창" , false , s__EHotkeys_H2I("T"))
      call s__HotkeyData_Create(s__EHotkeyMenu_SubMenuSmartMode , "스마트모드" , true , 0)
    endfunction

   
    function s__CharacterData__staticgetindex takes integer input returns integer
      if ( input <= 0 or MAX_CHARACTER_COUNT <= input ) then
        call MsgAll("오류/CharacterData[" + I2S(input) + "]는 설정 범위(1~" + I2S(MAX_CHARACTER_COUNT - 1) + ")를 벗어납니다.")
        return 0
      elseif ( s__GlobalInitializer___privateCharacterData[input] == 0 ) then
        set s__GlobalInitializer___privateCharacterData[input]= s__CharacterData__allocate()
      endif
      return s__GlobalInitializer___privateCharacterData[input]
    endfunction
    function s__CharacterData_Create takes integer index,unit base,integer unitCode,string strings returns nothing
      set s__CharacterData_SelectUnit[s__GlobalInitializer___privateCharacterData[index]]=base
      set s__CharacterData_UnitCode[s__GlobalInitializer___privateCharacterData[index]]=unitCode
      set s__CharacterData_SelectDatas[s__GlobalInitializer___privateCharacterData[index]]=strings
    endfunction
    function s__CharacterData_onInit takes nothing returns nothing
      set gg_unit_H005_0003=CreateUnit(Player(PLAYER_NEUTRAL_PASSIVE), 'H005', - 9509.4, 5613.9, 243.624)
      set gg_unit_H004_0007=CreateUnit(Player(PLAYER_NEUTRAL_PASSIVE), 'H004', - 9421.7, 5478.0, 215.831)
      set gg_unit_H003_0008=CreateUnit(Player(PLAYER_NEUTRAL_PASSIVE), 'H003', - 9627.6, 5665.2, 264.367)
      set gg_unit_H002_0009=CreateUnit(Player(PLAYER_NEUTRAL_PASSIVE), 'H002', - 9756.4, 5654.7, 284.859)
      set gg_unit_H001_0010=CreateUnit(Player(PLAYER_NEUTRAL_PASSIVE), 'H001', - 9866.4, 5598.7, 304.534)
      set gg_unit_H000_0011=CreateUnit(Player(PLAYER_NEUTRAL_PASSIVE), 'H000', - 9949.1, 5460.4, 331.244)

      call s__CharacterData_Create(s__ECharacter_ICHIGO , gg_unit_H000_0011 , 'H000' , "쿠로사키 이치고'Ichigo Kurosaki'주인공. 유령을 보는 고교생.'카라쿠라 마을의 사신대행.'4'2'2'3'2'|cffff8000근접 물리 |cffd5d500[힘]'참백도(참월)'SkillTree_ichi_00.blp'SkillTree_ichi_05.blp'SkillTree_ichi_06.blp'SkillTree_ichi_11.blp'특성 스킬'검압 - 스킬 추가데미지'블루트베네 - 피격데미지 감소'월아천충'참격의 순간에 자신의 영압을 방출해 참격을 거대화.'강화시 데미지&범위 증가'천쇄참월'호로의 힘으로 월아천충을 쏘아낸다.'강화시 대상 출혈'무월'잠재능력을 모두 해방시켜 참격을 발사합니다.'강화시 출혈효과 폭발 추가데미지")
      call s__CharacterData_Create(s__ECharacter_RUKIA , gg_unit_H001_0010 , 'H001' , "쿠치키 루키아'Rukia Kuchiki'더블 주인공이자 여주인공.'학교 성적은 국어 빼고 최하위.'3'3'3'5'4'|cff0080c0근접 마법 |cffd5d500[기술]'귀도, 참백도(수백설)'SkillTree_rukia_00.blp'SkillTree_rukia_02.blp'SkillTree_rukia_03.blp'SkillTree_rukia_04.blp'특성 스킬'영하 18도 - 주변 적을 베고 빙결'변신류 - 적 공속 감소, 아군 공속 증가'시작의 춤, 월백'주변을 속박시키고 표식을 생성합니다.'표식을 생성하고, 다른 스킬로 추가효과 가능'다음의 춤, 백련'춤을 추고, 주변 방해효과 폭발시켜 데미지를 가함.'강화시 표식을 폭발시켜 추가데미지'세번째 춤, 백도'상대를 관통시켜 얼립니다.'일직선상으로 냉기를 뿜어내, 적에게 데미지를 가함.'강화시 오한에 걸린 적 관통")
      call s__CharacterData_Create(s__ECharacter_URYU , gg_unit_H002_0009 , 'H002' , "이시다 우류'Uryu Ishida'이치고와 같은 학교, 전교 석차 1위.'호로를 멸하는 퀸시의 후예.'5'0'1'2'3'|cffff8000원거리 물리 |cffd5d500[속도]'영자병장(은령호작)'SkillTree_Uryu_01.blp'SkillTree_Uryu_02.blp'SkillTree_Uryu_06.blp'SkillTree_Uryu_13.blp'특성스킬'은통 - 저장된 은통으로 마나회복 혹은 스킬사용 함.'산령수투 - 공격시 영압 소모해 추가데미지'하일리히 프파일'퀸시의 영자병장, 빛의 화살로 데미지를 가함.'강화시 추가데미지'리히트레겐'넓은 범위에 화살을 쏘아서 광역 공격을 함.'강화시 광역 대상 추가데미지'슈프렝거'퀸시 크로스 진에 농축 영자를 폭발시켜 속박&데미지.'강화시 속박대신 스턴")
      call s__CharacterData_Create(s__ECharacter_ORIHIME , gg_unit_H003_0008 , 'H003' , "이노우에 오리히메'Orihime Inoue'히로인, 기계치이자 돌머리.'머리핀(순순육화)을 항상 착용하고 다님.'2'5'5'2'5'|cff0080c0원거리 마법 |cffd5d500[마음]'머리핀(순순육화)'SkillTree_Inooue_21.blp'SkillTree_Inooue_01.blp'SkillTree_Inooue_12.blp'SkillTree_Inooue_13.blp'특성스킬'사상의거절 - 주변 쿨다운 감소 10%'더블캐스팅 - 스킬이 콤보로 변경되어, 추가효과 적용.'츠바키(고천참순)'츠바키를 날려 최대체력에 비례한 데미지를 가함.'강화시 출혈 및 최대체력 추가데미지'쌍천귀순'슌오우(벚꽃)+아야메(붓꽃), 퀵슬롯 등록해 사용.'매 초마다 주변의 잃은 체력을 회복합니다.'삼천결순'히나기쿠+바이곤+리리, 퀵슬롯에 등록해 사용.'삼각형 방패로 외부 공격 거절, 의지에 따라 방어력 상승.")
      call s__CharacterData_Create(s__ECharacter_RENJI , gg_unit_H005_0003 , 'H005' , "아바라이 렌지'Renji Abarai'호정 13대의 6번대 부대장.'루키아와 소꿉친구이며 이치고와 대립.'4'2'1'4'4'|cffff8000근접 물리 |cffd5d500[기술]'참백도(사미환)'SkillTree_Renji_01.blp'SkillTree_Renji_03.blp'SkillTree_Renji_05.blp'SkillTree_Renji_07.blp'특성스킬'슌센벤, 박치기 등 추가스킬'변신류 - 이동속도와 데미지 증가'사미환'전방을 향해 검을 휘두르고, 조각을 남깁니다.'강화시 출혈효과 및 범위 증가'비아절교'주변 조각을 쏘아붙여 공격합니다. 조각당 데미지 증가'강화시 마비(누적시 스턴) 추가'비골대포'영압덩어리를 발사해 상대를 밀어냅니다.'강화시 화상적용, 상위스킬 시아철포")
      call s__CharacterData_Create(s__ECharacter_SADO , gg_unit_H004_0007 , 'H004' , "사도 야스토라'Yasutora Sado'별명 차드, 멕시코 혼혈, 전교 11등.'우수한 성적과 상냥한 마음씨를 가짐.'3'4'4'3'2'|cffff8000근접 물리 |cffd5d500[힘]'오른팔과 왼팔'SkillTree_Sado_00.blp'SkillTree_Sado_01.blp'SkillTree_Sado_03.blp'SkillTree_Sado_02.blp'특성 스킬'대쉬 - 브링거 라이트'변신류 - 적 방어 감소, 본인 방어 증가'엘디렉토'전방에 주먹으로 영압을 발사해 데미지를 가함.'강화시 범위 증가 및 쿨다운 감소'슬래머'지면을 강타해 지진으로 적들을 둔화시킴.'강화시 범위 증가 및 넉백 적용'방어'방어 자세를 취해, 일정시간 피해를 감소시킵니다.'강화시 자동시전")

      
      call SetFloatGameState(GAME_STATE_TIME_OF_DAY, 12.)
      call SetTimeOfDayScale(0.)
      call FogEnable(false)
      call FogMaskEnable(false)

      // 체력바 끄기 (Alt 누른 효과 off)
      call EnablePreSelect(false, false)
    endfunction

   
    function s__TreeMainCoreData__staticgetindex takes integer input returns integer
      if ( input <= 0 or 8190 <= input ) then
        call MsgAll("오류/TreeMainCoreData[" + I2S(input) + "]는 설정 범위(1~" + I2S(MAX_CHARACTER_COUNT - 1) + ")를 벗어납니다.")
        return 0
      elseif ( s__GlobalInitializer___privateTreeMainData[input] == 0 ) then
        set s__GlobalInitializer___privateCharacterData[input]= s__TreeMainCoreData__allocate()
      endif
      return s__GlobalInitializer___privateTreeMainData[input]
    endfunction
    function s__TreeMainCoreData_CreateSub takes integer this,integer number,real inputX,real inputY,string iconPath returns nothing
      set s__TreeMainCoreData_MAX_TREE_SKILL_COUNT[this]=s__TreeMainCoreData_MAX_TREE_SKILL_COUNT[this] + 1
      set s___TreeMainCoreData_SkillNumber[s__TreeMainCoreData_SkillNumber[this]+s__TreeMainCoreData_MAX_TREE_SKILL_COUNT[this]]=number
      set s___TreeMainCoreData_positionX[s__TreeMainCoreData_positionX[this]+s__TreeMainCoreData_MAX_TREE_SKILL_COUNT[this]]=inputX
      set s___TreeMainCoreData_positionY[s__TreeMainCoreData_positionY[this]+s__TreeMainCoreData_MAX_TREE_SKILL_COUNT[this]]=inputY
      set s___TreeMainCoreData_iconPath[s__TreeMainCoreData_iconPath[this]+s__TreeMainCoreData_MAX_TREE_SKILL_COUNT[this]]=iconPath
    endfunction
    function s__TreeMainCoreData_Create takes integer characterId returns nothing
      if ( characterId == s__ECharacter_ICHIGO ) then
        call s__TreeMainCoreData_CreateSub(s__GlobalInitializer___privateTreeMainData[characterId],16 , .085 , - .10 , "SkillTree_ichi_01.blp")
        call s__TreeMainCoreData_CreateSub(s__GlobalInitializer___privateTreeMainData[characterId],20 , .135 , - .10 , "SkillTree_ichi_02.blp")
        call s__TreeMainCoreData_CreateSub(s__GlobalInitializer___privateTreeMainData[characterId],21 , .135 , - .14 , "SkillTree_ichi_03.blp")
        call s__TreeMainCoreData_CreateSub(s__GlobalInitializer___privateTreeMainData[characterId],25 , .185 , - .14 , "SkillTree_ichi_04.blp")
        call s__TreeMainCoreData_CreateSub(s__GlobalInitializer___privateTreeMainData[characterId],17 , .085 , - .18 , "SkillTree_ichi_05.blp")
        call s__TreeMainCoreData_CreateSub(s__GlobalInitializer___privateTreeMainData[characterId],22 , .135 , - .22 , "SkillTree_ichi_06.blp")
        call s__TreeMainCoreData_CreateSub(s__GlobalInitializer___privateTreeMainData[characterId],18 , .085 , - .26 , "SkillTree_ichi_07_DIS.blp")
        call s__TreeMainCoreData_CreateSub(s__GlobalInitializer___privateTreeMainData[characterId],23 , .135 , - .34 , "SkillTree_ichi_08_DIS.blp")
        call s__TreeMainCoreData_CreateSub(s__GlobalInitializer___privateTreeMainData[characterId],19 , .085 , - .38 , "SkillTree_ichi_09_DIS.blp")
        call s__TreeMainCoreData_CreateSub(s__GlobalInitializer___privateTreeMainData[characterId],26 , .185 , - .38 , "SkillTree_ichi_10_DIS.blp")
        call s__TreeMainCoreData_CreateSub(s__GlobalInitializer___privateTreeMainData[characterId],24 , .135 , - .42 , "SkillTree_ichi_11_DIS.blp")
      endif
    endfunction
    function s__TreeMainCoreData_onInit takes nothing returns nothing
      call s__TreeMainCoreData_Create(s__ECharacter_ICHIGO)
    endfunction
// scope GlobalInitializer ends
// END IMPORT OF Data\GlobalInitializer.j
// BEGIN IMPORT OF Data\SkillDataStr.j
// scope SkillDataStr begins
// 추가한 시간: 24.09.25 22:55:01

  function SkillDataStr___Init takes nothing returns nothing
    set s__SkillData_Name[1]="대쉬"
    set s__SkillData_Detail[1]="앞으로 #Distance 거리만큼 빠르게 내달립니다."
    set s__SkillData_Name[2]="순보"
    set s__SkillData_Detail[2]="앞으로 #Distance 거리만큼 순간적으로 내달립니다."
    set s__SkillData_Name[3]="니도"
    set s__SkillData_Detail[3]="호로들의 이동 보법입니다.\n#Distance 거리만큼 순간적으로 내달립니다."
    set s__SkillData_Name[4]="소니도"
    set s__SkillData_Detail[4]="아란칼들의 이동 보법입니다. \n#Distance 거리만큼 순간적으로 내달립니다."
    set s__SkillData_Name[5]="브링거 라이트"
    set s__SkillData_Detail[5]="풀브링거의 고속 보법입니다. \n#Distance 거리만큼 순식간에 이동합니다."
    set s__SkillData_Name[6]="방어"
    set s__SkillData_Detail[6]="방어 자세를 취해 데미지를 감소시킵니다.\n#Duration초간 데미지 #Damage% 감소"
    set s__SkillData_Name[7]="회피"
    set s__SkillData_Detail[7]="영압을 집중해 데미지를 감소시킵니다.\n#Duration초간 데미지 #Damage% 감소"
    set s__SkillData_Name[8]="천무연신"
    set s__SkillData_Detail[8]="허공에 검을 휘둘러 공격을 방어합니다. \n#Duration초간 데미지 #Damage% 감소"
    set s__SkillData_Name[9]="세로"
    set s__SkillData_Detail[9]="일직선상으로 빔을 날려 #Distance거리에 #Damage% 데미지를 가합니다."
    set s__SkillData_Name[10]="그랑 레이 세로"
    set s__SkillData_Detail[10]="왕허의 섬광, 피를 섞은 세로를 날려 #Distance거리에 #Damage% 데미지를 가합니다."
    set s__SkillData_Name[11]="풀스크린 세로"
    set s__SkillData_Detail[11]="강화된 세로를 날려 #Distance거리에 #Damage% 데미지를 가합니다."
    set s__SkillData_Name[12]="원류파"
    set s__SkillData_Detail[12]="해골 모양의 영압을 날려 #Distance거리에 #Damage% 데미지를 가합니다."
    set s__SkillData_Name[13]="지열붕격"
    set s__SkillData_Detail[13]="#Distance거리를 돌진한 후, 충격파로 #Range범위에 #Damage% 데미지를 가합니다."
    set s__SkillData_Name[14]="선류참"
    set s__SkillData_Detail[14]="#Distance거리를 돌진한 후, 회전베기로 #Range범위에 #Damage% 데미지를 가합니다."
    set s__SkillData_Name[15]="명선붕격"
    set s__SkillData_Detail[15]="#Distance거리를 돌진한 후, 소용돌이로 #Range범위에 #Damage% 데미지를 여러번 가합니다."
    set s__SkillData_Name[16]="세로베기"
    set s__SkillData_Detail[16]="검을 세로로 베어 #Distance거리에 #Damage% 데미지를 가합니다."
    set s__SkillData_Name[17]="월아천충"
    set s__SkillData_Detail[17]="거대한 참격을 날려 #Distance거리에 #Damage% 데미지를 가합니다."
    set s__SkillData_Name[18]="월아십자충"
    set s__SkillData_Detail[18]="월아천충을 십자가 모양으로 날려 #Distance거리에 #Damage% 데미지를 가합니다."
    set s__SkillData_Name[19]="무쌍의일섬"
    set s__SkillData_Detail[19]="월아천충과 그랑레이세로를 융합해 날립니다.\n#Distance거리에 #Damage% 데미지를 가합니다."
    set s__SkillData_Name[20]="가로베기"
    set s__SkillData_Detail[20]="검을 가로로 베어 #Range범위에 #Damage% 데미지를 가합니다."
    set s__SkillData_Name[21]="공열섬"
    set s__SkillData_Detail[21]="전방을 베어 순수한 검기로 공격합니다. \n#Range범위에 #Damage% 데미지를 가합니다."
    set s__SkillData_Name[22]="천쇄참월"
    set s__SkillData_Detail[22]="거대한 참격을 날려 #Distance거리에 #Damage% 데미지를 가합니다."
    set s__SkillData_Name[23]="검은월아천충"
    set s__SkillData_Detail[23]="호로의 힘으로 월아천충을 쏘아냅니다.\n#Distance거리에 #Damage% 데미지를 가합니다."
    set s__SkillData_Name[24]="무월"
    set s__SkillData_Detail[24]="잠재능력을 모두 해방시켜 참격을 발사합니다.\n#Range범위에 #Damage% 데미지를 가합니다."
    set s__SkillData_Name[25]="찌르기"
    set s__SkillData_Detail[25]="#Distance거리를 찌르며 돌진하며 #Damage% 데미지를 가합니다."
    set s__SkillData_Name[26]="흑류아돌"
    set s__SkillData_Detail[26]="검은 월아천충의 기운으로 #Distance거리를 돌진하며 #Damage% 데미지를 가합니다."
    set s__SkillData_Name[27]="폭주"
    set s__SkillData_Detail[27]="아드레날린을 상승시켜 빠르게 공격합니다.\n이속 +6%, 공속 +7%"
    set s__SkillData_Name[28]="시해"
    set s__SkillData_Detail[28]="아드레날린을 상승시켜 빠르게 공격합니다.\n이속 +13%, 공속 +15%"
    set s__SkillData_Name[29]="만해"
    set s__SkillData_Detail[29]="아드레날린을 상승시켜 빠르게 공격합니다.\n이속 +20%, 공속 +30%"
    set s__SkillData_Name[30]="호로화"
    set s__SkillData_Detail[30]="아드레날린을 상승시켜 빠르게 공격합니다.\n이속 +27%, 공속 +45%"
    set s__SkillData_Name[31]="호로화 시해"
    set s__SkillData_Detail[31]="아드레날린을 상승시켜 빠르게 공격합니다.\n이속 +34%, 공속 +60%"
    set s__SkillData_Name[32]="호로화 만해 (각성호로화)"
    set s__SkillData_Detail[32]="아드레날린을 상승시켜 빠르게 공격합니다.\n이속 +41%, 공속 +75%"
    set s__SkillData_Name[33]="종해"
    set s__SkillData_Detail[33]="아드레날린을 상승시켜 빠르게 공격합니다.\n이속 +48%, 공속 +90%"
    set s__SkillData_Name[34]="무월"
    set s__SkillData_Detail[34]="아드레날린을 상승시켜 빠르게 공격합니다.\n이속 -50%, 공속 +140%"
    set s__SkillData_Name[35]="스컬 클래드"
    set s__SkillData_Detail[35]="아드레날린을 상승시켜 빠르게 공격합니다.\n이속 +55%, 공속 +105%"
    set s__SkillData_Name[36]="풀브링"
    set s__SkillData_Detail[36]="아드레날린을 상승시켜 빠르게 공격합니다.\n이속 +62%, 공속 +120%"
    set s__SkillData_Name[37]="풀브링 시해"
    set s__SkillData_Detail[37]="아드레날린을 상승시켜 빠르게 공격합니다.\n이속 +69%, 공속 +135%"
    set s__SkillData_Name[38]="풀브링 만해"
    set s__SkillData_Detail[38]="아드레날린을 상승시켜 빠르게 공격합니다.\n이속 +76%, 공속 +150%"
    set s__SkillData_Name[39]="진참월"
    set s__SkillData_Detail[39]="아드레날린을 상승시켜 빠르게 공격합니다.\n이속 +83%, 공속 +165%"
    set s__SkillData_Name[40]="진참월 호로화"
    set s__SkillData_Detail[40]="아드레날린을 상승시켜 빠르게 공격합니다.\n이속 +90%, 공속 +180%"
    set s__SkillData_Name[41]="진참월 만해"
    set s__SkillData_Detail[41]="아드레날린을 상승시켜 빠르게 공격합니다.\n이속 +100%, 공속 +200%"
    set s__SkillData_Name[42]="검압"
    set s__SkillData_Detail[42]="기술에 영압을 추가하여 데미지를 준다.\n핵심 기술에 영력 #Damage%의 추가데미지"
    set s__SkillData_Name[43]="블루트베네"
    set s__SkillData_Detail[43]="퀸시 특유의 방어술. 영자를 핏속에 흘려넣어 방어력을 비약적으로 상승시킨다. \n모든 받는 피해 #Damage%만큼 감소"
    set s__SkillData_Name[44]="파괴술 1. 충"
    set s__SkillData_Detail[44]="손 끝에서 영압을 쏘아 대상에게 #Damage%의 피해를 줍니다.\n추가로, 2초간 25% 느려지게 만듭니다."
    set s__SkillData_Name[45]="파괴술 4. 백뢰"
    set s__SkillData_Detail[45]="손 끝에서 번개를 쏘아 대상에게 #Damage%의 피해와 0.6초 스턴을 가합니다."
    set s__SkillData_Name[46]="파괴술 31 적화포"
    set s__SkillData_Detail[46]="불꽃을 쏘아 #Damage%의 피해를 줍니다.\n추가로, 최대체력 0.8%의 데미지를 입힙니다."
    set s__SkillData_Name[47]="파괴술 33 창화추"
    set s__SkillData_Detail[47]="푸른 불꽃을 쏘아 #Damage%의 피해를 줍니다.\n추가로, 현재체력 2%의 데미지를 입힙니다."
    set s__SkillData_Name[48]="파괴술 73 쌍련창화추"
    set s__SkillData_Detail[48]="양 손에서 푸른 불꽃을 쏘아 #Damage%의 피해를 줍니다.\n추가로, 잃은 체력의 6%의 데미지를 입힙니다."
    set s__SkillData_Name[49]="주박술 1 새"
    set s__SkillData_Detail[49]="상대에게 수갑을 채워 #Damage%의 데미지를 가하고 0.65초 속박합니다."
    set s__SkillData_Name[50]="주박술 4 저승"
    set s__SkillData_Detail[50]="상대에게 #Damage%의 데미지를 가하고 1.0초 속박합니다."
    set s__SkillData_Name[51]="주박술 61 육장광뇌"
    set s__SkillData_Detail[51]="상대에게 판떼기 6개를 박아 #Damage%의 데미지와 5초 속박합니다."
    set s__SkillData_Name[52]="주박술 81. 단공"
    set s__SkillData_Detail[52]="영압으로 구성된 투명하고 거대한 벽을 생성하여, 주변 #Range범위의 공격을 3.3초간 막습니다."
    set s__SkillData_Name[53]="기본의 춤, 백묘"
    set s__SkillData_Detail[53]="검을 들고 아름다운 춤을 추어 주변에 데미지를 가합니다."
    set s__SkillData_Name[54]="시작의 춤, 월백"
    set s__SkillData_Detail[54]="주변을 속박시키고 표식을 생성합니다."
    set s__SkillData_Name[55]="다음의 춤, 백련"
    set s__SkillData_Detail[55]="춤을 추고, 주변에 있는 표식 및 방해효과를 폭발시켜 데미지를 가합니다."
    set s__SkillData_Name[56]="세번째 춤, 백도"
    set s__SkillData_Detail[56]="일직선상으로 냉기를 뿜어, #Distance거리에 #Damage% 데미지를 가합니다."
    set s__SkillData_Name[57]="기쁨의 춤, 고백"
    set s__SkillData_Detail[57]="주변에 적용된 표식 및 효과를 드러내고, 추가데미지를 가합니다."
    set s__SkillData_Name[58]="슬픔의 춤, 탄백"
    set s__SkillData_Detail[58]="주변에 적용된 표식 혹은 효과를 한번 더 적용하여 추가 피해를 입힙니다."
    set s__SkillData_Name[59]="질풍의 춤, 백풍"
    set s__SkillData_Detail[59]="춤추듯 지상에 내리며 강렬한 바람을 일으켜, 명중한 적 모두에게 절대 대미지를 주고 동상 상태로 만든다."
    set s__SkillData_Name[60]="표현의 춤, 자백"
    set s__SkillData_Detail[60]="주변에 적용된 표식의 지속시간을 2배로 적용하고 빙결상태로 만듭니다."
    set s__SkillData_Name[61]="분노의 춤, 백화"
    set s__SkillData_Detail[61]="분노의 춤으로 주변을 밀쳐내고 경직시킵니다."
    set s__SkillData_Name[62]="새하얀 춤, 설백"
    set s__SkillData_Detail[62]="강력한 냉기를 뿜어 주변에 적용된 표식 및 효과를 폭발시키고 다시 적용합니다."
    set s__SkillData_Name[63]="영하 18도"
    set s__SkillData_Detail[63]="주변 적을 베고 빙결"
    set s__SkillData_Name[64]="영하 50도"
    set s__SkillData_Detail[64]="주변에 지진을 일으킴"
    set s__SkillData_Name[65]="영하 273.15(절대영도)"
    set s__SkillData_Detail[65]="모두 얼림."
    set s__SkillData_Name[66]="냉정"
    set s__SkillData_Detail[66]="침착하고 정확하게 공격합니다.\n본인 공속 +8%"
    set s__SkillData_Name[67]="수백설 Lv1"
    set s__SkillData_Detail[67]="침착하고 정확하게 공격합니다.\n적-7%, 아군 +8%"
    set s__SkillData_Name[68]="수백설 Lv2"
    set s__SkillData_Detail[68]="침착하고 정확하게 공격합니다.\n적-9%, 아군 +11%"
    set s__SkillData_Name[69]="수백설 Lv3"
    set s__SkillData_Detail[69]="침착하고 정확하게 공격합니다.\n적-11%, 아군 +14%"
    set s__SkillData_Name[70]="백하벌 Lv1"
    set s__SkillData_Detail[70]="침착하고 정확하게 공격합니다.\n적-13%, 아군 +17%"
    set s__SkillData_Name[71]="백하벌 Lv2"
    set s__SkillData_Detail[71]="침착하고 정확하게 공격합니다.\n적-15%, 아군 +20%"
    set s__SkillData_Name[72]="백하벌 Lv3"
    set s__SkillData_Detail[72]="침착하고 정확하게 공격합니다.\n적-17%, 아군 +23%"
    set s__SkillData_Name[73]="다크 Lv1"
    set s__SkillData_Detail[73]="침착하고 정확하게 공격합니다.\n적-19%, 아군 +26%"
    set s__SkillData_Name[74]="다크 Lv2"
    set s__SkillData_Detail[74]="침착하고 정확하게 공격합니다.\n적-21%, 아군 +29%"
    set s__SkillData_Name[75]="다크 Lv3"
    set s__SkillData_Detail[75]="침착하고 정확하게 공격합니다.\n적-25%, 아군 +35%"
    set s__SkillData_Name[76]="대쉬"
    set s__SkillData_Detail[76]="앞으로 #Distance 거리만큼 빠르게 내달립니다."
    set s__SkillData_Name[77]="비염각"
    set s__SkillData_Detail[77]="퀸시들의 고동 보법입니다. \n#Distance 거리만큼 고속으로 내달립니다."
    set s__SkillData_Name[78]="그리마니엘"
    set s__SkillData_Detail[78]="퀸시의 폴슈텐디히입니다. \n#Distance 거리만큼 초고속으로 이동합니다."
    set s__SkillData_Name[79]="호작"
    set s__SkillData_Detail[79]="공격시 영압을 소모하여 추가데미지를 가합니다."
    set s__SkillData_Name[80]="산령수투"
    set s__SkillData_Detail[80]="더 나은 무기를 통해 더 강력한 데미지를 줍니다."
    set s__SkillData_Name[81]="은령호작"
    set s__SkillData_Detail[81]="더 나은 무기를 통해 더 강력한 데미지를 줍니다."
    set s__SkillData_Name[82]="산령수투(해방)"
    set s__SkillData_Detail[82]="더 나은 무기를 통해 더 강력한 데미지를 줍니다."
    set s__SkillData_Name[83]="하일리히 프파일"
    set s__SkillData_Detail[83]="빛의 화살을 발사하여 #Distance거리에 #Damage% 데미지를 가합니다."
    set s__SkillData_Name[84]="리히트 레겐"
    set s__SkillData_Detail[84]="넓은 범위에 화살을 쏘아 #Range범위에 #Damage% 데미지를 가합니다."
    set s__SkillData_Name[85]="섬광 화살"
    set s__SkillData_Detail[85]="섬광 화살을 발사하여 #Distance거리에 #Damage% 데미지를 가하고, 실명 상태로 만듭니다."
    set s__SkillData_Name[86]="천공의 일격"
    set s__SkillData_Detail[86]="빛의 화살을 발사하며 #Distance거리를 이동하고 #Damage% 데미지를 가합니다."
    set s__SkillData_Name[87]="천청의 빛"
    set s__SkillData_Detail[87]="거대한 화살을 쏘아 #Distance거리에 #Damage% 데미지를 가하고, 능력을 저하시킵니다."
    set s__SkillData_Name[88]="빛의 방패"
    set s__SkillData_Detail[88]="빛으로 된 방패를 만들어 공격을 방어하고, 방패는 점점 강화되어 폭발하여 빛 화살로 변환되어 공격합니다."
    set s__SkillData_Name[89]="짜이헨"
    set s__SkillData_Detail[89]="마법진으로 #Damage를 가하고, 상대를 1.5초간 속박합니다."
    set s__SkillData_Name[90]="그리츠"
    set s__SkillData_Detail[90]="은통을 던져 5갈래 벽으로 #Damage를 가하고, 상대를 1.2초간 제압합니다."
    set s__SkillData_Name[91]="하이젠"
    set s__SkillData_Detail[91]="은통을 던져, 상대를 2초간 속박하고, #Damage%+최대체력 0.3%의 데미지를 가합니다."
    set s__SkillData_Name[92]="슈프렝거"
    set s__SkillData_Detail[92]="퀸시 크로스 모양의 진으로 상대를 3초간 속박하고, 고농축 영자를 폭발시켜 \n#Damage%+현재체력 2.3%의 데미지를 가합니다."
    set s__SkillData_Name[93]="겔트슈랑크"
    set s__SkillData_Detail[93]="젤레슈나이더의 고밀도 영자로 상대를 4초간 속박하고, 농축 영자를 폭발시켜 \n#Damage% + 잃은 체력 4.7%의 데미지를 가합니다."
    set s__SkillData_Name[94]="영자의 예속"
    set s__SkillData_Detail[94]="변신 중에 주변 영압 흡수하여, 마나 소모를 감소합니다. 변신 자체 마나소모 -3~-30%"
    set s__SkillData_Name[95]="영자조작"
    set s__SkillData_Detail[95]="변신 중에 주변의 영자를 조작하여, 자신에게 유리한 효과를 가져옵니다. 변신 쿨 -5~-50%"
    set s__SkillData_Name[96]="블루트 아르테리에"
    set s__SkillData_Detail[96]="변신 중에 동맥에 영자를 주입하여 공격적인 형태를 취합니다. 공속 5~50%"
    set s__SkillData_Name[97]="슈리프트 - 완전반립"
    set s__SkillData_Detail[97]="변신 중에 방해 효과를 반사합니다. 5~50%"
    set s__SkillData_Name[98]="항복"
    set s__SkillData_Detail[98]="자신을 내려놓고, 모든 것을 받아들입니다."
    set s__SkillData_Name[99]="난장천괴 1"
    set s__SkillData_Detail[99]="영자를 꼬아 자신을 강제로 조종합니다. 모든 방해효과에 면역이되며, 영자만 남아있다면 계속 움직일 수 있습니다."
    set s__SkillData_Name[100]="난장천괴 2"
    set s__SkillData_Detail[100]="영자를 꼬아 자신을 강제로 조종합니다. 모든 방해효과에 면역이되며, 영자만 남아있다면 계속 움직일 수 있습니다."
    set s__SkillData_Name[101]="난장천괴 3"
    set s__SkillData_Detail[101]="영자를 꼬아 자신을 강제로 조종합니다. 모든 방해효과에 면역이되며, 영자만 남아있다면 계속 움직일 수 있습니다."
    set s__SkillData_Name[102]="렛트슈틸 1"
    set s__SkillData_Detail[102]="일시적으로 퀸시 정수에 도달 각성합니다. 1레벨 이상 '패시브'들의 레벨이 상승합니다. 1/7/10레벨에 +1/+2/+3"
    set s__SkillData_Name[103]="렛트슈틸 2"
    set s__SkillData_Detail[103]="일시적으로 퀸시 정수에 도달 각성합니다. 1레벨 이상 '패시브'들의 레벨이 상승합니다. 1/7/10레벨에 +1/+2/+3"
    set s__SkillData_Name[104]="렛트슈틸 3"
    set s__SkillData_Detail[104]="일시적으로 퀸시 정수에 도달 각성합니다. 1레벨 이상 '패시브'들의 레벨이 상승합니다. 1/7/10레벨에 +1/+2/+3"
    set s__SkillData_Name[105]="폴슈텐디히 1"
    set s__SkillData_Detail[105]="퀸시의 힘을 끌어올려 몸에 두르고 싸웁니다."
    set s__SkillData_Name[106]="폴슈텐디히 2"
    set s__SkillData_Detail[106]="퀸시의 힘을 끌어올려 몸에 두르고 싸웁니다."
    set s__SkillData_Name[107]="폴슈텐디히 3"
    set s__SkillData_Detail[107]="퀸시의 힘을 끌어올려 몸에 두르고 싸웁니다."
    set s__SkillData_Name[108]="발차기"
    set s__SkillData_Detail[108]="상대를 발로 차버립니다. #Range범위에 #Damage% 데미지를 가합니다."
    set s__SkillData_Name[109]="가라테"
    set s__SkillData_Detail[109]="가라테 기술로 공격하여 #Damage% 데미지를 가합니다."
    set s__SkillData_Name[110]="히로인"
    set s__SkillData_Detail[110]="주변에 여성이 자신 뿐일 때, 스킬들의 거리 +5%"
    set s__SkillData_Name[111]="변신페널티"
    set s__SkillData_Detail[111]="변신시 이속페널티 감소 5~50%"
    set s__SkillData_Name[112]="마나회복"
    set s__SkillData_Detail[112]="변신시 최대마나 즉시회복 2~20%"
    set s__SkillData_Name[113]="사상마련"
    set s__SkillData_Detail[113]="평소에도 변신 상태와 같은 마음으로, 쉽게 몰입합니다."
    set s__SkillData_Name[114]="츠바키(동백)"
    set s__SkillData_Detail[114]="효과: 만개 - 최대 체력의 0.5-5% 데미지"
    set s__SkillData_Name[115]="슌오우(벚꽃)"
    set s__SkillData_Detail[115]="효과: 시듦 - 잃.체 0.2-2% x 3회"
    set s__SkillData_Name[116]="아야메(붓꽃)"
    set s__SkillData_Detail[116]="효과: 낙화 - 공격속도 -5~-50%, 2초"
    set s__SkillData_Name[117]="히나기쿠(국화)"
    set s__SkillData_Detail[117]="효과: 뿌리 - 이동속도 -5~-50%, 2초"
    set s__SkillData_Name[118]="바이곤(매화)"
    set s__SkillData_Detail[118]="효과: 꽃가루 - 도트데미지 (최대체력x0.1-1%) x 3회"
    set s__SkillData_Name[119]="리리(백합)"
    set s__SkillData_Detail[119]="효과: 꽃망울 - 공격력감소(중첩시 공격불가) 5-50%, 2초"
    set s__SkillData_Name[120]="쌍천귀순"
    set s__SkillData_Detail[120]="재생 : 체력회복 1%+잃5%, 1~10회x1초"
    set s__SkillData_Name[121]="삼천결순"
    set s__SkillData_Detail[121]="방어 : 받는 데미지 감소 30% 1~10초"
    set s__SkillData_Name[122]="사천항순"
    set s__SkillData_Detail[122]="더블캐스팅 필요, 삼천결순+츠바키. 데미지 감소 +31-40% + 데미지 반사 1회"
    set s__SkillData_Name[123]="오천비순"
    set s__SkillData_Detail[123]="더블캐스팅 필요, 삼천결순 + 쌍천귀순, 데미지 감소 41-50% + 체력 회복"
    set s__SkillData_Name[124]="육천절순"
    set s__SkillData_Detail[124]="트리플캐스팅 필요,  '삼천결순' - '쌍천귀순' - '고천참순'으로 발동. 범위 안 적 체력 감소 5-50% (일반몹)"
    set s__SkillData_Name[125]="사상의거절"
    set s__SkillData_Detail[125]="주변 쿨다운 감소 1-10%"
    set s__SkillData_Name[126]="더블캐스팅"
    set s__SkillData_Detail[126]="스킬 콤보로 변경, 모든 스킬 효과 +5~50%"
    set s__SkillData_Name[127]="트리플캐스팅"
    set s__SkillData_Detail[127]="스킬 트리플콤보로 변경, 모든 스킬 효과 +5~50% (합연산)"
    set s__SkillData_Name[128]="헌신"
    set s__SkillData_Detail[128]="다른 사람을 위해 희생하고, 정신을 집중하여 마나를 모읍니다. 이속 -10%"
    set s__SkillData_Name[129]="희생"
    set s__SkillData_Detail[129]="다른 사람을 위해 희생하고, 정신을 집중하여 마나를 모읍니다. 이속 -20%"
    set s__SkillData_Name[130]="존중"
    set s__SkillData_Detail[130]="다른 사람을 위해 희생하고, 정신을 집중하여 마나를 모읍니다. 이속 -30%"
    set s__SkillData_Name[131]="용서"
    set s__SkillData_Detail[131]="다른 사람을 위해 희생하고, 정신을 집중하여 마나를 모읍니다. 이속 -40%"
    set s__SkillData_Name[132]="배려"
    set s__SkillData_Detail[132]="다른 사람을 위해 희생하고, 정신을 집중하여 마나를 모읍니다. 이속 -50%"
    set s__SkillData_Name[133]="사랑"
    set s__SkillData_Detail[133]="다른 사람을 위해 희생하고, 정신을 집중하여 마나를 모읍니다. 이속 -60%"
    set s__SkillData_Name[134]="수용"
    set s__SkillData_Detail[134]="다른 사람을 위해 희생하고, 정신을 집중하여 마나를 모읍니다. 이속 -70%"
    set s__SkillData_Name[135]="감사"
    set s__SkillData_Detail[135]="다른 사람을 위해 희생하고, 정신을 집중하여 마나를 모읍니다. 이속 -80%"
    set s__SkillData_Name[136]="애정"
    set s__SkillData_Detail[136]="다른 사람을 위해 희생하고, 정신을 집중하여 마나를 모읍니다. 이속 -90%"
    set s__SkillData_Name[137]="축복"
    set s__SkillData_Detail[137]="다른 사람을 위해 희생하고, 정신을 집중하여 마나를 모읍니다. 이속 -99%"
    set s__SkillData_Name[138]="대쉬"
    set s__SkillData_Detail[138]="앞으로 #Distance 거리만큼 빠르게 내달립니다."
    set s__SkillData_Name[139]="순보"
    set s__SkillData_Detail[139]="사신들의 이동 보법입니다. \n#Distance 거리만큼 순간적으로 이동합니다."
    set s__SkillData_Name[140]="박치기"
    set s__SkillData_Detail[140]="적을 붙잡아 박치기를 하여 #Damage%의 데미지와 0.4초간 기절시킵니다."
    set s__SkillData_Name[141]="일골"
    set s__SkillData_Detail[141]="한쪽 주먹으로 강력한 타격을 가하여 #Damage% + 최대체력 0.4%의 데미지를 가합니다."
    set s__SkillData_Name[142]="철장"
    set s__SkillData_Detail[142]="손바닥으로 적을 때려부수어 #Damage% + 현재체력 1.5%의 데미지를 가합니다."
    set s__SkillData_Name[143]="풍차"
    set s__SkillData_Detail[143]="회전 발끝차기로 #Damage% + 잃은체력 1.5%의 데미지를 가합니다."
    set s__SkillData_Name[144]="쌍골"
    set s__SkillData_Detail[144]="양쪽 주먹으로 강력한 타격을 가하여 #Damage% + 최대체력 1.5%의 데미지를 가합니다."
    set s__SkillData_Name[145]="적시"
    set s__SkillData_Detail[145]="손발을 걸어 적의 행동을 제한합니다. \n#Damage%의 데미지를 가하고 5초간 공격력을 50% 감소시킵니다."
    set s__SkillData_Name[146]="반귀상쇄"
    set s__SkillData_Detail[146]="상대방에 귀도에 역회전을 걸어 공격을 방어합니다. \n#Duration초간 데미지 #Damage% 감소"
    set s__SkillData_Name[147]="츼사코"
    set s__SkillData_Detail[147]="상대방의 공격을 방어하고, 되돌려줍니다. \n#Duration초간 데미지 #Damage% 감소"
    set s__SkillData_Name[148]="뇌왕권"
    set s__SkillData_Detail[148]="초고속 주먹의 러쉬를 하여 추가로 65% 공격력 x 7회의 공격을 합니다."
    set s__SkillData_Name[149]="슌센벤"
    set s__SkillData_Detail[149]="세 번 채찍질하여, #Distance거리에 #Damage% 데미지를 가하고 넉백시킵니다."
    set s__SkillData_Name[150]="센코"
    set s__SkillData_Detail[150]="빠르게 돌진하여 경로상 적을 모두 베어냅니다."
    set s__SkillData_Name[151]="쇼센가"
    set s__SkillData_Detail[151]="땅에 심은 칼이 대상 아래에서 나와 #Damage%의 데미지와 1.6초간 공중으로 띄웁니다."
    set s__SkillData_Name[152]="츠키사시"
    set s__SkillData_Detail[152]="앞으로 쭉 찔러 #Distance거리에 #Damage% 데미지와 스턴을 가합니다."
    set s__SkillData_Name[153]="히가 센코"
    set s__SkillData_Detail[153]="여러 번 강하게 채찍질하여, #Distance거리에 #Damage% 데미지를 가합니다."
    set s__SkillData_Name[154]="가진토츠"
    set s__SkillData_Detail[154]="부서진 칼날을 내리쳐 #Distance거리에 #Damage% 데미지를 가하고, 출혈에 빠뜨립니다.\n조각당 데미지 +5%"
    set s__SkillData_Name[155]="사미환"
    set s__SkillData_Detail[155]="전방에 검을 휘둘러 #Distance거리에 #Damage% 데미지를 가합니다.\n조각을 남깁니다."
    set s__SkillData_Name[156]="비아절교"
    set s__SkillData_Detail[156]="주변 조각을 쏘아붙여 #Damage% 데미지를 가합니다.\n조각당 데미지 +5%"
    set s__SkillData_Name[157]="비골대포"
    set s__SkillData_Detail[157]="영압덩어리를 발사하여 #Damage%의 데미지를 가하고 상대를 밀어냅니다.\n그 후 2.5초간 50% 둔화를 가합니다."
    set s__SkillData_Name[158]="우치 오로시"
    set s__SkillData_Detail[158]="사미환을 길게 늘려 #Range범위에 #Damage% 데미지를 가합니다."
    set s__SkillData_Name[159]="시아철포"
    set s__SkillData_Detail[159]="상대에게 꽂은 검에서 영압을 발사하여 #Damage%의 데미지를 가합니다.\n그 후 상대를 불태워 2초간 최대체력 2%의 데미지를 가합니다."
    set s__SkillData_Name[160]="히가 호코"
    set s__SkillData_Detail[160]="사미환을 #Range범위에 #Damage% 데미지를 여러 번 가합니다."
    set s__SkillData_Name[161]="메코진"
    set s__SkillData_Detail[161]="비비왕이 지정된 상대를 물어뜯어 #Damage%의 데미지와 3초간 공중에 띄웁니다. \n그 후 5회 연속 물어뜯어 각각 85%의 데미지를 가합니다."
    set s__SkillData_Name[162]="비비왕 - 내려찍기"
    set s__SkillData_Detail[162]="슬로우 추가 +5%~50%"
    set s__SkillData_Name[163]="비비왕 - 쥐어짜기"
    set s__SkillData_Detail[163]="슬로우→스턴, 5~50%"
    set s__SkillData_Name[164]="쌍왕 - 사루노"
    set s__SkillData_Detail[164]="스킬 사용시, '비비왕' 혹은 '오로치왕' 추가적용 각 +3%"
    set s__SkillData_Name[165]="쌍왕 - 헤비노"
    set s__SkillData_Detail[165]="비비왕'과 '오로치왕' 사용시 다른스킬(한 개) 쿨 -2%"
    set s__SkillData_Name[166]="분노"
    set s__SkillData_Detail[166]="분노하여 더 강한 공격을 합니다. 이속 +6%, 뎀 +4%"
    set s__SkillData_Name[167]="시해1"
    set s__SkillData_Detail[167]="사미환 해방. 이속 +13%, 뎀 +8%"
    set s__SkillData_Name[168]="시해2"
    set s__SkillData_Detail[168]="사미환 해방. 이속 +20%, 뎀 +16%"
    set s__SkillData_Name[169]="시해3"
    set s__SkillData_Detail[169]="사미환 해방. 이속 +27%, 뎀 +24%"
    set s__SkillData_Name[170]="만해1"
    set s__SkillData_Detail[170]="비비왕 해방. 이속 +34%, 뎀 +32%"
    set s__SkillData_Name[171]="만해2"
    set s__SkillData_Detail[171]="오로치왕 해방. 이속 +41%, 뎀 +40%"
    set s__SkillData_Name[172]="만해3"
    set s__SkillData_Detail[172]="오로치왕 해방. 이속 +48%, 뎀 +48%"
    set s__SkillData_Name[173]="진만해1"
    set s__SkillData_Detail[173]="쌍왕 해방. 이속 +55%, 뎀 +56%"
    set s__SkillData_Name[174]="진만해2"
    set s__SkillData_Detail[174]="쌍왕 해방. 이속 +62%, 뎀 +64%"
    set s__SkillData_Name[175]="진만해3"
    set s__SkillData_Detail[175]="쌍왕 해방. 이속 +69%, 뎀 +72%"
    set s__SkillData_Name[176]="대쉬"
    set s__SkillData_Detail[176]="앞으로 #Distance 거리만큼 빠르게 내달립니다."
    set s__SkillData_Name[177]="브링거 라이트"
    set s__SkillData_Detail[177]="풀브링거의 고속 보법입니다. \n#Distance 거리만큼 순식간에 이동합니다."
    set s__SkillData_Name[178]="방어"
    set s__SkillData_Detail[178]="방어 자세를 취해 데미지를 감소시킵니다.\n#Duration초간 데미지 #Damage% 감소"
    set s__SkillData_Name[179]="불안정한 땅"
    set s__SkillData_Detail[179]="다져진 땅을 불안정하게 만들어, 상대를 혼란시켜 데미지를 감소시킵니다."
    set s__SkillData_Name[180]="거인의돌진"
    set s__SkillData_Detail[180]="#Distance거리를 찌르며 돌진하며 #Damage% 데미지를 가합니다. \n이후 일정시간동안 방어력과 이동속도가 증가합니다."
    set s__SkillData_Name[181]="역천지명"
    set s__SkillData_Detail[181]="일정 시간 동안 무적 상태가 되며, 스킬 사용 중 주변 적들에게 지속적으로 데미지를 가합니다. 스킬 종료 시 범위 내 적들을 공중으로 띄워 밀쳐냅니다."
    set s__SkillData_Name[182]="무신의 분노"
    set s__SkillData_Detail[182]="일정 시간 동안 받는 데미지가 감소되며, 주변에 지속적으로 데미지를 가합니다.  또한 공격을 받을 때마다 공격력이 증가합니다."
    set s__SkillData_Name[183]="엘 디렉토"
    set s__SkillData_Detail[183]="영압을 담은 주먹으로 #Distance거리에 #Damage% 데미지를 가합니다."
    set s__SkillData_Name[184]="어스 그랩"
    set s__SkillData_Detail[184]="상대에게 #Damage%의 데미지를 가하고 자신의 앞으로 끌어당깁니다."
    set s__SkillData_Name[185]="어션 그래스프"
    set s__SkillData_Detail[185]="상대를 붙잡아 #Damage% + 최대체력 0.3%의 데미지를 가하고 2초간 속박합니다."
    set s__SkillData_Name[186]="악마의숨결"
    set s__SkillData_Detail[186]="악마의 힘으로 #Distance거리에 #Damage% 데미지를 가하고, 둔화시킵니다."
    set s__SkillData_Name[187]="라 무에르테"
    set s__SkillData_Detail[187]="강한 영압으로 급소를 정확히 공격해, #Distance거리에 #Damage% 데미지를 가합니다."
    set s__SkillData_Name[188]="슬래머"
    set s__SkillData_Detail[188]="지면을 강타하여 지진을 일으켜 적들을 둔화시킵니다."
    set s__SkillData_Name[189]="그루아 티라르"
    set s__SkillData_Detail[189]="지면에 손을 박은 다음 그대로 땅을 들어 메치는 기술."
    set s__SkillData_Name[190]="디스트럭시온"
    set s__SkillData_Detail[190]="대지를 내리치며 범위 내 적들에게 데미지를 입히고 넘어뜨립니다."
    set s__SkillData_Name[191]="엘레멘토"
    set s__SkillData_Detail[191]="대지를 움직여 산사태를 일으켜 적들에게 데미지를 입힙니다."
    set s__SkillData_Name[192]="천지의포효"
    set s__SkillData_Detail[192]="대지를 밟아 가르고 산을 던져 #Range범위에 #Damage% 데미지를 가합니다."
    set s__SkillData_Name[193]="급소파악"
    set s__SkillData_Detail[193]="공격 혹은 스킬 사용시 데미지를 증가시킵니다. 110% (최대 160%)/ 4% (최대 40%)"
    set s__SkillData_Name[194]="패턴파악"
    set s__SkillData_Detail[194]="같은 대상으로 지정시 스킬/공격당 데미지 증가 +2% (1렙 중첩 1 - 최대10회)"
    set s__SkillData_Name[195]="요새화"
    set s__SkillData_Detail[195]="같은 자리에 서있으면 방어력 증가 3% (1렙 중첩 1 - 최대10회) / 최종스택시 주변도발"
    set s__SkillData_Name[196]="방어"
    set s__SkillData_Detail[196]="방어 태세에 들어가, 방어를 증가시킵니다. 본인 방어 +4%"
    set s__SkillData_Name[197]="거인의 오른팔 Lv1"
    set s__SkillData_Detail[197]="거인의 오른팔을 이용해 적을 두렵게 하며 자신의 방어를 증가시킵니다. 적 방어 -1%, 본인 +8%"
    set s__SkillData_Name[198]="거인의 오른팔 Lv2"
    set s__SkillData_Detail[198]="거인의 오른팔을 이용해 적을 두렵게 하며 자신의 방어를 증가시킵니다. 적 방어 -4%, 본인 +12%"
    set s__SkillData_Name[199]="거인의 오른팔 Lv3"
    set s__SkillData_Detail[199]="거인의 오른팔을 이용해 적을 두렵게 하며 자신의 방어를 증가시킵니다. 적 방어 -7%, 본인 +16%"
    set s__SkillData_Name[200]="거인의 오른팔(브라소 데레차 데 히간테) Lv1"
    set s__SkillData_Detail[200]="거인의 오른팔을 이용해 적을 더욱 두렵게 하며 자신의 방어를 증가시킵니다. 적 방어 -10%, 본인 +20%"
    set s__SkillData_Name[201]="거인의 오른팔(브라소 데레차 데 히간테) Lv2"
    set s__SkillData_Detail[201]="거인의 오른팔을 이용해 적을 더욱 두렵게 하며 자신의 방어를 증가시킵니다. 적 방어 -13%, 본인 +24%"
    set s__SkillData_Name[202]="거인의 오른팔(브라소 데레차 데 히간테) Lv3"
    set s__SkillData_Detail[202]="거인의 오른팔을 이용해 적을 더욱 두렵게 하며 자신의 방어를 증가시킵니다. 적 방어 -16%, 본인 +28%"
    set s__SkillData_Name[203]="악마의 왼팔(브라소 이스케르다 델 디아블로) Lv1"
    set s__SkillData_Detail[203]="악마의 왼팔을 이용해 적을 매우 두렵게 하며 자신의 방어를 증가시킵니다. 적 방어 -19%, 본인 +32%"
    set s__SkillData_Name[204]="악마의 왼팔(브라소 이스케르다 델 디아블로) Lv2"
    set s__SkillData_Detail[204]="악마의 왼팔을 이용해 적을 매우 두렵게 하며 자신의 방어를 증가시킵니다. 적 방어 -22%, 본인 +36%"
    set s__SkillData_Name[205]="악마의 왼팔(브라소 이스케르다 델 디아블로) Lv3"
    set s__SkillData_Detail[205]="악마의 왼팔을 이용해 적을 매우 두렵게 하며 자신의 방어를 증가시킵니다. 적 방어 -25%, 본인 +40%"
  endfunction
// scope SkillDataStr ends
// END IMPORT OF Data\SkillDataStr.j
// BEGIN IMPORT OF Data\IResources.j
// scope IResources begins
  // 옵션 리소스
  // super.id => 이 옵션의 id값

    function s__OptionResource_Create takes integer id,boolean isBoolType returns integer
      local integer this= sc__IResource__factory(si__OptionResource)
      set s__IResource_id[this]=id
      set s__OptionResource_isBooleanType[this]=isBoolType
      return this
    endfunction
    function s__OptionResource_Click takes integer this,integer input returns nothing
      if ( s__OptionResource_isBooleanType[this] ) then
        if ( s__IResource_id[this] == 0 ) then
          set s__IResource_id[this]=1
        else
          set s__IResource_id[this]=0
        endif
      else
        set s__IResource_id[this]=s__IResource_id[this] + input
      endif
    endfunction
    // super.id => 이 플레이어의 id 값 1~12


    function s__PlayerResource__staticgetindex takes integer input returns integer
      if ( input <= 0 or MAX_PLAYER_COUNT <= input ) then
        call MsgAll("오류/P.R[" + I2S(input) + "]는 설정 범위(1~" + I2S(MAX_PLAYER_COUNT - 1) + ")를 벗어납니다.")
        return 0
      elseif ( s__s__PlayerResource_privatePlayerResource[input] == 0 ) then
        call MsgAll("오류/P.R[" + I2S(input) + "]는 설정되지 않았습니다.")
        return 0
      endif
      return s__s__PlayerResource_privatePlayerResource[input]
    endfunction

    function s__PlayerResource_onInit takes nothing returns nothing
      local integer loopA= 1
      loop
        if ( GetPlayerController(Player(loopA - 1)) == MAP_CONTROL_USER ) and ( GetPlayerSlotState(Player(loopA - 1)) == PLAYER_SLOT_STATE_PLAYING ) then
          set s__PlayerResource_ALL_PLAYING_COUNT=s__PlayerResource_ALL_PLAYING_COUNT + 1
          set s__s__PlayerResource_privatePlayerResource[loopA]= sc__IResource__factory(si__PlayerResource)
          set s__IResource_id[s__s__PlayerResource_privatePlayerResource[loopA]]=loopA
          set s__PlayerResource_isPlaying[s__s__PlayerResource_privatePlayerResource[loopA]]=true
        endif
        exitwhen MAX_PLAYER_COUNT - 1 <= loopA
        set loopA=loopA + 1
      endloop
    endfunction


    function s__CharacterResource_Create takes unit u,integer input returns integer
      local integer this= sc__IResource__factory(si__CharacterResource)
      local integer loopA= 1
      set s__IResource_id[this]=input
      set s__CharacterResource_Unit[this]=u
      set s__CharacterResource_playerId[this]=GetPlayerId(GetOwningPlayer(u)) + 1
      loop
        exitwhen MAX_SKILL_SLOT <= loopA
        set s___CharacterResource_Skills[s__CharacterResource_Skills[this]+loopA]=sc__SlotResource_Create(this , loopA , loopA * 2 , 1)
        set loopA=loopA + 1
      endloop
      set loopA=1
      loop
        set s___CharacterResource_Stats[s__CharacterResource_Stats[this]+loopA]=sc__StatResource_Create(this , loopA)
        exitwhen MAX_STAT_COUNT <= loopA
        set loopA=loopA + 1
      endloop
      return this
    endfunction

    // super.id => 이 스텟의이 스텟의 종류 id 값.
    
    function s__StatResource_Create takes integer inputCharacter,integer inputSubTypeId returns integer
      local integer this= sc__IResource__factory(si__StatResource)
      set s__StatResource_owner[this]=inputCharacter
      set s__IResource_id[this]=inputSubTypeId
      return this
    endfunction
    // super.id => 이 스킬의 id 값 1~205


    
    function s__SlotResource_Create takes integer inputCharacter,integer slot,integer id,integer level returns integer
      local integer this= sc__IResource__factory(si__SlotResource)
      set s__SlotResource_owner[this]=inputCharacter
      set s__SlotResource_slot[this]=slot
      call sc__SlotResource_ChangeBaseID(this,id , level)

      // call MsgAll("생성/S.R.C[" + I2S(this.owner.playerId) + "][" + I2S(this.slot) + "],id=" + I2S(this.id) + ",lv=" + I2S(this.level))
      return this
    endfunction
    function s__SlotResource_ChangeLevel takes integer this,integer newLevel returns nothing
      set s__SlotResource_level[this]=newLevel
      if ( 2 <= s__SlotResource_level[this] ) then
        call sc__SlotResource_UpdateInitVariables(this)
      endif
    endfunction
    function s__SlotResource_ChangeBaseID takes integer this,integer id,integer level returns nothing
      set s__IResource_id[this]=id
      call sc__SlotResource_ChangeIcon(s__CharacterResource_playerId[s__SlotResource_owner[this]] , id , s__SlotResource_slot[this])
      call sc__SlotResource_InitVariables(this)
      call s__SlotResource_ChangeLevel(this,level)
      call sc__SlotResource_ChangeObjectData(this,EXGetUnitAbility(s__CharacterResource_Unit[s__SlotResource_owner[this]], s__SlotData_GetSkillCode(s__SlotData__staticgetindex(s__SlotResource_slot[this]),s__IResource_id[s___PlayerResource_options[s__PlayerResource_options[s__PlayerResource__staticgetindex(s__CharacterResource_playerId[s__SlotResource_owner[this]])]+s__EHotkeyMenu_SubMenuSmartMode]] == 1)))
    endfunction

    function s__SlotResource_ChangeSlotIcon takes integer slot,boolean isSkill,string TexturePath returns nothing
      //아이콘 텍스처 설정
      if ( isSkill and 0 < slot and slot < MAX_SKILL_SLOT ) then
        call DzFrameSetTexture(s__Quickmenu_Backdrops[slot + 7], TexturePath, 0)
      elseif ( not isSkill and 0 < slot and slot <= 7 ) then
        call DzFrameSetTexture(s__Quickmenu_Backdrops[slot], TexturePath, 0)
      elseif ( isSkill ) then
        call MsgAll("오류/슬롯[" + I2S(slot) + "]변경/스킬")
      else
        call MsgAll("오류/슬롯[" + I2S(slot) + "]변경/아이템")
      endif
    endfunction
    // id = id
    function s__SlotResource_ChangeIcon takes integer playerId,integer characterId,integer slot returns nothing
      if ( GetLocalPlayer() == Player(playerId - 1) ) then
        call s__SlotResource_ChangeSlotIcon(slot , true , IfEmpty(s___TreeMainCoreData_iconPath[s__TreeMainCoreData_iconPath[s__TreeMainCoreData__staticgetindex(characterId)]+slot] , "ReplaceableTextures\\CommandButtons\\BTNReplay-Pause.blp"))
      endif
    endfunction
    function s__SlotResource_InitVariables takes integer this returns nothing
      set s__SlotResource_tempString=s__SkillData_Detail[s__SkillData__staticgetindex(s__IResource_id[this])]
      if ( JNStringContains(s__SlotResource_tempString, "#") ) then
        if ( JNStringContains(s__SlotResource_tempString, "#CastingTime") ) then
          set s__SlotResource_lastCastingTime[this]=s__SkillData_CastingTime[s__SkillData__staticgetindex(s__IResource_id[this])]
        else
          set s__SlotResource_lastCastingTime[this]=0
        endif
        // if ( JNStringContains(tempString, "#Damage%") ) then
        //   set .lastDamage = SkillData[this.id].Damage
        // else
        if ( JNStringContains(s__SlotResource_tempString, "#Damage") ) then
          set s__SlotResource_lastDamage[this]=s__SkillData_Damage[s__SkillData__staticgetindex(s__IResource_id[this])]
        else
          set s__SlotResource_lastDamage[this]=0
        endif
        if ( JNStringContains(s__SlotResource_tempString, "#Distance") ) then
          set s__SlotResource_lastDistance[this]=s__SkillData_Distance[s__SkillData__staticgetindex(s__IResource_id[this])]
        else
          set s__SlotResource_lastDistance[this]=0
        endif
        if ( JNStringContains(s__SlotResource_tempString, "#Range") ) then
          set s__SlotResource_lastRange[this]=s__SkillData_Range[s__SkillData__staticgetindex(s__IResource_id[this])]
        else
          set s__SlotResource_lastRange[this]=0
        endif
        if ( JNStringContains(s__SlotResource_tempString, "#Duration") ) then
          set s__SlotResource_lastDuration[this]=s__SkillData_Duration[s__SkillData__staticgetindex(s__IResource_id[this])]
        else
          set s__SlotResource_lastDuration[this]=0
        endif
        if ( JNStringContains(s__SlotResource_tempString, "#Mana") ) then
          set s__SlotResource_lastCostMana[this]=s__SkillData_CostMana[s__SkillData__staticgetindex(s__IResource_id[this])]
        else
          set s__SlotResource_lastCostMana[this]=0
        endif
        if ( JNStringContains(s__SlotResource_tempString, "#CoolDown") ) then
          set s__SlotResource_lastCooldownTime[this]=s__SkillData_CoolTime[s__SkillData__staticgetindex(s__IResource_id[this])]
        else
          set s__SlotResource_lastCooldownTime[this]=0
        endif
      else
        set s__SlotResource_lastCastingTime[this]=0
        set s__SlotResource_lastDamage[this]=0
        set s__SlotResource_lastDistance[this]=0
        set s__SlotResource_lastRange[this]=0
        set s__SlotResource_lastDuration[this]=0
        set s__SlotResource_lastCostMana[this]=0
        set s__SlotResource_lastCooldownTime[this]=0
      endif
    endfunction
    function s__SlotResource_UpdateInitVariables takes integer this returns nothing
      set s__SlotResource_tempString=s__SkillData_ValueChange[s__SkillData__staticgetindex(s__IResource_id[this])]
      if ( JNStringContains(s__SlotResource_tempString, "~") ) then
        if ( JNStringContains(s__SlotResource_tempString, "~CastingTime") ) then
          set s__SlotResource_lastCastingTime[this]=s__SkillData_CastingTime[s__SkillData__staticgetindex(s__IResource_id[this])] + ( s__SkillData_CastingTimeAdd[s__SkillData__staticgetindex(s__IResource_id[this])] * ( s__SlotResource_level[this] - 1 ) )
        endif
        if ( JNStringContains(s__SlotResource_tempString, "~Damage") ) then
          set s__SlotResource_lastDamage[this]=s__SkillData_Damage[s__SkillData__staticgetindex(s__IResource_id[this])] + ( s__SkillData_DamageAdd[s__SkillData__staticgetindex(s__IResource_id[this])] * ( s__SlotResource_level[this] - 1 ) )
        endif
        if ( JNStringContains(s__SlotResource_tempString, "~Distance") ) then
          set s__SlotResource_lastDistance[this]=s__SkillData_Distance[s__SkillData__staticgetindex(s__IResource_id[this])] + ( s__SkillData_DistanceAdd[s__SkillData__staticgetindex(s__IResource_id[this])] * ( s__SlotResource_level[this] - 1 ) )
        endif
        if ( JNStringContains(s__SlotResource_tempString, "~Range") ) then
          set s__SlotResource_lastRange[this]=s__SkillData_Range[s__SkillData__staticgetindex(s__IResource_id[this])] + ( s__SkillData_RangeAdd[s__SkillData__staticgetindex(s__IResource_id[this])] * ( s__SlotResource_level[this] - 1 ) )
        endif
        if ( JNStringContains(s__SlotResource_tempString, "~Duration") ) then
          set s__SlotResource_lastDuration[this]=s__SkillData_Duration[s__SkillData__staticgetindex(s__IResource_id[this])] + ( s__SkillData_DurationAdd[s__SkillData__staticgetindex(s__IResource_id[this])] * ( s__SlotResource_level[this] - 1 ) )
        endif
        if ( JNStringContains(s__SlotResource_tempString, "~Mana") ) then
          set s__SlotResource_lastCostMana[this]=s__SkillData_CostMana[s__SkillData__staticgetindex(s__IResource_id[this])] + ( s__SkillData_CostManaAdd[s__SkillData__staticgetindex(s__IResource_id[this])] * ( s__SlotResource_level[this] - 1 ) )
        endif
        if ( JNStringContains(s__SlotResource_tempString, "~CoolDown") ) then
          set s__SlotResource_lastCooldownTime[this]=s__SkillData_CoolTime[s__SkillData__staticgetindex(s__IResource_id[this])] + ( s__SkillData_CoolTimeAdd[s__SkillData__staticgetindex(s__IResource_id[this])] * ( s__SlotResource_level[this] - 1 ) )
        endif
      endif
    endfunction
    function s__SlotResource_SetAiblityTagetingUIs takes integer this,ability abil,real dataB,real dataC returns nothing
      // 목표물 종류(DATA_B, 109)를 변경 (1레벨)
        // 즉시(0) , 유닛 타겟(1) , 지점 타겟(2) , 유닛 또는 지점(3)
      // call EXSetAbilityState(abil, 109, dataB)
      call EXSetAbilityDataReal(abil, 1, 109, dataC)
      
      // UI보기(DATA_C, 110)를 변경 (1레벨)
        // 안보임(0) , 보임(1) , 타겟팅 이미지(2) , =1+2(3), = 피지컬 스펠(??)(4추정), 유니버설 스펠(면역무시)(8), 유니크 캐스트(여러마리-혼자시전)(16)
      // call EXSetAbilityState(abil, 110, dataB)
      call EXSetAbilityDataReal(abil, 1, 110, dataC)

      // 사거리(107) : 생략, 기본값 500
    endfunction
    function s__SlotResource_SetAiblityTagetingUIsWithRange takes integer this,ability abil,real dataB,real dataC,real area returns nothing
      call s__SlotResource_SetAiblityTagetingUIs(this,abil , dataB , dataC)
      
      // 범위(AREA, 106)를 변경 (1레벨)
      call EXSetAbilityDataReal(abil, 1, 106, area)
    endfunction
    function s__SlotResource_ChangeTargetingUI takes integer this,ability abil,integer input returns nothing
      local boolean isSmartMode= ( s__IResource_id[s___PlayerResource_options[s__PlayerResource_options[s__PlayerResource__staticgetindex(s__CharacterResource_playerId[s__SlotResource_owner[this]])]+s__EHotkeyMenu_SubMenuSmartMode]] == 1 )
      if ( input == s__ESkillTypeUI_UN_CLICKABLE ) then
        // 즉발, 숨김(단축키X)
        call s__SlotResource_SetAiblityTagetingUIs(this,abil , 0 , 0)
      elseif ( input == s__ESkillTypeUI_IMMEDIATELY ) then
        // 즉발, 보임(단축키O)
        call s__SlotResource_SetAiblityTagetingUIs(this,abil , 0 , 1)
      elseif ( input == s__ESkillTypeUI_SOLO_TARGET ) then
        // 유닛 타겟, 보임+타겟팅
        call s__SlotResource_SetAiblityTagetingUIs(this,abil , 1 , 3)
      elseif ( input == s__ESkillTypeUI_LOCATION_WITH_DIRECTION ) then
        // 지점 타겟, 보임+타겟팅
        call s__SlotResource_SetAiblityTagetingUIs(this,abil , 2 , 3)
      elseif ( input == s__ESkillTypeUI_LOCATION_WITH_RANGE ) then
        // 범위 타겟, 보임+타겟팅+범위
        call s__SlotResource_SetAiblityTagetingUIsWithRange(this,abil , 2 , 3 , s__SlotResource_lastRange[this])
      else
        call MsgAll("오류/S.R.CTUI[" + I2S(input) + "]는 설정 범위(1~5)를 벗어납니다.")
        return
      endif
    endfunction

    // 툴팁 변경
    function s__SlotResource_GetCurrentTooltips takes integer this,boolean displayAsPercentage returns string
      set s__SlotResource_tempString=s__SkillData_Detail[s__SkillData__staticgetindex(s__IResource_id[this])]
        // => "#Distance거리를 찌르며 돌진하며 #Damage% 데미지를 가합니다."

      if ( JNStringContains(s__SlotResource_tempString, "#Damage%") ) and ( not displayAsPercentage ) then
        set s__SlotResource_tempString=JNStringReplace(s__SlotResource_tempString, "#Damage%", s__ESkillTree_ProcessI2S(s__SlotResource_lastDamage[this] * s___CharacterResource_Stats[s__CharacterResource_Stats[s__SlotResource_owner[this]]+s__EStatType_AttackPower] , true , 2 , false))
          // => 300거리를 찌르며, 1273 데미지를 가합니다.
      endif

      set s__SlotResource_tempString=JNStringReplace(s__SlotResource_tempString, "#CastingTime", s__ESkillTree_ProcessI2S(s__SlotResource_lastCastingTime[this] , true , 2 , true) + "초")
      set s__SlotResource_tempString=JNStringReplace(s__SlotResource_tempString, "#Damage", I2S(s__SlotResource_lastDamage[this]))
        // => 300거리를 찌르며, 100% 데미지를 가합니다. (기본)
      set s__SlotResource_tempString=JNStringReplace(s__SlotResource_tempString, "#Distance", I2S(s__SlotResource_lastDistance[this]))
      set s__SlotResource_tempString=JNStringReplace(s__SlotResource_tempString, "#Range", I2S(s__SlotResource_lastRange[this]))
      set s__SlotResource_tempString=JNStringReplace(s__SlotResource_tempString, "#Duration", s__ESkillTree_ProcessI2S(s__SlotResource_lastDuration[this] , true , 2 , true) + "초")
      set s__SlotResource_tempString=JNStringReplace(s__SlotResource_tempString, "#Mana", s__ESkillTree_ProcessI2S(s__SlotResource_lastCostMana[this] , true , 1 , false))
      set s__SlotResource_tempString=JNStringReplace(s__SlotResource_tempString, "#CoolDown", s__ESkillTree_ProcessI2S(s__SlotResource_lastCooldownTime[this] , true , 2 , true) + "초")
      return s__SlotResource_tempString
    endfunction

    function s__SlotResource_ChangeObjectData takes integer this,ability abil returns nothing
      // UI 형태 변경
      call s__SlotResource_ChangeTargetingUI(this,abil , s__SkillData_TypeUI[s__SkillData__staticgetindex(s__IResource_id[this])])
      
      // 캐스팅 시간(CAST, 101)를 변경 (1레벨) - 10ms, 1/100초
      call EXSetAbilityDataReal(abil, 1, 101, s__SlotResource_lastCastingTime[this] * 0.01)

      // 쿨다운 시간(COOL, 105)를 변경 (1레벨) - 10ms, 1800이면 18초
      call EXSetAbilityDataReal(abil, 1, 101, s__SlotResource_lastCooldownTime[this] * 0.01)

      // 소모마나(COST, 104)를 변경 (1레벨) - 소숫점 생략하니까 나누기 10
      call EXSetAbilityDataInteger(abil, 1, 104, s__SlotResource_lastCostMana[this] / 10)

      // 툴팁 변경(UBERTIP, 218)를 변경 (1레벨) - 현재 값을 기준으로.
      call EXSetAbilityDataString(abil, 1, 218, s__SlotResource_GetCurrentTooltips(this,true))

      // 새로고침
      call IncUnitAbilityLevel(s__CharacterResource_Unit[s__SlotResource_owner[this]], s__SlotData_GetSkillCode(s__SlotData__staticgetindex(s__SlotResource_slot[this]),( s__IResource_id[s___PlayerResource_options[s__PlayerResource_options[s__PlayerResource__staticgetindex(s__CharacterResource_playerId[s__SlotResource_owner[this]])]+s__EHotkeyMenu_SubMenuSmartMode]] == 1 )))
      call DecUnitAbilityLevel(s__CharacterResource_Unit[s__SlotResource_owner[this]], s__SlotData_GetSkillCode(s__SlotData__staticgetindex(s__SlotResource_slot[this]),( s__IResource_id[s___PlayerResource_options[s__PlayerResource_options[s__PlayerResource__staticgetindex(s__CharacterResource_playerId[s__SlotResource_owner[this]])]+s__EHotkeyMenu_SubMenuSmartMode]] == 1 )))
    endfunction
  
  // 인터페이스 이하 Line들이 참조가 되지 않아 아래에 설정.
    
    // 주석 처리를 위해 새로운 구조체 생성.
//#     static if false then
//#       
//#         // 자식이 사용하는 값을 지정()
//#         integer id
//#         
//#           PlayerResource        => 이 플레이어의  id. GetPlayerId(id)+1     [MAX_PLAYER_COUNT]    {static}
//#           ㄴ OptionResource     => 이 옵션 종류   id. EHotkeyMenu.id        [MAX_OPTION_MENU_COUNT]
//#           ㄴ CharacterResource  => 이 캐릭터의    id. ECharacter.id.        [MAX_CHARACTER_COUNT]
//#             ㄴ StatResource      => 이 스텟의 종류 id. EStatType.id.         [MAX_STAT_COUNT]
//#             ㄴ SlotResource      => 이 스킬의 스킬 id. SkillData[id]로 사용  [MAX_SKILL_COUNT]
//# 
//#     endif
    
// scope IResources ends
// END IMPORT OF Data\IResources.j

// BEGIN IMPORT OF System\MemoryInterferencer\Typecast.j
// scope Typecast begins


//The "return" line prevents Jasshelper from inlining these functions
function setCode takes code c returns nothing
    set l__Code=c
    return
endfunction

function setInt takes integer i returns nothing
    set l__Int=i
    return
endfunction

function setStr takes string s returns nothing
    set l__Str=s
    return
endfunction

function setBool takes boolean b returns nothing
    set l__Bool=b
    return
endfunction

//Jasshelper will append an "l__" prefix to all Typecast locals
function Typecast___Typecast1 takes nothing returns nothing
    local integer l__Str
    local string l__Int
endfunction

//# +nosemanticerror
function SH2I takes string s returns integer
    call setStr(s)
    return l__Str
endfunction

//# +nosemanticerror
function I2SH takes integer i returns string
    call setInt(i)
    return l__Int
endfunction

function Typecast___Typecast2 takes nothing returns nothing
    local integer l__Bool
    local boolean l__Int
endfunction

//# +nosemanticerror
function B2I takes boolean b returns integer
    call setBool(b)
    return l__Bool
endfunction

//# +nosemanticerror
function I2B takes integer i returns boolean
    call setInt(i)
    return l__Int
endfunction

function Typecast___Typecast3 takes nothing returns nothing
    local integer l__Code
    local code l__Int
endfunction

//# +nosemanticerror
function C2I takes code c returns integer
    call setCode(c)
    return l__Code
endfunction

//# +nosemanticerror
function I2C takes integer i returns code
    call setInt(i)
    return l__Int
endfunction

//# +nosemanticerror
function realToIndex takes real r returns integer
    return r
endfunction

function cleanInt takes integer i returns integer
    return i
endfunction

//# +nosemanticerror
function indexToReal takes integer i returns real
    return i
endfunction

function cleanReal takes real r returns real
    return r
endfunction

// scope Typecast ends

// END IMPORT OF System\MemoryInterferencer\Typecast.j
// BEGIN IMPORT OF System\MemoryInterferencer\MemoryLib.j


// source: src/MemoryLib.j
// ! import "JNMemory.j"
//native JNGetModuleHandle takes string moduleName returns integer










// source: src/MemoryLibCommandButton.j


// source: src/MemoryLibCommandButtonData.j

// source: src/MemoryLibGameUI.j

// source: src/MemoryLibMemoryBlock.j


// source: src/MemoryLibPrimitiveType.j

// END IMPORT OF System\MemoryInterferencer\MemoryLib.j
// BEGIN IMPORT OF System\MemoryInterferencer\EndGameHook.j
// Made by 크로와상  
// requires MemoryLib, Typecast  
// ! import "JNMemory.j"  
// ! import "JNCommon.j"  

// scope EndGameHook begins


  function SetGameEndCallback takes string func returns nothing
    set EndGameHook___userCallbackName=func
    set EndGameHook___userCallbackCode=null
  endfunction 

  function SetGameEndCallbackByCode takes code funcHandle returns nothing
    set EndGameHook___userCallbackName=null
    set EndGameHook___userCallbackCode=funcHandle
  endfunction 



    function s__EndGameHook___MemoryBlock_initSize takes nothing returns nothing
      local integer lastIndex= ( 400 - 1 ) / 4
      set l__GameExitHook__MemoryBlock_block[lastIndex]=0
    endfunction 

    function s__EndGameHook___MemoryBlock_typecast takes nothing returns nothing
      local integer l__GameExitHook__MemoryBlock_block
    endfunction 

    //# +nosemanticerror 
    function s__EndGameHook___MemoryBlock_onInit takes nothing returns nothing
      call s__EndGameHook___MemoryBlock_initSize()
      set s__EndGameHook___MemoryBlock_pHead=s__PtrPtr__getindex((l__GameExitHook__MemoryBlock_block),3)
      set s__EndGameHook___MemoryBlock_size=400
    endfunction 

  function EndGameHook___GetGameWar3 takes nothing returns integer
    return s__PtrPtr__staticgetindex(pGameDll + 0xD305E0)
  endfunction 

  function EndGameHook___VirtualProtect takes integer lpAddress,integer dwSize,integer flNewProtect,integer pflOldProtect returns integer
    local integer pFunc= s__IntPtr__staticgetindex(pGameDll + 0xA6B384)
    call SaveStr(JNProc_ht, JNProc_key, 0, "(IIII)I")
    call SaveInteger(JNProc_ht, JNProc_key, 1, lpAddress)
    call SaveInteger(JNProc_ht, JNProc_key, 2, dwSize)
    call SaveInteger(JNProc_ht, JNProc_key, 3, flNewProtect)
    call SaveInteger(JNProc_ht, JNProc_key, 4, pflOldProtect)
    if ( JNProcCall(JNProc__stdcall, pFunc, JNProc_ht) ) then
      return LoadInteger(JNProc_ht, JNProc_key, 0)
    endif
    return 0
  endfunction 

  function EndGameHook___sub_8BED60 takes integer this returns integer
    local integer pFunc= pGameDll + 0x8BED60
    call SaveStr(JNProc_ht, JNProc_key, 0, "(I)I")
    call SaveInteger(JNProc_ht, JNProc_key, 1, this)
    if ( JNProcCall(JNProc__thiscall, pFunc, JNProc_ht) ) then
      return LoadInteger(JNProc_ht, JNProc_key, 0)
    endif
    return 0
  endfunction 

  function EndGameHook___sub_8CB7D0 takes integer this,integer a2 returns integer
    local integer pFunc= pGameDll + 0x8CB7D0
    call SaveStr(JNProc_ht, JNProc_key, 0, "(II)I")
    call SaveInteger(JNProc_ht, JNProc_key, 1, this)
    call SaveInteger(JNProc_ht, JNProc_key, 2, a2)
    if ( JNProcCall(JNProc__thiscall, pFunc, JNProc_ht) ) then
      return LoadInteger(JNProc_ht, JNProc_key, 0)
    endif
    return 0
  endfunction 

  function EndGameHook___GetCodeIndex takes code c returns integer
    local integer pCode= C2I(c)
    local integer v1= s__IntPtr__staticgetindex(EndGameHook___pGameWar3 + 8)
    local integer v2= EndGameHook___sub_8BED60(v1)
    local integer index= EndGameHook___sub_8CB7D0(v2 , pCode)
    return index
  endfunction 

  function EndGameHook___MakeMemoryBlockExecutable takes nothing returns nothing
    call EndGameHook___VirtualProtect(s__EndGameHook___MemoryBlock_pHead , s__EndGameHook___MemoryBlock_size , 0x40 , s__EndGameHook___MemoryBlock_pHead)
    set EndGameHook___MemoryBlockOldProtect=s__IntPtr__staticgetindex(s__EndGameHook___MemoryBlock_pHead)
  endfunction 


    function s__EndGameHook___AssemblyWriter_create takes integer pHead returns integer
      local integer this= s__EndGameHook___AssemblyWriter__allocate()
      set s__EndGameHook___AssemblyWriter_pCursor[this]=pHead
      return this
    endfunction 

    function s__EndGameHook___AssemblyWriter_malloc takes integer this,integer size returns integer
      local integer pBlock= s__EndGameHook___AssemblyWriter_pCursor[this]
      set s__EndGameHook___AssemblyWriter_pCursor[this]=s__EndGameHook___AssemblyWriter_pCursor[this] + size
      return pBlock
    endfunction 

    function s__EndGameHook___AssemblyWriter_writePadding takes integer this,integer size returns nothing
      local integer i= 0
      loop
        exitwhen i >= size
        call s__BytePtr__staticsetindex(s__EndGameHook___AssemblyWriter_pCursor[this], 0xCC)
        set s__EndGameHook___AssemblyWriter_pCursor[this]=s__EndGameHook___AssemblyWriter_pCursor[this] + 1
        set i=i + 1
      endloop
    endfunction 

    function s__EndGameHook___AssemblyWriter_writeByte takes integer this,integer byteValue returns nothing
      call s__BytePtr__staticsetindex(s__EndGameHook___AssemblyWriter_pCursor[this], byteValue)
      set s__EndGameHook___AssemblyWriter_pCursor[this]=s__EndGameHook___AssemblyWriter_pCursor[this] + 1
    endfunction 

    function s__EndGameHook___AssemblyWriter_writeInt takes integer this,integer intValue returns nothing
      call s__IntPtr__staticsetindex(s__EndGameHook___AssemblyWriter_pCursor[this], intValue)
      set s__EndGameHook___AssemblyWriter_pCursor[this]=s__EndGameHook___AssemblyWriter_pCursor[this] + 4
    endfunction 

    function s__EndGameHook___AssemblyWriter_writeOffset takes integer this,integer address returns nothing
      call s__IntPtr__staticsetindex(s__EndGameHook___AssemblyWriter_pCursor[this], address - ( s__EndGameHook___AssemblyWriter_pCursor[this] + 4 ))
      set s__EndGameHook___AssemblyWriter_pCursor[this]=s__EndGameHook___AssemblyWriter_pCursor[this] + 4
    endfunction 

  function EndGameHook___InitMemoryBlock takes nothing returns nothing
    local integer asm
    local integer headerSize

    call EndGameHook___MakeMemoryBlockExecutable()

    set asm=s__EndGameHook___AssemblyWriter_create(s__EndGameHook___MemoryBlock_pHead)

    set EndGameHook___pDummy1=s__EndGameHook___AssemblyWriter_malloc(asm,4)
    set EndGameHook___pDummy2=s__EndGameHook___AssemblyWriter_malloc(asm,4)

    call s__EndGameHook___AssemblyWriter_writePadding(asm,8)

    // [callback function]  
    //  void callback() {  
    //      int eax;  
    //      int ebx;  
    //      ebx = 0x00;  // callback code  
    //      if (ebx != 0) {  
    //          eax = sub_2135F0(pGameWar3)  // Get GameState  
    //          eax = sub_2B97A0(eax, ebx)   // Get JassFunc  
    //          sub_22ABF0(eax, pDummy1, pDummy2, 1, 0, 0)  // Execute Func  
    //          if (*pDummy2) {  
    //              sub_8C2260(*pDummy2)  
    //          }  
    //      }  
    //  }  
    set EndGameHook___pCallback=s__EndGameHook___AssemblyWriter_pCursor[asm]
    // Function header  
    call s__EndGameHook___AssemblyWriter_writeByte(asm,0x55) // push ebp  
    call s__EndGameHook___AssemblyWriter_writeByte(asm,0x8B) // mov ebp, esp  
    call s__EndGameHook___AssemblyWriter_writeByte(asm,0xEC) // -  
    call s__EndGameHook___AssemblyWriter_writeByte(asm,0x53) // push ebx  
    call s__EndGameHook___AssemblyWriter_writeByte(asm,0x51) // push ecx  
    call s__EndGameHook___AssemblyWriter_writeByte(asm,0x52) // push edx  

    // Check callback is not 0  
    set EndGameHook___pCallbackCodeIndex=s__EndGameHook___AssemblyWriter_pCursor[asm] + 1
    call s__EndGameHook___AssemblyWriter_writeByte(asm,0xBB) // mov ebx, 0x00000000  
    call s__EndGameHook___AssemblyWriter_writeInt(asm,0x00000000) // -  
    call s__EndGameHook___AssemblyWriter_writeByte(asm,0x85) // test ebx, ebx  
    call s__EndGameHook___AssemblyWriter_writeByte(asm,0xDB) // -  
    call s__EndGameHook___AssemblyWriter_writeByte(asm,0x74) // je +60  
    call s__EndGameHook___AssemblyWriter_writeByte(asm,60) // -  

    // Get GameState  
    call s__EndGameHook___AssemblyWriter_writeByte(asm,0xB9) // mov ecx, pGameWar3  
    call s__EndGameHook___AssemblyWriter_writeInt(asm,EndGameHook___pGameWar3) // -  
    call s__EndGameHook___AssemblyWriter_writeByte(asm,0xE8) // call sub_2135F0  
    call s__EndGameHook___AssemblyWriter_writeOffset(asm,pGameDll + 0x2135F0) // -  

    // Get JassFunc  
    call s__EndGameHook___AssemblyWriter_writeByte(asm,0x53) // push ebx  
    call s__EndGameHook___AssemblyWriter_writeByte(asm,0x8B) // mov ecx, eax  
    call s__EndGameHook___AssemblyWriter_writeByte(asm,0xC8) // -  
    call s__EndGameHook___AssemblyWriter_writeByte(asm,0xE8) // call sub_2B97A0  
    call s__EndGameHook___AssemblyWriter_writeOffset(asm,pGameDll + 0x2B97A0) // -  

    // Execute JassFunc  
    call s__EndGameHook___AssemblyWriter_writeByte(asm,0x8B) // mov ecx, eax  
    call s__EndGameHook___AssemblyWriter_writeByte(asm,0xC8) // -  
    call s__EndGameHook___AssemblyWriter_writeByte(asm,0x6A) // push 0  
    call s__EndGameHook___AssemblyWriter_writeByte(asm,0x00) // -  
    call s__EndGameHook___AssemblyWriter_writeByte(asm,0x6A) // push 0  
    call s__EndGameHook___AssemblyWriter_writeByte(asm,0x00) // -  
    call s__EndGameHook___AssemblyWriter_writeByte(asm,0x6A) // push 1  
    call s__EndGameHook___AssemblyWriter_writeByte(asm,0x01) // -  
    call s__EndGameHook___AssemblyWriter_writeByte(asm,0x68) // push pDummy2  
    call s__EndGameHook___AssemblyWriter_writeInt(asm,EndGameHook___pDummy2) // -  
    call s__EndGameHook___AssemblyWriter_writeByte(asm,0x68) // push pDummy1  
    call s__EndGameHook___AssemblyWriter_writeInt(asm,EndGameHook___pDummy1) // -  
    call s__EndGameHook___AssemblyWriter_writeByte(asm,0xE8) // call sub_22ABF0  
    call s__EndGameHook___AssemblyWriter_writeOffset(asm,pGameDll + 0x22ABF0) // -  

    // Check dummy2 is not 0  
    call s__EndGameHook___AssemblyWriter_writeByte(asm,0xA1) // mov eax, [pDummy2]  
    call s__EndGameHook___AssemblyWriter_writeInt(asm,EndGameHook___pDummy2) // -  
    call s__EndGameHook___AssemblyWriter_writeByte(asm,0x85) // test eax, eax  
    call s__EndGameHook___AssemblyWriter_writeByte(asm,0xC0) // -  
    call s__EndGameHook___AssemblyWriter_writeByte(asm,0x74) // je +10  
    call s__EndGameHook___AssemblyWriter_writeByte(asm,10) // -  

    // Call sub_8C2260(dummy2)  
    call s__EndGameHook___AssemblyWriter_writeByte(asm,0xB9) // mov ecx, [pDummy2]  
    call s__EndGameHook___AssemblyWriter_writeInt(asm,EndGameHook___pDummy2) // -  
    call s__EndGameHook___AssemblyWriter_writeByte(asm,0xE8) // call sub_8C2260  
    call s__EndGameHook___AssemblyWriter_writeOffset(asm,pGameDll + 0x8C2260) // -  

    // Function footer  
    call s__EndGameHook___AssemblyWriter_writeByte(asm,0x5A) // pop edx  
    call s__EndGameHook___AssemblyWriter_writeByte(asm,0x59) // pop ecx  
    call s__EndGameHook___AssemblyWriter_writeByte(asm,0x5B) // pop ebx  

    call s__EndGameHook___AssemblyWriter_writeByte(asm,0x8B) // mov esp, ebp  
    call s__EndGameHook___AssemblyWriter_writeByte(asm,0xE5) // -  
    call s__EndGameHook___AssemblyWriter_writeByte(asm,0x5D) // pop ebp  
    call s__EndGameHook___AssemblyWriter_writeByte(asm,0xC3) // ret  

    call s__EndGameHook___AssemblyWriter_writePadding(asm,8)

    // [trampoline block]  
    set EndGameHook___pTrampoline=s__EndGameHook___AssemblyWriter_pCursor[asm]
    // Function header  
    call s__EndGameHook___AssemblyWriter_writeByte(asm,0x55) // push ebp  
    call s__EndGameHook___AssemblyWriter_writeByte(asm,0x8B) // mov ebp, esp  
    call s__EndGameHook___AssemblyWriter_writeByte(asm,0xEC) // -  
    call s__EndGameHook___AssemblyWriter_writeByte(asm,0x83) // sub esp, 08  
    call s__EndGameHook___AssemblyWriter_writeByte(asm,0xEC) // -  
    call s__EndGameHook___AssemblyWriter_writeByte(asm,0x08) // -  

    set headerSize=s__EndGameHook___AssemblyWriter_pCursor[asm] - EndGameHook___pTrampoline

    call s__EndGameHook___AssemblyWriter_writeByte(asm,0xE8) // call pCallback  
    call s__EndGameHook___AssemblyWriter_writeOffset(asm,EndGameHook___pCallback) // -  

    call s__EndGameHook___AssemblyWriter_writeByte(asm,0xE9) // jmp pReturn  
    call s__EndGameHook___AssemblyWriter_writeOffset(asm,EndGameHook___pSub_35FDF0 + headerSize) // -  

    call s__EndGameHook___AssemblyWriter_writePadding(asm,8)

    // Initialize globals  
    call s__IntPtr__staticsetindex(EndGameHook___pDummy1, 0)
    call s__IntPtr__staticsetindex(EndGameHook___pDummy2, 0)

    call s__EndGameHook___AssemblyWriter_deallocate(asm)
  endfunction 

  function EndGameHook___IsHookedAlready takes nothing returns boolean
    return s__IntPtr__staticgetindex(EndGameHook___pSub_35FDF0) != 0x83EC8B55
  endfunction 

  function EndGameHook___HookEndGame takes nothing returns nothing
    local integer asm

    // Backup sub_35FDF0  
    set EndGameHook___originalSub_35FDF0[0]=s__IntPtr__getindex((EndGameHook___pSub_35FDF0),0)
    set EndGameHook___originalSub_35FDF0[1]=s__IntPtr__getindex((EndGameHook___pSub_35FDF0),1)

    // Inject trampoline into sub_35FDF0  
    set asm=s__EndGameHook___AssemblyWriter_create(EndGameHook___pSub_35FDF0)
    call s__EndGameHook___AssemblyWriter_writeByte(asm,0xE9) // jmp pTrampoline  
    call s__EndGameHook___AssemblyWriter_writeOffset(asm,EndGameHook___pTrampoline) // -  
    call s__EndGameHook___AssemblyWriter_writeByte(asm,0x90) // nop  
    call s__EndGameHook___AssemblyWriter_deallocate(asm)
  endfunction 

  function EndGameHook___UnhookEndGame takes nothing returns nothing
    // Restore sub_35FDF0  
    call s__IntPtr__setindex((EndGameHook___pSub_35FDF0),0, EndGameHook___originalSub_35FDF0[0])
    call s__IntPtr__setindex((EndGameHook___pSub_35FDF0),1, EndGameHook___originalSub_35FDF0[1])
  endfunction 

  function EndGameHook___SetEndGameHookCallback takes code func returns nothing
    call s__IntPtr__staticsetindex(EndGameHook___pCallbackCodeIndex, EndGameHook___GetCodeIndex(func))
  endfunction 

  function EndGameHook___Callback takes nothing returns nothing
    call EndGameHook___UnhookEndGame()

    if ( EndGameHook___userCallbackName != null ) then
      call ExecuteFunc(EndGameHook___userCallbackName)
    elseif ( EndGameHook___userCallbackCode != null ) then
      call ForForce(GetForceOfPlayer(Player(0)), EndGameHook___userCallbackCode)
    endif
  endfunction 

  function EndGameHook___InitHook takes nothing returns nothing
    if EndGameHook___IsHookedAlready() then
       call JNWriteLog("[EndGameHook] The function is hooked already.")
      return
    endif

    call EndGameHook___InitMemoryBlock()
    call EndGameHook___HookEndGame()
  endfunction 

  function EndGameHook___Init takes nothing returns nothing
    set EndGameHook___pGameWar3=EndGameHook___GetGameWar3()
    set EndGameHook___pSub_35FDF0=pGameDll + 0x35FDF0
    call EndGameHook___InitHook()
    call EndGameHook___SetEndGameHookCallback(function EndGameHook___Callback)
  endfunction 

// scope EndGameHook ends

// END IMPORT OF System\MemoryInterferencer\EndGameHook.j
// BEGIN IMPORT OF System\MemoryInterferencer\UnitNameChanger.j
// ! import "JNCommon.j"



// requires MemoryLib, Typecast
// 영웅 이름 커스텀 설정
// scope UnitNameChanger begins


  function UnitNameChanger___sub_2217A0 takes integer this returns integer
    local integer pFunc= pGameDll + 0x2217A0
    call SaveStr(JNProc_ht, JNProc_key, 0, "(I)I")
    call SaveInteger(JNProc_ht, JNProc_key, 1, this)
    if ( JNProcCall(JNProc__thiscall, pFunc, JNProc_ht) ) then
      return LoadInteger(JNProc_ht, JNProc_key, 0)
    endif
    return 0
  endfunction
  
  function UnitNameChanger___sub_378720 takes integer this returns integer
    local integer pFunc= pGameDll + 0x378720
    call SaveStr(JNProc_ht, JNProc_key, 0, "(I)I")
    call SaveInteger(JNProc_ht, JNProc_key, 1, this)
    if ( JNProcCall(JNProc__thiscall, pFunc, JNProc_ht) ) then
      return LoadInteger(JNProc_ht, JNProc_key, 0)
    endif
    return 0
  endfunction
  
  // sub_3782B0의 변형
  function UnitNameChanger___GetObjectNamePtr takes integer rawcode returns integer
    local integer a1= rawcode
    local integer a2= 0
    local integer result
    local integer v3
    local integer v4
    local integer v5
    local integer v6

    set v3=UnitNameChanger___sub_378720(a1)
    if ( v3 == 0 ) then
      return 0
    endif
    set v4=s__IntPtr__staticgetindex(v3 + 0x28)
    if ( v4 == 0 ) then
      return 0
    endif
    set v5=s__IntPtr__staticgetindex(v3 + 0x2C)
    set v6=v4 - 1
    if ( v6 < a2 ) then
      set a2=v6
    endif
    set result=s__PtrPtr__staticgetindex(v5 + 4 * a2)

    return result
  endfunction
  
  // sub_376CA0의 변형
  function UnitNameChanger___GetHeroTypeProperNamePtr takes integer heroTypeId,integer index returns integer
    local integer pUnitTypeData= UnitNameChanger___sub_378720(heroTypeId)
    local integer nHeroNames= s__IntPtr__staticgetindex(pUnitTypeData + 0xF4)
    local integer pHeroNames= s__PtrPtr__staticgetindex(pUnitTypeData + 0xF8)

    if ( index >= 0 and index < nHeroNames ) then
      return s__PtrPtr__getindex(pHeroNames,index)
    else
      return 0
    endif
  endfunction

  function UnitNameChanger___GetHeroTypeProperNamesSize takes integer heroTypeId returns integer
    local integer pUnitTypeData= UnitNameChanger___sub_378720(heroTypeId)
    local integer nHeroNames= s__IntPtr__staticgetindex(pUnitTypeData + 0xF4)
    return nHeroNames
  endfunction



  
  function SetObjectName takes integer rawcode,string newName returns nothing
    local integer pName= UnitNameChanger___GetObjectNamePtr(rawcode)
    call JNMemorySetString(pName, newName)
  endfunction

  
  function SetUnitTypeName takes integer unitTypeId,string newName returns nothing
    call SetObjectName(unitTypeId , newName)
  endfunction

  
  function GetHeroProperNameIndex takes unit whichHero returns integer
    local integer pUnit= UnitNameChanger___sub_2217A0(GetHandleId(whichHero))
    local integer pAbilityHero= s__PtrPtr__staticgetindex(pUnit + 0x1F0)
    local integer index= BitAnd(s__IntPtr__staticgetindex(pAbilityHero + 0xE8), 0xFFFF)
    local integer nHeroNames= UnitNameChanger___GetHeroTypeProperNamesSize(GetUnitTypeId(whichHero))

    if ( nHeroNames > 0 ) then
      return ModuloInteger(index, nHeroNames)
    else
      return 0
    endif
  endfunction

  
  function SetHeroProperNameIndex takes unit whichHero,integer index returns nothing
    local integer pUnit= UnitNameChanger___sub_2217A0(GetHandleId(whichHero))
    local integer pAbilityHero= s__PtrPtr__staticgetindex(pUnit + 0x1F0)
    local integer nHeroNames= UnitNameChanger___GetHeroTypeProperNamesSize(GetUnitTypeId(whichHero))
    local integer hiBits
    local integer loBits

    if ( nHeroNames > 0 ) then
      set hiBits=BitAnd(s__IntPtr__staticgetindex(pAbilityHero + 0xE8), 0xFFFF0000)
      set loBits=ModuloInteger(index, nHeroNames)
      call s__IntPtr__staticsetindex(pAbilityHero + 0xE8, BitOr(hiBits, loBits))
    endif
  endfunction

  
  function SetHeroTypeProperName takes integer heroTypeId,integer index,string newName returns nothing
    local integer pName= UnitNameChanger___GetHeroTypeProperNamePtr(heroTypeId , index)
    if ( pName != 0 ) then
      call JNMemorySetString(pName, newName)
    endif
  endfunction

  
  function GetHeroTypeProperName takes integer heroTypeId,integer index returns string
    local integer pName= UnitNameChanger___GetHeroTypeProperNamePtr(heroTypeId , index)
    if ( pName != 0 ) then
      return JNMemoryGetString(pName, 0)
    else
      return null
    endif
  endfunction

  
  function SetHeroProperName takes unit whichHero,string newName returns nothing
    local integer nameIndex= GetHeroProperNameIndex(whichHero)
    call SetHeroTypeProperName(GetUnitTypeId(whichHero) , nameIndex , newName)
  endfunction
// scope UnitNameChanger ends

// END IMPORT OF System\MemoryInterferencer\UnitNameChanger.j

// BEGIN IMPORT OF System\Frames\MainFrame.j
// scope MainFrame begins
    
    function MainFrame___NoSaveNoTime takes nothing returns nothing
     local integer Relative= 0
      call DestroyTrigger(GetTriggeringTrigger())
      //일시 정지 버튼 비활성화 & 숨김
      call DzFrameSetEnable(DzFrameFindByName("PauseButton", 0), false)
      call DzFrameShow(DzFrameFindByName("PauseButton", 0), false)
      
      //게임 저장 버튼 비활성화
      call DzFrameSetEnable(DzFrameFindByName("SaveGameButton", 0), false)
      call DzFrameSetText(DzFrameFindByName("SaveGameButtonText", 0), "게임 저장 불가")
      
      call DzFrameSetEnable(DzFrameFindByName("LoadGameButton", 0), false)
      call DzFrameSetText(DzFrameFindByName("LoadGameButtonText", 0), "로드 또한 불가")
      
      call DzFrameSetEnable(DzFrameFindByName("SaveGameSaveButton", 0), false)
      call DzFrameShow(DzFrameFindByName("SaveGameSaveButton", 0), false)
      call DzFrameSetEnable(DzFrameFindByName("OverwriteOverwriteButton", 0), false)
      call DzFrameSetEnable(DzFrameFindByName("SaveGameFileEditBox", 0), false)
      call DzFrameShow(DzFrameFindByName("SaveGameFileEditBox", 0), false)
    endfunction
    function MainFrame___Exit takes nothing returns nothing
      call DialogDisplay(GetLocalPlayer(), MainFrame___NoSaveDialog, false)
      call DestroyTimer(GetExpiredTimer())
    endfunction
    function MainFrame___StopSave takes nothing returns nothing
      call DialogDisplay(GetLocalPlayer(), MainFrame___NoSaveDialog, true)
      call TimerStart(CreateTimer(), 0., false, function MainFrame___Exit)
    endfunction
    function MainFrame___StopLoad takes nothing returns nothing
      call MsgAll(GetPlayerName(Player(7 - 8)))
    endfunction
    
    function MainFrame___RemoveFrame takes integer frameID returns nothing
      call DzFrameClearAllPoints(frameID)
      call DzFrameSetAbsolutePoint(frameID, JN_FRAMEPOINT_TOPRIGHT, 0, 0)
    endfunction
    function MainFrame_Get takes integer Frame returns integer
      call DzFrameClearAllPoints(Frame)
      return Frame
    endfunction
    
    function MainFrame___Init takes nothing returns nothing
     local integer i= 0
     local trigger trg
      
      
      call DzFrameHideInterface()
    
      
      call DzEnableWideScreen(true)

      
      call DzFrameEditBlackBorders(0, 0)

      
      call MainFrame___RemoveFrame(DzFrameGetUpperButtonBarButton(0))
      call MainFrame___RemoveFrame(DzFrameGetUpperButtonBarButton(1))
      call MainFrame___RemoveFrame(DzFrameGetUpperButtonBarButton(2))
      
      set i=MainFrame_Get(DzFrameGetUpperButtonBarButton(3))
      call DzFrameSetSize(i, .022, .024)
      call DzFrameSetAbsolutePoint(i, JN_FRAMEPOINT_BOTTOMLEFT, .2, - .004)

       
      set i=MainFrame_Get(DzFrameGetMinimap())
      call DzFrameSetAbsolutePoint(i, JN_FRAMEPOINT_BOTTOMLEFT, 0.7, 0.45)
      call DzFrameSetAbsolutePoint(i, JN_FRAMEPOINT_TOPRIGHT, 0.78, 0.55)
      call DzFrameShow(i, false)
      
      
      set i=MainFrame_Get(DzFrameGetChatMessage())
      call DzFrameSetAbsolutePoint(i, JN_FRAMEPOINT_BOTTOMLEFT, 0., 0.02)
      call DzFrameSetAbsolutePoint(i, JN_FRAMEPOINT_TOPRIGHT, 0.2, 0.15)
      
      
      call DzFrameSetAlpha(JNMemoryGetInteger(JNMemoryGetInteger(JNGetModuleHandle("Game.dll") + 0xCB1B9C) + 0x20), 0)
      
      
      set i=MainFrame_Get(JNMemoryGetInteger(JNGetModuleHandle("Game.dll") + 0xCB1B9C))
      call DzFrameSetAllPoints(i, JNMemoryGetInteger(JNMemoryGetInteger(JNGetModuleHandle("Game.dll") + 0xCB1B9C) + 0x20))
      call DzFrameSetAbsolutePoint(i, JN_FRAMEPOINT_BOTTOMLEFT, 0., 0.)
      call DzFrameSetAbsolutePoint(i, JN_FRAMEPOINT_TOPRIGHT, .2, .02)
      call DzFrameSetAlpha(i, 255)
      
      
      set i=MainFrame_Get(DzFrameGetUnitMessage())
      call DzFrameSetAbsolutePoint(i, JN_FRAMEPOINT_BOTTOMLEFT, 0., .135)
      call DzFrameSetAbsolutePoint(i, JN_FRAMEPOINT_TOPRIGHT, .3, .435)

      
      set i=MainFrame_Get(DzFrameGetPortrait())
      call DzFrameSetSize(i, 0.001, 0.001)
      call DzFrameSetAbsolutePoint(i, JN_FRAMEPOINT_BOTTOM, .25, 0.)
      // call BJDebugMsg("Portrait : " + I2S(i))
      // call DzFrameSetAbsolutePoint(i, JN_FRAMEPOINT_CENTER, .25, .225)
      // call RemoveFrame(DzFrameGetPortrait())

      
      call DzLoadToc("ui\\command_ui.toc")

      
      set trg=CreateTrigger()
      call TriggerRegisterTimerEvent(trg, 0., false)
      call TriggerAddAction(trg, function MainFrame___NoSaveNoTime)
    
      set trg=CreateTrigger()
      call TriggerRegisterGameEvent(trg, EVENT_GAME_SAVE)
      call TriggerAddAction(trg, function MainFrame___StopSave)
      
      set trg=CreateTrigger()
      call TriggerRegisterGameEvent(trg, EVENT_GAME_LOADED)
      call TriggerAddAction(trg, function MainFrame___StopLoad)
      set trg=null

      
      // FPS 우측 위로 이동
      call DzFrameSetAbsolutePoint(MainFrame_Get(DzSimpleFrameFindByName("ResourceBarFrame", 0)), JN_FRAMEPOINT_BOTTOMLEFT, .82, .62)
      
      // 이하 전체 프레임에 속해있기에 따로 제거하지 않음.
//#       static if false then
//#         
//#         
//#         
//#         set i = 0
//#         loop
//#           call DzFrameSetAbsolutePoint(DzFrameGetHeroBarButton(i), JN_FRAMEPOINT_TOPRIGHT, 0, 0)
//#           call DzFrameSetAbsolutePoint(DzFrameGetHeroHPBar(i)    , JN_FRAMEPOINT_TOPRIGHT, 0, 0)
//#           call DzFrameSetAbsolutePoint(DzFrameGetHeroManaBar(i)  , JN_FRAMEPOINT_TOPRIGHT, 0, 0)
//#           
//#           
//#           if ( i <= 4 ) then
//#             call DzFrameSetAbsolutePoint(DzFrameGetMinimapButton(i), JN_FRAMEPOINT_TOPRIGHT, 0, 0)
//#             
//#             
//#             if ( i <= 3 ) then
//#               call DzFrameSetAbsolutePoint(DzFrameGetCommandBarButton(0, i), JN_FRAMEPOINT_TOPRIGHT, 0., 0.)
//#               call DzFrameSetAbsolutePoint(DzFrameGetCommandBarButton(1, i), JN_FRAMEPOINT_TOPRIGHT, 0., 0.)
//#               call DzFrameSetAbsolutePoint(DzFrameGetCommandBarButton(2, i), JN_FRAMEPOINT_TOPRIGHT, 0., 0.)
//#             endif
//#           endif
//#           
//#           exitwhen i >= 5
//#           set i = i + 1
//#         endloop
//#         
//#          
//#         
//# 
//#         
//#         call MainFrame___RemoveFrame(DzSimpleFrameFindByName("SimpleInfoPanelUnitDetail", 0))
//#         
//#         
//#         call MainFrame___RemoveFrame(DzFrameGetParent(DzSimpleFrameFindByName("SimpleInfoPanelUnitDetail", 0)))
//#         
//#         // call MsgAll("setted :: " + I2S(DzFrameGetPortrait()))
//#     
//# 
//#         
//#         
//#         //set Relative = DzSimpleFrameFindByName("SimpleInfoPanelUnitDetail", 0)
//#         //call DzFrameClearAllPoints(Relative)
//#         //call DzFrameSetAbsolutePoint(Relative, JN_FRAMEPOINT_CENTER, 0.12, 0.55)
//#         
//#         //call DzFrameSetPoint(DzCreateFrame("SI_Template", Frame_Main, 0), JN_FRAMEPOINT_CENTER, Relative, JN_FRAMEPOINT_CENTER, -0.085, -0.025)
//#         //call DzFrameSetTexture(DzFrameFindByName("SI_Template", 0), "ReplaceableTextures\\CommandButtons\\BTNSteelMelee.blp", 0)
//#         
//#         //call JNMemorySetReal(JNMemoryGetInteger(DzFrameGetTooltip() + 0x28) + 0x10, 0.134)
//#       endif
    endfunction
    
// scope MainFrame ends
// END IMPORT OF System\Frames\MainFrame.j
// BEGIN IMPORT OF System\Frames\UnitDetailFrame.j
// scope UnitDetailFrame begins
    function UnitDetailFrame___Init takes nothing returns nothing
     local integer i= 0
      
      set Frame_Main=DzCreateFrameByTagName("SPRITE", "", DzGetGameUI(), "", 0)
      call DzFrameSetAbsolutePoint(Frame_Main, JN_FRAMEPOINT_TOPRIGHT, 0., 0.)
      set Frame_Sub=DzCreateFrameByTagName("SPRITE", "", DzGetGameUI(), "", 0)
      call DzFrameSetAbsolutePoint(Frame_Sub, JN_FRAMEPOINT_TOPRIGHT, 0., 0.)
      
      
      set i=DzCreateFrameByTagName("TEXT", "", Frame_Sub, "", 0)
      call DzFrameSetAbsolutePoint(i, JN_FRAMEPOINT_CENTER, .25, .07)
      call DzFrameSetText(i, GetPlayerName(GetLocalPlayer()))
      
      
      set i=MainFrame_Get(DzSimpleFrameFindByName("SimpleHeroLevelBar", 0))
      call DzFrameSetAbsolutePoint(i, JN_FRAMEPOINT_BOTTOMLEFT, .3, .001)
      call DzFrameSetAbsolutePoint(i, JN_FRAMEPOINT_TOPRIGHT, .62, .017)
      
      
      set i=MainFrame_Get(DzSimpleFontStringFindByName("SimpleNameValue", 0))
      call DzFrameSetAbsolutePoint(i, JN_FRAMEPOINT_CENTER, .25, .055)
      
      
      set i=MainFrame_Get(DzSimpleFontStringFindByName("SimpleClassValue", 0))
      call DzFrameSetAbsolutePoint(i, JN_FRAMEPOINT_CENTER, .25, .040)
      
      
      set i=MainFrame_Get(DzSimpleFrameFindByName("SimpleProgressIndicator", 0))
      call DzFrameSetAbsolutePoint(i, JN_FRAMEPOINT_CENTER, .25, .035)
      
      
      // 초기에 설정 in MainFrame.j
      // HP & MP - 특수 설정 in Select.j -> PortraitEditor.j
      
      call DzFrameShow(Frame_Main, false)

      // call ClearFrameAllPoints(GetPortraitButtonHPText())
      // call SetFramePoint(GetPortraitButtonHPText(), JN_FRAMEPOINT_CENTER, GetPortraitButtonManaText(), JN_FRAMEPOINT_CENTER, 0., 0.1)
    endfunction
// scope UnitDetailFrame ends
// END IMPORT OF System\Frames\UnitDetailFrame.j
// BEGIN IMPORT OF System\Frames\SkillTree.j
// scope SkillTree begins
    function SkillTree___f2I takes integer f returns integer
      return s__EMenus_GetSubTypeId(f)
    endfunction
    function SkillTree___MaxRow3 takes integer kor,integer eng,integer space,boolean isColored returns real
      if ( isColored ) then
      return .0222 + kor * .01 + ( eng - 9 ) * .00735 + space * .0033
      else
      return .0222 + kor * .01 + eng * .00735 + space * .0033
      endif
    endfunction
    function SkillTree___MaxRow takes real title,string s,integer i2 returns real
      local string temp_s
      local real return_x= 0.07

      // [가-힣] : 한글
      // \w, [a-zA-Z_0-9] : 영문자, 숫자, 밑줄
      // [\s\p{P}] : \s : 공백문자, \p{P} : 문장 부호
      loop
        set temp_s=JNStringSplit(s, "\n", i2)
        // set return_x = RMaxBJ(return_x, MaxRow2(JNStringLength(temp_s), JNStringCount(temp_s, " ")))
        // call BJDebugMsg("MaxRow: " + I2S(JNStringLength(temp_s)) + ", " + I2S(JNStringCount(temp_s, " ")) + ", " + I2S(JNStringCount(temp_s, "[가-힣]")) + ", " + I2S(JNStringCount(temp_s, "[a-zA-Z_0-9]")))
        set return_x=RMaxBJ(return_x, SkillTree___MaxRow3(JNStringCount(temp_s, "[가-힣]") , JNStringCount(temp_s, "[a-zA-Z_0-9]") , JNStringCount(temp_s, " ") , JNStringContains(temp_s, "|c")))
        exitwhen i2 <= 1
        set i2=i2 - 1
      endloop
      set temp_s=null
      return RMaxBJ(title, return_x)
    endfunction
    constant function SkillTree___MaxHeight takes integer count returns real
      return count * .01
    endfunction

    function SkillTree_MakeLineX takes integer base,real x,real y,real size returns nothing
      set SkillTree___SkillTreeNow=DzCreateFrameByTagName("BACKDROP", "", base, "", 0)
      call DzFrameSetTexture(SkillTree___SkillTreeNow, "ReplaceableTextures\\TeamColor\\TeamColor04.blp", 0)
      call DzFrameSetPoint(SkillTree___SkillTreeNow, JN_FRAMEPOINT_LEFT, base, JN_FRAMEPOINT_TOPLEFT, x, y)
      call DzFrameSetSize(SkillTree___SkillTreeNow, size, 0.0005)
    endfunction
    function SkillTree_MakeLineY takes integer base,real x,real y,real size returns nothing
      set SkillTree___SkillTreeNow=DzCreateFrameByTagName("BACKDROP", "", base, "", 0)
      call DzFrameSetTexture(SkillTree___SkillTreeNow, "ReplaceableTextures\\TeamColor\\TeamColor04.blp", 0)
      call DzFrameSetPoint(SkillTree___SkillTreeNow, JN_FRAMEPOINT_TOP, base, JN_FRAMEPOINT_TOPLEFT, x, y)
      call DzFrameSetPoint(SkillTree___SkillTreeNow, JN_FRAMEPOINT_LEFT, base, JN_FRAMEPOINT_TOPLEFT, x, y)
      call DzFrameSetSize(SkillTree___SkillTreeNow, .0005, size)
    endfunction

    function SkillTree___ChangeSmallLevelFrame takes integer playerId,integer frameNumber,integer level returns nothing
      if ( 0 < level and GetLocalPlayer() == Player(playerId - 1) ) then
        call DzFrameShow(LoadInteger(hash, StringHash("Tree_HotkeyBase"), frameNumber), true)
        call DzFrameSetText(LoadInteger(hash, LoadInteger(hash, StringHash("Tree_HotkeyBase"), frameNumber), StringHash("Tree_Hotkey")), I2S(level))
      endif
    endfunction
    function SkillTree___MakeSmallLevelFrame takes integer frame returns nothing
      local integer HotFrame= DzCreateFrame("CommandButtonHotKeyBackDrop", frame, StringHash("TreeHotkey"))
      local integer HotFrameTxt= DzCreateFrame("CommandButtonHotKeyText", HotFrame, 1)
      call DzFrameSetTexture(HotFrame, "ui\\widgets\\console\\human\\commandbutton\\human-button-lvls-overlay.blp", 0)
      call DzFrameSetPoint(HotFrame, JN_FRAMEPOINT_BOTTOM, frame, JN_FRAMEPOINT_TOP, 0., - 0.008)
      call DzFrameSetSize(HotFrame, 0.015, 0.01)
      call DzFrameSetPoint(HotFrameTxt, JN_FRAMEPOINT_CENTER, HotFrame, JN_FRAMEPOINT_CENTER, 0., 0.)
      call SaveInteger(hash, StringHash("Tree_HotkeyBase"), SkillTree___f2I(frame), frame)
      call SaveInteger(hash, frame, StringHash("Tree_Hotkey"), HotFrameTxt)
      call DzFrameSetText(HotFrameTxt, I2S(GetRandomInt(1, 9)))
      call DzFrameShow(HotFrame, false)
      // call DzFrameSetEnable(HotFrame, false)
    endfunction

    // private function MakeText takes integer i, real x, real y, string contents, real size, boolean center returns integer
    //   set SkillTreeText[i] = DzCreateFrameByTagName("TEXT", "", SkillTreeNow, "", 0)
    //   if ( center ) then
    //     call DzFrameSetPoint(SkillTreeText[i], JN_FRAMEPOINT_CENTER, SkillTreeNow, JN_FRAMEPOINT_TOPLEFT, x, y)
    //   else
    //     call DzFrameSetPoint(SkillTreeText[i], JN_FRAMEPOINT_LEFT, SkillTreeNow, JN_FRAMEPOINT_TOPLEFT, x, y)
    //   endif
    //   if ( size != 0. ) then
    //     call DzFrameSetFont(SkillTreeText[i], "Fonts\\DFHeiMd.ttf", size, 0)
    //   endif
    //   call DzFrameSetText(SkillTreeText[i], contents)
    //   return SkillTreeText[i]
    //   //! Text를 Font 이후에 설정해야 한줄로 잘 표시됨.
    // endfunction
    // private function MakeLink takes integer i, real x, real y, real size, string contents returns nothing
    //   set SkillTreeBackdrop[i] = DzCreateFrameByTagName("BACKDROP", "", SkillTreeNow, "", 0)
    //   call DzFrameSetTexture(SkillTreeBackdrop[i], contents, 0)
    //   call DzFrameSetPoint(SkillTreeBackdrop[i], JN_FRAMEPOINT_BOTTOM, SkillTreeNow, JN_FRAMEPOINT_TOPLEFT, x, y-0.005)
    //   call DzFrameSetSize(SkillTreeBackdrop[i], .005, size+0.01)
    // endfunction
    // private function MakeLinkX takes integer i, real x, real y, real size, string contents returns nothing
    //   set SkillTreeBackdrop[i] = DzCreateFrameByTagName("BACKDROP", "", SkillTreeNow, "", 0)
    //   call DzFrameSetTexture(SkillTreeBackdrop[i], contents, 0)
    //   call DzFrameSetPoint(SkillTreeBackdrop[i], JN_FRAMEPOINT_LEFT, SkillTreeNow, JN_FRAMEPOINT_TOPLEFT, x, y)
    //   call DzFrameSetSize(SkillTreeBackdrop[i], size+.02, 0.005)
    // endfunction
    function SkillTree___SkillTreeSync takes nothing returns nothing
      local player clickedPlayer= DzGetTriggerSyncPlayer()
      local integer syncData= S2I(DzGetTriggerSyncData())
      call MsgAll("플레이어 " + GetPlayerName(clickedPlayer) + ", (스킬트리) 클릭, " + I2S(syncData))
    endfunction
    function SkillTree___SkillTreeClick takes nothing returns nothing
      local integer f= DzGetTriggerUIEventFrame()
      local integer playerId= GetPlayerId(DzGetTriggerUIEventPlayer()) + 1
      local integer clickedNumber= SkillTree___f2I(f)
      // call MsgAll("플레이어 " + GetPlayerName(Player(playerId-1)) + ", "+I2S(EMenus.F2It(f))+"(스킬트리) 클릭, " + I2S(clickedNumber))
      if ( 0 < clickedNumber and GetLocalPlayer() == DzGetTriggerUIEventPlayer() ) then
        call StopSound(gg_snd_BigButtonClick, false, false)
        call StartSound(gg_snd_BigButtonClick)

        call DzFrameShow(SkillTree___TreeExtendFrame, true)
         call DzSyncData("TreeSync", I2S(clickedNumber))
          // => SkillTreeSync()
      endif
    endfunction
    
    function SkillTree___ButtonJustUp takes nothing returns nothing
     local integer f= DzGetTriggerUIEventFrame()
     local integer skillNumber= LoadInteger(hash, StringHash("Menu_TypeSub"), f)
     local string s= s__SkillData_Name[s__SkillData__staticgetindex(skillNumber)]
     local integer need= JNStringCount(DzFrameGetText(SkillTree___TreeChangeableFrame[s__ESkillTree_PopupDetailPoint]), "\n")
     call DzFrameSetAbsolutePoint(SkillTree___TreeExtendFrame, JN_FRAMEPOINT_BOTTOMLEFT, GetFrameMouseX(), GetFrameMouseY())
     call DzFrameShow(SkillTree___TreeExtendFrame, true)
     
      if ( GetLocalPlayer() == DzGetTriggerUIEventPlayer() ) then
        call DzFrameSetText(SkillTree___TreeChangeableFrame[s__ESkillTree_PopupTitle], "|cffffcc00" + s)
        call DzFrameSetAbsolutePoint(SkillTree___TreePopupFrame, JN_FRAMEPOINT_BOTTOMLEFT, GetFrameMouseX(), GetFrameMouseY())
        call DzFrameSetSize(SkillTree___TreePopupFrame, SkillTree___MaxRow(.015 + JNStringLength(s) * .012 - JNStringCount(s, " ") * .008 , DzFrameGetText(SkillTree___TreeChangeableFrame[s__ESkillTree_PopupDetailPoint]) , need), .06 + SkillTree___MaxHeight(need))
        call DzFrameSetPoint(SkillTree___TreeChangeableFrame[s__ESkillTree_PopupDetailCurrentLevel], JN_FRAMEPOINT_TOPLEFT, SkillTree___TreePopupFrame, JN_FRAMEPOINT_TOPLEFT, .01, - DzFrameGetHeight(SkillTree___TreePopupFrame) + .0175)
        call DzFrameShow(SkillTree___TreePopupFrame, true)
      endif
    endfunction
    function SkillTree___ButtonJustDown takes nothing returns nothing
      if ( GetLocalPlayer() == DzGetTriggerUIEventPlayer() ) then
        call DzFrameShow(SkillTree___TreePopupFrame, false)
        call DzFrameShow(SkillTree___TreeExtendFrame, false)
      endif
    endfunction

    function SkillTree___GetMadeText takes integer base,real x,real y,string contents,real size,boolean center returns integer
      set SkillTree___SkillTreeNow=DzCreateFrameByTagName("TEXT", "", base, "", 0)
      if ( center ) then
        call DzFrameSetPoint(SkillTree___SkillTreeNow, JN_FRAMEPOINT_CENTER, base, JN_FRAMEPOINT_TOPLEFT, x, y)
      else
        call DzFrameSetPoint(SkillTree___SkillTreeNow, JN_FRAMEPOINT_LEFT, base, JN_FRAMEPOINT_TOPLEFT, x, y)
      endif
      if ( size != 0. ) then
        call DzFrameSetFont(SkillTree___SkillTreeNow, "Fonts\\DFHeiMd.ttf", size, 0)
      endif
      call DzFrameSetText(SkillTree___SkillTreeNow, contents)
      return SkillTree___SkillTreeNow
    endfunction
    function SkillTree___TreeMainIcon takes integer characterId returns nothing
      local integer loopA= s__TreeMainCoreData_MAX_TREE_SKILL_COUNT[s__TreeMainCoreData__staticgetindex(characterId)]
      local integer lastFrame= 0
      if ( loopA <= 0 ) then
        call MsgAll("오류/스킬트리/스킬아이콘" + I2S(characterId) + "/스킬카운트 0")
        return
      else
        loop
          set SkillTree___TreeMainSkillButtons[loopA]=DzCreateFrameByTagName("BACKDROP", "", SkillTree___SkillTreeNow, "", 0)
          call DzFrameSetPoint(SkillTree___TreeMainSkillButtons[loopA], JN_FRAMEPOINT_CENTER, SkillTree___SkillTreeNow, JN_FRAMEPOINT_TOPLEFT, s___TreeMainCoreData_positionX[s__TreeMainCoreData_positionX[s__TreeMainCoreData__staticgetindex(characterId)]+loopA], s___TreeMainCoreData_positionY[s__TreeMainCoreData_positionY[s__TreeMainCoreData__staticgetindex(characterId)]+loopA])
          call DzFrameSetTexture(SkillTree___TreeMainSkillButtons[loopA], s___TreeMainCoreData_iconPath[s__TreeMainCoreData_iconPath[s__TreeMainCoreData__staticgetindex(characterId)]+s___TreeMainCoreData_SkillNumber[s__TreeMainCoreData_SkillNumber[s__TreeMainCoreData__staticgetindex(characterId)]+loopA]], 0)
          call DzFrameSetSize(SkillTree___TreeMainSkillButtons[loopA], .03, .03)
          call s__EMenus_FrameSaveIDs(SkillTree___TreeMainSkillButtons[loopA] , SKILL_TREE_MAIN , s___TreeMainCoreData_SkillNumber[s__TreeMainCoreData_SkillNumber[s__TreeMainCoreData__staticgetindex(characterId)]+loopA])

          set lastFrame=DzCreateFrameByTagName("BUTTON", "", SkillTree___TreeMainSkillButtons[loopA], "", 0)
          call DzFrameSetAllPoints(lastFrame, SkillTree___TreeMainSkillButtons[loopA])
          call DzFrameSetScriptByCode(lastFrame, JN_FRAMEEVENT_MOUSE_UP, function SkillTree___SkillTreeClick, false)
          call DzFrameSetScriptByCode(lastFrame, JN_FRAMEEVENT_MOUSE_ENTER, function SkillTree___ButtonJustUp, false)
          call DzFrameSetScriptByCode(lastFrame, JN_FRAMEEVENT_MOUSE_LEAVE, function SkillTree___ButtonJustDown, false)
          call SkillTree___MakeSmallLevelFrame(lastFrame)

          exitwhen loopA <= 1
          set loopA=loopA - 1
        endloop
      endif
    endfunction
    function SkillTree___TreeExtendIcon takes integer input,real x,real y,real size,string texture returns nothing
      set SkillTree___TreeChangeableFrame[input]=DzCreateFrameByTagName("BACKDROP", "", SkillTree___TreeExtendFrame, "", 0)
      call DzFrameSetPoint(SkillTree___TreeChangeableFrame[input], JN_FRAMEPOINT_CENTER, SkillTree___TreeExtendFrame, JN_FRAMEPOINT_TOPLEFT, x, y)
      call DzFrameSetTexture(SkillTree___TreeChangeableFrame[input], texture, 0)
      call DzFrameSetSize(SkillTree___TreeChangeableFrame[input], .03, .03)

      set SkillTree___SkillTreeNow=DzCreateFrameByTagName("BUTTON", "", SkillTree___TreeChangeableFrame[input], "", 0)
      call DzFrameSetAllPoints(SkillTree___SkillTreeNow, SkillTree___TreeChangeableFrame[input])
      call DzFrameSetScriptByCode(SkillTree___SkillTreeNow, JN_FRAMEEVENT_MOUSE_UP, function SkillTree___SkillTreeClick, false)
      call DzFrameSetScriptByCode(SkillTree___SkillTreeNow, JN_FRAMEEVENT_MOUSE_ENTER, function SkillTree___ButtonJustUp, false)
      call DzFrameSetScriptByCode(SkillTree___SkillTreeNow, JN_FRAMEEVENT_MOUSE_LEAVE, function SkillTree___ButtonJustDown, false)
      call s__EMenus_FrameSaveIDs(SkillTree___SkillTreeNow , SKILL_TREE_EXTEND , input)
    endfunction
  
    function SkillTree___CreateFrameSkillTreeMain takes nothing returns nothing
      set SkillTree_TreeMainFrame=DzCreateFrameByTagName("BACKDROP", "", DzGetGameUI(), "QuestButtonBaseTemplate", 0)
      call DzFrameSetAbsolutePoint(SkillTree_TreeMainFrame, JN_FRAMEPOINT_TOPLEFT, 0.14, 0.55)
      call DzFrameSetSize(SkillTree_TreeMainFrame, .22, .45)
      call DzFrameSetAlpha(SkillTree_TreeMainFrame, 128)

      call SkillTree_MakeLineY(SkillTree_TreeMainFrame , .06 , - .01 , .43)
      call SkillTree_MakeLineX(SkillTree_TreeMainFrame , .06 , - .04 , .15)
      call SkillTree_MakeLineX(SkillTree_TreeMainFrame , .01 , - .06 , .20)
      call SkillTree_MakeLineY(SkillTree_TreeMainFrame , .11 , - .04 , .02)
      call SkillTree_MakeLineY(SkillTree_TreeMainFrame , .16 , - .04 , .02)
      
      set SkillTree___SkillTreeNow=DzCreateFrameByTagName("BACKDROP", "", SkillTree_TreeMainFrame, "", 0)
      call DzFrameSetAllPoints(SkillTree___SkillTreeNow, SkillTree_TreeMainFrame)
      call DzFrameSetTexture(SkillTree___SkillTreeNow, "SkillTree_Transparency.blp", 0)
      call DzFrameSetAlpha(SkillTree___SkillTreeNow, 204)
  
      set SkillTree___TreeChangeableFrame[s__ESkillTree_MainCharacterName]=SkillTree___GetMadeText(SkillTree_TreeMainFrame , .035 , - .03 , "이치고" , .015 , true)

      call SkillTree___GetMadeText(SkillTree_TreeMainFrame , .135 , - .02 , "스킬트리" , .020 , true)
      call SkillTree___GetMadeText(SkillTree_TreeMainFrame , .085 , - .05 , "[기본]" , 0. , true)
      call SkillTree___GetMadeText(SkillTree_TreeMainFrame , .135 , - .05 , "[핵심]" , 0. , true)
      call SkillTree___GetMadeText(SkillTree_TreeMainFrame , .185 , - .05 , "[변신]" , 0. , true)

      set SkillTree___TreeChangeableFrame[s__ESkillTree_MainTreeTypeLeft]=SkillTree___GetMadeText(SkillTree_TreeMainFrame , .085 , - .07 , "종베기" , .01 , true)
      set SkillTree___TreeChangeableFrame[s__ESkillTree_MainTreeTypeCenter]=SkillTree___GetMadeText(SkillTree_TreeMainFrame , .135 , - .07 , "횡베기" , .01 , true)
      set SkillTree___TreeChangeableFrame[s__ESkillTree_MainTreeTypeRight]=SkillTree___GetMadeText(SkillTree_TreeMainFrame , .185 , - .07 , "찌르기" , .01 , true)

      call SkillTree___GetMadeText(SkillTree_TreeMainFrame , .035 , - .07 , "필요 변신" , .01 , true)
      call SkillTree___GetMadeText(SkillTree_TreeMainFrame , .035 , - .10 , "기본" , 0. , true)
      call SkillTree___GetMadeText(SkillTree_TreeMainFrame , .035 , - .14 , "1단계" , 0. , true)
      call SkillTree___GetMadeText(SkillTree_TreeMainFrame , .035 , - .18 , "2단계" , 0. , true)
      call SkillTree___GetMadeText(SkillTree_TreeMainFrame , .035 , - .22 , "3단계" , 0. , true)
      call SkillTree___GetMadeText(SkillTree_TreeMainFrame , .035 , - .26 , "4단계" , 0. , true)
      call SkillTree___GetMadeText(SkillTree_TreeMainFrame , .035 , - .30 , "5단계" , 0. , true)
      call SkillTree___GetMadeText(SkillTree_TreeMainFrame , .035 , - .34 , "6단계" , 0. , true)
      call SkillTree___GetMadeText(SkillTree_TreeMainFrame , .035 , - .38 , "7단계" , 0. , true)
      call SkillTree___GetMadeText(SkillTree_TreeMainFrame , .035 , - .42 , "8단계" , 0. , true)
      
      call DzFrameShow(SkillTree_TreeMainFrame, false)
      //call MakeText(19, .035, -.46, "9단계", 0., true)

      // call MakeLink(30, .135, -.12, 0., "SkillTree_ActiveLink_Red.blp")
      // call MakeLink(31, .085, -.16, .04, "SkillTree_ActiveLink_Red.blp")
      // call MakeLink(32, .135, -.20, .04, "SkillTree_ActiveLink_Red.blp")

      // call MakeLink(33, .085, -.24, .04, "UI\\Widgets\\Console\\Human\\human-inventory-slotfiller.blp")
      // call MakeLink(34, .135, -.32, .08, "UI\\Widgets\\Console\\Human\\human-inventory-slotfiller.blp")
      // call MakeLink(35, .085, -.36, .08, "UI\\Widgets\\Console\\Human\\human-inventory-slotfiller.blp")
      // call MakeLink(36, .185, -.36, .20, "UI\\Widgets\\Console\\Human\\human-inventory-slotfiller.blp")
      // call MakeLinkX(37,.100, -.38, .05, "UI\\Widgets\\Console\\Human\\human-inventory-slotfiller.blp")
      // call MakeLink(38, .135, -.40, .04, "UI\\Widgets\\Console\\Human\\human-inventory-slotfiller.blp")
    endfunction

    function SkillTree___CreateSkillTreePopupDetails takes integer i,real x,real y,string contents,real size returns nothing
      set SkillTree___TreeChangeableFrame[i]=DzCreateFrameByTagName("TEXT", "", SkillTree___TreePopupFrame, "", 0)
      call DzFrameSetPoint(SkillTree___TreeChangeableFrame[i], JN_FRAMEPOINT_TOPLEFT, SkillTree___TreePopupFrame, JN_FRAMEPOINT_TOPLEFT, x, y)
      call DzFrameSetText(SkillTree___TreeChangeableFrame[i], contents)
      call DzFrameSetFont(SkillTree___TreeChangeableFrame[i], "Fonts\\DFHeiMd.ttf", size, 0)
    endfunction
    function SkillTree___CreateSkillTreePopup takes nothing returns nothing
      set SkillTree___TreePopupFrame=DzCreateFrameByTagName("BACKDROP", "", SkillTree_TreeMainFrame, "QuestButtonBaseTemplate", 0)
      call DzFrameSetAbsolutePoint(SkillTree___TreePopupFrame, JN_FRAMEPOINT_BOTTOMLEFT, 0.14, 0.55)
      call DzFrameSetSize(SkillTree___TreePopupFrame, .07, .06)
      call SkillTree___CreateSkillTreePopupDetails(s__ESkillTree_PopupTitle , .01 , - .010 , "|cffffcc00세로베기|r" , 0.015)
      call SkillTree___CreateSkillTreePopupDetails(s__ESkillTree_PopupDetailPoint , .01 , - .025 , "|cffff3315변신레벨 12 이상 필요" , 0.010)
      call SkillTree___CreateSkillTreePopupDetails(s__ESkillTree_PopupDetailCurrentLevel , .01 , - .025 , "Lv: 10|cff00ff00+2|r/10" , 0.010)

      set SkillTree___SkillTreeNow=DzCreateFrameByTagName("TEXT", "", SkillTree___TreePopupFrame, "", 0)
      call DzFrameSetPoint(SkillTree___SkillTreeNow, JN_FRAMEPOINT_TOPLEFT, SkillTree___TreePopupFrame, JN_FRAMEPOINT_TOPLEFT, .01, - .075)
      call DzFrameSetText(SkillTree___SkillTreeNow, "|c000080c0자세히.. (클릭)|r")
      call DzFrameSetFont(SkillTree___SkillTreeNow, "Fonts\\DFHeiMd.ttf", 0.010, 0)

      call DzFrameShow(SkillTree___TreePopupFrame, false)
    endfunction

    function SkillTree___CreateFrameSkillTreeExtend takes nothing returns nothing
      set SkillTree___TreeExtendFrame=DzCreateFrameByTagName("BACKDROP", "", SkillTree_TreeMainFrame, "QuestButtonBaseTemplate", 0)
      call DzFrameSetAbsolutePoint(SkillTree___TreeExtendFrame, JN_FRAMEPOINT_TOPLEFT, 0.45, 0.55)
      call DzFrameSetSize(SkillTree___TreeExtendFrame, .2, .31)
      call DzFrameSetAlpha(SkillTree___TreeExtendFrame, 128)
      
      call SkillTree_MakeLineY(SkillTree___TreeExtendFrame , .06 , - .01 , .09)
      call SkillTree_MakeLineX(SkillTree___TreeExtendFrame , .06 , - .035 , .13)
      call SkillTree_MakeLineX(SkillTree___TreeExtendFrame , .06 , - .065 , .13)
      call SkillTree_MakeLineX(SkillTree___TreeExtendFrame , .01 , - .10 , .18)
      
      set SkillTree___SkillTreeNow=DzCreateFrameByTagName("BACKDROP", "", SkillTree___TreeExtendFrame, "", 0)
      call DzFrameSetAllPoints(SkillTree___SkillTreeNow, SkillTree___TreeExtendFrame)
      call DzFrameSetTexture(SkillTree___SkillTreeNow, "SkillTree_Transparency.blp", 0)
      call DzFrameSetAlpha(SkillTree___SkillTreeNow, 204)

      call SkillTree___TreeExtendIcon(s__ESkillTree_SubIcon , .035 , - .035 , .05 , "SkillTree_ichi_01.blp")
      set SkillTree___TreeChangeableFrame[s__ESkillTree_SubTitle]=SkillTree___GetMadeText(SkillTree___TreeExtendFrame , .125 , - .020 , "세로베기" , .020 , true)
      set SkillTree___TreeChangeableFrame[s__ESkillTree_SubShortDescriptionTop]=SkillTree___GetMadeText(SkillTree___TreeExtendFrame , .125 , - .030 , "현재레벨" , .010 , true)
      set SkillTree___TreeChangeableFrame[s__ESkillTree_SubShortDescriptionMiddle]=SkillTree___GetMadeText(SkillTree___TreeExtendFrame , .125 , - .040 , "7/10" , .010 , true)
      set SkillTree___TreeChangeableFrame[s__ESkillTree_SubShortDescriptionLow]=SkillTree___GetMadeText(SkillTree___TreeExtendFrame , .125 , - .050 , "B+ Rank" , .010 , true)

      set SkillTree___TreeChangeableFrame[s__ESkillTree_SubLongDescriptionCost]=SkillTree___GetMadeText(SkillTree___TreeExtendFrame , .125 , - .065 , "소모마나 240, 쿨다운 70초" , .010 , true)
      set SkillTree___TreeChangeableFrame[s__ESkillTree_SubLongDescriptionDetials]=SkillTree___GetMadeText(SkillTree___TreeExtendFrame , .125 , - .075 , "잠재능력을 모두 해방시켜 참격을 발사합니다.\n750범위에 1427% 데미지를 가합니다." , .010 , true)
      set SkillTree___TreeChangeableFrame[s__ESkillTree_SubLongDescriptionNextLevels]=SkillTree___GetMadeText(SkillTree___TreeExtendFrame , .125 , - .085 , "데미지 상승 +11%, \n소모마나 +4.4" , .010 , true)

      call SkillTree___TreeExtendIcon(s__ESkillTree_SubSkillMinusAll , .035 , - .035 , .02 , "SkillTree_PlusMinus01.blp")
      call SkillTree___TreeExtendIcon(s__ESkillTree_SubSkillMinusOne , .035 , - .035 , .02 , "SkillTree_PlusMinus01.blp")
      call SkillTree___TreeExtendIcon(s__ESkillTree_SubSkillPlusOne , .035 , - .035 , .02 , "SkillTree_PlusMinus01.blp")
      call SkillTree___TreeExtendIcon(s__ESkillTree_SubSkillPlusAll , .035 , - .035 , .02 , "SkillTree_PlusMinus01.blp")

  //     call MakeText(46, .035, -.088, "Lv 12/10", .010, true)
      
  //     call MakeText(47, .125, -.020, "세로베기", .020, true)
      
  //     call MakeText(48, .065, -.050, "전방을 세로로 베어 처음으로
  // 맞는 적에게 데미지를 줍니다.", .010, false)
  
  //     call MakeText(49, .065, -.075, "데미지: 50 (40 + 공격력 10%)", .010, false)
  //     call MakeText(50, .065, -.090, "다음레벨: 65 (50 + 공격력 15%)", .010, false)
      
      // call MakeText(51, .100, -.110, "|cff3ca03c강화", .015, true)
      // call MakeIcon(52, .100, -.135, .03, 0, "SkillTree_AddFire_0.blp")
      // call MakeIcon(53, .085, -.150, .015, 23, "SkillTree_PlusMinus04.blp")
      // call MakeIcon(54, .115, -.150, .015, 24, "SkillTree_PlusMinus01.blp")
      // call MakeText(55, .100, -.155, "|cff3ca03c0/5", .008, true)
      
      // call MakeText(56, .070, -.180, "|cffed393e진화Ａ", .015, true)
      // call MakeIcon(57, .070, -.205, .03, 0, "SkillTree_AddFire_2_1.blp")
      // call MakeIcon(58, .055, -.220, .015, 23, "SkillTree_PlusMinus02.blp")
      // call MakeIcon(59, .085, -.220, .015, 24, "SkillTree_PlusMinus01.blp")
      // call MakeText(60, .070, -.225, "|cffed393e2/3", .008, true)
      // call MakeText(61, .130, -.180, "|cff3681eb진화Ｂ", .015, true)
      // call MakeIcon(62, .130, -.205, .03, 0, "SkillTree_AddFire_2_2.blp")
      // call MakeIcon(63, .115, -.220, .015, 23, "SkillTree_PlusMinus02.blp")
      // call MakeIcon(64, .145, -.220, .015, 24, "SkillTree_PlusMinus03.blp")
      // call MakeText(65, .130, -.225, "|cff3681eb3/3", .008, true)
      
      // call MakeText(66, .070, -.250, "|cffeb8dd0개화Ａ", .015, true)
      // call MakeIcon(67, .070, -.275, .03, 0, "SkillTree_AddFire_3_1.blp")
      // call MakeIcon(68, .055, -.290, .015, 23, "SkillTree_PlusMinus04.blp")
      // call MakeIcon(69, .085, -.290, .015, 24, "SkillTree_PlusMinus01.blp")
      // call MakeText(70, .070, -.295, "|cffeb8dd00/1", .008, true)
      // call MakeText(71, .130, -.250, "|cfffeff79개화Ｂ", .015, true)
      // call MakeIcon(72, .130, -.275, .03, 0, "SkillTree_AddFire_3_2.blp")
      // call MakeIcon(73, .115, -.290, .015, 23, "SkillTree_PlusMinus02.blp")
      // call MakeIcon(74, .145, -.290, .015, 24, "SkillTree_PlusMinus03.blp")
      // call MakeText(75, .130, -.295, "|cfffeff791/1", .008, true)
    endfunction
//     private function MakeText2Popup takes integer i, real x, real y, string contents, real size returns nothing
//       set SkillTree2Popup[i] = DzCreateFrameByTagName("TEXT", "", SkillTreeNow, "", 0)
//       call DzFrameSetPoint(SkillTree2Popup[i], JN_FRAMEPOINT_TOPLEFT, TreeExtendFrame, JN_FRAMEPOINT_TOPLEFT, x, y)
//       call DzFrameSetText(SkillTree2Popup[i], contents)
//       if ( size != 0. ) then
//         call DzFrameSetFont(SkillTree2Popup[i], "Fonts\\DFHeiMd.ttf", size, 0)
//       endif
//     endfunction
//     private function CreateSkillTree2Popup takes nothing returns nothing
//       set TreeExtendFrame = DzCreateFrameByTagName("BACKDROP", "", SkillTreeNow, "QuestButtonBaseTemplate", 0)
//       set SkillTreeNow = TreeExtendFrame
//       if ( false ) then
//         if ( false ) then /*Plus*/
//           call DzFrameSetAbsolutePoint(TreeExtendFrame, JN_FRAMEPOINT_BOTTOMLEFT, 0.14, 0.55)
//           call DzFrameSetSize(TreeExtendFrame, .07, .055)
//           call MakeText2Popup(1, .01, -.010, "|cffffcc00추가개방", 0.)
//           call MakeText2Popup(3, .01, -.035, "|c000080c0클릭하여 개방|r", 0.010)
//         else
//           call DzFrameSetAbsolutePoint(TreeExtendFrame, JN_FRAMEPOINT_BOTTOMLEFT, 0.14, 0.55)
//           call DzFrameSetSize(TreeExtendFrame, .095, .105)
//           call MakeText2Popup(1, .01, -.010, "|cffffcc00추가개방", 0.015)
//           call MakeText2Popup(2, .01, -.035, "|cffff3315필요사항:
//  - 스킬레벨 4 이상
//  - 스킬포인트 1 이상
//  - 최대 레벨 도달", 0.010)
//           call MakeText2Popup(3, .01, -.085, "|c000080c0조건 후 클릭하여 개방|r", 0.010)
//         endif
//       else
//         if ( false ) then
//           call DzFrameSetAbsolutePoint(TreeExtendFrame, JN_FRAMEPOINT_BOTTOMLEFT, 0.14, 0.55)
//           call DzFrameSetSize(TreeExtendFrame, .085, .055)
//           call MakeText2Popup(1, .01, -.010, "|cffffcc00개방제한", 0.)
//           call MakeText2Popup(3, .01, -.035, "|c000080c0클릭하여 개방제한|r", 0.010)
//         else
//           call DzFrameSetAbsolutePoint(TreeExtendFrame, JN_FRAMEPOINT_BOTTOMLEFT, 0.14, 0.55)
//           call DzFrameSetSize(TreeExtendFrame, .100, .105)
//           call MakeText2Popup(1, .01, -.010, "|cffffcc00개방제한", 0.015)
//           call MakeText2Popup(2, .01, -.035, "|cffff3315필요사항:
//  - 상위 스킬 우선 제한
//  - 골드 1,000 이상
//  - 최소 레벨 도달", 0.010)
//           call MakeText2Popup(3, .01, -.085, "|c000080c0조건 후 클릭하여 제한|r", 0.010)
//         endif
//       endif
      
//       call DzFrameShow(TreeExtendFrame, false)
//     endfunction
    
    function SkillTree___Init takes nothing returns nothing

      call SkillTree___CreateFrameSkillTreeMain()
      call SkillTree___TreeMainIcon(s__ECharacter_ICHIGO)
      call SkillTree___CreateSkillTreePopup()

      call SkillTree___CreateFrameSkillTreeExtend()

      // call CreateSkillTree2()
      // call DzFrameShow(TreeExtendFrame, false)
      // call CreateSkillTree2Popup()

      call DzTriggerRegisterSyncData(SkillTree___skillTreeTrigger, "TreeSync", false)
      call TriggerAddAction(SkillTree___skillTreeTrigger, function SkillTree___SkillTreeSync)
    endfunction
// scope SkillTree ends
// END IMPORT OF System\Frames\SkillTree.j
// BEGIN IMPORT OF System\Frames\PortraitEditor.j

// scope PortraitEditor begins

	// = DzFrameGetPortrait
 function PortraitEditor___GetPortraitButton takes nothing returns integer
		if PortraitEditor___pGameUI != 0 then
			return JNMemoryGetInteger(PortraitEditor___pGameUI + 0x3F4)
		endif
		return 0
	endfunction
	// SimpleFontString
 function PortraitEditor___GetPortraitButtonHPText takes nothing returns integer
  local integer pData= PortraitEditor___GetPortraitButton()
		if pData != 0 then
			return JNMemoryGetInteger(pData + 0x240)
		endif
		return 0
	endfunction
	// SimpleFontString
 function PortraitEditor___GetPortraitButtonManaText takes nothing returns integer
  local integer pData= PortraitEditor___GetPortraitButton()
		if pData != 0 then
			return JNMemoryGetInteger(pData + 0x244)
		endif
		return 0
	endfunction
	
	// 상대 좌표가 아닌 고정 좌표만 사용하기에, 생략.
	// function SetCLayoutFramePoint takes integer pFrame, integer point, integer pParentFrame, integer relativePoint, real x, real y returns integer
	// 	local integer addr = pGameDll + 0x13FC20
		
	// 	if pFrame != 0 then
	// 		call SaveStr(JNProc_ht, JNProc_key, 0, "(IIIIRR)I")
	// 		call SaveInteger(JNProc_ht, JNProc_key, 1, pFrame)        
	// 		call SaveInteger(JNProc_ht, JNProc_key, 2, point)
	// 		call SaveInteger(JNProc_ht, JNProc_key, 3, pParentFrame)
	// 		call SaveInteger(JNProc_ht, JNProc_key, 4, relativePoint)
	// 		call SaveReal(JNProc_ht, JNProc_key, 5, x)
	// 		call SaveReal(JNProc_ht, JNProc_key, 6, y)
	// 		call SaveInteger(JNProc_ht, JNProc_key, 7, 1)
	// 		if JNProcCall(JNProc__thiscall, addr, JNProc_ht) then
	// 			return LoadInteger(JNProc_ht, JNProc_key, 0)
	// 		endif
	// 	endif
		
	// 	return 0
	// endfunction
 function PortraitEditor___IsFrameLayout takes integer pFrame returns boolean
  local integer addr
		if pFrame != 0 then
			set addr=JNMemoryGetInteger(JNMemoryGetInteger(pFrame) + 0x1C)
			return addr == ( PortraitEditor___pGameDll + 0x13F170 ) or addr == ( PortraitEditor___pGameDll + 0x1428A0 )
		endif
		return false
	endfunction
 function PortraitEditor___GetFrameLayout takes integer pFrame returns integer
		if pFrame != 0 then
			if not PortraitEditor___IsFrameLayout(pFrame) then
				return pFrame + 0xB4 // if 1.29+ 0xBC
			else
				return pFrame
			endif
		endif
		return 0
	endfunction
 function PortraitEditor___SetCLayoutFrameAbsolutePoint takes integer pFrame,integer point,real offsetX,real offsetY returns integer
  local integer addr= PortraitEditor___pGameDll + 0x13FBB0
		
		if pFrame != 0 then
			call SaveStr(JNProc_ht, JNProc_key, 0, "(IIRRI)I")
			call SaveInteger(JNProc_ht, JNProc_key, 1, pFrame)
			call SaveInteger(JNProc_ht, JNProc_key, 2, point)
			call SaveReal(JNProc_ht, JNProc_key, 3, ( offsetX ))
			call SaveReal(JNProc_ht, JNProc_key, 4, ( offsetY ))
			call SaveInteger(JNProc_ht, JNProc_key, 5, 1)
			if JNProcCall(JNProc__thiscall, addr, JNProc_ht) then
				return LoadInteger(JNProc_ht, JNProc_key, 0)
			endif
		endif
		
		return 0
	endfunction
 function PortraitEditor___SetFrameAbsolutePoint takes integer pFrame,integer point,real offsetX,real offsetY returns integer
		if pFrame != 0 then
			return PortraitEditor___SetCLayoutFrameAbsolutePoint(PortraitEditor___GetFrameLayout(pFrame) , point , offsetX , offsetY)
		endif
		return 0
	endfunction
	// function SetFramePoint takes integer pFrame, integer point, integer pParentFrame, integer relativePoint, real x, real y returns integer
	// 	if 0 < pFrame and 0 < pParentFrame then
	// 		return SetCLayoutFramePoint(GetFrameLayout(pFrame), point, GetFrameLayout(pParentFrame), relativePoint, x, y)
	// 	endif
	// 	return 0
	// endfunction
  function PortraitEditor___Change2 takes integer inputHp returns nothing
    if ( inputHp != 0 ) then
      set PortraitEditor___initializered=true
      call DzFrameClearAllPoints(inputHp)
      call PortraitEditor___SetFrameAbsolutePoint(inputHp , JN_FRAMEPOINT_CENTER , .25 , .025)
      set inputHp=PortraitEditor___GetPortraitButtonManaText()
      call DzFrameClearAllPoints(inputHp)
      call PortraitEditor___SetFrameAbsolutePoint(inputHp , JN_FRAMEPOINT_CENTER , .25 , .010)
			call MsgAll("Changed")
			call ClearSelection()
    endif
  endfunction
  function PortraitEditor___GetGameUI2 takes integer bInit,integer bRelease returns integer
  local integer addr= PortraitEditor___pGameDll + 0x3A0B70
		call SaveStr(JNProc_ht, JNProc_key, 0, "(II)I")
		call SaveInteger(JNProc_ht, JNProc_key, 1, bInit)
		call SaveInteger(JNProc_ht, JNProc_key, 2, bRelease)
		if JNProcCall(PortraitEditor___JNProc__fastcall, addr, JNProc_ht) then
			return LoadInteger(JNProc_ht, JNProc_key, 0)
		endif
		return 0
	endfunction
 function PortraitEditor___Init takes nothing returns nothing
		set PortraitEditor___pGameDll=JNGetModuleHandle("Game.dll")
		set PortraitEditor___pGameUI=PortraitEditor___GetGameUI2(0 , 0)
	endfunction

 function PortraitEditor_Change takes nothing returns nothing
		if ( not PortraitEditor___initializered ) then
			call PortraitEditor___Change2(PortraitEditor___GetPortraitButtonHPText())
		endif
	endfunction
// scope PortraitEditor ends
// END IMPORT OF System\Frames\PortraitEditor.j
// BEGIN IMPORT OF System\Frames\PushKey.j
// scope PushKey begins
  function PushKey___ChatCheck takes nothing returns nothing
    set PushKey___ChatState[GetPlayerId(DzGetTriggerSyncPlayer()) + 1]=S2I(DzGetTriggerSyncData()) != 0
    
  endfunction
  function PushKey___AllKey takes nothing returns nothing
    local player p= DzGetTriggerKeyPlayer()
    local integer Clicked= DzGetTriggerKey()
    local integer P= GetPlayerId(p) + 1
    //단축키 x - m번째 메뉴 실행            
    if ( Clicked == JN_OSKEY_RETURN ) then
      if ( GetLocalPlayer() == p ) then
        if ( ( JNMemoryGetByte(JNGetModuleHandle("Game.dll") + 0xD04FEC) == 1 ) != PushKey___ChatState[P] ) then
          call DzSyncData("NowChat", I2S(JNMemoryGetByte(JNGetModuleHandle("Game.dll") + 0xD04FEC)))
        endif
      endif
    elseif ( PushKey___ChatState[P] ) then
      if ( GetLocalPlayer() == p ) then
        if ( ( JNMemoryGetByte(JNGetModuleHandle("Game.dll") + 0xD04FEC) == 1 ) != PushKey___ChatState[P] ) then
          // call MsgAll("채팅창 이상하게 닫고 단축키 - " + I2S(JNMemoryGetByte(JNGetModuleHandle("Game.dll") + 0xD04FEC)) + "_" + EHotkeys.I2H(Clicked))
          call DzSyncData("NowChat", I2S(JNMemoryGetByte(JNGetModuleHandle("Game.dll") + 0xD04FEC)))
        endif
      endif
    elseif ( 0 < LoadInteger(hash, P, Clicked) ) then
      call MsgAll(GetPlayerName(p) + " Click2: " + s__EHotkeys_I2H(Clicked) + " = " + I2S(LoadInteger(hash, P, Clicked)) + " = " + s__EMenus_GetTypeName(s__EMenus_GetMainType(Clicked)) + "." + I2S(s__EMenus_GetSubTypeId(Clicked)))

      set Clicked=s__Quickmenu_Buttons[LoadInteger(hash, P, Clicked)]
      if ( s__EMenus_GetMainType(Clicked) == QUICK_MENU_MENU ) then
        if ( p == GetLocalPlayer() ) then
          call sc__MenuQuickSlot_MenuClick(s__EMenus_GetSubTypeId(Clicked))
        endif
      else
        call sc__MenuQuickSlot_ButtonClickDetail(p , Clicked)
      endif
    endif
    set p=null
  endfunction
  function PushKey___Init takes nothing returns nothing
    local trigger trig= CreateTrigger()
    local integer i= 0
    set trig=CreateTrigger()
         
    //JNSetAbilityTooltip            
    //0~9(48~57), 핫키 0~9(96~105)            
    set i=$30
    loop
      call DzTriggerRegisterKeyEventByCode(trig, i, 0, false, function PushKey___AllKey)
      call DzTriggerRegisterKeyEventByCode(trig, i + $30, 0, false, function PushKey___AllKey)
      exitwhen i >= $39
      set i=i + 1
    endloop
         
    //a~z 65~90            
    set i=$41
    loop
      call DzTriggerRegisterKeyEventByCode(trig, i, 0, false, function PushKey___AllKey)
      exitwhen i >= $5A
      set i=i + 1
    endloop
         
    //f1~f8 112~119            
    set i=$70
    loop
      call DzTriggerRegisterKeyEventByCode(trig, i, 0, false, function PushKey___AllKey)
      exitwhen i >= $77
      set i=i + 1
    endloop
         
    //탭 캡 쉬 컨 알 스 9 20 16 17 18 32            
    call DzTriggerRegisterKeyEventByCode(trig, JN_OSKEY_TAB, 0, false, function PushKey___AllKey)
    call DzTriggerRegisterKeyEventByCode(trig, JN_OSKEY_CAPSLOCK, 0, false, function PushKey___AllKey)
    call DzTriggerRegisterKeyEventByCode(trig, JN_OSKEY_SHIFT, 0, false, function PushKey___AllKey)
    call DzTriggerRegisterKeyEventByCode(trig, JN_OSKEY_CONTROL, 0, false, function PushKey___AllKey)
    call DzTriggerRegisterKeyEventByCode(trig, JN_OSKEY_ALT, 0, false, function PushKey___AllKey)
    call DzTriggerRegisterKeyEventByCode(trig, JN_OSKEY_SPACE, 0, false, function PushKey___AllKey)
         
    //키패드 /*-+. 111 106 109 107 110            
    //엔터키인 $6C(108)키 제외            
    set i=$6A
    loop
      if ( i != JN_OSKEY_SEPARATOR ) then

        call DzTriggerRegisterKeyEventByCode(trig, i, 0, false, function PushKey___AllKey)
      endif
      exitwhen i >= $6F
      set i=i + 1
    endloop
         
    //` -=\(백스) []    192  189 187 220 8  219 221            
    //;' ,./ (쉬프트)   186 222  188 190 191  16            
    
    call DzTriggerRegisterKeyEventByCode(trig, JN_OSKEY_OEM_3, 0, false, function PushKey___AllKey)
    call DzTriggerRegisterKeyEventByCode(trig, JN_OSKEY_OEM_MINUS, 0, false, function PushKey___AllKey)
    call DzTriggerRegisterKeyEventByCode(trig, JN_OSKEY_OEM_PLUS, 0, false, function PushKey___AllKey)
    call DzTriggerRegisterKeyEventByCode(trig, JN_OSKEY_OEM_5, 0, false, function PushKey___AllKey)
    call DzTriggerRegisterKeyEventByCode(trig, JN_OSKEY_BACKSPACE, 0, false, function PushKey___AllKey)
    call DzTriggerRegisterKeyEventByCode(trig, JN_OSKEY_OEM_4, 0, false, function PushKey___AllKey)
    call DzTriggerRegisterKeyEventByCode(trig, JN_OSKEY_OEM_6, 0, false, function PushKey___AllKey)
    call DzTriggerRegisterKeyEventByCode(trig, JN_OSKEY_OEM_1, 0, false, function PushKey___AllKey)
    call DzTriggerRegisterKeyEventByCode(trig, JN_OSKEY_OEM_7, 0, false, function PushKey___AllKey)
    call DzTriggerRegisterKeyEventByCode(trig, JN_OSKEY_OEM_COMMA, 0, false, function PushKey___AllKey)
    call DzTriggerRegisterKeyEventByCode(trig, JN_OSKEY_OEM_PERIOD, 0, false, function PushKey___AllKey)
    call DzTriggerRegisterKeyEventByCode(trig, JN_OSKEY_OEM_2, 0, false, function PushKey___AllKey)
    call DzTriggerRegisterKeyEventByCode(trig, JN_OSKEY_RSHIFT, 0, false, function PushKey___AllKey)
    call DzTriggerRegisterKeyEventByCode(trig, JN_OSKEY_RALT, 0, false, function PushKey___AllKey)
    call DzTriggerRegisterKeyEventByCode(trig, JN_OSKEY_RCONTROL, 0, false, function PushKey___AllKey)
         
    call DzTriggerRegisterKeyEventByCode(trig, JN_OSKEY_RETURN, 0, false, function PushKey___AllKey)
         
    set trig=CreateTrigger()
    call DzTriggerRegisterSyncData(trig, "NowChat", false)
    call TriggerAddAction(trig, function PushKey___ChatCheck)
         
    set trig=null
  endfunction
// scope PushKey ends
// END IMPORT OF System\Frames\PushKey.j
// BEGIN IMPORT OF System\Frames\MenuQuickSlot.j
// scope MenuQuickSlot begins

    // 4가지 경우의 수에 따라 등록
    // - 단축키[T]가 아이템[7]에 등록되었습니다.
    // - 단축키[T]가 아이템[7]에 등록되었습니다. (기존 스킬[3] 삭제)
    // - 단축키[T]가 아이템[7]에 등록되었습니다. (기존 단축키[D] 삭제)
    
    // - (신규) 아이템[1] 단축키에 <T>가 새로 등록되었습니다.1번째 아이템 단축키: T 등록
    // - (변경) 
    // - 1번째 아이템 단축키: D→T 변경 (기존 D단축키 삭제, 기존 T단축키 3번째 메뉴삭제)
    // - 1번째 아이템 단축키: T 등록 (기존 T단축키 3번째 메뉴삭제)
    // - 1번째 아이템 단축키: T 등록*/
    function s__MenuQuickSlot_AddReg takes integer P,integer MenuNo,integer Hotkey returns nothing
      local string s= ""
      local integer i= 0
      if ( s__EHotkeys_I2H(Hotkey) == "" ) then
        call DisplayTimedTextToPlayer(Player(P - 1), 0, 0, 4., "등록할 수 없는 단축키입니다. -" + I2S(Hotkey) + "=" + s__EHotkeys_I2H(Hotkey))
      else
        set s=I2S(MenuNo) + " = " + s__EMenus_GetTypeName(s__EMenus_GetMainType(s__Quickmenu_Buttons[MenuNo])) + "[" + I2S(s__EMenus_GetSubTypeId(s__Quickmenu_Buttons[MenuNo])) + "] 단축키: "
        
        //기존 단축키 검사
        set i=LoadInteger(hash, P, MenuNo)
        if ( i != 0 ) then
          call RemoveSavedInteger(hash, P, MenuNo)
          set s=s + s__EHotkeys_I2H(i) + "→" + s__EHotkeys_I2H(Hotkey) + " 변경 (기존 " + s__EHotkeys_I2H(i) + "단축키 삭제"
          set i=LoadInteger(hash, P, Hotkey)
          if ( i != 0 ) then
            set s=s + ", 기존 " + s__EHotkeys_I2H(Hotkey) + "단축키 " + s__EMenus_GetTypeName(s__EMenus_GetMainType(s__Quickmenu_Buttons[i])) + "[" + I2S(s__EMenus_GetSubTypeId(s__Quickmenu_Buttons[i])) + "] 삭제)"
            call RemoveSavedInteger(hash, P, Hotkey)
          else
            set s=s + ")"
          endif
        //변경
        else
        //등록
          set s=s + s__EHotkeys_I2H(Hotkey) + " 등록"
          set i=LoadInteger(hash, P, Hotkey)
          if ( i != 0 ) then
            set s=s + " (기존 " + s__EHotkeys_I2H(Hotkey) + "단축키 " + s__EMenus_GetTypeName(s__EMenus_GetMainType(s__Quickmenu_Buttons[i])) + "[" + I2S(s__EMenus_GetSubTypeId(s__Quickmenu_Buttons[i])) + "] 삭제)"
            call RemoveSavedInteger(hash, P, Hotkey)
          endif
        endif
        call SaveInteger(hash, P, MenuNo, Hotkey)
        call SaveInteger(hash, P, Hotkey, MenuNo)
        if ( GetLocalPlayer() == Player(P - 1) ) then
          call DzFrameSetText(LoadInteger(hash, LoadInteger(hash, StringHash("FUI_HotKeyBase"), MenuNo), StringHash("FUI_HotKey")), s__EHotkeys_I2H(Hotkey))
        endif
        call DisplayTimedTextToPlayer(Player(P - 1), 0, 0, 7., s)
      endif
      
      
      
      
      
      
    endfunction
    
//#     static if false then
//#       // constant가 붙은 함수는 클릭이 되지 않기에 참조용
//#       method MenuQuickSlot_BaseHotKey takes integer i returns nothing
//#       endmethod
//#     endif
    function s__MenuQuickSlot_BaseHotKey takes integer mainType,integer subTypeId returns string
      if ( mainType == QUICK_MENU_ITEMSLOT ) then
        return I2S(subTypeId)
      elseif ( mainType == QUICK_MENU_SKILLSLOT ) then
        if ( subTypeId == 1 ) then
          return "Q"
        elseif ( subTypeId == 2 ) then
          return "W"
        elseif ( subTypeId == 3 ) then
          return "E"
        elseif ( subTypeId == 4 ) then
          return "R"
        elseif ( subTypeId == 5 ) then
          return "T"
        elseif ( subTypeId == 6 ) then
          return "D"
        elseif ( subTypeId == 7 ) then
          return "F"
        elseif ( subTypeId == 8 ) then
          return "G"
        endif
      elseif ( mainType == QUICK_MENU_MENU ) then
        if ( subTypeId == 1 ) then
          return "F8"
        elseif ( subTypeId == 2 ) then
          return "F7"
        elseif ( subTypeId == 3 ) then
          return "F6"
        elseif ( subTypeId == 4 ) then
          return "F5"
        elseif ( subTypeId == 5 ) then
          return "I"
        elseif ( subTypeId == 6 ) then
          return "S"
        elseif ( subTypeId == 7 ) then
          return "T"
        elseif ( subTypeId == 8 ) then
          return "V"
        endif
      endif
      return ""
    endfunction
    function s__MenuQuickSlot_MenuClick takes integer i returns nothing
      if ( i == 1 ) then
        set s__EMenus_OX_Option=not s__EMenus_OX_Option
        call DzFrameShow(Option_Frame_SettingBackdrop[0], s__EMenus_OX_Option)
      elseif ( i == 2 ) then
        call JNOpenBrowser("https://discord.gg/8FubNC8mZ")
      elseif ( i == 3 ) then
        call JNOpenBrowser("https://open.kakao.com/o/gM1u4zn")
      elseif ( i == 4 ) then
      elseif ( i == 5 ) then
        set s__EMenus_OX_Inven=not s__EMenus_OX_Inven
        call DzFrameShow(Frame_InvenButtonsBackDrop[0], s__EMenus_OX_Inven)
      elseif ( i == 6 ) then
        set s__EMenus_OX_Stats=not s__EMenus_OX_Stats
        call DzFrameShow(Frame_Info[0], s__EMenus_OX_Stats)
      elseif ( i == 7 ) then
        set s__EMenus_OX_Skills1=not s__EMenus_OX_Skills1
        call DzFrameShow(SkillTree_TreeMainFrame, s__EMenus_OX_Skills1)
      elseif ( i == 8 ) then
        set s__EMenus_OX_Skills2=not s__EMenus_OX_Skills2
      endif
    endfunction
    function s__MenuQuickSlot_ButtonClickDetail takes player p,integer frame returns nothing
      if ( s__EMenus_GetMainType(frame) == SELECT_MENU_CHARACTER ) then
        set NowSelect[GetPlayerId(p) + 1]=s__EMenus_GetSubTypeId(frame)
        if ( GetLocalPlayer() == p ) then
          call StopSound(gg_snd_MouseClick1, false, false)
          call StartSound(gg_snd_MouseClick1)
          call sc__Select_ViewInfo(s__CharacterData_SelectDatas[s__CharacterData__staticgetindex(s__EMenus_GetSubTypeId(frame))] , ( 0 < S2I(JNStringSplit(JNStringSplit(LoadStr(hash, GetPlayerId(p) + 1, StringHash("Data")), "/", s__EMenus_GetSubTypeId(frame)), "'", 1)) ))
        endif
      elseif ( s__EMenus_GetMainType(frame) == QUICK_MENU_MENU ) then
        if ( GetLocalPlayer() == p ) then
          call StopSound(gg_snd_BigButtonClick, false, false)
          call StartSound(gg_snd_BigButtonClick)
          call s__MenuQuickSlot_MenuClick(s__EMenus_GetSubTypeId(frame))
        endif
      elseif ( s__EMenus_GetMainType(frame) == QUICK_MENU_ITEMSLOT ) then
      elseif ( s__EMenus_GetMainType(frame) == QUICK_MENU_SKILLSLOT ) then
      endif
    endfunction
    function s__MenuQuickSlot_ButtonClickAll takes nothing returns nothing
      call s__MenuQuickSlot_ButtonClickDetail(DzGetTriggerUIEventPlayer() , DzGetTriggerUIEventFrame())
    endfunction
    function s__MenuQuickSlot_CreateHotKey takes integer frame returns nothing
      local integer HotFrame= DzCreateFrame("CommandButtonHotKeyBackDrop", frame, s__MenuQuickSlot_currentCount)
      local integer HotFrameTxt= DzCreateFrame("CommandButtonHotKeyText", HotFrame, s__MenuQuickSlot_currentCount)
      call DzFrameSetTexture(HotFrame, "ui\\widgets\\console\\human\\commandbutton\\human-button-lvls-overlay.blp", 0)
      call DzFrameSetPoint(HotFrame, JN_FRAMEPOINT_TOPLEFT, frame, JN_FRAMEPOINT_TOPLEFT, - .001, .001)
      call DzFrameSetPoint(HotFrameTxt, JN_FRAMEPOINT_CENTER, HotFrame, JN_FRAMEPOINT_CENTER, 0., 0.)
      call DzFrameSetText(HotFrameTxt, s__MenuQuickSlot_BaseHotKey(QUICK_MENU_MENU , s__MenuQuickSlot_currentCount))
      call DzFrameSetScriptByCode(frame, JN_FRAMEEVENT_MOUSE_UP, function s__MenuQuickSlot_ButtonClickAll, false)

      call SaveInteger(hash, StringHash("FUI_HotKeyBase"), s__MenuQuickSlot_currentCount, frame)
      call SaveInteger(hash, frame, StringHash("FUI_HotKey"), HotFrameTxt)
      // call AddReg(P, MenuNo, Hotkey) 플레이어 번호 없으니 생략.
    endfunction
    function s__MenuQuickSlot_CreateButtons takes integer types,integer offset,real x,real y,real size,string iconPath returns nothing
      set s__MenuQuickSlot_currentCount=s__MenuQuickSlot_currentCount + 1

      // MainButton
      set s__Quickmenu_Buttons[s__MenuQuickSlot_currentCount]= DzCreateFrameByTagName("BUTTON", "", Frame_Main, "ScoreScreenTabButtonTemplate", 0)
      call DzFrameSetAbsolutePoint(s__Quickmenu_Buttons[s__MenuQuickSlot_currentCount], JN_FRAMEPOINT_BOTTOMLEFT, x, y)
      call DzFrameSetSize(s__Quickmenu_Buttons[s__MenuQuickSlot_currentCount], size, size)

      // IDs
      call s__EMenus_FrameSaveIDs(s__Quickmenu_Buttons[s__MenuQuickSlot_currentCount] , types , s__MenuQuickSlot_currentCount - offset)
      
      // HotKey
      call s__MenuQuickSlot_CreateHotKey(s__Quickmenu_Buttons[s__MenuQuickSlot_currentCount])

      // Backdrop
      set s__Quickmenu_Backdrops[s__MenuQuickSlot_currentCount]= DzCreateFrameByTagName("BACKDROP", "", s__Quickmenu_Buttons[s__MenuQuickSlot_currentCount], "", 0)
      call DzFrameSetAllPoints(s__Quickmenu_Backdrops[s__MenuQuickSlot_currentCount], s__Quickmenu_Buttons[s__MenuQuickSlot_currentCount])
      call DzFrameSetTexture(s__Quickmenu_Backdrops[s__MenuQuickSlot_currentCount], iconPath, 0)
    endfunction
    function s__MenuQuickSlot_CreateMenuFrames takes integer offset returns nothing
      call s__MenuQuickSlot_CreateButtons(QUICK_MENU_MENU , offset , .78 , .58 , .02 , "war3mapImported\\frame_setting.blp")
      call s__MenuQuickSlot_CreateButtons(QUICK_MENU_MENU , offset , .76 , .58 , .02 , "war3mapImported\\frame_discord.blp")
      call s__MenuQuickSlot_CreateButtons(QUICK_MENU_MENU , offset , .74 , .58 , .02 , "war3mapImported\\frame_kakao.blp")

      call s__MenuQuickSlot_CreateButtons(QUICK_MENU_MENU , offset , .63 , .01 , .03 , "war3mapImported\\frame_combat.blp")
      call s__MenuQuickSlot_CreateButtons(QUICK_MENU_MENU , offset , .67 , 0. , .03 , "Inven_Empty.blp")
      call s__MenuQuickSlot_CreateButtons(QUICK_MENU_MENU , offset , .70 , 0. , .03 , "war3mapImported\\frame_stats.blp")
      call s__MenuQuickSlot_CreateButtons(QUICK_MENU_MENU , offset , .73 , 0. , .03 , "war3mapImported\\frame_stats2.blp")
      call s__MenuQuickSlot_CreateButtons(QUICK_MENU_MENU , offset , .76 , 0. , .03 , "war3mapImported\\frame_skills.blp")
    endfunction
    function s__MenuQuickSlot_CreateSkillFrames takes integer offset returns nothing
      call s__MenuQuickSlot_CreateButtons(QUICK_MENU_SKILLSLOT , offset , .3 , .03 , .025 , "ReplaceableTextures\\CommandButtons\\BTNThoriumMelee.blp")
      call s__MenuQuickSlot_CreateButtons(QUICK_MENU_SKILLSLOT , offset , .33 , .03 , .025 , "ReplaceableTextures\\CommandButtons\\BTNHumanArmorUpOne.blp")
      call s__MenuQuickSlot_CreateButtons(QUICK_MENU_SKILLSLOT , offset , .36 , .03 , .025 , "ReplaceableTextures\\CommandButtons\\BTNHumanArmorUpTwo.blp")
      call s__MenuQuickSlot_CreateButtons(QUICK_MENU_SKILLSLOT , offset , .39 , .03 , .025 , "ReplaceableTextures\\CommandButtons\\BTNHumanArmorUpThree.blp")
      call s__MenuQuickSlot_CreateButtons(QUICK_MENU_SKILLSLOT , offset , .3 , .06 , .025 , "ReplaceableTextures\\CommandButtons\\BTNOrbOfFire.blp")
      call s__MenuQuickSlot_CreateButtons(QUICK_MENU_SKILLSLOT , offset , .33 , .06 , .025 , "ReplaceableTextures\\CommandButtons\\BTNOrbOfVenom.blp")
      call s__MenuQuickSlot_CreateButtons(QUICK_MENU_SKILLSLOT , offset , .36 , .06 , .025 , "ReplaceableTextures\\CommandButtons\\BTNOrbOfFrost.blp")
      call s__MenuQuickSlot_CreateButtons(QUICK_MENU_SKILLSLOT , offset , .39 , .06 , .025 , "ReplaceableTextures\\CommandButtons\\BTNDaggerOfEscape.blp")
    endfunction
    function s__MenuQuickSlot_CreateItemFrames takes integer offset returns nothing
      loop
        call s__MenuQuickSlot_CreateButtons(QUICK_MENU_ITEMSLOT , offset , .4215 + ( s__MenuQuickSlot_currentCount * .025 ) , .03 , .0235 , "Inven_Empty.blp")
        exitwhen s__MenuQuickSlot_currentCount >= QUICK_MENU_ITEM_COUNT
        set s__MenuQuickSlot_currentCount=s__MenuQuickSlot_currentCount + 1
      endloop
    endfunction

    // 퀵슬롯 메뉴 생성(+단축키 지정)
    function s__MenuQuickSlot_onInit takes nothing returns nothing
      call s__MenuQuickSlot_CreateItemFrames(s__MenuQuickSlot_currentCount)
      call s__MenuQuickSlot_CreateSkillFrames(s__MenuQuickSlot_currentCount)
      call s__MenuQuickSlot_CreateMenuFrames(s__MenuQuickSlot_currentCount)
    endfunction
// scope MenuQuickSlot ends
// END IMPORT OF System\Frames\MenuQuickSlot.j
// BEGIN IMPORT OF System\Frames\Select.j
// scope Select begins


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


    // 프레임 선언
    








    function s__Select_SetStars takes integer startnum,integer val,string texture returns nothing
      local integer i= 0
      loop
        if ( val > i ) then
          call DzFrameSetTexture(s__s__Select_selectBackStars[(startnum)*(5)+i], texture, 0)
        else
          call DzFrameSetTexture(s__s__Select_selectBackStars[(startnum)*(5)+i], "Select_stars0.tga", 0)
        endif
        exitwhen i >= 4
        set i=i + 1
      endloop
    endfunction

    function s__Select_ViewInfo takes string s,boolean Continue returns nothing
      // 이름 영어 설명x2
      call DzFrameSetText(s__Select_selectTextCharacterNameKorean, JNStringSplit(s, "'", 0))
      call DzFrameSetText(s__Select_selectTextCharacterNameEnglish, JNStringSplit(s, "'", 1))
      call DzFrameSetText(s__Select_selectTextCharacterDescription1, JNStringSplit(s, "'", 2))
      call DzFrameSetText(s__Select_selectTextCharacterDescription2, JNStringSplit(s, "'", 3))

      // 별 설정 x25
      call s__Select_SetStars(0 , S2I(JNStringSplit(s, "'", 4)) , "Select_stars1.tga")
      call s__Select_SetStars(1 , S2I(JNStringSplit(s, "'", 5)) , "Select_stars1.tga")
      call s__Select_SetStars(2 , S2I(JNStringSplit(s, "'", 6)) , "Select_stars1.tga")
      call s__Select_SetStars(3 , S2I(JNStringSplit(s, "'", 7)) , "Select_stars1.tga")
      call s__Select_SetStars(4 , S2I(JNStringSplit(s, "'", 8)) , "Select_stars2.tga")

      // 미리보기 창
      if ( SubString(JNStringSplit(s, "'", 9), 0, 10) == "|cffff8000" ) then
        call DzFrameSetTexture(s__Select_select_LeftPreview, "Select_BackRed.blp", 0)
        call DzFrameSetTexture(s__Select_select_SkillPreview, "Select_BackRedRed.blp", 0)
        if ( Continue ) then
          call DzFrameSetTexture(s__Select_selectBackStart, "Select_ContinueRed.blp", 0)
        else
          call DzFrameSetTexture(s__Select_selectBackStart, "Select_StartRed.blp", 0)
        endif
      else
        call DzFrameSetTexture(s__Select_select_LeftPreview, "Select_BackBlue.blp", 0)
        call DzFrameSetTexture(s__Select_select_SkillPreview, "Select_BackBlueBlue.blp", 0)
        if ( Continue ) then
          call DzFrameSetTexture(s__Select_selectBackStart, "Select_ContinueBlue.blp", 0)
        else
          call DzFrameSetTexture(s__Select_selectBackStart, "Select_StartBlue.blp", 0)
        endif
      endif

      // 피해타입, 전용무기
      call DzFrameSetText(s__Select_selectTextCharacterDamageType, JNStringSplit(s, "'", 9))
      call DzFrameSetText(s__Select_selectTextCharacterMainWeapon, JNStringSplit(s, "'", 10))

      // 스킬 미리보기 아이콘 x4
      call DzFrameSetTexture(s__s__Select_selectBackSkills[0], JNStringSplit(s, "'", 11), 0)
      call DzFrameSetTexture(s__s__Select_selectBackSkills[1], JNStringSplit(s, "'", 12), 0)
      call DzFrameSetTexture(s__s__Select_selectBackSkills[2], JNStringSplit(s, "'", 13), 0)
      call DzFrameSetTexture(s__s__Select_selectBackSkills[3], JNStringSplit(s, "'", 14), 0)

      call DzFrameShow(s__Select_select_Main, true)
      call DzFrameShow(s__Select_select_LeftPreview, false)
    endfunction

    // 유닛 선택 해제 시 갱신 함수
    function s__Select_Deselected takes nothing returns nothing
      if ( GetTriggerPlayer() == GetLocalPlayer() ) then
        call DzFrameShow(Frame_Sub, false)
      endif
      // set SelectedUnit[GetPlayerId(GetTriggerPlayer()) + 1] = null
    endfunction

    // // 유닛 선택수 초기화 함수
    // private static method Inter takes nothing returns nothing
    //   local timer t = GetExpiredTimer()
    //   local integer tid = GetHandleId(t)
    //   local integer pid = LoadInteger(hash, tid, StringHash("pid"))
    //   set SelectBol[pid] = false
    //   set SelectCount[pid] = 0
    //   call FlushChildHashtable(hash, tid)
    //   call DestroyTimer(t)
    //   set t = null
    // endmethod

    // 유닛 선택 시 갱신 함수
    function s__Select_Selected takes nothing returns nothing
      local player p= GetTriggerPlayer()
      local integer pid= GetPlayerId(p) + 1
      // call MsgAll("Player[" +I2S(pid)+ "] : Selected (" + I2S(NowSelect[pid]) + " -> " + I2S(ECharacter.U2I(GetTriggerUnit())) + ")")
      if ( s__s__Select_isSelected[pid] and 0 < s__ECharacter_U2I(GetTriggerUnit()) ) then
        set NowSelect[pid]=s__ECharacter_U2I(GetTriggerUnit())
        if ( p == GetLocalPlayer() ) then
          call s__Select_ViewInfo(s__CharacterData_SelectDatas[s__CharacterData__staticgetindex(NowSelect[pid])] , ( 0 < S2I(JNStringSplit(JNStringSplit(LoadStr(hash, pid, StringHash("Data")), "/", NowSelect[pid]), "'", 1)) ))
          call ClearSelection()
        endif
      endif
    endfunction
    function s__Select_ButtonJustUp takes nothing returns nothing
      local integer f= DzGetTriggerUIEventFrame()
      local integer nowSelectNum= NowSelect[GetPlayerId(DzGetTriggerUIEventPlayer()) + 1]
      if ( DzGetTriggerUIEventPlayer() == GetLocalPlayer() ) then
        set f=12 + 3 * s__EMenus_GetSubTypeId(f)

        call DzFrameSetText(s__Select_selectTextSkillPreviewName, "|cffd5d500" + JNStringSplit(s__CharacterData_SelectDatas[s__CharacterData__staticgetindex(nowSelectNum)], "'", f))
        call DzFrameSetText(s__Select_selectTextSkillPreviewDescription1, JNStringSplit(s__CharacterData_SelectDatas[s__CharacterData__staticgetindex(nowSelectNum)], "'", f + 1))
        call DzFrameSetText(s__Select_selectTextSkillPreviewDescription2, JNStringSplit(s__CharacterData_SelectDatas[s__CharacterData__staticgetindex(nowSelectNum)], "'", f + 2))

        call DzFrameShow(s__Select_selectTextSkillPreviewName, true)
      endif
    endfunction
    function s__Select_ButtonJustDown takes nothing returns nothing
      local integer f= DzGetTriggerUIEventFrame()
      if ( DzGetTriggerUIEventPlayer() == GetLocalPlayer() ) then
        call DzFrameShow(s__Select_selectTextSkillPreviewName, false)
      endif
    endfunction
    function s__Select_SendSyncedData takes nothing returns nothing
      call sc___prototype67_execute(1,DzGetTriggerSyncPlayer() , S2I(DzGetTriggerSyncData()))
    endfunction

    function s__Select_ButtonStart takes nothing returns nothing
      local integer playerId= GetPlayerId(DzGetTriggerUIEventPlayer()) + 1
      if ( s__CharacterData_UnitCode[s__CharacterData__staticgetindex(NowSelect[playerId])] == 0 ) then
        call Msg(DzGetTriggerUIEventPlayer() , "올바른 캐릭터를 선택 후, 시작하기를 눌러주세요")
      else
        set s__s__Select_isSelected[playerId]= false
        if ( DzGetTriggerUIEventPlayer() == GetLocalPlayer() ) then
          call DzSyncData("Select", I2S(NowSelect[playerId]))

          call DzFrameShow(s__Select_select_Main, false)
          call DzFrameShow(s__Select_select_LeftPreview, false)
          call DzFrameShow(s__Select_select_SkillPreview, false)
          call ResetToGameCamera(0.)
          call SetCameraBoundsToRect(bj_mapInitialPlayableArea)
          call PanCameraTo(s__Select_selectX, s__Select_selectY)
          call EnablePreSelect(true, true)
          call DzFrameShow(DzFrameGetMinimap(), true)
        endif
      endif
    endfunction

    function s__Select_MakeStars takes integer parent,integer point,integer point2,real x,real y,real size,string texture returns integer
      local integer temp= DzCreateFrameByTagName("BACKDROP", "", parent, "", sc__Select_CountAdder())
      call DzFrameSetPoint(temp, point, parent, point2, x, y)
      call DzFrameSetSize(temp, size, size)
      call DzFrameSetTexture(temp, texture, 0)
      return temp
    endfunction
    function s__Select_CountAdder takes nothing returns integer
      set s__Select_currentCount=s__Select_currentCount + 1
      return s__Select_currentCount
    endfunction

    function s__Select_MakeBack takes integer parent,integer point,real x,real y,real xx,real yy,string texture returns integer
      local integer temp= DzCreateFrameByTagName("BACKDROP", "", parent, "", s__Select_CountAdder())
      call DzFrameSetAbsolutePoint(temp, point, x, y)
      call DzFrameSetSize(temp, xx, yy)
      call DzFrameSetTexture(temp, texture, 0)
      return temp
    endfunction
    function s__Select_MakeText takes integer parent,integer point,integer point2,real x,real y,real size,string text returns integer
      local integer temp= DzCreateFrameByTagName("TEXT", "", parent, "", s__Select_CountAdder())
      if ( size != 0. ) then
        call DzFrameSetFont(temp, "Fonts\\DFHeiMd.ttf", size, 0)
      endif
      call DzFrameSetPoint(temp, point, parent, point2, x, y)
      call DzFrameSetText(temp, text)
      return temp
    endfunction
    function s__Select_MakeButtonSimple takes integer parent,integer types,integer input,code func returns integer
      local integer temp= DzCreateFrameByTagName("BUTTON", "", Frame_Main, "ScoreScreenTabButtonTemplate", s__Select_CountAdder())
      call DzFrameSetAllPoints(temp, parent)
      call s__EMenus_FrameSaveIDs(temp , types , input)

      call DzFrameSetScriptByCode(temp, JN_FRAMEEVENT_MOUSE_UP, func, false)
      return temp
    endfunction
    function s__Select_MakeButton takes integer parent,integer types,integer input,integer point,integer point2,real x,real y,real size,string iconPath returns integer
      local integer temp= DzCreateFrameByTagName("BUTTON", "", Frame_Main, "ScoreScreenTabButtonTemplate", s__Select_CountAdder())
      call DzFrameSetPoint(temp, point, parent, point2, x, y)
      call DzFrameSetSize(temp, size, size)
        
      // IDs
      call s__EMenus_FrameSaveIDs(temp , types , input)

      // 배경
      set s__s__Select_selectBackSkills[input]= DzCreateFrameByTagName("BACKDROP", "", temp, "", 0)
      call DzFrameSetAllPoints(s__s__Select_selectBackSkills[input], temp)
      call DzFrameSetTexture(s__s__Select_selectBackSkills[input], iconPath, 0)

      // 이벤트 등록
      call DzFrameSetScriptByCode(temp, JN_FRAMEEVENT_MOUSE_UP, function s__MenuQuickSlot_ButtonClickAll, false)
      call DzFrameSetScriptByCode(temp, JN_FRAMEEVENT_MOUSE_ENTER, function s__Select_ButtonJustUp, false)
      call DzFrameSetScriptByCode(temp, JN_FRAMEEVENT_MOUSE_LEAVE, function s__Select_ButtonJustDown, false)

      return temp
    endfunction

    // private static method CreateSelectIcon2 takes integer types, integer parent, integer point, integer point2, real x, real y, real size, string IconTexture returns integer
    //   set Frame_SelectSkills[types] = DzCreateFrameByTagName("BUTTON", "", Frame_SelectBack[1], "ScoreScreenTabButtonTemplate", 0)
    //   call DzFrameSetPoint(Frame_SelectSkills[types], point, parent, point2, x, y)
    //   call DzFrameSetSize(Frame_SelectSkills[types], size, size)

    //   set types = types + 1
    //   //배경
    //   set Frame_SelectSkills[types] = DzCreateFrameByTagName("BACKDROP", "", Frame_SelectSkills[types - 1], "", 0)
    //   call DzFrameSetAllPoints(Frame_SelectSkills[types], Frame_SelectSkills[types - 1])
    //   call DzFrameSetTexture(Frame_SelectSkills[types], IconTexture, 0)
    //   return types + 1
    // endmethod

    function s__Select_CameraBounds takes real x,real y returns nothing
      call SetCameraBounds(x, y, x, y, x, y, x, y)
    endfunction
    function s__Select_InitCamera takes nothing returns nothing
      call SetCameraField(CAMERA_FIELD_ROTATION, 90., 0.)
      call SetCameraField(CAMERA_FIELD_ANGLE_OF_ATTACK, 325., 0.)
      call SetCameraField(CAMERA_FIELD_TARGET_DISTANCE, 1024, 0.)
      call SetCameraField(CAMERA_FIELD_FIELD_OF_VIEW, 70., 0.)
      call SetCameraField(CAMERA_FIELD_FARZ, 5000., 0.)

      call s__Select_CameraBounds(s__Select_selectX , s__Select_selectY)
    endfunction
    function s__Select_CreateSelectMain takes nothing returns nothing
      local integer Text= 1
      call s__Select_InitCamera()

      if ( GetRandomReal(0., 99.) <= 33. ) then
        set Text=s__Select_MakeText(DzGetGameUI() , JN_FRAMEPOINT_CENTER , JN_FRAMEPOINT_BOTTOMLEFT , .4 , .55 , .038 , "|cffFF7CBFThe Only My Own RPG")
      elseif ( GetRandomReal(0., 66.) <= 33. ) then
        set Text=s__Select_MakeText(DzGetGameUI() , JN_FRAMEPOINT_CENTER , JN_FRAMEPOINT_BOTTOMLEFT , .4 , .55 , .038 , "|cff28FF0DThe Only My Own RPG")
      else
        set Text=s__Select_MakeText(DzGetGameUI() , JN_FRAMEPOINT_CENTER , JN_FRAMEPOINT_BOTTOMLEFT , .4 , .55 , .038 , "|cff0085FFThe Only My Own RPG")
      endif
      set s__Select_select_Main=s__Select_MakeText(Text , JN_FRAMEPOINT_TOPRIGHT , JN_FRAMEPOINT_BOTTOMRIGHT , 0. , 0. , 0136 , "나만의 알피지")

      //call DzFrameSetTexture(select_Main, "ui\\Title-R.blp", 0)
      set s__Select_select_LeftPreview=s__Select_MakeBack(s__Select_select_Main , JN_FRAMEPOINT_TOPLEFT , .05 , .45 , .18 , .25 , "Select_Back.blp")
      set s__Select_selectTextCharacterNameEnglish=s__Select_MakeText(s__Select_select_LeftPreview , JN_FRAMEPOINT_TOP , JN_FRAMEPOINT_TOP , 0. , - .013 , .015 , "DarkElf Mage")
      set s__Select_selectTextCharacterNameKorean=s__Select_MakeText(s__Select_select_LeftPreview , JN_FRAMEPOINT_TOPRIGHT , JN_FRAMEPOINT_TOPRIGHT , - .020 , - .035 , .010 , "다크엘프 마법사")
      set s__Select_selectTextCharacterDescription1=s__Select_MakeText(s__Select_select_LeftPreview , JN_FRAMEPOINT_TOPLEFT , JN_FRAMEPOINT_BOTTOMLEFT , .020 , - .050 , .008 , "마법사는 강력한 마법 공격과 디버프를 사용해")
      set s__Select_selectTextCharacterDescription2=s__Select_MakeText(s__Select_selectTextCharacterDescription1 , JN_FRAMEPOINT_TOPLEFT , JN_FRAMEPOINT_BOTTOMLEFT , 0. , 0. , .008 , "적을 괴롭히고 다대다 전투에 강한 직업입니다.")

      set Text=s__Select_MakeText(Text , JN_FRAMEPOINT_TOPLEFT , JN_FRAMEPOINT_TOPLEFT , .020 , - .080 , .012 , "공격")
      set s__s__Select_selectBackStars[(0)*(5)+0]= s__Select_MakeStars(Text , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_LEFT , .040 , 0. , .020 , "Select_stars1.tga")
      set s__s__Select_selectBackStars[(0)*(5)+1]= s__Select_MakeStars(Text , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_LEFT , .060 , 0. , .020 , "Select_stars1.tga")
      set s__s__Select_selectBackStars[(0)*(5)+2]= s__Select_MakeStars(Text , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_LEFT , .080 , 0. , .020 , "Select_stars1.tga")
      set s__s__Select_selectBackStars[(0)*(5)+3]= s__Select_MakeStars(Text , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_LEFT , .100 , 0. , .020 , "Select_stars1.tga")
      set s__s__Select_selectBackStars[(0)*(5)+4]= s__Select_MakeStars(Text , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_LEFT , .120 , 0. , .020 , "Select_stars1.tga")

      set Text=s__Select_MakeText(Text , JN_FRAMEPOINT_TOPLEFT , JN_FRAMEPOINT_BOTTOMLEFT , 0. , - .02 , .012 , "방어")
      set s__s__Select_selectBackStars[(1)*(5)+0]= s__Select_MakeStars(Text , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_LEFT , .040 , 0. , .020 , "Select_stars1.tga")
      set s__s__Select_selectBackStars[(1)*(5)+1]= s__Select_MakeStars(Text , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_LEFT , .060 , 0. , .020 , "Select_stars1.tga")
      set s__s__Select_selectBackStars[(1)*(5)+2]= s__Select_MakeStars(Text , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_LEFT , .080 , 0. , .020 , "Select_stars1.tga")
      set s__s__Select_selectBackStars[(1)*(5)+3]= s__Select_MakeStars(Text , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_LEFT , .100 , 0. , .020 , "Select_stars1.tga")
      set s__s__Select_selectBackStars[(1)*(5)+4]= s__Select_MakeStars(Text , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_LEFT , .120 , 0. , .020 , "Select_stars1.tga")

      set Text=s__Select_MakeText(Text , JN_FRAMEPOINT_TOPLEFT , JN_FRAMEPOINT_BOTTOMLEFT , 0. , - .02 , .012 , "보조")
      set s__s__Select_selectBackStars[(2)*(5)+0]= s__Select_MakeStars(Text , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_LEFT , .040 , 0. , .020 , "Select_stars1.tga")
      set s__s__Select_selectBackStars[(2)*(5)+1]= s__Select_MakeStars(Text , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_LEFT , .060 , 0. , .020 , "Select_stars1.tga")
      set s__s__Select_selectBackStars[(2)*(5)+2]= s__Select_MakeStars(Text , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_LEFT , .080 , 0. , .020 , "Select_stars1.tga")
      set s__s__Select_selectBackStars[(2)*(5)+3]= s__Select_MakeStars(Text , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_LEFT , .100 , 0. , .020 , "Select_stars1.tga")
      set s__s__Select_selectBackStars[(2)*(5)+4]= s__Select_MakeStars(Text , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_LEFT , .120 , 0. , .020 , "Select_stars1.tga")

      set Text=s__Select_MakeText(Text , JN_FRAMEPOINT_TOPLEFT , JN_FRAMEPOINT_BOTTOMLEFT , 0. , - .02 , .012 , "방해")
      set s__s__Select_selectBackStars[(3)*(5)+0]= s__Select_MakeStars(Text , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_LEFT , .040 , 0. , .020 , "Select_stars1.tga")
      set s__s__Select_selectBackStars[(3)*(5)+1]= s__Select_MakeStars(Text , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_LEFT , .060 , 0. , .020 , "Select_stars1.tga")
      set s__s__Select_selectBackStars[(3)*(5)+2]= s__Select_MakeStars(Text , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_LEFT , .080 , 0. , .020 , "Select_stars1.tga")
      set s__s__Select_selectBackStars[(3)*(5)+3]= s__Select_MakeStars(Text , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_LEFT , .100 , 0. , .020 , "Select_stars1.tga")
      set s__s__Select_selectBackStars[(3)*(5)+4]= s__Select_MakeStars(Text , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_LEFT , .120 , 0. , .020 , "Select_stars1.tga")

      set Text=s__Select_MakeText(Text , JN_FRAMEPOINT_TOPLEFT , JN_FRAMEPOINT_BOTTOMLEFT , 0. , - .02 , .012 , "난이도")
      set s__s__Select_selectBackStars[(4)*(5)+0]= s__Select_MakeStars(Text , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_LEFT , .040 , 0. , .020 , "Select_stars2.tga")
      set s__s__Select_selectBackStars[(4)*(5)+1]= s__Select_MakeStars(Text , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_LEFT , .060 , 0. , .020 , "Select_stars2.tga")
      set s__s__Select_selectBackStars[(4)*(5)+2]= s__Select_MakeStars(Text , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_LEFT , .080 , 0. , .020 , "Select_stars2.tga")
      set s__s__Select_selectBackStars[(4)*(5)+3]= s__Select_MakeStars(Text , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_LEFT , .100 , 0. , .020 , "Select_stars2.tga")
      set s__s__Select_selectBackStars[(4)*(5)+4]= s__Select_MakeStars(Text , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_LEFT , .120 , 0. , .020 , "Select_stars2.tga")

      set Text=s__Select_MakeText(s__Select_select_Main , JN_FRAMEPOINT_TOPLEFT , JN_FRAMEPOINT_TOPLEFT , .02 , - .02 , .010 , "|cff8f8f8f피해 유형")
      set s__Select_selectTextCharacterDamageType=s__Select_MakeText(Text , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_LEFT , .07 , 0. , .015 , "|cff0080c0마법 데미지")
      set Text=s__Select_MakeText(s__Select_select_Main , JN_FRAMEPOINT_TOPLEFT , JN_FRAMEPOINT_TOPLEFT , .02 , - .04 , .010 , "|cff8f8f8f사용(전용)무기")
      set s__Select_selectTextCharacterMainWeapon=s__Select_MakeText(Text , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_LEFT , .07 , 0. , .012 , "[완드] [지팡이]")
    endfunction
    function s__Select_CreateSelectSkillPreview takes nothing returns nothing
      set s__Select_select_SkillPreview=s__Select_MakeBack(DzGetGameUI() , JN_FRAMEPOINT_TOPLEFT , .62 , .34 , .16 , .12 , "Select_BackRedRed.blp")
      call s__Select_MakeText(s__Select_select_SkillPreview , JN_FRAMEPOINT_TOPLEFT , JN_FRAMEPOINT_TOPLEFT , .01 , - .01 , .010 , "|cff8f8f8f주요 스킬 보기")
      set s__s__Select_selectButtonSkills[0]= s__Select_MakeButton(s__Select_select_SkillPreview , SELECT_MENU_PRESKILL , 1 , JN_FRAMEPOINT_TOP , JN_FRAMEPOINT_TOPLEFT , .024 , - .03 , .0275 , "war3mapImported\\frame_kakao.blp")
      set s__s__Select_selectButtonSkills[1]= s__Select_MakeButton(s__Select_select_SkillPreview , SELECT_MENU_PRESKILL , 2 , JN_FRAMEPOINT_TOP , JN_FRAMEPOINT_TOPLEFT , .061 , - .03 , .0275 , "war3mapImported\\frame_kakao.blp")
      set s__s__Select_selectButtonSkills[2]= s__Select_MakeButton(s__Select_select_SkillPreview , SELECT_MENU_PRESKILL , 3 , JN_FRAMEPOINT_TOP , JN_FRAMEPOINT_TOPLEFT , .099 , - .03 , .0275 , "war3mapImported\\frame_kakao.blp")
      set s__s__Select_selectButtonSkills[3]= s__Select_MakeButton(s__Select_select_SkillPreview , SELECT_MENU_PRESKILL , 4 , JN_FRAMEPOINT_TOP , JN_FRAMEPOINT_TOPLEFT , .136 , - .03 , .0275 , "war3mapImported\\frame_kakao.blp")

      set s__Select_selectTextSkillPreviewName=s__Select_MakeText(s__Select_select_SkillPreview , JN_FRAMEPOINT_TOPLEFT , JN_FRAMEPOINT_TOPLEFT , .01 , - .08 , .012 , "|cffd5d500분노의 소용돌이 |cffff8000Lv.1")
      set s__Select_selectTextSkillPreviewDescription1=s__Select_MakeText(s__Select_selectTextSkillPreviewName , JN_FRAMEPOINT_TOPLEFT , JN_FRAMEPOINT_BOTTOMLEFT , 0. , - .005 , .008 , "창을 크게 휘둘러 주위의 적들에게 공격력의")
      set s__Select_selectTextSkillPreviewDescription2=s__Select_MakeText(s__Select_selectTextSkillPreviewDescription1 , JN_FRAMEPOINT_TOPLEFT , JN_FRAMEPOINT_BOTTOMLEFT , 0. , 0. , .008 , "|cffff800060%|r만큼 마법피해를 최대 |cffff80003|r회 입힙니다.")

      // 시작하기
      set s__Select_selectButtonStart=DzCreateFrameByTagName("BUTTON", "", s__Select_select_Main, "ScoreScreenTabButtonTemplate", s__Select_CountAdder())
      call DzFrameSetPoint(s__Select_selectButtonStart, JN_FRAMEPOINT_TOP, s__Select_selectTextSkillPreviewDescription2, JN_FRAMEPOINT_BOTTOM, 0., - .005)
      call DzFrameSetSize(s__Select_selectButtonStart, .11, .03)
      call DzFrameSetScriptByCode(s__Select_selectButtonStart, JN_FRAMEEVENT_MOUSE_UP, function s__Select_ButtonStart, true)

      set s__Select_selectBackStart=DzCreateFrameByTagName("BACKDROP", "", s__Select_selectButtonStart, "", 0)
      call DzFrameSetAllPoints(s__Select_selectBackStart, s__Select_selectButtonStart)
      call DzFrameSetTexture(s__Select_selectBackStart, "Select_StartRed.blp", 0)
    endfunction

    // (분)을 포맷된 시간 형식으로 변환
    // - < 100   : 99분
    // - < 600   : 9.99시간
    // - < 6000  : 99.9시간
    // - < 14400 : 9일 9시간
    // - 그 이상  : 29.91일
    function s__Select_MinutesToFormattedTime takes integer minutes returns string
      if ( minutes <= 0 ) then
        return ""
      elseif ( minutes < 100 ) then
        return I2S(minutes) + "분"
      elseif ( minutes < 600 ) then
        return R2SW(minutes / 60., 1, 2) + "시간"
      elseif ( minutes < 6000 ) then
        return R2SW(minutes / 60., 2, 1) + "시간"
      elseif ( minutes < 14400 ) then
        return I2S(minutes / 1440) + "일 " + I2S(ModuloInteger(minutes, 1440) / 60) + "시간"
      else
        return R2SW(minutes / 1440., 2, 2) + "일"
      endif
    endfunction
    function s__Select_CreateSelectBottom takes nothing returns nothing
      local integer i= 1
      loop
        //아래쪽
        set s__s__Select_selectBackBottoms[i]= s__Select_MakeBack(s__Select_select_Main , JN_FRAMEPOINT_CENTER , i * .12 , .1 , .1 , .04 , "Select_SlotBack75.blp")
        set s__s__Select_selectTextBottomNameLevels[i]= s__Select_MakeText(s__s__Select_selectBackBottoms[i] , JN_FRAMEPOINT_TOPLEFT , JN_FRAMEPOINT_TOPLEFT , .005 , - .005 , .010 , JNStringSplit(JNStringSplit(s__CharacterData_SelectDatas[s__CharacterData__staticgetindex(i)], "'", 0), " ", 1) + " Lv00")
        set s__s__Select_selectTextBottomPlayTimes[i]= s__Select_MakeText(s__s__Select_selectBackBottoms[i] , JN_FRAMEPOINT_TOPRIGHT , JN_FRAMEPOINT_TOPRIGHT , .005 , .005 , .009 , "00분")
        set s__s__Select_selectTextBottomLoadTypes[i]= s__Select_MakeText(s__s__Select_selectBackBottoms[i] , JN_FRAMEPOINT_BOTTOMRIGHT , JN_FRAMEPOINT_BOTTOMRIGHT , - .01 , .008 , .013 , "이어하기")
        set s__s__Select_selectButtonBottoms[i]= s__Select_MakeButtonSimple(s__s__Select_selectBackBottoms[i] , SELECT_MENU_CHARACTER , i , function s__MenuQuickSlot_ButtonClickAll)
        exitwhen MAX_CHARACTER_COUNT - 1 <= i
        set i=i + 1
      endloop
    endfunction
    function s__Select_CreateSelectBottom2 takes player p,string Input returns nothing
      local string cuttedString
      local integer i= 1
      //아래쪽
      loop
        set cuttedString=JNStringSplit(Input, "/", i)
        if ( S2I(JNStringSplit(JNStringSplit(cuttedString, "'", 1), ".", 0)) > 0 ) then
          if ( GetLocalPlayer() == p ) then
            call DzFrameSetTexture(s__s__Select_selectBackBottoms[i], "Select_SlotBack75.blp", 0)
            call DzFrameSetFont(s__s__Select_selectTextBottomNameLevels[i], "Fonts\\DFHeiMd.ttf", .010, 0)
            call DzFrameSetText(s__s__Select_selectTextBottomNameLevels[i], JNStringSplit(JNStringSplit(s__CharacterData_SelectDatas[s__CharacterData__staticgetindex(i)], "'", 0), " ", 1) + " Lv" + JNStringSplit(JNStringSplit(cuttedString, "'", 1), ".", 0))
            call DzFrameSetFont(s__s__Select_selectTextBottomPlayTimes[i], "Fonts\\DFHeiMd.ttf", .009, 0)
            call DzFrameSetText(s__s__Select_selectTextBottomPlayTimes[i], s__Select_MinutesToFormattedTime(S2I(JNStringSplit(JNStringSplit(cuttedString, "'", 0), "_", 1))))
            call DzFrameSetFont(s__s__Select_selectTextBottomLoadTypes[i], "Fonts\\DFHeiMd.ttf", .013, 0)
            call DzFrameSetText(s__s__Select_selectTextBottomLoadTypes[i], "이어하기")
          endif
        else
          if ( GetLocalPlayer() == p ) then
            call DzFrameSetTexture(s__s__Select_selectBackBottoms[i], "Select_SlotBack50.blp", 0)
            call DzFrameSetFont(s__s__Select_selectTextBottomNameLevels[i], "Fonts\\DFHeiMd.ttf", .009, 0)
            call DzFrameSetText(s__s__Select_selectTextBottomNameLevels[i], JNStringSplit(s__CharacterData_SelectDatas[s__CharacterData__staticgetindex(i)], "'", 0) + " (신규)")
            call DzFrameSetText(s__s__Select_selectTextBottomPlayTimes[i], "")
            call DzFrameSetFont(s__s__Select_selectTextBottomLoadTypes[i], "Fonts\\DFHeiMd.ttf", .008, 0)
            call DzFrameSetText(s__s__Select_selectTextBottomLoadTypes[i], "미리보기")
          endif
        endif

        exitwhen MAX_CHARACTER_COUNT - 1 <= i
        set i=i + 1
      endloop
    endfunction

    function s__Select_GetSaveData takes player p,string input returns nothing
      set input=IfEmpty(input , s__Select_DEFAULT_DATA)
      call SaveStr(hash, GetPlayerId(p) + 1, StringHash("Data"), input)
      call s__Select_CreateSelectBottom2(p , input)
      
    endfunction

    // IResource.PlayerResource[]가 생성된 후 호출
    function s__Select_onInit takes nothing returns nothing
      local integer loopA= 1
      if ( s__PlayerResource_ALL_PLAYING_COUNT <= 0 ) then
        call MsgAll("오류 / 플레이어 초기값이 설정되지 않았습니다.")
        return
      endif

      // set leftCount = PlayerResource.ALL_PLAYING_COUNT
      call s__Select_CreateSelectMain()
      call s__Select_CreateSelectBottom()
      call s__Select_CreateSelectSkillPreview()

      call DzFrameShow(s__Select_select_Main, true)
      call DzFrameShow(s__Select_select_LeftPreview, true)
      call DzFrameShow(s__Select_select_SkillPreview, true)

      loop
        if ( s__PlayerResource_isPlaying[s__PlayerResource__staticgetindex(loopA)] ) then
          set s__s__Select_isSelected[loopA]= true
          call TriggerRegisterPlayerUnitEvent(s__Select_selectTrigger, Player(loopA - 1), EVENT_PLAYER_UNIT_SELECTED, null)
          call TriggerRegisterPlayerUnitEvent(s__Select_deSelectTrigger, Player(loopA - 1), EVENT_PLAYER_UNIT_DESELECTED, null)
        endif
        exitwhen MAX_PLAYER_COUNT - 1 <= loopA
        set loopA=loopA + 1
      endloop
      call TriggerAddAction(s__Select_selectTrigger, function s__Select_Selected)
      call TriggerAddAction(s__Select_deSelectTrigger, function s__Select_Deselected)

      call DzTriggerRegisterSyncData(s__Select_syncTrigger, "Select", false)
      call TriggerAddAction(s__Select_syncTrigger, function s__Select_SendSyncedData)
    endfunction
// scope Select ends
// END IMPORT OF System\Frames\Select.j
// BEGIN IMPORT OF System\Frames\Option.j
// scope Option begins
  
    function Option___Setting takes integer no,string text,real size,real x,real y returns integer
      set Option___Frame_Setting[no]=DzCreateFrameByTagName("TEXT", "", Option_Frame_SettingBackdrop[1], "", no)
      if ( size != 0. ) then
        call DzFrameSetFont(Option___Frame_Setting[no], "Fonts\\DFHeiMd.ttf", size, 1)
      endif
      call DzFrameSetPoint(Option___Frame_Setting[no], JN_FRAMEPOINT_LEFT, Option_Frame_SettingBackdrop[0], JN_FRAMEPOINT_TOPLEFT, .02 + x, - .015 - .025 * y)
      call DzFrameSetText(Option___Frame_Setting[no], text)
      return no + 1
    endfunction
    function Option___LoadNumber takes integer frame returns integer
      return LoadInteger(hash, StringHash("F2I"), frame)
    endfunction
    function Option___SaveNumber takes integer frame,integer number returns nothing
      call SaveInteger(hash, StringHash("F2I"), frame, number)
    endfunction
    function Option___SettingButton takes integer i,integer number,string text,code funcHandle returns integer
      set Option___Frame_Setting[i]=DzCreateFrameByTagName("GLUETEXTBUTTON", "", Option_Frame_SettingBackdrop[1], "ScriptDialogButton", 0)
      call Option___SaveNumber(Option___Frame_Setting[i] , number)
      call DzFrameSetSize(Option___Frame_Setting[i], .085, 0.03)
      call DzFrameSetPoint(Option___Frame_Setting[i], JN_FRAMEPOINT_LEFT, Option___Frame_Setting[number], JN_FRAMEPOINT_LEFT, .1, 0.)
      call DzFrameSetText(Option___Frame_Setting[i], text)
      call DzFrameSetScriptByCode(Option___Frame_Setting[i], JN_FRAMEEVENT_MOUSE_UP, funcHandle, false)
      return i + 1
    endfunction
    function Option___SettingClick takes nothing returns nothing
      local integer f= DzGetTriggerUIEventFrame()
      local player p= DzGetTriggerUIEventPlayer()
      call MsgAll("player: " + GetPlayerName(p) + " clicked Setting")
      call s__OptionResource_Click(s___PlayerResource_options[s__PlayerResource_options[s__PlayerResource__staticgetindex(GetPlayerId(p) + 1)]+Option___LoadNumber(f)],10)
    endfunction
    function Option___SettingSave takes nothing returns nothing
      local integer f= DzGetTriggerUIEventFrame()
      local player p= DzGetTriggerUIEventPlayer()
      call s__OptionResource_Click(s___PlayerResource_options[s__PlayerResource_options[s__PlayerResource__staticgetindex(GetPlayerId(p) + 1)]+7],- 1)

      call MsgAll("player: " + GetPlayerName(p) + " click save server : " + I2S(s__IResource_id[s___PlayerResource_options[s__PlayerResource_options[s__PlayerResource__staticgetindex(GetPlayerId(p) + 1)]+7]]))
    endfunction
    function Option___SettingClose takes nothing returns nothing
      if ( GetLocalPlayer() == DzGetTriggerUIEventPlayer() ) then
        call DzFrameShow(Option_Frame_SettingBackdrop[0], false)
      endif
    endfunction
    function Option___SettingHotKey takes integer input,integer parent,real x,real y,string keys returns integer
      set Option___Frame_Setting[input]=DzCreateFrameByTagName("GLUETEXTBUTTON", "", Option_Frame_SettingBackdrop[1], "ScriptDialogButton", 0)
      // call EMenus.FrameSaveIDs(Frame_Setting[input], types, input)
      call DzFrameSetSize(Option___Frame_Setting[input], .02667, .02667)
      call DzFrameSetPoint(Option___Frame_Setting[input], JN_FRAMEPOINT_LEFT, parent, JN_FRAMEPOINT_LEFT, .1 + x, y)
      call DzFrameSetText(Option___Frame_Setting[input], keys)
      // MenuQuickSlot.BaseHotKey(types, input)
      // function SettingHotKeyClick

      return input + 1
    endfunction
    function Option___SettingHotKeyClick takes nothing returns nothing
      local integer f= DzGetTriggerUIEventFrame()
      local player p= DzGetTriggerUIEventPlayer()

      call s__OptionResource_Click(s___PlayerResource_options[s__PlayerResource_options[s__PlayerResource__staticgetindex(GetPlayerId(p) + 1)]+Option___LoadNumber(f)],0)
      call DisplayTimedTextToPlayer(GetLocalPlayer(), 0., 0., 7., "player: " + GetPlayerName(p) + " clicked HotKey Setting - " + I2S(f))
    endfunction
  
    function Option___CreateSetting takes nothing returns nothing
     local integer i= 0
      //미니정보창 배경
      set Option_Frame_SettingBackdrop[i]=DzCreateFrameByTagName("BACKDROP", "", DzGetGameUI(), "QuestButtonBaseTemplate", 0)
      call DzFrameSetAbsolutePoint(Option_Frame_SettingBackdrop[0], JN_FRAMEPOINT_CENTER, .4, .3)
      call DzFrameSetSize(Option_Frame_SettingBackdrop[i], 0.22, 0.4)
      call DzFrameSetAlpha(Option_Frame_SettingBackdrop[i], 128)
      set i=i + 1
      
      set Option_Frame_SettingBackdrop[i]=DzCreateFrameByTagName("BACKDROP", "", Option_Frame_SettingBackdrop[0], "QuestButtonBaseTemplate", 0)
      call DzFrameSetPoint(Option_Frame_SettingBackdrop[i], JN_FRAMEPOINT_CENTER, Option_Frame_SettingBackdrop[0], JN_FRAMEPOINT_TOP, 0., - 0.015)
      call DzFrameSetSize(Option_Frame_SettingBackdrop[i], 0.05, 0.04)
      call DzFrameSetAlpha(Option_Frame_SettingBackdrop[i], 196)
      set i=i + 1
      
      set Option___Frame_Setting[0]=DzCreateFrameByTagName("TEXT", "", Option_Frame_SettingBackdrop[1], "", 0)
      call DzFrameSetPoint(Option___Frame_Setting[0], JN_FRAMEPOINT_CENTER, Option_Frame_SettingBackdrop[1], JN_FRAMEPOINT_CENTER, 0., 0.)
      call DzFrameSetText(Option___Frame_Setting[0], "|cfffed312설정")
      call DzFrameSetFont(Option___Frame_Setting[0], "Fonts\\DFHeiMd.ttf", .020, 1)
      
      set i=Option___Setting(1 , s__HotkeyData_Name[s__HotkeyData__staticgetindex(1)] , .016 , 0. , 1.)
      set i=Option___Setting(i , s__HotkeyData_Name[s__HotkeyData__staticgetindex(2)] , .016 , 0. , 2.)
      set i=Option___Setting(i , s__HotkeyData_Name[s__HotkeyData__staticgetindex(3)] , .016 , 0. , 3.)
      set i=Option___Setting(i , s__HotkeyData_Name[s__HotkeyData__staticgetindex(4)] , .016 , 0. , 4.)
      set i=Option___Setting(i , s__HotkeyData_Name[s__HotkeyData__staticgetindex(5)] , .016 , 0. , 5.)
      set i=Option___Setting(i , s__HotkeyData_Name[s__HotkeyData__staticgetindex(6)] , .016 , 0. , 6.)
      
      set i=Option___Setting(i , "|cfffed312단축키 설정" , 0.015 , - .01 , 7.)
      set i=Option___Setting(i , "스킬1~8" , .024 , 0. , 8.)
      set i=Option___Setting(i , "핫슬롯1~7" , .024 , 0. , 9.75)
      set i=Option___Setting(i , "카톡/디코/설정" , 0. , 0. , 11.25)
      set i=Option___Setting(i , "자동공격/인벤토리" , 0. , 0. , 12.25)
      set i=Option___Setting(i , "상태창/스킬/임시" , 0. , 0. , 13.25)
      
      set Option___Frame_Setting[i]=DzCreateFrameByTagName("GLUETEXTBUTTON", "", Option_Frame_SettingBackdrop[1], "ScriptDialogButton", 0)
      call DzFrameSetPoint(Option___Frame_Setting[i], JN_FRAMEPOINT_LEFT, Option_Frame_SettingBackdrop[0], JN_FRAMEPOINT_BOTTOMLEFT, 0.01, .02)
      call DzFrameSetSize(Option___Frame_Setting[i], .14, 0.03)
      call DzFrameSetText(Option___Frame_Setting[i], "적용&서버저장(0/2)")
      call DzFrameSetScriptByCode(Option___Frame_Setting[i], JN_FRAMEEVENT_MOUSE_UP, function Option___SettingSave, false)
      set i=i + 1
    
      set Option___Frame_Setting[i]=DzCreateFrameByTagName("GLUETEXTBUTTON", "", Option_Frame_SettingBackdrop[1], "ScriptDialogButton", 0)
      call DzFrameSetPoint(Option___Frame_Setting[i], JN_FRAMEPOINT_RIGHT, Option_Frame_SettingBackdrop[0], JN_FRAMEPOINT_BOTTOMRIGHT, - 0.01, .02)
      call DzFrameSetSize(Option___Frame_Setting[i], .05, 0.03)
      call DzFrameSetText(Option___Frame_Setting[i], "닫기")
      call DzFrameSetScriptByCode(Option___Frame_Setting[i], JN_FRAMEEVENT_MOUSE_UP, function Option___SettingClose, false)
      set i=i + 1
      
      set i=Option___SettingButton(i , 1 , "|cfffed312ON |cffffffff/ |c004f4f4fOFF" , function Option___SettingClick)
      set i=Option___SettingButton(i , 2 , "|cfffed312기본 |cffffffff/ |c004f4f4f최소화" , function Option___SettingClick)
      set i=Option___SettingButton(i , 3 , "|c004f4f4fON |cffffffff/ |cfffed312OFF" , function Option___SettingClick)
      set i=Option___SettingButton(i , 4 , "|cfffed312150" , function Option___SettingClick)
      set i=Option___SettingButton(i , 5 , "|c004f4f4fON |cffffffff/ |cfffed312OFF" , function Option___SettingClick)
      set i=Option___SettingButton(i , 6 , "|cfffed312ON |cffffffff/ |c004f4f4fOFF" , function Option___SettingClick)
      
      set i=Option___SettingHotKey(i , Option___Frame_Setting[8] , 0. , 0.01 , s__MenuQuickSlot_BaseHotKey(QUICK_MENU_SKILLSLOT , 1))
      set i=Option___SettingHotKey(i , Option___Frame_Setting[8] , 0.02 , 0.01 , s__MenuQuickSlot_BaseHotKey(QUICK_MENU_SKILLSLOT , 2))
      set i=Option___SettingHotKey(i , Option___Frame_Setting[8] , 0.04 , 0.01 , s__MenuQuickSlot_BaseHotKey(QUICK_MENU_SKILLSLOT , 3))
      set i=Option___SettingHotKey(i , Option___Frame_Setting[8] , 0.06 , 0.01 , s__MenuQuickSlot_BaseHotKey(QUICK_MENU_SKILLSLOT , 4))
      set i=Option___SettingHotKey(i , Option___Frame_Setting[8] , 0. , - 0.01 , s__MenuQuickSlot_BaseHotKey(QUICK_MENU_SKILLSLOT , 5))
      set i=Option___SettingHotKey(i , Option___Frame_Setting[8] , 0.02 , - 0.01 , s__MenuQuickSlot_BaseHotKey(QUICK_MENU_SKILLSLOT , 6))
      set i=Option___SettingHotKey(i , Option___Frame_Setting[8] , 0.04 , - 0.01 , s__MenuQuickSlot_BaseHotKey(QUICK_MENU_SKILLSLOT , 7))
      set i=Option___SettingHotKey(i , Option___Frame_Setting[8] , 0.06 , - 0.01 , s__MenuQuickSlot_BaseHotKey(QUICK_MENU_SKILLSLOT , 8))

      set i=Option___SettingHotKey(i , Option___Frame_Setting[9] , 0. , 0.01 , s__MenuQuickSlot_BaseHotKey(QUICK_MENU_ITEMSLOT , 1))
      set i=Option___SettingHotKey(i , Option___Frame_Setting[9] , 0.02 , 0.01 , s__MenuQuickSlot_BaseHotKey(QUICK_MENU_ITEMSLOT , 2))
      set i=Option___SettingHotKey(i , Option___Frame_Setting[9] , 0.04 , 0.01 , s__MenuQuickSlot_BaseHotKey(QUICK_MENU_ITEMSLOT , 3))
      set i=Option___SettingHotKey(i , Option___Frame_Setting[9] , 0.06 , 0.01 , s__MenuQuickSlot_BaseHotKey(QUICK_MENU_ITEMSLOT , 4))
      set i=Option___SettingHotKey(i , Option___Frame_Setting[9] , 0.01 , - 0.01 , s__MenuQuickSlot_BaseHotKey(QUICK_MENU_ITEMSLOT , 5))
      set i=Option___SettingHotKey(i , Option___Frame_Setting[9] , 0.03 , - 0.01 , s__MenuQuickSlot_BaseHotKey(QUICK_MENU_ITEMSLOT , 6))
      set i=Option___SettingHotKey(i , Option___Frame_Setting[9] , 0.05 , - 0.01 , s__MenuQuickSlot_BaseHotKey(QUICK_MENU_ITEMSLOT , 7))

      set i=Option___SettingHotKey(i , Option___Frame_Setting[10] , 0. , 0. , s__MenuQuickSlot_BaseHotKey(QUICK_MENU_ITEMSLOT , 1))
      set i=Option___SettingHotKey(i , Option___Frame_Setting[10] , .03 , 0. , s__MenuQuickSlot_BaseHotKey(QUICK_MENU_ITEMSLOT , 2))
      set i=Option___SettingHotKey(i , Option___Frame_Setting[10] , .06 , 0. , s__MenuQuickSlot_BaseHotKey(QUICK_MENU_ITEMSLOT , 3))

      set i=Option___SettingHotKey(i , Option___Frame_Setting[11] , 0.01 , 0. , s__MenuQuickSlot_BaseHotKey(QUICK_MENU_ITEMSLOT , 4))
      set i=Option___SettingHotKey(i , Option___Frame_Setting[11] , 0.04 , 0. , s__MenuQuickSlot_BaseHotKey(QUICK_MENU_ITEMSLOT , 5))

      set i=Option___SettingHotKey(i , Option___Frame_Setting[12] , 0. , 0. , s__MenuQuickSlot_BaseHotKey(QUICK_MENU_ITEMSLOT , 6))
      set i=Option___SettingHotKey(i , Option___Frame_Setting[12] , .03 , 0. , s__MenuQuickSlot_BaseHotKey(QUICK_MENU_ITEMSLOT , 7))
      set i=Option___SettingHotKey(i , Option___Frame_Setting[12] , .06 , 0. , s__MenuQuickSlot_BaseHotKey(QUICK_MENU_ITEMSLOT , 8))
      call DzFrameShow(Option_Frame_SettingBackdrop[0], false)
    endfunction
    function Option___Init takes nothing returns nothing
      call Option___CreateSetting()
    endfunction
// scope Option ends
// END IMPORT OF System\Frames\Option.j
// BEGIN IMPORT OF System\Frames\InventoryEquip.j
// scope Equip begins
    constant function Equip___CS2II takes integer i returns integer
      if ( i == 6 ) then
        return 8
      elseif ( i == 13 ) then
        return 14
      else
        return 0
      endif
    endfunction
    constant function Equip_CS2I takes string s returns integer
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
    constant function Equip_I2CS takes integer i returns string
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
    constant function Equip_I2BE takes integer i returns string
    
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
      elseif ( i == 6 ) or ( i == 8 ) then
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
      elseif ( i == 13 ) or ( i == 14 ) then
        return "Equip_BaseICon_13.blp"
      elseif ( i == 15 ) then
        return "Equip_BaseICon_15.blp"
      elseif ( i == 16 ) then
        return "Equip_BaseICon_16.blp"
      else
        return ""
      endif
    endfunction
    function Equip___DoubleClick takes nothing returns nothing
      if ( Equip___AllowRightClick[GetPlayerId(DzGetTriggerKeyPlayer()) + 1] ) then
        call DzSyncData("I_Equip", I2S(Equip___OnButtonNumber[GetPlayerId(DzGetTriggerKeyPlayer()) + 1]))
        set Equip___AllowRightClick[GetPlayerId(DzGetTriggerKeyPlayer()) + 1]=false
      endif
    endfunction
    function Equip___RightClick takes nothing returns nothing
      if ( Equip___AllowRightClick[GetPlayerId(DzGetTriggerKeyPlayer()) + 1] ) then
        call DzSyncData("I_Equip", I2S(Equip___OnButtonNumber[GetPlayerId(DzGetTriggerKeyPlayer()) + 1]))
        set Equip___AllowRightClick[GetPlayerId(DzGetTriggerKeyPlayer()) + 1]=false
      endif
    endfunction
    function Equip___MouseVariable takes nothing returns nothing
      local string s= DzGetTriggerSyncData()
      local integer P= GetPlayerId(DzGetTriggerSyncPlayer()) + 1
      if ( s == "" ) then
        set Equip___AllowRightClick[P]=false
      else
        set Equip___AllowRightClick[P]=true
        set Equip___OnButtonNumber[P]=S2I(DzGetTriggerSyncData())
      endif
      set s=null
    endfunction
    
    constant function Equip___S2Oadd takes string s returns string
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
    constant function Equip___S2O takes string s returns string
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
    constant function Equip___SkipStr takes string s returns integer
      if ( s == "tp" ) then
        return 1
      elseif ( s == "cs" ) then
        return 2
      elseif ( s == "lv" ) then
        return 3
      elseif ( s == "ra" ) then
        return 4
      elseif ( s == "tt" ) then
        return 5
      elseif ( s == "qo" ) then
        return 6
      elseif ( s == "ec" ) then
        return 7
      elseif ( s == "k0" ) then
        return ITEM_TOOLTIP_HIDE
      elseif ( s == "o1" or s == "o2" or s == "o3" or s == "r1" or s == "r2" or s == "r3" or s == "k1" or s == "k2" or s == "k3" ) then
        return - 1
      else
        return 0
      endif
    endfunction
    
    function Equip___AddReal takes integer P,string s,real var,boolean msg returns nothing
      call SaveReal(hash, P, StringHash("STAT_" + s), LoadReal(hash, P, StringHash("STAT_" + s)) + var)
      if ( JNStringContains(Equip___STATS_ALL[P], s) ) then
        set Equip___STATS_ALL[0]=JNStringSplit(JNStringSplit(Equip___STATS_ALL[P], s + "_", 1), "'", 0)
        if ( S2R(Equip___STATS_ALL[0]) + var == 0. ) then
          set Equip___STATS_ALL[P]=JNStringReplace(Equip___STATS_ALL[P], s + "_" + Equip___STATS_ALL[0] + "'", "")
        else
          set Equip___STATS_ALL[P]=s + "_" + R2S(S2R(Equip___STATS_ALL[0]) + var) + "'" + JNStringReplace(Equip___STATS_ALL[P], s + "_" + Equip___STATS_ALL[0] + "'", "")
        endif
        
      else
        set Equip___STATS_ALL[P]=Equip___STATS_ALL[P] + s + "_" + R2S(var) + "'"
      endif
      return
      if ( msg ) then
        if ( var > 0. ) then
          call DisplayTimedTextToPlayer(Player(P - 1), 0, 0, 6., Equip___S2O(s) + " +" + R2SW(var, 1, 2) + Equip___S2Oadd(s) + " (총 " + R2SW(LoadReal(hash, P, StringHash("STAT_" + s)), 1, 2) + Equip___S2Oadd(s) + ")")
        else
          call DisplayTimedTextToPlayer(Player(P - 1), 0, 0, 6., Equip___S2O(s) + " " + R2SW(var, 1, 2) + Equip___S2Oadd(s) + " (총 " + R2SW(LoadReal(hash, P, StringHash("STAT_" + s)), 1, 2) + Equip___S2Oadd(s) + ")")
        endif
      endif
    endfunction
    function Equip___AddInteger takes integer P,string s,integer var,boolean msg returns nothing
      call SaveInteger(hash, P, StringHash("STAT_" + s), LoadInteger(hash, P, StringHash("STAT_" + s)) + var)
      if ( JNStringContains(Equip___STATS_ALL[P], s) ) then
        set Equip___STATS_ALL[0]=JNStringSplit(JNStringSplit(Equip___STATS_ALL[P], s + "_", 1), "'", 0)
        if ( S2I(Equip___STATS_ALL[0]) + var == 0 ) then
          set Equip___STATS_ALL[P]=JNStringReplace(Equip___STATS_ALL[P], s + "_" + Equip___STATS_ALL[0] + "'", "")
        else
          set Equip___STATS_ALL[P]=s + "_" + I2S(S2I(Equip___STATS_ALL[0]) + var) + "'" + JNStringReplace(Equip___STATS_ALL[P], s + "_" + Equip___STATS_ALL[0] + "'", "")
        endif
      else
        set Equip___STATS_ALL[P]=Equip___STATS_ALL[P] + s + "_" + I2S(var) + "'"
      endif
      return
      if ( msg ) then
        if ( var > 0 ) then
          call DisplayTimedTextToPlayer(Player(P - 1), 0, 0, 6., Equip___S2O(s) + " +" + I2S(var) + Equip___S2Oadd(s) + " (총 " + I2S(LoadInteger(hash, P, StringHash("STAT_" + s))) + Equip___S2Oadd(s) + ")")
        else
          call DisplayTimedTextToPlayer(Player(P - 1), 0, 0, 6., Equip___S2O(s) + " " + I2S(var) + Equip___S2Oadd(s) + " (총 " + I2S(LoadInteger(hash, P, StringHash("STAT_" + s))) + Equip___S2Oadd(s) + ")")
        endif
      endif
    endfunction
    function Equip___AddStat takes integer P,string s,string var,integer x,boolean Isreal,boolean msg returns nothing
      if ( Isreal ) then
        if ( x > 0 ) and ( S2R(var) * Pow(Equip___GRADE_BONUS, x) > .01 ) then
          call Equip___AddReal(P , s , S2R(var) * Pow(Equip___GRADE_BONUS, x) , msg)
        else
          call Equip___AddReal(P , s , S2R(var) , msg)
        endif
      else
        call Equip___AddInteger(P , s , R2I(S2R(var) * Pow(Equip___GRADE_BONUS, x)) , msg)
      endif
    endfunction
    function Equip___MinusStat takes integer P,string s,string var,integer x,boolean Isreal,boolean msg returns nothing
      if ( Isreal ) then
        if ( x > 0 ) and ( S2R(var) * Pow(Equip___GRADE_BONUS, x) > .01 ) then
          call Equip___AddReal(P , s , - ( S2R(var) * Pow(Equip___GRADE_BONUS, x) ) , msg)
        else
          call Equip___AddReal(P , s , - S2R(var) , msg)
        endif
      else
        call Equip___AddInteger(P , s , - R2I(S2R(var) * Pow(Equip___GRADE_BONUS, x)) , msg)
      endif
    endfunction
    function Equip___ReflectItemStats takes integer P returns nothing
      local string ss= ""
      local string return_s= ""
      local integer loopA= 0
      if ( Equip___STATS_ALL[P] == "" or Equip___STATS_ALL[P] == null ) then
        if ( GetLocalPlayer() == Player(P - 1) ) then
          call DzFrameSetText(Equip___Equip[18], "")
        endif
      else
        loop
          set ss=JNStringSplit(Equip___STATS_ALL[P], "'", loopA)
          exitwhen ss == "" or ss == null
          if ( JNStringContains(ss, "-") ) then
            set return_s=return_s + "\n" + Equip___S2O(SubString(ss, 0, 2)) + " " + SubString(ss, 3, StringLength(ss)) + Equip___S2Oadd(SubString(ss, 0, 2))
          else
            set return_s=return_s + "\n" + Equip___S2O(SubString(ss, 0, 2)) + " +" + SubString(ss, 3, StringLength(ss)) + Equip___S2Oadd(SubString(ss, 0, 2))
          endif
          set loopA=loopA + 1
        endloop
        if ( GetLocalPlayer() == Player(P - 1) ) then
          call DzFrameSetText(Equip___Equip[18], SubString(return_s, 1, StringLength(return_s)))
        endif
      endif
    endfunction
    
    function Equip_Process takes string s,integer P returns nothing
    
      local integer loopA= 0
      local integer length= 0
      local boolean first= true
      if ( s == "'" ) then
        return
      endif
      if ( P == 0 ) then
        set Equip___InvenInfo[7]=""
        loop
          set Equip___InvenInfo[0]=JNStringSplit(s, "'", loopA)
          exitwhen ( Equip___InvenInfo[0] == "" ) or ( Equip___InvenInfo[0] == null )
          if ( Equip___SkipStr(SubString(Equip___InvenInfo[0], 0, 2)) > 0 ) then
            set Equip___InvenInfo[Equip___SkipStr(SubString(Equip___InvenInfo[0], 0, 2))]=SubString(Equip___InvenInfo[0], 3, StringLength(Equip___InvenInfo[0]))
          elseif ( Equip___SkipStr(SubString(Equip___InvenInfo[0], 0, 2)) == - 1 ) then
            if ( first ) then
              set first=false
              set length=length + 1
              set Equip___InvenInfo[ITEM_TOOLTIP_HIDE + length]=" "
            endif
            set length=length + 1
            set Equip___InvenInfo[ITEM_TOOLTIP_HIDE + length]=Equip___S2O(SubString(Equip___InvenInfo[0], 0, 2)) + " - " + Equip___S2O(SubString(Equip___InvenInfo[0], 3, 5)) + " +" + SubString(Equip___InvenInfo[0], 6, StringLength(Equip___InvenInfo[0]))
          else
            set length=length + 1
            set Equip___InvenInfo[ITEM_TOOLTIP_HIDE + length]=Equip___S2O(SubString(Equip___InvenInfo[0], 0, 2)) + " +" + SubString(Equip___InvenInfo[0], 3, StringLength(Equip___InvenInfo[0]))
          endif
        
          set loopA=loopA + 1
        endloop
        
        set Equip___InvenInfo[0]=R2S(0.005 + ( 0.01 * JNStringCount(Equip___InvenInfo[1], "\n") ) + ( ITEM_TOOLTIP_HIDE + length ) * .012)
        loop
          set length=length + 1
          exitwhen length >= ITEM_TOOLTIP_MAXIMUM
          set Equip___InvenInfo[ITEM_TOOLTIP_HIDE + length]=""
        endloop
      elseif ( P > 0 ) then
        if ( JNStringContains(s, "ec_") ) then
          set Equip___InvenInfo[1]=JNStringSplit(JNStringSplit(s, "ec_", 1), "'", 0)
          if ( S2I(Equip___InvenInfo[1]) == 0 ) then
            set Equip___InvenInfo[1]=""
          endif
        else
          set Equip___InvenInfo[1]=""
        endif
        loop
          set Equip___InvenInfo[0]=JNStringSplit(s, "'", loopA)
          exitwhen ( Equip___InvenInfo[0] == "" ) or ( Equip___InvenInfo[0] == null )
          if ( Equip___SkipStr(SubString(Equip___InvenInfo[0], 0, 2)) <= 0 ) then
            if ( Equip___SkipStr(SubString(Equip___InvenInfo[0], 0, 2)) == - 1 ) then
              call Equip___AddStat(P , SubString(Equip___InvenInfo[0], 3, 5) , SubString(Equip___InvenInfo[0], 6, StringLength(Equip___InvenInfo[0])) , S2I(Equip___InvenInfo[1]) , JNStringContains(Equip___InvenInfo[0], ".") , true)
            else
              call Equip___AddStat(P , SubString(Equip___InvenInfo[0], 0, 2) , SubString(Equip___InvenInfo[0], 3, StringLength(Equip___InvenInfo[0])) , S2I(Equip___InvenInfo[1]) , JNStringContains(Equip___InvenInfo[0], ".") , true)
            endif
          endif
          set loopA=loopA + 1
        endloop
        call Equip___ReflectItemStats(P)
      else
        if ( JNStringContains(s, "ec_") ) then
          set Equip___InvenInfo[1]=JNStringSplit(JNStringSplit(s, "ec_", 1), "'", 0)
          if ( S2I(Equip___InvenInfo[1]) == 0 ) then
            set Equip___InvenInfo[1]=""
          endif
        else
          set Equip___InvenInfo[1]=""
        endif
        loop
          set Equip___InvenInfo[0]=JNStringSplit(s, "'", loopA)
          exitwhen ( Equip___InvenInfo[0] == "" ) or ( Equip___InvenInfo[0] == null )
          if ( Equip___SkipStr(SubString(Equip___InvenInfo[0], 0, 2)) <= 0 ) then
            if ( Equip___SkipStr(SubString(Equip___InvenInfo[0], 0, 2)) == - 1 ) then
              call Equip___MinusStat(- P , SubString(Equip___InvenInfo[0], 3, 5) , SubString(Equip___InvenInfo[0], 6, StringLength(Equip___InvenInfo[0])) , S2I(Equip___InvenInfo[1]) , JNStringContains(Equip___InvenInfo[0], ".") , true)
            else
              call Equip___MinusStat(- P , SubString(Equip___InvenInfo[0], 0, 2) , SubString(Equip___InvenInfo[0], 3, StringLength(Equip___InvenInfo[0])) , S2I(Equip___InvenInfo[1]) , JNStringContains(Equip___InvenInfo[0], ".") , true)
            endif
          endif
          set loopA=loopA + 1
        endloop
        call Equip___ReflectItemStats(- P)
      endif
    endfunction
    
    constant function Equip___xxx takes real r,real x returns real
      if ( x > 0. ) then
        return r * x
      else
        return r
      endif
    endfunction
    function Equip___ProcessEnchating takes string s,integer start,integer length,real x returns string
      local string ss= JNStringSub(s, length - 1, 1)
      if ( ss != "%" and ss != "x" ) then
        set ss=""
      endif
      if ( JNStringContains(s, ".") ) then
        if ( S2R(JNStringSub(s, start, length - start)) * x > 0.01 ) then
          return " |cffa349a4+" + R2SW(S2R(JNStringSub(s, start, length - start)) * x, 1, 2) + ss
        else
          return ""
        endif
      else
        set start=R2I(S2R(JNStringSub(s, start, length - start)) * x)
        if ( start > 0 ) then
          return " |cffa349a4+" + I2S(start) + ss
        else
          return ""
        endif
      endif
    endfunction
    function Equip___ProcessEnchat takes real r returns nothing
      local integer loopA= ITEM_TOOLTIP_HIDE + 1
      loop
        exitwhen loopA >= ITEM_TOOLTIP_MAXIMUM
        set Equip___InvenInfo[loopA]=Equip___InvenInfo[loopA] + Equip___ProcessEnchating(Equip___InvenInfo[loopA] , JNStringPos(Equip___InvenInfo[loopA], "+") , JNStringLength(Equip___InvenInfo[loopA]) , r)
        set loopA=loopA + 1
      endloop
    endfunction
    function Equip___NameSize takes integer frame,string s returns real
      local real etc= JNStringCount(s, " ") + 2.
      set s=s + "(" + Equip___InvenInfo[4] + ")"
      call DzFrameSetText(frame, s)
      if ( JNStringLength(s) >= 17 ) then
        call DzFrameSetFont(frame, "Fonts\\DFHeiMd.ttf", 0.010, 1)
        return 0.075 + etc * 0.0028 + ( JNStringLength(s) - etc ) * 0.007
      elseif ( JNStringLength(s) >= 13 ) then
        call DzFrameSetFont(frame, "Fonts\\DFHeiMd.ttf", 0.012, 1)
        return 0.075 + etc * 0.0034 + ( JNStringLength(s) - etc ) * 0.0086
      else
        call DzFrameSetFont(frame, "Fonts\\DFHeiMd.ttf", 0.014, 1)
        return 0.075 + etc * 0.004 + ( JNStringLength(s) - etc ) * 0.01
      endif
    endfunction
    function Equip___TypeSize takes integer frame,string s,string s6,string name returns real
      local real etc= JNStringLength(s)
      local real kor= ( StringLength(s) - etc ) / 2. + StringLength(s6)
      return RMaxBJ(Equip___NameSize(frame , name), 0.07 + ( etc - kor ) * 0.004 + kor * 0.01)
    endfunction
    //TypeSize(DzFrameGetText(Frame_InvenInfo[3]), DzFrameGetText(Frame_InvenInfo[6]))
    
    function Equip___GetFrameMouseX takes nothing returns real
      return JNMemoryGetReal(Equip___FrameMouseXOffset)
    endfunction
    function Equip___GetFrameMouseY takes nothing returns real
      return JNMemoryGetReal(Equip___FrameMouseYOffset)
    endfunction
    constant function Equip___Swap takes boolean one,integer arr returns integer
      if ( one ) then
        return Equip___Frame_EquipInfo[arr]
      else
        return Equip___Frame_Equip2Info[arr]
      endif
    endfunction
    constant function Equip___CalHeight takes real r0,real r1,real r2 returns real
      if ( r0 > r1 ) then
        return 0.
      elseif ( r1 > r2 ) then
        return r1 - r2
      else
        return 0.
      endif
    endfunction
    function Equip___EquipUp takes item t,boolean one returns nothing
      local integer f= 7
      local integer last= 0
      call Equip_Process(EXGetItemDataString(GetItemTypeId(t), 3) + "'" + LoadStr(hash, GetHandleId(t), StringHash("ItemAddData")) , 0)
      
      call DzFrameSetTexture(Equip___Swap(one , 1), EXGetItemDataString(GetItemTypeId(t), 1), 0)
      call DzFrameSetText(Equip___Swap(one , 3), "종류: " + Equip___InvenInfo[6] + "등급 " + Equip___InvenInfo[2])
      call DzFrameSetText(Equip___Swap(one , 4), "레벨 제한: " + Equip___InvenInfo[3])
      call DzFrameSetText(Equip___Swap(one , 5), Equip___InvenInfo[1])
      if ( Equip___InvenInfo[7] != "" ) then
        call Equip___ProcessEnchat(Pow(Equip___GRADE_BONUS, S2R(Equip___InvenInfo[7])) - 1.)
      endif
      loop
        exitwhen f >= ITEM_TOOLTIP_MAXIMUM + 2
        if ( Equip___InvenInfo[f + 2] == "" ) then
          call DzFrameSetText(Equip___Swap(one , f - 1), "")
          set last=f - 2
        else
          call DzFrameSetText(Equip___Swap(one , f - 1), Equip___InvenInfo[f + 2])
        endif
        set f=f + 1
      endloop
      
      if ( Equip___InvenInfo[7] != "" ) then
        call DzFrameSetText(Equip___Swap(one , last), " ")
        call DzFrameSetText(Equip___Swap(one , last + 1), "|cffa349a4강화 +" + Equip___InvenInfo[7] + " / 옵션증폭 +" + I2S(R2I(( Pow(Equip___GRADE_BONUS, S2R(Equip___InvenInfo[7])) - 1. ) * 100.)) + "%")
        call DzFrameSetSize(Equip___Swap(one , 0), Equip___TypeSize(Equip___Swap(one , 2) , DzFrameGetText(Equip___Swap(one , 3)) , Equip___InvenInfo[6] , GetItemName(t)), S2R(Equip___InvenInfo[0]) + .014)
      else
        call DzFrameSetSize(Equip___Swap(one , 0), Equip___TypeSize(Equip___Swap(one , 2) , DzFrameGetText(Equip___Swap(one , 3)) , Equip___InvenInfo[6] , GetItemName(t)), S2R(Equip___InvenInfo[0]) - .010)
      endif
      call DzFrameClearAllPoints(Equip___Swap(one , 0))
      if ( one ) then
        call DzFrameSetPoint(Equip___Swap(one , 0), JN_FRAMEPOINT_TOPRIGHT, Equip___Frame_InvenInfo[0], JN_FRAMEPOINT_TOPLEFT, 0., Equip___CalHeight(DzFrameGetHeight(Equip___Frame_InvenInfo[0]) , DzFrameGetHeight(Equip___Swap(one , 0)) , Equip___GetFrameMouseY()))
      else
        call DzFrameSetPoint(Equip___Swap(one , 0), JN_FRAMEPOINT_TOPRIGHT, Equip___Swap(true , 0), JN_FRAMEPOINT_TOPLEFT, 0., Equip___CalHeight(DzFrameGetHeight(Equip___Swap(true , 0)) , DzFrameGetHeight(Equip___Swap(one , 0)) , Equip___GetFrameMouseY()))
      endif
      call DzFrameShow(Equip___Swap(one , 0), true)
    endfunction
    function Equip___InventoryUp takes nothing returns nothing
      local integer f= DzGetTriggerUIEventFrame()
      local integer P= GetPlayerId(DzGetTriggerUIEventPlayer()) + 1
      local integer Slot= LoadInteger(hash, f, StringHash("FrameID"))
      local item t= LoadItemHandle(hash, P, StringHash("ItemData" + I2S(Slot)))
      local integer last= 0
      
      call Equip_Process(EXGetItemDataString(GetItemTypeId(t), 3) + "'" + LoadStr(hash, GetHandleId(t), StringHash("ItemAddData")) , 0)
        if ( t != null ) then
          call DzSyncData("MouseVar", I2S(Slot))
          
          call DzFrameSetTexture(Equip___Frame_InvenInfo[1], EXGetItemDataString(GetItemTypeId(t), 1), 0)
          call DzFrameSetText(Equip___Frame_InvenInfo[3], "종류: " + Equip___InvenInfo[6] + "등급 " + Equip___InvenInfo[2])
          call DzFrameSetText(Equip___Frame_InvenInfo[4], "레벨 제한: " + Equip___InvenInfo[3])
          call DzFrameSetText(Equip___Frame_InvenInfo[5], Equip___InvenInfo[1])
          set f=7
          if ( Equip___InvenInfo[7] != "" ) then
            call Equip___ProcessEnchat(Pow(Equip___GRADE_BONUS, S2R(Equip___InvenInfo[7])) - 1.)
          endif
          loop
            exitwhen f >= ITEM_TOOLTIP_MAXIMUM + 2
            if ( Equip___InvenInfo[f + 2] == "" ) then
              call DzFrameSetText(Equip___Frame_InvenInfo[f - 1], "")
              set last=f - 2
            else
              call DzFrameSetText(Equip___Frame_InvenInfo[f - 1], Equip___InvenInfo[f + 2])
            endif
            set f=f + 1
          endloop
  
          if ( Equip___InvenInfo[7] != "" ) then
            call DzFrameSetText(Equip___Frame_InvenInfo[last], " ")
            call DzFrameSetText(Equip___Frame_InvenInfo[last + 1], "|cffa349a4강화 +" + Equip___InvenInfo[7] + " / 옵션증폭 +" + I2S(R2I(( Pow(Equip___GRADE_BONUS, S2R(Equip___InvenInfo[7])) - 1. ) * 100.)) + "%")
            call DzFrameSetSize(Equip___Frame_InvenInfo[0], Equip___TypeSize(Equip___Frame_InvenInfo[2] , DzFrameGetText(Equip___Frame_InvenInfo[3]) , Equip___InvenInfo[6] , GetItemName(t)), S2R(Equip___InvenInfo[0]) + .014)
          else
            call DzFrameSetSize(Equip___Frame_InvenInfo[0], Equip___TypeSize(Equip___Frame_InvenInfo[2] , DzFrameGetText(Equip___Frame_InvenInfo[3]) , Equip___InvenInfo[6] , GetItemName(t)), S2R(Equip___InvenInfo[0]) - .010)
          endif
          call DzFrameClearAllPoints(Equip___Frame_InvenInfo[0])
          if ( Equip___GetFrameMouseY() > DzFrameGetHeight(Equip___Frame_InvenInfo[0]) ) then
            call DzFrameSetAbsolutePoint(Equip___Frame_InvenInfo[0], JN_FRAMEPOINT_TOPRIGHT, Equip___GetFrameMouseX(), Equip___GetFrameMouseY())
          else
            call DzFrameSetAbsolutePoint(Equip___Frame_InvenInfo[0], JN_FRAMEPOINT_BOTTOMRIGHT, Equip___GetFrameMouseX(), 0.)
          endif
          call DzFrameShow(Equip___Frame_InvenInfo[0], true)
          
          if ( Slot > 0 ) then
            set Slot=Equip_CS2I(Equip___InvenInfo[2])
            if ( HaveSavedHandle(hash, P, StringHash("ItemData" + I2S(- Slot))) ) then
              call Equip___EquipUp(LoadItemHandle(hash, P, StringHash("ItemData" + I2S(- Slot))) , true)
              set Slot=Equip___CS2II(Slot)
              if ( Slot > 0 ) and ( HaveSavedHandle(hash, P, StringHash("ItemData" + I2S(- Slot))) ) then
                call Equip___EquipUp(LoadItemHandle(hash, P, StringHash("ItemData" + I2S(- Slot))) , false)
              endif
            elseif ( Equip___CS2II(Slot) > 0 ) and ( HaveSavedHandle(hash, P, StringHash("ItemData" + I2S(- Equip___CS2II(Slot)))) ) then
              call Equip___EquipUp(LoadItemHandle(hash, P, StringHash("ItemData" + I2S(- Equip___CS2II(Slot)))) , true)
            endif
          endif
        endif
        
        set t=null
    endfunction
    function Equip___InventoryDown takes nothing returns nothing
      call DzFrameShow(Equip___Frame_InvenInfo[0], false)
      call DzFrameShow(Equip___Swap(true , 0), false)
      call DzFrameShow(Equip___Swap(false , 0), false)
      call DzSyncData("MouseVar", "")
    endfunction
    function Equip___CreateEquip takes nothing returns nothing
      local integer loopA= 1
      local integer loopB= 1
      local integer loopC= 1
      set Equip_EquipBackdrop[0]=DzCreateFrameByTagName("BACKDROP", "", Frame_InvenButtonsBackDrop[0], "", 0)
      //StandardDecoratedEditBoxBackdropTemplate
      call DzFrameSetSize(Equip_EquipBackdrop[0], Equip___EQUIPSPACEGAP * 5. + Equip___EQUIPEDGEGAP * 2., Equip___EQUIPSPACEGAP * 5. + Equip___EQUIPEDGEGAP * 2.)
      call DzFrameSetPoint(Equip_EquipBackdrop[0], JN_FRAMEPOINT_BOTTOMRIGHT, Frame_InvenButtonsBackDrop[0], JN_FRAMEPOINT_TOPRIGHT, 0., Equip_SPACEGAP * .5 + Equip_EDGEGAP * 2)
      call DzFrameSetTexture(Equip_EquipBackdrop[0], "Equip_Back.blp", 0)
      
      loop
        if ( loopA == 1 ) or ( loopA == 5 ) or ( loopB == 1 ) or ( loopB == 5 ) then
          set Equip_EquipBackdrop[loopC]=DzCreateFrameByTagName("BACKDROP", "", Equip_EquipBackdrop[0], "", 0)
          call DzFrameSetTexture(Equip_EquipBackdrop[loopC], Equip_I2BE(loopC), 0)
          call DzFrameSetPoint(Equip_EquipBackdrop[loopC], JN_FRAMEPOINT_TOPLEFT, Equip_EquipBackdrop[0], JN_FRAMEPOINT_TOPLEFT, Equip___EQUIPEDGEGAP + Equip___EQUIPSPACEGAP * ( loopA - 1 ), - Equip___EQUIPEDGEGAP - Equip___EQUIPSPACEGAP * ( loopB - 1 ))
          call DzFrameSetSize(Equip_EquipBackdrop[loopC], Equip___EQUIPSPACEGAP - Equip___EQUIPEDGEGAP, Equip___EQUIPSPACEGAP - Equip___EQUIPEDGEGAP)
          
          set Equip___Equip[loopC]=DzCreateFrameByTagName("BUTTON", "", Equip_EquipBackdrop[loopC], "ScoreScreenTabButtonTemplate", 0)
          call DzFrameSetAllPoints(Equip___Equip[loopC], Equip_EquipBackdrop[loopC])
          call SaveInteger(hash, Equip___Equip[loopC], StringHash("FrameID"), - loopC)
          call DzFrameSetScriptByCode(Equip___Equip[loopC], JN_FRAMEEVENT_MOUSE_ENTER, function Equip___InventoryUp, false)
          call DzFrameSetScriptByCode(Equip___Equip[loopC], JN_FRAMEEVENT_MOUSE_LEAVE, function Equip___InventoryDown, false)
          
          call DzFrameSetScriptByCode(Equip___Equip[loopC], JN_FRAMEEVENT_MOUSE_DOUBLECLICK, function Equip___DoubleClick, true)
  
          set loopC=loopC + 1
        endif
        set loopA=loopA + 1
        if ( loopA >= 6 ) then
          set loopA=1
          set loopB=loopB + 1
        endif
        exitwhen loopB >= 6
      endloop
      set Equip___Equip[loopC]=DzCreateFrameByTagName("TEXT", "", Equip_EquipBackdrop[0], "", 0)
      call DzFrameSetPoint(Equip___Equip[loopC], JN_FRAMEPOINT_TOP, Equip_EquipBackdrop[0], JN_FRAMEPOINT_TOP, 0., - Equip___EQUIPSPACEGAP - Equip___EQUIPEDGEGAP)
      call DzFrameSetText(Equip___Equip[loopC], "아이템 상승치")
      call DzFrameSetFont(Equip___Equip[loopC], "Fonts\\DFHeiMd.ttf", 0.012, 0)
      
      set loopC=18
      set Equip___Equip[loopC]=DzCreateFrameByTagName("TEXTAREA", "", Equip_EquipBackdrop[0], "EscMenuTextAreaTemplate", 0)
      call DzFrameClearAllPoints(Equip___Equip[loopC])
      call DzFrameSetPoint(Equip___Equip[loopC], JN_FRAMEPOINT_TOP, Equip___Equip[loopC - 1], JN_FRAMEPOINT_BOTTOM, 0., 0.)
      call DzFrameSetSize(Equip___Equip[loopC], .12, .11)
      call DzFrameSetFont(Equip___Equip[loopC], "Fonts\\DFHeiMd.ttf", 0.010, 0)
      call DzFrameSetText(Equip___Equip[loopC], "")
      //스크롤바 클릭 가능하면: 0.72, 0.43
    endfunction
    function Equip___ItemDrop takes nothing returns nothing
    
      local integer P= GetPlayerId(DzGetTriggerSyncPlayer()) + 1
      local integer Slot= S2I(DzGetTriggerSyncData())
      local item t= LoadItemHandle(hash, P, StringHash("ItemData" + I2S(Slot)))
      local integer NextSlot= LoadInteger(hash, P, StringHash("ItemData0"))
      
      if ( GetLocalPlayer() == Player(P - 1) ) then
        call StartSound(gg_snd_HeroDropItem1)
      endif
      if ( Slot == - 99 ) then
        set Slot=MAX_SAVE_INVENTORY
        loop
          if ( HaveSavedHandle(hash, P, StringHash("ItemData" + I2S(Slot))) ) then
            set t=LoadItemHandle(hash, P, StringHash("ItemData" + I2S(Slot)))
            call SetItemPosition(t, GetWidgetX(udg_hero[P]), GetWidgetY(udg_hero[P]))
            call RemoveSavedHandle(hash, P, StringHash("ItemData" + I2S(Slot)))
            if ( GetLocalPlayer() == Player(P - 1) ) then
              call DzFrameSetTexture(Frame_InvenButtonsBackDrop[Slot], "Inven_Empty.blp", 0)
            endif
          endif
          exitwhen Slot == 1
          set Slot=Slot - 1
        endloop
        call DisplayTimedTextToPlayer(Player(P - 1), 0, 0, 4., "아이템을 모두 버렸습니다.")
        call SaveInteger(hash, P, StringHash("ItemData0"), Slot)
      else
        if ( NextSlot == 0 ) then
          call SaveInteger(hash, P, StringHash("ItemData0"), IMinBJ(Slot, NextSlot))
        else
          call SaveInteger(hash, P, StringHash("ItemData0"), Slot)
        endif
        call SetItemPosition(t, GetWidgetX(udg_hero[P]), GetWidgetY(udg_hero[P]))
        call RemoveSavedHandle(hash, P, StringHash("ItemData" + I2S(Slot)))
        call DisplayTimedTextToPlayer(Player(P - 1), 0, 0, 4., GetItemName(t) + "을(를) 버렸습니다.")
      endif
      set t=null
    endfunction
    function Equip___ItemChange takes nothing returns nothing
    
      local integer P= GetPlayerId(DzGetTriggerSyncPlayer()) + 1
      local string s= DzGetTriggerSyncData()
      local integer OriSlot= S2I(JNStringSplit(s, "'", 0))
      local integer NewSlot= S2I(JNStringSplit(s, "'", 1))
      local item t= LoadItemHandle(hash, P, StringHash("ItemData" + I2S(NewSlot)))
      
      call SaveItemHandle(hash, P, StringHash("ItemData" + I2S(NewSlot)), LoadItemHandle(hash, P, StringHash("ItemData" + I2S(OriSlot))))
      
      if ( t == null ) then
        call RemoveSavedHandle(hash, P, StringHash("ItemData" + I2S(OriSlot)))
        call SaveInteger(hash, P, StringHash("ItemData0"), IMinBJ(OriSlot, LoadInteger(hash, P, StringHash("ItemData0"))))
      else
        call SaveItemHandle(hash, P, StringHash("ItemData" + I2S(OriSlot)), t)
      endif
      //call DisplayTimedTextToPlayer(Player(P-1), 0, 0, 4., GetItemName(LoadItemHandle(hash, P, StringHash("ItemData"+I2S(NewSlot)))) + "와 "+GetItemName(t)+"을(를) 바꿨습니다.")
      set t=null
    endfunction
    function Equip_GetEmpty takes integer P returns integer
    //다음에 먹을 빈 공간 찾기
     local integer loopA= 1
      loop
        if not ( HaveSavedHandle(hash, P, StringHash("ItemData" + I2S(loopA))) ) then
          call SaveInteger(hash, P, StringHash("ItemData0"), loopA)
          return loopA
        endif
        exitwhen loopA >= MAX_SAVE_INVENTORY
        set loopA=loopA + 1
      endloop
      return 0
    endfunction
    function Equip___ItemEquip2 takes item t,integer P,integer Slot,integer Num returns nothing
      if ( GetLocalPlayer() == Player(P - 1) ) then
        call DzFrameSetTexture(Equip_EquipBackdrop[Slot], EXGetItemDataString(GetItemTypeId(t), 1), 0)
        call DzFrameSetTexture(Frame_InvenButtonsBackDrop[Num], "Inven_Empty.blp", 0)
      endif
      call SaveItemHandle(hash, P, StringHash("ItemData" + I2S(- Slot)), t)
      call RemoveSavedHandle(hash, P, StringHash("ItemData" + I2S(Num)))
      
      call SaveInteger(hash, P, StringHash("ItemData0"), IMinBJ(Num, LoadInteger(hash, P, StringHash("ItemData0"))))
      
      call Equip_Process(EXGetItemDataString(GetItemTypeId(t), 3) + "'" + LoadStr(hash, GetHandleId(t), StringHash("ItemAddData")) , P)
    endfunction
    function Equip___ItemEquip takes nothing returns nothing
      local integer P= GetPlayerId(DzGetTriggerSyncPlayer()) + 1
      local integer Num= S2I(DzGetTriggerSyncData())
      local integer Slot= 0
      local item t
      if ( Num < 0 ) then
        set t=LoadItemHandle(hash, P, StringHash("ItemData" + I2S(Num)))
        set Slot=LoadInteger(hash, P, StringHash("ItemData0"))
        if ( GetLocalPlayer() == Player(P - 1) ) then
          call DzFrameSetTexture(Equip_EquipBackdrop[- Num], Equip_I2BE(- Num), 0)
          call DzFrameSetTexture(Frame_InvenButtonsBackDrop[Slot], EXGetItemDataString(GetItemTypeId(t), 1), 0)
        endif
        call SaveItemHandle(hash, P, StringHash("ItemData" + I2S(Slot)), t)
        call RemoveSavedHandle(hash, P, StringHash("ItemData" + I2S(Num)))
        call Equip_GetEmpty(P)
        
        
        call Equip_Process(EXGetItemDataString(GetItemTypeId(t), 3) + "'" + LoadStr(hash, GetHandleId(t), StringHash("ItemAddData")) , - P)
      else
        set t=LoadItemHandle(hash, P, StringHash("ItemData" + I2S(Num)))
        call Equip_Process(EXGetItemDataString(GetItemTypeId(t), 3) + "'" + LoadStr(hash, GetHandleId(t), StringHash("ItemAddData")) , 0)
        set Slot=Equip_CS2I(Equip___InvenInfo[2])
        
        if ( GetHeroLevel(udg_hero[P]) < S2I(Equip___InvenInfo[3]) ) then
          call DisplayTimedTextToPlayer(Player(P - 1), 0, 0, 4., GetItemName(t) + "의 착용레벨은 " + Equip___InvenInfo[3] + " 입니다.")
        elseif ( HaveSavedHandle(hash, P, StringHash("ItemData" + I2S(- Slot))) ) then
          if ( Equip___CS2II(Slot) == 0 ) or ( HaveSavedHandle(hash, P, StringHash("ItemData" + I2S(- Equip___CS2II(Slot)))) ) then
            call DisplayTimedTextToPlayer(Player(P - 1), 0, 0, 4., Equip_I2CS(Slot) + "에 장착된 " + GetItemName(LoadItemHandle(hash, P, StringHash("ItemData" + I2S(- Slot)))) + "을(를) 먼저 장착 해제해주세요.")
          else
            call Equip___ItemEquip2(t , P , Equip___CS2II(Slot) , Num)
          endif
        else
          call Equip___ItemEquip2(t , P , Slot , Num)
        endif
      endif
    endfunction
    function Equip___InventoryClick takes nothing returns nothing
      local integer f= DzGetTriggerUIEventFrame()
      local integer P= GetPlayerId(DzGetTriggerUIEventPlayer()) + 1
      local integer fno= LoadInteger(hash, f, StringHash("FrameID"))
      local item t= LoadItemHandle(hash, P, StringHash("ItemData" + I2S(fno)))
      if ( Equip___ClickNow[P] == 0 ) then
        if ( fno == - 99 ) then
          call DzFrameSetModel(Equip___ClickView, "Equip_Clicking2.mdx", 0, 0)
        elseif ( t != null ) then
          call DzFrameSetModel(Equip___ClickView, "Equip_Clicking1.mdx", 0, 0)
        else
          return
        endif
        set Equip___ClickNow[P]=fno
        call DzFrameClearAllPoints(Equip___ClickView)
        call DzFrameSetAllPoints(Equip___ClickView, f)
        call DzFrameShow(Equip___ClickView, true)
        set t=null
      elseif ( t != null ) then
        if ( Equip___ClickNow[P] == - 99 ) then
          call DzFrameSetTexture(Frame_InvenButtonsBackDrop[fno], "Inven_Empty.blp", 0)
          call DzSyncData("ItemDrop", I2S(fno))
        elseif ( fno == Equip___ClickNow[P] ) then
          call DzSyncData("I_Equip", I2S(fno))
        else
          call DzSyncData("I_Change", I2S(Equip___ClickNow[P]) + "'" + I2S(fno))
          call DzFrameSetTexture(Frame_InvenButtonsBackDrop[Equip___ClickNow[P]], EXGetItemDataString(GetItemTypeId(LoadItemHandle(hash, P, StringHash("ItemData" + I2S(fno)))), 1), 0)
          call DzFrameSetTexture(Frame_InvenButtonsBackDrop[fno], EXGetItemDataString(GetItemTypeId(LoadItemHandle(hash, P, StringHash("ItemData" + I2S(Equip___ClickNow[P])))), 1), 0)
          
          call DzSyncData("MouseVar", I2S(fno))
        endif
        set t=null
        set Equip___ClickNow[P]=0
        call DzFrameShow(Equip___ClickView, false)
      elseif ( fno != 0 ) then
        call DzFrameSetTexture(Frame_InvenButtonsBackDrop[Equip___ClickNow[P]], "Inven_Empty.blp", 0)
        if ( fno == - 99 ) then
          call DzSyncData("ItemDrop", I2S(Equip___ClickNow[P]))
        elseif ( Equip___ClickNow[P] != - 99 ) then
          call DzSyncData("I_Change", I2S(Equip___ClickNow[P]) + "'" + I2S(fno))
          call DzFrameSetTexture(Frame_InvenButtonsBackDrop[fno], EXGetItemDataString(GetItemTypeId(LoadItemHandle(hash, P, StringHash("ItemData" + I2S(Equip___ClickNow[P])))), 1), 0)
          call DzFrameSetTexture(Frame_InvenButtonsBackDrop[Equip___ClickNow[P]], "Inven_Empty.blp", 0)
          
          call DzSyncData("MouseVar", I2S(fno))
        endif
        set Equip___ClickNow[P]=0
        call DzFrameShow(Equip___ClickView, false)
      endif
    endfunction
    function Equip___InventoryToolTip takes nothing returns nothing
      local integer int= 0
      set Equip___Frame_InvenInfo[int]=DzCreateFrameByTagName("BACKDROP", "", Frame_InvenButtonsBackDrop[0], "QuestButtonBaseTemplate", 0)
      call DzFrameSetSize(Equip___Frame_InvenInfo[int], .25, .25)
      call DzFrameSetAbsolutePoint(Equip___Frame_InvenInfo[int], JN_FRAMEPOINT_TOPLEFT, .4, .3)
      //call DzFrameSetTexture(Frame_InvenInfo[int], "QuestButtonBaseTemplate", 0)
      
      set int=int + 1
      set Equip___Frame_InvenInfo[int]=DzCreateFrameByTagName("BACKDROP", "", Equip___Frame_InvenInfo[0], "", 0)
      call DzFrameSetSize(Equip___Frame_InvenInfo[int], .05, .05)
      call DzFrameSetPoint(Equip___Frame_InvenInfo[int], JN_FRAMEPOINT_TOPLEFT, Equip___Frame_InvenInfo[0], JN_FRAMEPOINT_TOPLEFT, .01, - .01)
      call DzFrameSetTexture(Equip___Frame_InvenInfo[int], "Inven_Empty.blp", 0)
      
      set int=int + 1
      set Equip___Frame_InvenInfo[int]=DzCreateFrameByTagName("TEXT", "", Equip___Frame_InvenInfo[0], "", 0)
      call DzFrameSetPoint(Equip___Frame_InvenInfo[int], JN_FRAMEPOINT_BOTTOMLEFT, Equip___Frame_InvenInfo[int - 1], JN_FRAMEPOINT_TOPRIGHT, .01, - .015)
      call DzFrameSetText(Equip___Frame_InvenInfo[int], "바이탈리티 페리앱트 (에픽)")
      
      set int=int + 1
      set Equip___Frame_InvenInfo[int]=DzCreateFrameByTagName("TEXT", "", Equip___Frame_InvenInfo[0], "", 0)
      call DzFrameSetPoint(Equip___Frame_InvenInfo[int], JN_FRAMEPOINT_TOPLEFT, Equip___Frame_InvenInfo[int - 1], JN_FRAMEPOINT_BOTTOMLEFT, 0., - .005)
      call DzFrameSetText(Equip___Frame_InvenInfo[int], "종류: S등급 반지")
      
      set int=int + 1
      set Equip___Frame_InvenInfo[int]=DzCreateFrameByTagName("TEXT", "", Equip___Frame_InvenInfo[0], "", 0)
      call DzFrameSetPoint(Equip___Frame_InvenInfo[int], JN_FRAMEPOINT_TOPLEFT, Equip___Frame_InvenInfo[int - 1], JN_FRAMEPOINT_BOTTOMLEFT, 0., - .005)
      call DzFrameSetText(Equip___Frame_InvenInfo[int], "착용 레벨: 40")
      
      set int=int + 1
      set Equip___Frame_InvenInfo[int]=DzCreateFrameByTagName("TEXT", "", Equip___Frame_InvenInfo[0], "", 0)
      call DzFrameSetPoint(Equip___Frame_InvenInfo[int], JN_FRAMEPOINT_TOPLEFT, Equip___Frame_InvenInfo[1], JN_FRAMEPOINT_BOTTOMLEFT, 0., - .01)
      call DzFrameSetFont(Equip___Frame_InvenInfo[int], "Fonts\\DFHeiMd.ttf", 0.010, 1)
      call DzFrameSetText(Equip___Frame_InvenInfo[int], "전설에 의하면 저주에 걸린 아쥰의 영혼이\n  오늘 날까지도 자신의 심장을 찾고 있다고\n  합니다.")
  
      loop
        set int=int + 1
        set Equip___Frame_InvenInfo[int]=DzCreateFrameByTagName("TEXT", "", Equip___Frame_InvenInfo[0], "", 0)
        if ( int == 6 ) then
          call DzFrameSetPoint(Equip___Frame_InvenInfo[int], JN_FRAMEPOINT_TOPLEFT, Equip___Frame_InvenInfo[int - 1], JN_FRAMEPOINT_BOTTOMLEFT, 0., - .01)
        else
          call DzFrameSetPoint(Equip___Frame_InvenInfo[int], JN_FRAMEPOINT_TOPLEFT, Equip___Frame_InvenInfo[int - 1], JN_FRAMEPOINT_BOTTOMLEFT, 0., 0.)
        endif
        call DzFrameSetFont(Equip___Frame_InvenInfo[int], "Fonts\\DFHeiMd.ttf", 0.012, 1)
        call DzFrameSetText(Equip___Frame_InvenInfo[int], I2S(int))
        exitwhen int >= ITEM_TOOLTIP_MAXIMUM
      endloop
        
      call DzFrameShow(Equip___Frame_InvenInfo[0], false)
    endfunction
    function Equip___SwapSet takes boolean first,integer arr,integer var returns nothing
      if ( first ) then
        set Equip___Frame_EquipInfo[arr]=var
      else
        set Equip___Frame_Equip2Info[arr]=var
      endif
    endfunction
    function Equip___EquipToolTip takes boolean first returns nothing
      local integer int= 0
      call Equip___SwapSet(first , int , DzCreateFrameByTagName("BACKDROP", "", Frame_InvenButtonsBackDrop[0], "QuestButtonBaseTemplate", 0))
      call DzFrameSetSize(Equip___Swap(first , int), .25, .25)
      call DzFrameSetAbsolutePoint(Equip___Swap(first , int), JN_FRAMEPOINT_TOPLEFT, .4, .3)
      //call DzFrameSetTexture(Swap(first, int), "QuestButtonBaseTemplate", 0)
      
      set int=int + 1
      call Equip___SwapSet(first , int , DzCreateFrameByTagName("BACKDROP", "", Equip___Swap(first , 0), "", 0))
      call DzFrameSetSize(Equip___Swap(first , int), .05, .05)
      call DzFrameSetPoint(Equip___Swap(first , int), JN_FRAMEPOINT_TOPLEFT, Equip___Swap(first , 0), JN_FRAMEPOINT_TOPLEFT, .01, - .01)
      call DzFrameSetTexture(Equip___Swap(first , int), "Inven_Empty.blp", 0)
      
      set int=int + 1
      call Equip___SwapSet(first , int , DzCreateFrameByTagName("TEXT", "", Equip___Swap(first , 0), "", 0))
      call DzFrameSetPoint(Equip___Swap(first , int), JN_FRAMEPOINT_BOTTOMLEFT, Equip___Swap(first , int - 1), JN_FRAMEPOINT_TOPRIGHT, .01, - .015)
      call DzFrameSetText(Equip___Swap(first , int), "바이탈리티 페리앱트 (에픽)")
      
      set int=int + 1
      call Equip___SwapSet(first , int , DzCreateFrameByTagName("TEXT", "", Equip___Swap(first , 0), "", 0))
      call DzFrameSetPoint(Equip___Swap(first , int), JN_FRAMEPOINT_TOPLEFT, Equip___Swap(first , int - 1), JN_FRAMEPOINT_BOTTOMLEFT, 0., - .005)
      call DzFrameSetText(Equip___Swap(first , int), "종류: S등급 반지")
      
      set int=int + 1
      call Equip___SwapSet(first , int , DzCreateFrameByTagName("TEXT", "", Equip___Swap(first , 0), "", 0))
      call DzFrameSetPoint(Equip___Swap(first , int), JN_FRAMEPOINT_TOPLEFT, Equip___Swap(first , int - 1), JN_FRAMEPOINT_BOTTOMLEFT, 0., - .005)
      call DzFrameSetText(Equip___Swap(first , int), "착용 레벨: 40")
      
      set int=int + 1
      call Equip___SwapSet(first , int , DzCreateFrameByTagName("TEXT", "", Equip___Swap(first , 0), "", 0))
      call DzFrameSetPoint(Equip___Swap(first , int), JN_FRAMEPOINT_TOPLEFT, Equip___Swap(first , 1), JN_FRAMEPOINT_BOTTOMLEFT, 0., - .01)
      call DzFrameSetFont(Equip___Swap(first , int), "Fonts\\DFHeiMd.ttf", 0.010, 1)
      call DzFrameSetText(Equip___Swap(first , int), "전설에 의하면 저주에 걸린 아쥰의 영혼이\n  오늘 날까지도 자신의 심장을 찾고 있다고\n  합니다.")
  
      loop
        set int=int + 1
        call Equip___SwapSet(first , int , DzCreateFrameByTagName("TEXT", "", Equip___Swap(first , 0), "", 0))
        if ( int == 6 ) then
          call DzFrameSetPoint(Equip___Swap(first , int), JN_FRAMEPOINT_TOPLEFT, Equip___Swap(first , int - 1), JN_FRAMEPOINT_BOTTOMLEFT, 0., - .01)
        else
          call DzFrameSetPoint(Equip___Swap(first , int), JN_FRAMEPOINT_TOPLEFT, Equip___Swap(first , int - 1), JN_FRAMEPOINT_BOTTOMLEFT, 0., 0.)
        endif
        call DzFrameSetFont(Equip___Swap(first , int), "Fonts\\DFHeiMd.ttf", 0.012, 1)
        call DzFrameSetText(Equip___Swap(first , int), I2S(int))
        exitwhen int >= ITEM_TOOLTIP_MAXIMUM
      endloop
        
      call DzFrameShow(Equip___Swap(first , 0), false)
    endfunction
    constant function Equip___Cal takes integer A,integer B returns integer
      return ( B - 1 ) * 7 + A
    endfunction
    function Equip___CreateInventory takes nothing returns nothing
      local integer loopA= 0
      local integer loopB= 1
      set Frame_InvenButtonsBackDrop[loopA]=DzCreateFrameByTagName("BACKDROP", "", DzGetGameUI(), "", 0)
      //StandardDecoratedEditBoxBackdropTemplate
      call DzFrameSetSize(Frame_InvenButtonsBackDrop[loopA], Equip_SPACEGAP * 7. + Equip_EDGEGAP * 2., Equip_SPACEGAP * 8. + Equip_EDGEGAP)
      call DzFrameSetAbsolutePoint(Frame_InvenButtonsBackDrop[loopA], JN_FRAMEPOINT_BOTTOMLEFT, .6, .08)
      call DzFrameSetTexture(Frame_InvenButtonsBackDrop[loopA], "Equip_Back.blp", 0)
      
      set Frame_InvenButtons[loopA]=DzCreateFrameByTagName("TEXT", "", Frame_InvenButtonsBackDrop[loopA], "", 0)
      call DzFrameSetPoint(Frame_InvenButtons[loopA], JN_FRAMEPOINT_CENTER, Frame_InvenButtonsBackDrop[loopA], JN_FRAMEPOINT_TOP, 0, - Equip_SPACEGAP * .5)
      call DzFrameSetText(Frame_InvenButtons[loopA], "I  N  V  E  N  T  O  R  Y")
      
      loop
        set loopA=loopA + 1
        set Frame_InvenButtonsBackDrop[Equip___Cal(loopA , loopB)]=DzCreateFrameByTagName("BACKDROP", "", Frame_InvenButtonsBackDrop[0], "", 0)
        call DzFrameSetPoint(Frame_InvenButtonsBackDrop[Equip___Cal(loopA , loopB)], JN_FRAMEPOINT_TOPLEFT, Frame_InvenButtonsBackDrop[0], JN_FRAMEPOINT_TOPLEFT, Equip_EDGEGAP + Equip_SPACEGAP * ( loopA - 1 ), - Equip_EDGEGAP - Equip_SPACEGAP * loopB)
        call DzFrameSetSize(Frame_InvenButtonsBackDrop[Equip___Cal(loopA , loopB)], 0.0235, 0.0235)
        call DzFrameSetTexture(Frame_InvenButtonsBackDrop[Equip___Cal(loopA , loopB)], "Inven_Empty.blp", 0)
        
        set Frame_InvenButtons[Equip___Cal(loopA , loopB)]=DzCreateFrameByTagName("BUTTON", "", Frame_InvenButtonsBackDrop[Equip___Cal(loopA , loopB)], "ScoreScreenTabButtonTemplate", 0)
        call DzFrameSetAllPoints(Frame_InvenButtons[Equip___Cal(loopA , loopB)], Frame_InvenButtonsBackDrop[Equip___Cal(loopA , loopB)])
        call SaveInteger(hash, Frame_InvenButtons[Equip___Cal(loopA , loopB)], StringHash("FrameID"), Equip___Cal(loopA , loopB))
        call DzFrameSetScriptByCode(Frame_InvenButtons[Equip___Cal(loopA , loopB)], JN_FRAMEEVENT_MOUSE_ENTER, function Equip___InventoryUp, false)
        call DzFrameSetScriptByCode(Frame_InvenButtons[Equip___Cal(loopA , loopB)], JN_FRAMEEVENT_MOUSE_LEAVE, function Equip___InventoryDown, false)
        call DzFrameSetScriptByCode(Frame_InvenButtons[Equip___Cal(loopA , loopB)], JN_FRAMEEVENT_MOUSE_UP, function Equip___InventoryClick, false)
        
        if ( loopA >= 7 ) then
          set loopA=0
          set loopB=loopB + 1
        endif
        exitwhen loopB >= 8
      endloop
      
      set loopA=Equip___Cal(loopA , loopB) + 1
      
      
      set loopA=loopA + 1
      set Frame_InvenButtonsBackDrop[loopA]=DzCreateFrameByTagName("BACKDROP", "", Frame_InvenButtonsBackDrop[0], "", 0)
      call DzFrameSetPoint(Frame_InvenButtonsBackDrop[loopA], JN_FRAMEPOINT_BOTTOMRIGHT, Frame_InvenButtonsBackDrop[0], JN_FRAMEPOINT_BOTTOMLEFT, - Equip_EDGEGAP, 0.)
      call DzFrameSetTexture(Frame_InvenButtonsBackDrop[loopA], "Equip_Back.blp", 0)
      call DzFrameSetSize(Frame_InvenButtonsBackDrop[loopA], Equip_SPACEGAP * 1.25, Equip_SPACEGAP * 1.25)
      
      set loopA=loopA + 1
      set Frame_InvenButtonsBackDrop[loopA]=DzCreateFrameByTagName("BACKDROP", "", Frame_InvenButtonsBackDrop[loopA - 1], "", 0)
      call DzFrameSetPoint(Frame_InvenButtonsBackDrop[loopA], JN_FRAMEPOINT_CENTER, Frame_InvenButtonsBackDrop[loopA - 1], JN_FRAMEPOINT_CENTER, 0., 0.)
      call DzFrameSetTexture(Frame_InvenButtonsBackDrop[loopA], "ReplaceableTextures\\CommandButtons\\BTNPickUpItem.blp", 0)
      call DzFrameSetSize(Frame_InvenButtonsBackDrop[loopA], Equip_SPACEGAP * 1.1, Equip_SPACEGAP * 1.1)
      
      set Frame_InvenButtons[loopA]=DzCreateFrameByTagName("BUTTON", "", Frame_InvenButtonsBackDrop[loopA], "ScoreScreenTabButtonTemplate", 0)
      call DzFrameSetAllPoints(Frame_InvenButtons[loopA], Frame_InvenButtonsBackDrop[loopA])
      call SaveInteger(hash, Frame_InvenButtons[loopA], StringHash("FrameID"), - 99)
      call DzFrameSetScriptByCode(Frame_InvenButtons[loopA], JN_FRAMEEVENT_MOUSE_UP, function Equip___InventoryClick, false)
      
      set Equip___ClickView=DzCreateFrameByTagName("SPRITE", "Test2", Frame_InvenButtonsBackDrop[loopA], "", 0)
      call DzFrameSetModel(Equip___ClickView, "Equip_Clicking1.mdx", 0, 0)
      call DzFrameSetAllPoints(Equip___ClickView, Frame_InvenButtonsBackDrop[loopA])
      call DzFrameShow(Equip___ClickView, false)
      
      call DzFrameShow(Frame_InvenButtonsBackDrop[0], false)
    endfunction
    function Equip___Init takes nothing returns nothing
      local trigger t= CreateTrigger()
      call Equip___CreateInventory()
      call Equip___CreateEquip()
      call Equip___InventoryToolTip()
      call Equip___EquipToolTip(true)
      call Equip___EquipToolTip(false)
      call DzTriggerRegisterSyncData(t, "ItemDrop", false)
      call TriggerAddAction(t, function Equip___ItemDrop)
      
      set t=CreateTrigger()
      call DzTriggerRegisterSyncData(t, "I_Change", false)
      call TriggerAddAction(t, function Equip___ItemChange)
      
      set t=CreateTrigger()
      call DzTriggerRegisterSyncData(t, "I_Equip", false)
      call TriggerAddAction(t, function Equip___ItemEquip)
      
      set t=CreateTrigger()
      call DzTriggerRegisterSyncData(t, "MouseVar", false)
      call TriggerAddAction(t, function Equip___MouseVariable)
      
      set t=CreateTrigger()
      call DzTriggerRegisterMouseEventByCode(t, JN_MOUSE_BUTTON_TYPE_RIGHT, bj_KEYEVENTTYPE_DEPRESS, true, null)
      call TriggerAddAction(t, function Equip___RightClick)
      
      set Equip___FrameMouseXOffset=JNGetModuleHandle("Game.dll") + 0xCB1AF8
      set Equip___FrameMouseYOffset=JNGetModuleHandle("Game.dll") + 0xCB1AFC
      
      set t=null
    endfunction
// scope Equip ends
// END IMPORT OF System\Frames\InventoryEquip.j
// BEGIN IMPORT OF System\Frames\Info.j
// scope Info begins
  
    function Info___Info takes integer no,integer parent,real size,integer point,integer point2,real x,real y,string text returns integer
      set Frame_Info[no]=DzCreateFrameByTagName("TEXT", "", parent, "", no)
      if ( size != 0. ) then
        call DzFrameSetFont(Frame_Info[no], "Fonts\\DFHeiMd.ttf", size, 1)
      endif
      call DzFrameSetPoint(Frame_Info[no], point, parent, point2, x, y)
      call DzFrameSetText(Frame_Info[no], text)
      return no + 1
    endfunction
    
    function Info___Info2 takes integer no,integer parent,integer point,integer point2,real x,real y,string text,real size,string texture,real xx,real yy returns integer
      set Frame_Info[no]=DzCreateFrameByTagName("BUTTON", "", parent, "ScoreScreenTabButtonTemplate", 0)
      call DzFrameSetPoint(Frame_Info[no], point, parent, point2, x, y)
      call DzFrameSetSize(Frame_Info[no], xx, yy)
      
      set no=no + 1
      set Frame_Info[no]=DzCreateFrameByTagName("BACKDROP", "", Frame_Info[no - 1], "", 0)
      call DzFrameSetAllPoints(Frame_Info[no], Frame_Info[no - 1])
      call DzFrameSetTexture(Frame_Info[no], texture, 0)
      if ( text != "" ) then
        set no=no + 1
        set Frame_Info[no]=DzCreateFrameByTagName("TEXT", "", Frame_Info[no - 1], "", no)
        if ( size != 0. ) then
          call DzFrameSetFont(Frame_Info[no], "Fonts\\DFHeiMd.ttf", size, 1)
        endif
        call DzFrameSetPoint(Frame_Info[no], JN_FRAMEPOINT_CENTER, Frame_Info[no - 1], JN_FRAMEPOINT_CENTER, 0., 0.)
        call DzFrameSetText(Frame_Info[no], text)
      endif
      return no + 1
    endfunction
    function Info___Info3 takes integer no,real size,integer point,integer point2,real x,real y,string text returns nothing
      set Frame_InfoValue[no]=DzCreateFrameByTagName("TEXT", "", Frame_Info[no], "", no)
      if ( size != 0. ) then
        call DzFrameSetFont(Frame_InfoValue[no], "Fonts\\DFHeiMd.ttf", size, 1)
      endif
      call DzFrameSetPoint(Frame_InfoValue[no], point, Frame_Info[no], point2, x, y)
      call DzFrameSetText(Frame_InfoValue[no], text)
    endfunction
  function Info___CreateInfo takes nothing returns nothing
   local integer i= 1
    set Frame_Info[0]=DzCreateFrameByTagName("BACKDROP", "", DzGetGameUI(), "", 0)
    call DzFrameSetSize(Frame_Info[0], .12, .15)
    call DzFrameSetAbsolutePoint(Frame_Info[0], JN_FRAMEPOINT_TOPLEFT, .1, .5)
    call DzFrameSetTexture(Frame_Info[0], "Select_SlotBack75.blp", 0)
    call DzFrameSetAlpha(Frame_Info[0], 192)
    
    set i=Info___Info2(i , Frame_Info[0] , JN_FRAMEPOINT_TOPRIGHT , JN_FRAMEPOINT_TOPRIGHT , - Equip_EDGEGAP * 2 , - Equip_EDGEGAP * 2 , "" , 0. , "Info\\ButtonX.blp" , .01 , .01)

    set i=Info___Info(i , Frame_Info[0] , .012 , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_TOPLEFT , Equip_EDGEGAP2 , - .0125 , "이름: ")
    set i=Info___Info(i , Frame_Info[0] , .012 , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_TOPLEFT , Equip_EDGEGAP2 , - .025 , "플탐: ")
    set i=Info___Info(i , Frame_Info[0] , .012 , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_TOPLEFT , Equip_EDGEGAP2 , - .0375 , "직업: ")
    set i=Info___Info(i , Frame_Info[0] , .012 , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_TOPLEFT , Equip_EDGEGAP2 , - .05 , "단계: ")
    set i=Info___Info(i , Frame_Info[0] , .012 , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_TOPLEFT , Equip_EDGEGAP2 , - .0625 , "공격력: ")
    set i=Info___Info(i , Frame_Info[0] , .012 , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_TOPLEFT , Equip_EDGEGAP2 , - .075 , "ＨＰ: ")
    set i=Info___Info(i , Frame_Info[0] , .012 , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_TOPLEFT , Equip_EDGEGAP2 , - .0875 , "ＭＰ: ")
    call Info___Info3(i - 7 , .010 , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_RIGHT , 0. , 0. , GetPlayerName(GetLocalPlayer()))
    call Info___Info3(i - 6 , .010 , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_RIGHT , 0. , 0. , I2S(GetRandomInt(0, 2)) + "d " + I2S(GetRandomInt(0, 23)) + "h " + I2S(GetRandomInt(0, 59)))
    call Info___Info3(i - 5 , .010 , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_RIGHT , 0. , 0. , "검사")
    call Info___Info3(i - 4 , .010 , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_RIGHT , 0. , 0. , "삼류")
    call Info___Info3(i - 3 , .010 , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_RIGHT , 0. , 0. , I2S(GetRandomInt(100, 999)) + "~" + I2S(GetRandomInt(1000, 9999)))
    call Info___Info3(i - 2 , .010 , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_RIGHT , 0. , 0. , I2S(GetRandomInt(1000, 2000)) + "/" + I2S(GetRandomInt(2000, 9999)))
    call Info___Info3(i - 1 , .010 , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_RIGHT , 0. , 0. , I2S(GetRandomInt(1000, 2000)) + "/" + I2S(GetRandomInt(2000, 9999)))
    
    set i=Info___Info(i , Frame_Info[0] , .012 , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_TOPLEFT , Equip_EDGEGAP2 , - .1125 , "파워: ")
    call Info___Info3(i - 1 , .010 , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_RIGHT , 0. , 0. , "(" + I2S(GetRandomInt(100, 999)) + "+" + I2S(GetRandomInt(10, 99)) + ")")
    set i=Info___Info2(i , Frame_InfoValue[i - 1] , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_RIGHT , Equip_EDGEGAP , 0. , "" , 0. , "ReplaceableTextures\\PassiveButtons\\PASBTNStatUp.blp" , .011 , .011)
    set i=Info___Info2(i , Frame_Info[i - 1] , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_RIGHT , Equip_EDGEGAP , 0. , "" , 0. , "Info\\StatUp3-1.blp" , .011 , .011)
    
    set i=Info___Info(i , Frame_Info[0] , .012 , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_TOPLEFT , Equip_EDGEGAP2 , - .125 , "집중: ")
    call Info___Info3(i - 1 , .010 , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_RIGHT , 0. , 0. , "(" + I2S(GetRandomInt(100, 999)) + "+" + I2S(GetRandomInt(10, 99)) + ")")
    set i=Info___Info2(i , Frame_InfoValue[i - 1] , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_RIGHT , Equip_EDGEGAP , 0. , "" , 0. , "ReplaceableTextures\\PassiveButtons\\PASBTNStatUp.blp" , .011 , .011)
    set i=Info___Info2(i , Frame_Info[i - 1] , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_RIGHT , Equip_EDGEGAP , 0. , "" , 0. , "Info\\StatUp3-1.blp" , .011 , .011)

    set i=Info___Info(i , Frame_Info[0] , .012 , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_TOPLEFT , Equip_EDGEGAP2 , - .1375 , "활력: ")
    call Info___Info3(i - 1 , .010 , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_RIGHT , 0. , 0. , "(" + I2S(GetRandomInt(100, 999)) + "+" + I2S(GetRandomInt(10, 99)) + ")")
    set i=Info___Info2(i , Frame_InfoValue[i - 1] , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_RIGHT , Equip_EDGEGAP , 0. , "" , 0. , "ReplaceableTextures\\PassiveButtons\\PASBTNStatUp.blp" , .011 , .011)
    set i=Info___Info2(i , Frame_Info[i - 1] , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_RIGHT , Equip_EDGEGAP , 0. , "" , 0. , "Info\\StatUp3-2.blp" , .011 , .011)
    
    set i=Info___Info2(i , Frame_Info[0] , JN_FRAMEPOINT_TOPRIGHT , JN_FRAMEPOINT_BOTTOMRIGHT , 0. , - Equip_EDGEGAP , "상세스텟" , .011 , "Select_SlotBack75.blp" , .045 , .015)
    
    set Frame_Info[i]=DzCreateFrameByTagName("BACKDROP", "", Frame_Info[0], "", 0)
    call DzFrameSetSize(Frame_Info[i], .12, .285)
    call DzFrameSetPoint(Frame_Info[i], JN_FRAMEPOINT_TOPRIGHT, Frame_Info[i - 2], JN_FRAMEPOINT_BOTTOMRIGHT, 0., - Equip_EDGEGAP)
    call DzFrameSetTexture(Frame_Info[i], "Equip_Back.blp", 0)
    set i=i + 1
  
    set i=Info___Info(i , Frame_Info[i - 1] , .010 , JN_FRAMEPOINT_TOPLEFT , JN_FRAMEPOINT_TOPLEFT , Equip_EDGEGAP2 , - .005 , "방어(감소율)")
    set i=Info___Info(i , Frame_Info[i - 1] , .010 , JN_FRAMEPOINT_TOPLEFT , JN_FRAMEPOINT_BOTTOMLEFT , 0. , - Equip_EDGEGAP , "추가감소/회피")
    call Info___Info3(i - 2 , .010 , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_LEFT , .055 , 0. , I2S(GetRandomInt(1000, 9999)) + " (" + R2SW(GetRandomReal(10., 99.), 2, 1) + "%)")
    call Info___Info3(i - 1 , .010 , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_LEFT , .055 , 0. , I2S(GetRandomInt(100, 999)) + " / " + I2S(GetRandomInt(10, 99)) + "%")
    
    
    call SkillTree_MakeLineY(Frame_Info[0] , .055 , - .01 , .265)
    call SkillTree_MakeLineX(Frame_Info[0] , .045 , - .0275 , .02)
    call SkillTree_MakeLineX(Frame_Info[0] , .035 , - .0525 , .04)
    call SkillTree_MakeLineX(Frame_Info[0] , .045 , - .0770 , .02)
    call SkillTree_MakeLineX(Frame_Info[0] , .035 , - .1025 , .04)
    call SkillTree_MakeLineX(Frame_Info[0] , .045 , - .1380 , .02)
    call SkillTree_MakeLineX(Frame_Info[0] , .035 , - .1750 , .04)
    call SkillTree_MakeLineX(Frame_Info[0] , .035 , - .2125 , .04)
    call SkillTree_MakeLineX(Frame_Info[0] , .025 , - .2400 , .06)
    //set i = InfoCase(i, Frame_Info[i-2], Frame_InfoValue[i-1], Frame_InfoValue[i-2])
    
    set i=Info___Info(i , Frame_Info[i - 1] , .010 , JN_FRAMEPOINT_TOPLEFT , JN_FRAMEPOINT_BOTTOMLEFT , 0. , - Equip_EDGEGAP , "마방(감소율)")
    set i=Info___Info(i , Frame_Info[i - 1] , .010 , JN_FRAMEPOINT_TOPLEFT , JN_FRAMEPOINT_BOTTOMLEFT , 0. , - Equip_EDGEGAP , "추가감소/면역")
    call Info___Info3(i - 2 , .010 , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_LEFT , .055 , - Equip_EDGEGAP , I2S(GetRandomInt(1000, 9999)) + " (" + R2SW(GetRandomReal(10., 99.), 2, 1) + "%)")
    call Info___Info3(i - 1 , .010 , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_LEFT , .055 , - Equip_EDGEGAP , I2S(GetRandomInt(100, 999)) + " / " + I2S(GetRandomInt(10, 99)) + "%")
    //set i = InfoCase(i, Frame_Info[i-2], Frame_InfoValue[i-1], Frame_InfoValue[i-2])
    
    set i=Info___Info(i , Frame_Info[i - 1] , .010 , JN_FRAMEPOINT_TOPLEFT , JN_FRAMEPOINT_BOTTOMLEFT , 0. , - .005 , "공속")
    set i=Info___Info(i , Frame_Info[i - 1] , .010 , JN_FRAMEPOINT_TOPLEFT , JN_FRAMEPOINT_BOTTOMLEFT , 0. , - Equip_EDGEGAP , "이속")
    call Info___Info3(i - 2 , .010 , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_LEFT , .055 , 0. , I2S(GetRandomInt(100, 999)) + "% (" + R2SW(GetRandomReal(0., 9.), 1, 1) + "/s)")
    call Info___Info3(i - 1 , .010 , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_LEFT , .055 , 0. , I2S(GetRandomInt(100, 999)) + "% (" + R2SW(GetRandomReal(0., 9.), 1, 1) + "/s)")
    //set i = InfoCase(i, Frame_Info[i-2], Frame_InfoValue[i-1], 0)
    set i=Info___Info(i , Frame_Info[i - 1] , .010 , JN_FRAMEPOINT_TOPLEFT , JN_FRAMEPOINT_BOTTOMLEFT , 0. , - Equip_EDGEGAP , "체젠")
    set i=Info___Info(i , Frame_Info[i - 1] , .010 , JN_FRAMEPOINT_TOPLEFT , JN_FRAMEPOINT_BOTTOMLEFT , 0. , - Equip_EDGEGAP , "마젠")
    call Info___Info3(i - 2 , .010 , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_LEFT , .055 , 0. , I2S(GetRandomInt(100, 999)) + " +" + R2SW(GetRandomReal(0., 9.), 1, 1) + "%")
    call Info___Info3(i - 1 , .010 , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_LEFT , .055 , 0. , I2S(GetRandomInt(100, 999)) + " +" + R2SW(GetRandomReal(0., 9.), 1, 1) + "%")
    //set i = InfoCase(i, Frame_Info[i-2], Frame_InfoValue[i-1], 0)
    
    set i=Info___Info(i , Frame_Info[i - 1] , .010 , JN_FRAMEPOINT_TOPLEFT , JN_FRAMEPOINT_BOTTOMLEFT , 0. , - .005 , "스킬뎀")
    set i=Info___Info(i , Frame_Info[i - 1] , .010 , JN_FRAMEPOINT_TOPLEFT , JN_FRAMEPOINT_BOTTOMLEFT , 0. , - Equip_EDGEGAP , "스킬쿨")
    set i=Info___Info(i , Frame_Info[i - 1] , .010 , JN_FRAMEPOINT_TOPLEFT , JN_FRAMEPOINT_BOTTOMLEFT , 0. , - Equip_EDGEGAP , "전체 능력")
    call Info___Info3(i - 3 , .010 , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_LEFT , .055 , 0. , I2S(GetRandomInt(100, 999)) + "%")
    call Info___Info3(i - 2 , .010 , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_LEFT , .055 , 0. , "-" + I2S(GetRandomInt(10, 99)) + "%")
    call Info___Info3(i - 1 , .010 , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_LEFT , .055 , 0. , "+" + I2S(GetRandomInt(1, 9)) + "레벨")
    //set i = InfoCase(i, Frame_Info[i-3], Frame_InfoValue[i-1], 0)
    
    set i=Info___Info(i , Frame_Info[i - 1] , .010 , JN_FRAMEPOINT_TOPLEFT , JN_FRAMEPOINT_BOTTOMLEFT , 0. , - Equip_EDGEGAP , "마법뎀")
    set i=Info___Info(i , Frame_Info[i - 1] , .010 , JN_FRAMEPOINT_TOPLEFT , JN_FRAMEPOINT_BOTTOMLEFT , 0. , - Equip_EDGEGAP , "마법쿨")
    set i=Info___Info(i , Frame_Info[i - 1] , .010 , JN_FRAMEPOINT_TOPLEFT , JN_FRAMEPOINT_BOTTOMLEFT , 0. , - Equip_EDGEGAP , "캐스팅")
    call Info___Info3(i - 3 , .010 , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_LEFT , .055 , 0. , I2S(GetRandomInt(100, 999)) + "%")
    call Info___Info3(i - 2 , .010 , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_LEFT , .055 , 0. , "-" + I2S(GetRandomInt(10, 99)) + "%")
    call Info___Info3(i - 1 , .010 , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_LEFT , .055 , 0. , I2S(GetRandomInt(100, 999)) + "%")
    //set i = InfoCase(i, Frame_Info[i-3], Frame_InfoValue[i-1], 0)
    //call DzFrameSetPoint(Frame_Info[i], JN_FRAMEPOINT_RIGHT, Frame_InfoValue[i-2], JN_FRAMEPOINT_RIGHT, 0., 0.)
    
    set i=Info___Info(i , Frame_Info[i - 1] , .010 , JN_FRAMEPOINT_TOPLEFT , JN_FRAMEPOINT_BOTTOMLEFT , 0. , - .005 , "치명타")
    set i=Info___Info(i , Frame_Info[i - 1] , .010 , JN_FRAMEPOINT_TOPLEFT , JN_FRAMEPOINT_BOTTOMLEFT , 0. , - Equip_EDGEGAP , "흡혈")
    set i=Info___Info(i , Frame_Info[i - 1] , .010 , JN_FRAMEPOINT_TOPLEFT , JN_FRAMEPOINT_BOTTOMLEFT , 0. , - Equip_EDGEGAP , "내성")
    call Info___Info3(i - 3 , .010 , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_LEFT , .055 , 0. , I2S(GetRandomInt(10, 99)) + "% (x" + R2SW(GetRandomReal(1., 3.), 1, 2) + ")")
    call Info___Info3(i - 2 , .010 , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_LEFT , .055 , 0. , I2S(GetRandomInt(100, 999)) + " +" + R2SW(GetRandomReal(1., 3.), 2, 1) + "%")
    call Info___Info3(i - 1 , .010 , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_LEFT , .055 , 0. , I2S(GetRandomInt(10, 99)) + "%")
    //set i = InfoCase(i, Frame_Info[i-3], Frame_InfoValue[i-1], Frame_InfoValue[i-3])
    set i=Info___Info(i , Frame_Info[i - 1] , .010 , JN_FRAMEPOINT_TOPLEFT , JN_FRAMEPOINT_BOTTOMLEFT , 0. , - .005 , "골드/드랍")
    set i=Info___Info(i , Frame_Info[i - 1] , .010 , JN_FRAMEPOINT_TOPLEFT , JN_FRAMEPOINT_BOTTOMLEFT , 0. , - Equip_EDGEGAP , "발굴/경험치")
    call Info___Info3(i - 2 , .010 , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_LEFT , .055 , 0. , I2S(GetRandomInt(100, 999)) + "% / " + I2S(GetRandomInt(100, 999)) + "%")
    call Info___Info3(i - 1 , .010 , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_LEFT , .055 , 0. , I2S(GetRandomInt(100, 999)) + "% / " + I2S(GetRandomInt(100, 999)) + "%")
    //set i = InfoCase(i, Frame_Info[i-2], Frame_InfoValue[i-1], 0)
    
    set i=Info___Info(i , Frame_Info[i - 1] , .012 , JN_FRAMEPOINT_TOPLEFT , JN_FRAMEPOINT_BOTTOMLEFT , 0. , - .005 , "특성1")
    set i=Info___Info(i , Frame_Info[i - 1] , .012 , JN_FRAMEPOINT_TOPLEFT , JN_FRAMEPOINT_BOTTOMLEFT , 0. , - Equip_EDGEGAP , "특성2")
    set i=Info___Info(i , Frame_Info[i - 1] , .012 , JN_FRAMEPOINT_TOPLEFT , JN_FRAMEPOINT_BOTTOMLEFT , 0. , - Equip_EDGEGAP , "특성3")
    call Info___Info3(i - 3 , .010 , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_LEFT , .055 , 0. , "근력Lv00 (공격력)")
    call Info___Info3(i - 2 , .010 , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_LEFT , .055 , 0. , "없음 (Lv 200)")
    call Info___Info3(i - 1 , .010 , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_LEFT , .055 , 0. , "없음 (Lv 300)")
    //set i = InfoCase(i, Frame_Info[i-3], Frame_InfoValue[i-1], Frame_InfoValue[i-3])
    call DzFrameShow(Frame_Info[0], false)
  endfunction
  function Info___Init takes nothing returns nothing
    call Info___CreateInfo()
  endfunction
// scope Info ends
// END IMPORT OF System\Frames\Info.j
// BEGIN IMPORT OF System\Frames\MiniInfo.j
// scope MiniInfo begins
      function MiniInfo___MiniInfo takes integer no,string text,string IconTexture,real size returns integer
        set MiniInfo___Frame_MiniInfo[no]=DzCreateFrameByTagName("BACKDROP", "", MiniInfo___Frame_MiniInfoBackdrop[1], "", 0)
        call DzFrameSetAbsolutePoint(MiniInfo___Frame_MiniInfo[no], JN_FRAMEPOINT_TOPLEFT, 0.68, 0.145 - ( no * 0.015 ))
        call DzFrameSetSize(MiniInfo___Frame_MiniInfo[no], 0.013, 0.013)
        call DzFrameSetTexture(MiniInfo___Frame_MiniInfo[no], IconTexture, 0)
        
        set Frame_MiniInfoText[no]=DzCreateFrameByTagName("TEXT", "", MiniInfo___Frame_MiniInfoBackdrop[1], "", no)
        call DzFrameSetFont(Frame_MiniInfoText[no], "Fonts\\DFHeiMd.ttf", size, 1)
        call DzFrameSetPoint(Frame_MiniInfoText[no], JN_FRAMEPOINT_LEFT, MiniInfo___Frame_MiniInfo[no], JN_FRAMEPOINT_RIGHT, .002, 0.)
        call DzFrameSetText(Frame_MiniInfoText[no], text)
        return no + 1
      endfunction
      function MiniInfo___MiniInfo2 takes integer no,string text returns nothing
        set Frame_MiniInfoText2[no]=DzCreateFrameByTagName("TEXT", "", MiniInfo___Frame_MiniInfoBackdrop[0], "", no)
        call DzFrameSetFont(Frame_MiniInfoText2[no], "Fonts\\DFHeiMd.ttf", 0.011, 1)
        call DzFrameSetPoint(Frame_MiniInfoText2[no], JN_FRAMEPOINT_LEFT, MiniInfo___Frame_MiniInfo[no], JN_FRAMEPOINT_LEFT, .06, 0.)
        call DzFrameSetText(Frame_MiniInfoText2[no], text)
      endfunction
      function MiniInfo___MiniInfo3 takes integer no,integer no2,string text,string IconTexture returns integer
        set MiniInfo___Frame_MiniInfo[no]=DzCreateFrameByTagName("BACKDROP", "", MiniInfo___Frame_MiniInfoBackdrop[1], "", 0)
        call DzFrameSetAbsolutePoint(MiniInfo___Frame_MiniInfo[no], JN_FRAMEPOINT_TOPLEFT, 0.68 + 0.04 * no2, 0.055)
        call DzFrameSetSize(MiniInfo___Frame_MiniInfo[no], 0.013, 0.013)
        call DzFrameSetTexture(MiniInfo___Frame_MiniInfo[no], IconTexture, 0)
        
        set Frame_MiniInfoText[no]=DzCreateFrameByTagName("TEXT", "", MiniInfo___Frame_MiniInfoBackdrop[1], "", no)
        call DzFrameSetPoint(Frame_MiniInfoText[no], JN_FRAMEPOINT_LEFT, MiniInfo___Frame_MiniInfo[no], JN_FRAMEPOINT_RIGHT, 0., 0.)
        call DzFrameSetFont(Frame_MiniInfoText[no], "Fonts\\DFHeiMd.ttf", 0.010, 1)
        call DzFrameSetText(Frame_MiniInfoText[no], text)
        
        return no + 1
      endfunction
    function MiniInfo___CreateMiniInfo takes nothing returns nothing
     local integer i= 0
      //미니정보창 배경
      set MiniInfo___Frame_MiniInfoBackdrop[0]=DzCreateFrameByTagName("BACKDROP", "", Frame_Sub, "QuestButtonBaseTemplate", 0)
      call DzFrameSetAbsolutePoint(MiniInfo___Frame_MiniInfoBackdrop[0], JN_FRAMEPOINT_BOTTOMLEFT, 0.67, 0.03)
      call DzFrameSetSize(MiniInfo___Frame_MiniInfoBackdrop[0], 0.13, 0.12)
      call DzFrameSetAlpha(MiniInfo___Frame_MiniInfoBackdrop[0], 128)
      
      
      set MiniInfo___Frame_MiniInfoBackdrop[1]=DzCreateFrameByTagName("BACKDROP", "", MiniInfo___Frame_MiniInfoBackdrop[0], "QuestButtonBaseTemplate", 0)
      call DzFrameSetPoint(MiniInfo___Frame_MiniInfoBackdrop[1], JN_FRAMEPOINT_CENTER, MiniInfo___Frame_MiniInfoBackdrop[0], JN_FRAMEPOINT_TOP, 0., - 0.005)
      call DzFrameSetSize(MiniInfo___Frame_MiniInfoBackdrop[1], 0.07, 0.03)
      call DzFrameSetAlpha(MiniInfo___Frame_MiniInfoBackdrop[0], 196)
      
      
      set MiniInfo___Frame_MiniInfo[0]=DzCreateFrameByTagName("TEXT", "", MiniInfo___Frame_MiniInfoBackdrop[1], "", 0)
      call DzFrameSetPoint(MiniInfo___Frame_MiniInfo[0], JN_FRAMEPOINT_CENTER, MiniInfo___Frame_MiniInfoBackdrop[1], JN_FRAMEPOINT_CENTER, 0., 0.)
      call DzFrameSetText(MiniInfo___Frame_MiniInfo[0], "몬스터 이름")
      
      //call MiniInfo
      set i=i + 1
      set i=MiniInfo___MiniInfo(i , "체력" , "ReplaceableTextures\\PassiveButtons\\PASBTNStatUp.blp" , .013)
      call MiniInfo___MiniInfo2(i - 1 , I2S(GetRandomInt(1000, 2000)) + "/" + I2S(GetRandomInt(2000, 9999)))
      
      set i=MiniInfo___MiniInfo(i , "데미지" , "ReplaceableTextures\\PassiveButtons\\PASBTNStatUp.blp" , .013)
      call MiniInfo___MiniInfo2(i - 1 , I2S(GetRandomInt(1000, 9999)) + " x" + R2SW(GetRandomReal(.5, 5.), 1, 2))
      
      set i=MiniInfo___MiniInfo(i , "방어/마방" , "ReplaceableTextures\\PassiveButtons\\PASBTNStatUp.blp" , .013)
      call MiniInfo___MiniInfo2(i - 1 , I2S(GetRandomInt(100, 999)) + " / " + I2S(GetRandomInt(100, 999)))
      
      set i=MiniInfo___MiniInfo(i , "스킬/마법뎀" , "ReplaceableTextures\\PassiveButtons\\PASBTNStatUp.blp" , .011)
      call MiniInfo___MiniInfo2(i - 1 , I2S(GetRandomInt(100, 999)) + "% / " + I2S(GetRandomInt(100, 999)) + "%")
      
      set i=MiniInfo___MiniInfo(i , "치명타" , "ReplaceableTextures\\PassiveButtons\\PASBTNStatUp.blp" , .013)
      call MiniInfo___MiniInfo2(i - 1 , I2S(GetRandomInt(10, 99)) + "% (x" + R2SW(GetRandomReal(1., 3.), 1, 2) + ")")
      
      set i=MiniInfo___MiniInfo3(i , 0 , "체력많음" , "ReplaceableTextures\\CommandButtons\\BTNSkillz.tga")
      set i=MiniInfo___MiniInfo3(i , 1 , "강한공격" , "ReplaceableTextures\\CommandButtons\\BTNGauntletsOfOgrePower.blp")
      set i=MiniInfo___MiniInfo3(i , 2 , "마법면역" , "ReplaceableTextures\\PassiveButtons\\PASBTNGenericSpellImmunity.blp")
      call DzFrameShow(Frame_Sub, false)
    endfunction
    function MiniInfo___Init takes nothing returns nothing
      call MiniInfo___CreateMiniInfo()
    endfunction
// scope MiniInfo ends
// END IMPORT OF System\Frames\MiniInfo.j

// BEGIN IMPORT OF System\Server\ServerSetup.j
// scope JNObjectGui begins

  // JNObjectLoadSave 
  function JNObjectCharacterInitG takes player p,string character returns nothing
    if GetLocalPlayer() == p then
      if udg_hero[GetPlayerId(p) + 1] == null then
        call JNObjectCharacterResetCharacter(Name[GetPlayerId(p) + 1])
      endif
      call JNObjectCharacterInit(JN_MAPID, Name[GetPlayerId(p) + 1], JN_SECRETKEY, character)
    endif
  endfunction 

  function JNObjectGui___SendSyncedData takes nothing returns nothing
    call sc___prototype67_execute(1,DzGetTriggerSyncPlayer() , S2I(JNStringSplit(DzGetTriggerSyncData(), "'", 0)))
  endfunction 

  // JNObjectCharacterLoad 
  function SyncCuttedInteger takes nothing returns nothing
    local string str= DzGetTriggerSyncData()
    call SaveInteger(hash, GetPlayerId(DzGetTriggerSyncPlayer()) + 1, StringHash(JNStringSplit(str, "!", 0)), S2I(JNStringSplit(str, "!", 1)))
     call BJDebugMsg("load/save i - " + I2S(GetPlayerId(DzGetTriggerSyncPlayer()) + 1) + "/" + JNStringSplit(str, "!", 0) + "/" + JNStringSplit(str, "!", 1))
  endfunction 

  function SyncCuttedString takes nothing returns nothing
    local string str= DzGetTriggerSyncData()
    call SaveStr(hash, GetPlayerId(DzGetTriggerSyncPlayer()) + 1, StringHash(JNStringSplit(str, "!", 0)), JNStringSplit(str, "!", 1))
     call BJDebugMsg("load/save s - " + I2S(GetPlayerId(DzGetTriggerSyncPlayer()) + 1) + "/" + JNStringSplit(str, "!", 0) + "/" + JNStringSplit(str, "!", 1))
  endfunction 

  function JNObjectGui___init takes nothing returns nothing
    local trigger trig= CreateTrigger()
    local integer i= 0

    call DzTriggerRegisterSyncData(trig, "JNEndSync", false)
    call TriggerAddAction(trig, function JNObjectGui___SendSyncedData)

    set trig=CreateTrigger()
    call DzTriggerRegisterSyncData(trig, "JNIntSync", false)
    call TriggerAddAction(trig, function SyncCuttedInteger)

    set trig=CreateTrigger()
    call DzTriggerRegisterSyncData(trig, "JNStrSync", false)
    call TriggerAddAction(trig, function SyncCuttedString)

    loop
      exitwhen i == bj_MAX_PLAYERS
      set Name[i + 1]=GetPlayerName(Player(i))
      set i=i + 1
    endloop
    
    call JNUse()
    
    set trig=null
  endfunction 

// scope JNObjectGui ends
// END IMPORT OF System\Server\ServerSetup.j
// BEGIN IMPORT OF System\Server\Time.j
// scope Time begins
  function Time_Get takes nothing returns integer
    return JNStopwatchElapsedHour(Time_StopWatch) * 60 + JNStopwatchElapsedMinute(Time_StopWatch)
  endfunction
  function Time_FirstLoad takes player p,string Data returns nothing
    local integer loopA= 1
    if ( Data != "" and Data != null ) then
      if ( GetLocalPlayer() == p ) then
        loop
          set Time_Original[loopA]=S2I(JNStringSplit(JNStringSplit(Data, I2S(loopA) + "_", 1), "'", 0))
          exitwhen loopA >= MAX_SAVE_CHARACTER
          set loopA=loopA + 1
        endloop
        set Time_Original[0]=Time_Original[1] + Time_Original[2] + Time_Original[3] + Time_Original[4] + Time_Original[5] + Time_Original[6]
      endif
    endif
  endfunction
  function Time_Load takes player p,integer Slot returns nothing
    if ( GetLocalPlayer() == p ) then
      call Msg(p , "총 시간: " + I2S(Time_Original[0]) + "-> " + I2S(Time_Original[0] + Time_Get() - Time_last[Slot]))
      call Msg(p , I2S(Slot) + "번 시간: " + I2S(Time_Original[Slot]) + "-> " + I2S(Time_Original[Slot] + Time_Get() - Time_last[Slot]))
      set Time_Original[0]=Time_Original[0] + Time_Get() - Time_last[Slot]
      set Time_Original[Slot]=Time_Original[Slot] + Time_Get() - Time_last[Slot]
      set Time_last[Slot]=Time_Get()
    endif
  endfunction
  
  function Time_Save takes player p,integer Slot returns string
    local string Data= LoadStr(hash, GetPlayerId(p) + 1, StringHash("Data"))
    local integer P= GetPlayerId(p) + 1
    call Time_Load(p , Slot)
    set Data=IfEmpty(Data , s__Select_DEFAULT_DATA)
    
    set Data=I2S(Slot) + "'" + I2S(Time_Original[0]) + JNStringSub(Data, JNStringPos(Data, "/"), JNStringLength(Data))
    
    return JNStringReplace(Data, JNStringSplit(Data, "/", Slot), I2S(Slot) + "_" + I2S(Time_Original[Slot]) + "'" + I2S(GetHeroLevel(udg_hero[P])) + "." + I2S(GetHeroXP(udg_hero[P])))
  endfunction
  function Time___Init takes nothing returns nothing
    set Time_StopWatch=JNStopwatchCreate()
    call JNStopwatchStart(Time_StopWatch)
  endfunction

// scope Time ends
// END IMPORT OF System\Server\Time.j
// BEGIN IMPORT OF System\Server\LoadAuto.j
// scope LoadAuto begins
  function LoadAuto___msgCheck2 takes player p,integer i returns boolean
    if ( i == 0 ) then
      return true
    elseif ( i == - 1 ) then
      call DisplayTimedTextToPlayer(p, 0., 0., 4, "캐릭터 로드 실패: 인증 실패")
    elseif ( i == - 2 ) then
      call DisplayTimedTextToPlayer(p, 0., 0., 4, "캐릭터 파일 로드 실패: 현재 사용중(동시로드 비허용 맵)")
    elseif ( i == - 3 ) then
      call DisplayTimedTextToPlayer(p, 0., 0., 4, "캐릭터 파일 로드 실패: 이미 로드됨")
      return true
    endif
   return false
  endfunction
  function LoadAuto___RemoveItemData takes item t returns boolean
    if ( t != null ) then
      //call RemoveSavedString(hash, GetHandleId(t), StringHash("ItemAddData"))
      call FlushChildHashtable(hash, GetHandleId(t))
      call RemoveItem(t)
      return true
    endif
    return false
  endfunction
  function ResetEquip takes integer P returns nothing
   local integer i= MAX_SAVE_EQUIP
    
    loop
      if ( LoadAuto___RemoveItemData(LoadItemHandle(hash, P, StringHash("ItemData" + I2S(- i)))) ) then
        if ( GetLocalPlayer() == Player(P - 1) ) then
          call DzFrameSetTexture(Equip_EquipBackdrop[- i], Equip_I2BE(- i), 0)
        endif
      endif
      exitwhen i <= 1
      set i=i - 1
    endloop
  endfunction
  function ResetInven takes integer P returns nothing
   local integer i= MAX_SAVE_INVENTORY
   
    call SaveInteger(hash, P, StringHash("ItemData0"), 1)
    loop
      if ( LoadAuto___RemoveItemData(LoadItemHandle(hash, P, StringHash("ItemData" + I2S(i)))) ) then
        if ( GetLocalPlayer() == Player(P - 1) ) then
          call DzFrameSetTexture(Frame_InvenButtonsBackDrop[i], "Inven_Empty.blp", 0)
        endif
      endif
      exitwhen i <= 1
      set i=i - 1
    endloop
  endfunction
  function ResetLoad takes integer P returns nothing
    call RemoveUnit(udg_hero[P])
    
    call ResetEquip(P)
    call ResetInven(P)
  endfunction
  function Loading takes player p returns nothing
   local integer P= GetPlayerId(p) + 1
   local integer loopA= 1
   local integer loopB= 1
   local string s= ""
    //call Msg(p, "Loading..." + I2S(P))
    call ResetLoad(P)
    if ( GetLocalPlayer() == p ) then
      if ( LoadAuto___msgCheck2(p , JNObjectCharacterInit(JN_MAPID, Name[P], JN_SECRETKEY, "Save")) ) then
        set s=JNObjectCharacterGetString(Name[P], "Data")
        if ( IsEmpty(s) ) then
          //call Msg(p, I2S(P) + ", 새로 시작")
          call DzSyncData("SaveData", "")
        else
          call DzSyncData("SaveData", s)
          
          call Time_FirstLoad(p , s)
          
          
          loop
            loop
              set s=JNObjectCharacterGetString(Name[P], I2S(loopB) + "e" + I2S(loopA))
              if ( s != "" ) then
                call DzSyncData("JNStrSync", I2S(loopB) + "e" + I2S(loopA) + "!" + s)
              endif
            
              exitwhen loopA >= MAX_SAVE_EQUIP
              set loopA=loopA + 1
            endloop
            
            set s=JNObjectCharacterGetString(Name[P], I2S(loopB) + "Name[P]")
            if ( s != "" ) then
              call DzSyncData("JNStrSync", I2S(loopB) + "_Name[P]" + "!" + s)
            endif
            exitwhen loopB >= MAX_SAVE_CHARACTER
            set loopB=loopB + 1
          endloop
          set loopA=1
          loop
            set s=JNObjectCharacterGetString(Name[P], "i" + I2S(loopA))
            if ( s != "" ) then
              call DzSyncData("JNStrSync", "i" + I2S(loopA) + "!" + s)
            endif
            exitwhen loopA >= MAX_SAVE_INVENTORY
            set loopA=loopA + 1
          endloop
        endif
      endif
      call DzSyncData("JNEndSync", "_")
    endif
  endfunction
  function LoadAuto___DataSync takes nothing returns nothing
    call s__Select_GetSaveData(DzGetTriggerSyncPlayer() , DzGetTriggerSyncData())
  endfunction
  function LoadAuto___AfterLoad takes nothing returns nothing
    if ( udg_hero[GetPlayerId(GetTriggerPlayer()) + 1] != null ) then
        call Msg(GetTriggerPlayer() , "이미 선택 혹은 로드하였습니다.")
      else
        call Loading(GetTriggerPlayer())
      endif
  endfunction
  function LoadAuto___LoadingAll takes nothing returns nothing
    if ( GetPlayerSlotState(Player(LoadAuto___int)) == PLAYER_SLOT_STATE_PLAYING ) and ( GetPlayerController(Player(LoadAuto___int)) == MAP_CONTROL_USER ) then
      call Loading(Player(LoadAuto___int))
    elseif ( LoadAuto___int >= bj_MAX_PLAYERS - 1 ) then
      call DestroyTimer(GetExpiredTimer())
    endif
    set LoadAuto___int=LoadAuto___int + 1
  endfunction
  function LoadAuto___Init takes nothing returns nothing
    local integer loopA= bj_MAX_PLAYERS - 1
    local trigger trig= CreateTrigger()
    call TimerStart(CreateTimer(), .15, true, function LoadAuto___LoadingAll)
    loop
      if ( GetPlayerSlotState(Player(loopA)) == PLAYER_SLOT_STATE_PLAYING ) and ( GetPlayerController(Player(loopA)) == MAP_CONTROL_USER ) then
        call TriggerRegisterPlayerChatEvent(trig, Player(loopA), "-load", false)
        set Name[loopA + 1]=GetPlayerName(Player(loopA))
      endif
      exitwhen loopA == 0
      set loopA=loopA - 1
    endloop
    call TriggerAddAction(trig, function LoadAuto___AfterLoad)
    
    set trig=CreateTrigger()
    call DzTriggerRegisterSyncData(trig, "SaveData", false)
    call TriggerAddAction(trig, function LoadAuto___DataSync)
    set trig=null
  endfunction
// scope LoadAuto ends
// END IMPORT OF System\Server\LoadAuto.j
// BEGIN IMPORT OF System\Server\Save.j
// scope Save begins
    
  function Save___LoadEquipData takes integer P returns nothing
    local integer loopA= 1
    local item t= null
    loop
      set t=LoadItemHandle(hash, P, StringHash("ItemData" + I2S(- loopA)))
      if ( t != null ) then
        set Save___EquipData[loopA]=I2S(GetItemTypeId(t)) + "/" + LoadStr(hash, GetHandleId(t), StringHash("ItemAddData"))
      else
        set Save___EquipData[loopA]=""
      endif
      exitwhen MAX_SAVE_EQUIP - 1 <= loopA
      set loopA=loopA + 1
    endloop
    set t=null
  endfunction 
  function Save___LoadInvenData takes integer P returns nothing
    local integer loopA= 1
    local item t= null
    loop
      set t=LoadItemHandle(hash, P, StringHash("ItemData" + I2S(loopA)))
      if ( t != null ) then
        set Save___InvenData[loopA]=I2S(GetItemTypeId(t)) + "/" + LoadStr(hash, GetHandleId(t), StringHash("ItemAddData"))
      else
        set Save___InvenData[loopA]=""
      endif
      exitwhen MAX_SAVE_INVENTORY - 1 <= loopA
      set loopA=loopA + 1
    endloop
    set t=null
  endfunction 
  function Save___msgCheck takes player p,string s returns nothing
    if ( s != "저장이 성공적으로 되었습니다." ) then
      call DisplayTimedTextToPlayer(p, 0., 0., 8, "데이터 저장 |cffff0000실패: |r" + s)
    endif
  endfunction 
    
  function EquipItemValue takes string name,integer P,integer Slot returns nothing
    local integer loopA= 1
    local integer loopB= 1
    local string s= ""
      
    loop
      set loopA=1
      loop
        if ( loopB == Slot ) then
          set s=Save___EquipData[loopA]
        else
          set s=LoadStr(hash, P, StringHash(I2S(loopB) + "e" + I2S(loopA)))
        endif
        if ( IsEmpty(s) ) then
          call JNObjectCharacterRemoveField(name, I2S(loopB) + "e" + I2S(loopA))
        else
          call JNObjectCharacterSetString(name, I2S(loopB) + "e" + I2S(loopA), s)
        endif
          
        exitwhen MAX_SAVE_EQUIP - 1 <= loopA
        set loopA=loopA + 1
      endloop
      exitwhen MAX_SAVE_CHARACTER - 1 <= loopB
      set loopB=loopB + 1
    endloop
  endfunction 
    
    
  function Save_Saving takes player p,integer Slot returns nothing
    local integer P= GetPlayerId(p) + 1
    local unit u= udg_hero[P]
    local boolean SpecialName= GetHeroProperNameIndex(u) > 0
    local integer loopA= 1
    call Save___LoadEquipData(P)
    call Save___LoadInvenData(P)
    if ( GetLocalPlayer() == p ) then
      //if ( first ) then 
      //call JNObjectCharacterResetCharacter(name) 
      //        set first = false 
      //call BJDebugMsg("Reset") 
      //endif 
      call JNObjectCharacterInit(JN_MAPID, Name[P], JN_SECRETKEY, "Save")
        
      call JNObjectCharacterSetString(Name[P], "Data", Time_Save(p , Slot))
      call BJDebugMsg("Saveing...Data: " + JNObjectCharacterGetString(Name[P], "Data"))
      if ( SpecialName ) then
        call JNObjectCharacterSetString(Name[P], I2S(loopA) + "_Name", GetHeroProperName(u))
      endif
        
      call EquipItemValue(Name[P] , P , Slot)
      set loopA=1
      loop
        if ( Save___InvenData[loopA] != "" ) then
          call JNObjectCharacterSetString(Name[P], "i" + I2S(loopA), Save___InvenData[loopA])
        else
          call JNObjectCharacterRemoveField(Name[P], "i" + I2S(loopA))
        endif
        exitwhen MAX_SAVE_INVENTORY - 1 <= loopA
        set loopA=loopA + 1
      endloop
      call Save___msgCheck(p , JNObjectCharacterSave(JN_MAPID, Name[P], JN_SECRETKEY, "Save"))
    endif
    set u=null
  endfunction 
  function Save___SaveAction takes nothing returns nothing
    call Save_Saving(GetTriggerPlayer() , NowSelect[GetPlayerId(GetTriggerPlayer()) + 1])
  endfunction 
  function Save___Init takes nothing returns nothing
    local integer i= 0
    local trigger trg= CreateTrigger()
    loop
      call TriggerRegisterPlayerChatEvent(trg, Player(i), "-save", false)
      exitwhen i >= bj_MAX_PLAYERS - 1
      set i=i + 1
    endloop
    call TriggerAddAction(trg, function Save___SaveAction)
    set trg=null
  endfunction 
// scope Save ends
// END IMPORT OF System\Server\Save.j
// BEGIN IMPORT OF System\Server\Load.j
// scope Load begins
//#   static if false then
//#     function Load_ExecuteAction takes player target, integer data returns nothing
//#     endfunction
//#   endif
  function Load_ExecuteAction takes player target,integer data returns nothing
    set GetServerPlayer=target
    set NowSelect[GetPlayerId(target) + 1]=data
    call TriggerExecute(s__Load_triggerLoad)
  endfunction


    function s__Load_GetEquipData takes integer P,integer Slot returns nothing
      local integer loopA= MAX_SAVE_EQUIP - 1
      loop
        set s__s__Load_EquipData2[loopA]= LoadStringBJ(StringHash(I2S(Slot) + "e" + I2S(loopA)), P, hash)

        exitwhen loopA <= 1
        set loopA=loopA + 1
      endloop
    endfunction
    function s__Load_SetEquipData takes integer currentPlayerId returns nothing
      local integer loopA= MAX_SAVE_EQUIP - 1
      local string tempString= ""
      loop
        set tempString=s__s__Load_EquipData2[loopA]
        if ( IsVaild(tempString) ) then
          set bj_lastCreatedItem=CreateItem(S2I(JNStringSplit(tempString, "/", 0)), 0, 0)
          call SaveItemHandle(hash, currentPlayerId, StringHash("ItemData" + I2S(- loopA)), bj_lastCreatedItem)
          call SaveStr(hash, GetHandleId(bj_lastCreatedItem), StringHash("ItemAddData"), JNStringSplit(tempString, "/", 1))
          if ( Player(currentPlayerId - 1) == GetLocalPlayer() ) then
            call DzFrameSetTexture(Equip_EquipBackdrop[loopA], EXGetItemDataString(GetItemTypeId(bj_lastCreatedItem), 1), 0)
          endif
          call Equip_Process(EXGetItemDataString(GetItemTypeId(bj_lastCreatedItem), 3) + "'" + LoadStr(hash, GetHandleId(bj_lastCreatedItem), StringHash("ItemAddData")) , currentPlayerId)
          call SetItemPosition(bj_lastCreatedItem, StoreX, StoreY)
        endif

        exitwhen loopA <= 1
        set loopA=loopA - 1
      endloop
    endfunction
    function s__Load_SetInvenData takes integer currentPlayerId,boolean removeIfEmpty returns nothing
      local integer loopA= MAX_SAVE_INVENTORY - 1
      local string tempString= ""
      loop
        set tempString=s__s__Load_InvenData2[loopA]
        if ( IsVaild(tempString) ) then
          set bj_lastCreatedItem=CreateItem(S2I(JNStringSplit(tempString, "/", 0)), 0, 0)
          
          call SaveItemHandle(hash, currentPlayerId, StringHash("ItemData" + I2S(loopA)), bj_lastCreatedItem)
          call SaveStr(hash, GetHandleId(bj_lastCreatedItem), StringHash("ItemAddData"), JNStringSplit(tempString, "/", 1))
          if ( Player(currentPlayerId - 1) == GetLocalPlayer() ) then
            call DzFrameSetTexture(Frame_InvenButtonsBackDrop[loopA], EXGetItemDataString(GetItemTypeId(bj_lastCreatedItem), 1), 0)
          endif
          call SetItemPosition(bj_lastCreatedItem, StoreX, StoreY)
        elseif ( removeIfEmpty and HaveSavedHandle(hash, currentPlayerId, StringHash("ItemData" + I2S(loopA))) ) then
          set bj_lastCreatedItem=LoadItemHandle(hash, currentPlayerId, StringHash("ItemData" + I2S(loopA)))
          call FlushChildHashtable(hash, GetHandleId(bj_lastCreatedItem))
          call RemoveItem(bj_lastCreatedItem)
          call RemoveSavedHandle(hash, currentPlayerId, StringHash("ItemData" + I2S(loopA)))
          
          if ( Player(currentPlayerId - 1) == GetLocalPlayer() ) then
            call DzFrameSetTexture(Frame_InvenButtonsBackDrop[loopA], "Inven_Empty.blp", 0)
          endif
        endif

        exitwhen loopA <= 1
        set loopA=loopA - 1
      endloop
    endfunction
    function s__Load_GetInvenData takes integer P returns nothing
      local integer loopA= MAX_SAVE_INVENTORY - 1
      loop
        set s__s__Load_InvenData2[loopA]= LoadStringBJ(StringHash("i" + I2S(loopA)), P, hash)

        exitwhen loopA <= 1
        set loopA=loopA - 1
      endloop
    endfunction
    function s__Load_Actions takes nothing returns nothing
      local integer currentPlayerId= GetPlayerId(GetServerPlayer) + 1
      local integer receivedData= NowSelect[currentPlayerId]
      local integer tempInteger= 0
      local string tempString= ""
      
      if ( 0 < JN_LoaderNow ) then
        call Msg(GetServerPlayer , "로드 |cffff0000실패!|r - 현재 " + GetPlayerName(Player(JN_LoaderNow - 1)) + "|r님이 로드하고 있습니다. 잠시 후 다시 시도하세요.")
        return
      elseif ( 0 == receivedData ) then
        call Msg(GetServerPlayer , "로드 |cff00ff00가능!|r - 로드할 준비가 되었습니다.")
        return
      elseif ( IsEmpty(s__CharacterData_SelectDatas[s__CharacterData__staticgetindex(receivedData)]) ) then
        call Msg(GetServerPlayer , "로드 |cffff0000실패!|r - 캐릭터가 정보가 비어 있습니다. 다시 선택해주세요.")
        return
      endif

      // 데이터 설정
        // 현재 로드중인 플레이어 설정
      set JN_LoaderNow=currentPlayerId
        // 불러올 데이터
      set tempString=JNStringSplit(JNObjectCharacterGetString(GetPlayerName(GetServerPlayer), "Data"), "/", receivedData)

        // 불러올 레벨 : [1_0'1.2500] 에서, '1. 의 1을 추출
      set tempInteger=S2I(JNStringSplit(JNStringSplit(tempString, "'", 1), ".", 0))

      // 생성
      set udg_hero[currentPlayerId]=CreateUnit(GetServerPlayer, s__CharacterData_UnitCode[s__CharacterData__staticgetindex(receivedData)], s__Select_startCreateX, s__Select_startCreateY, bj_UNIT_FACING)

      // 신규, 이어하기 알림
      if ( 0 == tempInteger ) then
        call MsgAll(GetPlayerName(GetServerPlayer) + "님이 " + JNStringSplit(s__CharacterData_SelectDatas[s__CharacterData__staticgetindex(receivedData)], "'", 0) + "을(를) 선택하였습니다.")
      else
        call MsgAll(GetPlayerName(GetServerPlayer) + "님이 Lv." + I2S(tempInteger) + " " + JNStringSplit(s__CharacterData_SelectDatas[s__CharacterData__staticgetindex(receivedData)], "'", 0) + "(으)로 모험을 이어갑니다.")
        call SetHeroLevel(udg_hero[currentPlayerId], tempInteger, false)
        call SetHeroXP(udg_hero[currentPlayerId], S2I(JNStringSplit(JNStringSplit(tempString, "'", 1), ".", 1)), false)
      endif

      // 집 이름 설정
      set tempString=GetObjectName('nefm')
      if ( GetServerPlayer == GetLocalPlayer() ) then
        set tempString=GetPlayerName(GetServerPlayer) + "가문의 " + GetObjectName(s__CharacterData_UnitCode[s__CharacterData__staticgetindex(receivedData)]) + "네 집"
      endif

      // 영웅 이름 설정
      set tempString=LoadStr(hash, currentPlayerId, StringHash(I2S(receivedData) + "_Name"))
      if ( IsVaild(tempString) ) then
        call SetHeroProperNameIndex(udg_hero[currentPlayerId] , currentPlayerId)
        call SetHeroProperName(udg_hero[currentPlayerId] , tempString)
      else
        call SetHeroProperNameIndex(udg_hero[currentPlayerId] , 0)
      endif

      // 장비, 인벤토리 설정
      if ( tempInteger <= 0 ) then
        call ResetEquip(currentPlayerId)
      else
        call s__Load_GetEquipData(currentPlayerId , receivedData)
        call s__Load_SetEquipData(currentPlayerId)
      endif
      call s__Load_GetInvenData(currentPlayerId)
      call s__Load_SetInvenData(currentPlayerId , true)

      // 메인 프레임 보임
      if ( GetLocalPlayer() == GetServerPlayer ) then
        call DzFrameShow(Frame_Main, true)
      endif
      
      set currentPlayerId=0

      call PortraitEditor_Change()
    endfunction
  
    function s__Load_onInit takes nothing returns nothing
      call TriggerAddAction(s__Load_triggerLoad, function s__Load_Actions)
    endfunction
// scope Load ends
// END IMPORT OF System\Server\Load.j

// BEGIN IMPORT OF System\MemoryInterferencer\ClearCacher.j

// scope ClearCacher begins

  function FCut takes string s,integer c returns string
    if ( s == null ) then
      return ""
  else
      set s=JNStringSplit(s, "|", c - 1)
      if ( SubString(s, 0, 3) == "cff" ) then
        return "|" + s
      else
        return s
      endif
    endif
  endfunction 
  function FSE_MakingFile takes string File returns nothing
    call Preload("    	" + FCut(File , 1) + "	    ")
    call Preload("    	" + FCut(File , 2) + "	    ")
    call Preload("    	" + FCut(File , 3) + "	    ")
    call Preload("    	" + FCut(File , 4) + "	    ")
    call Preload("    	" + FCut(File , 5) + "	    ")
    call Preload("    	" + FCut(File , 6) + "	    ")
    call Preload("    	" + FCut(File , 7) + "	    ")
    call Preload("    	" + FCut(File , 8) + "	    ")
  endfunction 
  function FSE_MakingFile2 takes string Code1,string Code2,string Code3 returns nothing
    call Preload("")
    call Preload("    	\nMain Code:\n    	    	-load " + Code1 + "	    ")
    call Preload("    	\n Sub Code:\n    	    	-load2 " + Code2 + "	    ")
    call Preload("    	" + Code3 + "	    ")
  endfunction 
function FSE_MakeFile takes player p,string l__Name,boolean o returns nothing
    local string savecode= "아이디: fooiff|직업: 성직자(순수) - Lv99|체마: 38,118/34,357|경험치: 43.9％|소유금: 720,000 Gold|포인트: 477 Point|시간: 3시간 39분|버전: New 1.12Cv|※내용은 지워도 상관없습니다. 코드만 남기세요."
    if ( GetLocalPlayer() == p ) then
      call PreloadGenClear()
      call PreloadGenStart()
      call FSE_MakingFile(savecode)
      call FSE_MakingFile2("abcde" , "efghi" , FCut(savecode , 9))
      call PreloadGenEnd("OMOSave\\" + l__Name + ".txt")
    endif
    if ( o ) then
      call BJDebugMsg("파일 만들기 |cff00ff00성공! |r - |cffffdc3c워크래프트 폴더 - CustomMapData - OMOSave 폴더의 \n          |r" + l__Name + ".txt|cffffdc3c으로 저장되었습니다.")
    endif
    set p=null
  endfunction 

  function ClearCacher__OnGameEnd takes nothing returns nothing
    call DzFrameSetUpdateCallback("")
    if ( udg_ExitOption == 1 ) then
      call FSE_MakeFile(GetLocalPlayer() , GetPlayerName(GetLocalPlayer()) + "_" + JNServerTime("MMdd_HHmmss") , true)
      call JNOpenBrowser("https://cafe.naver.com/w3lod")
      call BJDebugMsg(GetPlayerName(GetLocalPlayer()) + " has exit")
    elseif ( udg_ExitOption == 2 ) then
      call Save_Saving(GetLocalPlayer() , 0)
    endif
  endfunction 

  function ClearCacher__Init takes nothing returns nothing
    call SetGameEndCallbackByCode(function ClearCacher__OnGameEnd)
  endfunction 

// scope ClearCacher ends

// END IMPORT OF System\MemoryInterferencer\ClearCacher.j

// BEGIN IMPORT OF System\Hunting.j
function DebugEffect takes string modelPath,real x,real y returns nothing
  if ( x == 0. or y == 0. ) then
    call MsgAll("DebugEffect/ERROR 0")
  elseif ( modelPath == "1" ) then
    call AddSpecialEffect("units\\human\\Peasant\\Peasant.mdl", x, y)
  elseif ( modelPath == "2" ) then
    call AddSpecialEffect("units\\orc\\Grunt\\Grunt.mdl", x, y)
  elseif ( modelPath == "3" ) then
    call AddSpecialEffect("units\\undead\\Ghoul\\Ghoul.mdl", x, y)
  endif
endfunction

// scope Hunting begins
  
  constant function Hunting__EStageMaxWave takes integer stage returns integer
    if ( stage == 1 ) then
      return 2
    endif
    return 0
  endfunction
  function Hunting__RectAddEvent takes rect r,integer num,integer exitWhere returns nothing
    set Hunting__tempRegion=CreateRegion()
    call RegionAddRect(Hunting__tempRegion, r)
    call SaveInteger(hash, GetHandleId(Hunting__tempRegion), StringHash("rectNumber"), num)
    call TriggerRegisterEnterRegion(Hunting__tempEnterTrigger, Hunting__tempRegion, null)
    if ( exitWhere == bj_KEYEVENTKEY_LEFT ) then
      call SaveReal(hash, StringHash("rectExitX"), num, GetRectMinX(r) - bj_CELLWIDTH)
      call SaveReal(hash, StringHash("rectExitY"), num, GetRectCenterY(r))
    elseif ( exitWhere == bj_KEYEVENTKEY_RIGHT ) then
      call SaveReal(hash, StringHash("rectExitX"), num, GetRectMaxX(r) + bj_CELLWIDTH)
      call SaveReal(hash, StringHash("rectExitY"), num, GetRectCenterY(r))
    elseif ( exitWhere == bj_KEYEVENTKEY_DOWN ) then
      call SaveReal(hash, StringHash("rectExitX"), num, GetRectCenterX(r))
      call SaveReal(hash, StringHash("rectExitY"), num, GetRectMinY(r) - bj_CELLWIDTH)
    elseif ( exitWhere == bj_KEYEVENTKEY_UP ) then
      call SaveReal(hash, StringHash("rectExitX"), num, GetRectCenterX(r))
      call SaveReal(hash, StringHash("rectExitY"), num, GetRectMaxY(r) + bj_CELLWIDTH)
    else
      call MsgAll("Hunting/Add/Exit error")
    endif
    call RemoveRect(r)
  endfunction
  function Hunting__isEnterHero takes nothing returns boolean
    return ( GetEnteringUnit() == udg_hero[GetPlayerId(GetOwningPlayer(GetEnteringUnit())) + 1] )
  endfunction
  function Hunting__DecorationLoc takes real x,real y,real probability,integer terrainType returns boolean
    if ( GetRandomReal(0., 1.) <= probability ) then
      if ( terrainType == s__ETile_BLIGHT ) then
        call SetBlight(Player(PLAYER_NEUTRAL_AGGRESSIVE), x, y, 0., true)
      else
        call SetTerrainType(x, y, s__ETile_CITY_DIRT_ROUGH, - 1, 1, 1)
      endif
      return true
    else
      return false
    endif
  endfunction
  function Hunting__DecorationAll takes rect r,integer terrainType returns nothing
    //해당 지점에 지역 크기(10)의 구역을 설정
    if ( terrainType == s__ETile_BLIGHT ) then
      call SetTerrainType(GetRectCenterX(r), GetRectCenterY(r), s__ETile_CITY_DIRT, - 1, Hunting__MAX_ROW / 2 + 1, 1)
      call SetBlightRect(Player(PLAYER_NEUTRAL_AGGRESSIVE), r, true)
    else
      call SetTerrainType(GetRectCenterX(r), GetRectCenterY(r), terrainType, - 1, Hunting__MAX_ROW / 2 + 1, 1)
      call SetBlightRect(Player(PLAYER_NEUTRAL_AGGRESSIVE), r, false)
    endif
  endfunction
  
  function Hunting__DecorationRect takes integer pNumber,integer rectNumber returns nothing
    local integer row= 0
    local integer col= 0
    if ( rectNumber == 1 ) then
      
      call Hunting__DecorationAll(Hunting__PlayerRect[pNumber] , s__ETile_CITY_DIRT)
      loop
        set row=0
        loop
          if ( not Hunting__DecorationLoc(GetRectMinX(Hunting__PlayerRect[pNumber]) + bj_CELLWIDTH * row , GetRectMinY(Hunting__PlayerRect[pNumber]) + bj_CELLWIDTH * col , .3 , s__ETile_CITY_DIRT_ROUGH) ) then
          
            // 실패시 10/70%로 블라이트 생성
            call Hunting__DecorationLoc(GetRectMinX(Hunting__PlayerRect[pNumber]) + bj_CELLWIDTH * row , GetRectMinY(Hunting__PlayerRect[pNumber]) + bj_CELLWIDTH * col , .14 , s__ETile_BLIGHT)
          endif
          exitwhen row >= Hunting__MAX_ROW
          set row=row + 1
        endloop
        exitwhen col >= Hunting__MAX_COL
        set col=col + 1
      endloop
    endif
  endfunction
  function Hunting__CharacterMoveIn takes integer pNumber,real combineX,real combineY returns nothing
    call SetUnitPosition(udg_hero[pNumber], GetRectCenterX(Hunting__PlayerRect[pNumber]) + combineX, GetRectCenterY(Hunting__PlayerRect[pNumber]) + combineY)
    call SetUnitFacing(udg_hero[pNumber], 0)
    if ( GetLocalPlayer() == Player(pNumber - 1) ) then
      call PanCameraToTimed(GetRectCenterX(Hunting__PlayerRect[pNumber]), GetRectCenterY(Hunting__PlayerRect[pNumber]), 0.)
    endif
  endfunction
  
  function Hunting__DecorationScale takes string s1,string s2 returns real
    if ( s1 == "1.00" and s2 == "1.00" ) then
      return 1.00
    else
      return GetRandomReal(S2R(s1), S2R(s2))
    endif
  endfunction
  function Hunting__DecorationDoodadLoc takes integer pNumber,real x,real y,real probability,integer objectId,integer objectId2,boolean top returns boolean
    set Hunting__PlayerDecorationNumber[pNumber]=Hunting__PlayerDecorationNumber[pNumber] + 1
    if ( GetRandomReal(0., 1.) <= probability ) then
      set Hunting__PlayerDecorationEffects[pNumber * 10 + Hunting__PlayerDecorationNumber[pNumber]]=AddSpecialEffect(EXExecuteScript("(require'jass.slk').doodad[" + I2S(objectId) + "].file"), x, y)
      if ( top ) then
        call EXEffectMatRotateZ(Hunting__PlayerDecorationEffects[pNumber * 10 + Hunting__PlayerDecorationNumber[pNumber]], bj_UNIT_FACING)
      else
        call EXEffectMatRotateZ(Hunting__PlayerDecorationEffects[pNumber * 10 + Hunting__PlayerDecorationNumber[pNumber]], 90.)
      endif
      call EXSetEffectSize(Hunting__PlayerDecorationEffects[pNumber * 10 + Hunting__PlayerDecorationNumber[pNumber]], Hunting__DecorationScale(EXExecuteScript("(require'jass.slk').doodad[" + I2S(objectId) + "].minScale") , EXExecuteScript("(require'jass.slk').doodad[" + I2S(objectId) + "].maxScale")))
      return true
    elseif ( objectId2 != 0 ) then
      set Hunting__PlayerDecorationEffects[pNumber * 10 + Hunting__PlayerDecorationNumber[pNumber]]=AddSpecialEffect(EXExecuteScript("(require'jass.slk').doodad[" + I2S(objectId2) + "].file"), x, y)
      if ( top ) then
        call EXEffectMatRotateZ(Hunting__PlayerDecorationEffects[pNumber * 10 + Hunting__PlayerDecorationNumber[pNumber]], bj_UNIT_FACING)
      else
        call EXEffectMatRotateZ(Hunting__PlayerDecorationEffects[pNumber * 10 + Hunting__PlayerDecorationNumber[pNumber]], 90.)
      endif
      call EXSetEffectSize(Hunting__PlayerDecorationEffects[pNumber * 10 + Hunting__PlayerDecorationNumber[pNumber]], Hunting__DecorationScale(EXExecuteScript("(require'jass.slk').doodad[" + I2S(objectId2) + "].minScale") , EXExecuteScript("(require'jass.slk').doodad[" + I2S(objectId2) + "].maxScale")))
    endif
    return false
  endfunction
  
  function Hunting__ClearDoodad takes integer pNumber returns nothing
    local integer loopA= Hunting__PlayerDecorationNumber[pNumber]
    loop
      exitwhen loopA <= 0
      call EXSetEffectSize(Hunting__PlayerDecorationEffects[pNumber * 10 + loopA], 0.)
      call DestroyEffect(Hunting__PlayerDecorationEffects[pNumber * 10 + loopA])
      set loopA=loopA - 1
    endloop
    set Hunting__PlayerDecorationNumber[pNumber]=0
    //call EnumDestructablesInRect(PlayerRect[pNumber], null, function ClearDoodadAll)
  endfunction
  function Hunting__DecorationDoodad takes integer pNumber,integer rectNumber returns nothing
    call Hunting__ClearDoodad(pNumber)
    if ( rectNumber == 1 ) then
      
      
      call Hunting__DecorationDoodadLoc(pNumber , GetRectMinX(Hunting__PlayerRect[pNumber]) + bj_CELLWIDTH * 3.5 , GetRectMaxY(Hunting__PlayerRect[pNumber]) - bj_CELLWIDTH * 0.25 , .5 , 'D019' , 'D00Q' , true)
      call Hunting__DecorationDoodadLoc(pNumber , GetRectMinX(Hunting__PlayerRect[pNumber]) + bj_CELLWIDTH * 5.5 , GetRectMaxY(Hunting__PlayerRect[pNumber]) - bj_CELLWIDTH * 0.25 , .5 , 'D019' , 'D00Q' , true)
      call Hunting__DecorationDoodadLoc(pNumber , GetRectMinX(Hunting__PlayerRect[pNumber]) + bj_CELLWIDTH * 7.5 , GetRectMaxY(Hunting__PlayerRect[pNumber]) - bj_CELLWIDTH * 0.25 , .5 , 'D019' , 'D00Q' , true)
      call Hunting__DecorationDoodadLoc(pNumber , GetRectMinX(Hunting__PlayerRect[pNumber]) + bj_CELLWIDTH * 2.5 , GetRectMinY(Hunting__PlayerRect[pNumber]) + bj_CELLWIDTH * 0.25 , .5 , 'D019' , 'D00Q' , false)
      call Hunting__DecorationDoodadLoc(pNumber , GetRectMinX(Hunting__PlayerRect[pNumber]) + bj_CELLWIDTH * 4.5 , GetRectMinY(Hunting__PlayerRect[pNumber]) + bj_CELLWIDTH * 0.25 , .5 , 'D019' , 'D00Q' , false)
      call Hunting__DecorationDoodadLoc(pNumber , GetRectMinX(Hunting__PlayerRect[pNumber]) + bj_CELLWIDTH * 6.5 , GetRectMinY(Hunting__PlayerRect[pNumber]) + bj_CELLWIDTH * 0.25 , .5 , 'D019' , 'D00Q' , false)
      
      if ( not Hunting__DecorationDoodadLoc(pNumber , GetRectMinX(Hunting__PlayerRect[pNumber]) + bj_CELLWIDTH * 1.5 , GetRectMaxY(Hunting__PlayerRect[pNumber]) - bj_CELLWIDTH * 0.25 , .4 , 'D00Q' , 0 , true) ) then
        if ( not Hunting__DecorationDoodadLoc(pNumber , GetRectMinX(Hunting__PlayerRect[pNumber]) + bj_CELLWIDTH * 1.5 , GetRectMaxY(Hunting__PlayerRect[pNumber]) - bj_CELLWIDTH * 0.25 , .33 , 'D01B' , 0 , true) ) then
        call Hunting__DecorationDoodadLoc(pNumber , GetRectMinX(Hunting__PlayerRect[pNumber]) + bj_CELLWIDTH * 1.5 , GetRectMaxY(Hunting__PlayerRect[pNumber]) - bj_CELLWIDTH * 0.25 , .33 , 'D00E' , 'D01F' , true)
        endif
      endif
      if ( not Hunting__DecorationDoodadLoc(pNumber , GetRectMinX(Hunting__PlayerRect[pNumber]) + bj_CELLWIDTH * 9.5 , GetRectMaxY(Hunting__PlayerRect[pNumber]) - bj_CELLWIDTH * 0.25 , .4 , 'D00Q' , 0 , true) ) then
        if ( not Hunting__DecorationDoodadLoc(pNumber , GetRectMinX(Hunting__PlayerRect[pNumber]) + bj_CELLWIDTH * 9.5 , GetRectMaxY(Hunting__PlayerRect[pNumber]) - bj_CELLWIDTH * 0.25 , .33 , 'D01B' , 0 , true) ) then
        call Hunting__DecorationDoodadLoc(pNumber , GetRectMinX(Hunting__PlayerRect[pNumber]) + bj_CELLWIDTH * 9.5 , GetRectMaxY(Hunting__PlayerRect[pNumber]) - bj_CELLWIDTH * 0.25 , .33 , 'D00E' , 'D01F' , true)
        endif
      endif
      if ( not Hunting__DecorationDoodadLoc(pNumber , GetRectMinX(Hunting__PlayerRect[pNumber]) + bj_CELLWIDTH * 0.5 , GetRectMinY(Hunting__PlayerRect[pNumber]) + bj_CELLWIDTH * 0.25 , .4 , 'D00Q' , 0 , false) ) then
        if ( not Hunting__DecorationDoodadLoc(pNumber , GetRectMinX(Hunting__PlayerRect[pNumber]) + bj_CELLWIDTH * 0.5 , GetRectMinY(Hunting__PlayerRect[pNumber]) + bj_CELLWIDTH * 0.25 , .33 , 'D01B' , 0 , false) ) then
        call Hunting__DecorationDoodadLoc(pNumber , GetRectMinX(Hunting__PlayerRect[pNumber]) + bj_CELLWIDTH * 0.5 , GetRectMinY(Hunting__PlayerRect[pNumber]) + bj_CELLWIDTH * 0.25 , .33 , 'D00E' , 'D01F' , false)
        endif
      endif
      if ( not Hunting__DecorationDoodadLoc(pNumber , GetRectMinX(Hunting__PlayerRect[pNumber]) + bj_CELLWIDTH * 8.5 , GetRectMinY(Hunting__PlayerRect[pNumber]) + bj_CELLWIDTH * 0.25 , .4 , 'D00Q' , 0 , false) ) then
        if ( not Hunting__DecorationDoodadLoc(pNumber , GetRectMinX(Hunting__PlayerRect[pNumber]) + bj_CELLWIDTH * 8.5 , GetRectMinY(Hunting__PlayerRect[pNumber]) + bj_CELLWIDTH * 0.25 , .33 , 'D01B' , 0 , false) ) then
        call Hunting__DecorationDoodadLoc(pNumber , GetRectMinX(Hunting__PlayerRect[pNumber]) + bj_CELLWIDTH * 8.5 , GetRectMinY(Hunting__PlayerRect[pNumber]) + bj_CELLWIDTH * 0.25 , .33 , 'D00E' , 'D01F' , false)
        endif
      endif
    endif
  endfunction
  
  function Hunting__AddDyingEvent takes integer pNumber,unit u returns nothing
    call SaveInteger(hash, GetHandleId(u), StringHash("pNumber"), pNumber)
    call SaveInteger(hash, pNumber, StringHash("mCount"), LoadInteger(hash, pNumber, StringHash("mCount")) + 1)
    call TriggerRegisterUnitEvent(Hunting__DyingTrigger, u, EVENT_UNIT_DEATH)
    call MsgAll("added : " + GetUnitName(u) + "/" + I2S(LoadInteger(hash, pNumber, StringHash("mCount"))) + " at " + I2S(GetHandleId(Hunting__DyingTrigger)))
  endfunction
  function Hunting__AngleToUnit takes real x,real y,unit unitB returns real
    return bj_RADTODEG * Atan2(GetWidgetY(unitB) - y, GetWidgetX(unitB) - x)
  endfunction
  function Hunting__CreateMonster takes integer pNumber,integer count,integer monsterType,real x,real y,real angle returns nothing
    if ( angle < 0 ) then
      set angle=GetRandomDirectionDeg()
    elseif ( angle == 0. ) then
      set angle=Hunting__AngleToUnit(GetRectCenterX(Hunting__PlayerRect[pNumber]) + x , GetRectCenterY(Hunting__PlayerRect[pNumber]) + y , udg_hero[pNumber])
    endif
    loop
      exitwhen count <= 0
      call Hunting__AddDyingEvent(pNumber , CreateUnit(Player(PLAYER_NEUTRAL_AGGRESSIVE), monsterType, GetRectCenterX(Hunting__PlayerRect[pNumber]) + x, GetRectCenterY(Hunting__PlayerRect[pNumber]) + y, angle))
      set count=count - 1
    endloop
  endfunction
  function Hunting__CreateMonsters takes integer pNumber,integer rectNumber,integer wave returns nothing
    if ( rectNumber == 1 ) then
      if ( wave == 1 ) then
        call Hunting__CreateMonster(pNumber , 2 , 'nban' , 300 , 0 , 0)
      elseif ( wave == 2 ) then
        call Hunting__CreateMonster(pNumber , 1 , 'nenf' , 300 , 0 , 0)
      endif
    endif
  endfunction
  function Hunting__KillAll takes nothing returns nothing
    call RemoveUnit(GetEnumUnit())
  endfunction
  function Hunting__ClearRectUnits takes rect r returns nothing
    local group g= CreateGroup()
    call GroupEnumUnitsInRect(g, r, null)
    call ForGroup(g, function Hunting__KillAll)
    call DestroyGroup(g)
    set g=null
  endfunction
  function Hunting__EnterAction takes nothing returns nothing
    local integer rectNumber= LoadInteger(hash, GetHandleId(GetTriggeringRegion()), StringHash("rectNumber"))
    local integer pNumber= GetPlayerId(GetOwningPlayer(GetEnteringUnit())) + 1
    if ( rectNumber < 1 ) or ( pNumber < 1 ) then
      call MsgAll("Bug/Hunting/Action/enter value 0 : " + I2S(rectNumber) + "//" + I2S(pNumber))
    else
      call Hunting__ClearRectUnits(Hunting__PlayerRect[pNumber])
      call SaveInteger(hash, pNumber, StringHash("rectNumber"), rectNumber)
      call SaveInteger(hash, pNumber, StringHash("currentWave"), 1)
      call SaveInteger(hash, pNumber, StringHash("mCount"), 0)
      
      call Hunting__CharacterMoveIn(pNumber , - 400. , 0)
      call Hunting__DecorationRect(pNumber , rectNumber)
      call Hunting__CreateMonsters(pNumber , rectNumber , 1)
      call Hunting__DecorationDoodad(pNumber , rectNumber)
    endif
  endfunction
  function Hunting__RectSetup takes rect r1,rect r2,integer max returns nothing
    local integer i= 3
    // 초기설정 - 
    local real length= GetRectMaxX(r1) - GetRectMinX(r1)
    local real space= GetRectMinX(r2) - GetRectMaxX(r1)
    if ( r1 == null ) or ( r2 == null ) then
      if ( r1 == null ) and ( r2 == null ) then
        call MsgAll("Bug/Hunting/RectSetup/r1 r2 null")
      elseif ( r1 == null ) then
        call MsgAll("Bug/Hunting/RectSetup/r1 null")
      else
        call MsgAll("Bug/Hunting/RectSetup/r2 null")
      endif
    elseif ( Hunting__MAX_ROW != length / bj_CELLWIDTH ) or ( Hunting__MAX_COL != ( GetRectMaxY(r1) - GetRectMinY(r1) ) / bj_CELLWIDTH ) then
      call MsgAll("Bug/Hunting/RectSetup/MAX ROW/COL != " + R2SW(length / bj_CELLWIDTH, 2, 0) + "//" + R2SW(( GetRectMaxY(r1) - GetRectMinY(r1) ) / bj_CELLWIDTH, 2, 0))
    else
      set Hunting__PlayerRect[1]=r1
      set Hunting__PlayerRect[2]=r2
      
      // 3부터 실행
      loop
        set Hunting__PlayerRect[i]=Rect(GetRectMaxX(Hunting__PlayerRect[i - 1]) + space, GetRectMinY(r1), GetRectMaxX(Hunting__PlayerRect[i - 1]) + space + length, GetRectMaxY(r1))
        exitwhen i >= max
        set i=i + 1
      endloop
    endif
  endfunction
  function Hunting__CharacterMoveTo takes integer pNumber,real x,real y returns nothing
    call SetUnitPosition(udg_hero[pNumber], x, y)
    if ( GetLocalPlayer() == Player(pNumber - 1) ) then
      call PanCameraToTimed(x, y, 0.)
    endif
  endfunction
  function Hunting__Clear takes integer pNumber,integer stage returns nothing
    call Hunting__CharacterMoveTo(pNumber , LoadReal(hash, StringHash("rectExitX"), stage) , LoadReal(hash, StringHash("rectExitY"), stage))
    if ( stage == 1 ) then
      call SetPlayerState(Player(pNumber - 1), PLAYER_STATE_RESOURCE_GOLD, GetPlayerState(Player(pNumber - 1), PLAYER_STATE_RESOURCE_GOLD) + 100)
      call AddHeroXP(udg_hero[pNumber], 50, false)
      
    else
      call MsgAll("Hunting/Clear/ERROR 0")
    endif
  endfunction
  function Hunting__MonsterDying takes nothing returns nothing
    local unit u= GetTriggerUnit()
    local integer pNumber= LoadInteger(hash, GetHandleId(u), StringHash("pNumber"))
    local integer mCount= LoadInteger(hash, pNumber, StringHash("mCount")) - 1
    local integer rectNumber= LoadInteger(hash, pNumber, StringHash("rectNumber"))
    local integer currentWave= LoadInteger(hash, pNumber, StringHash("currentWave"))
    call SaveInteger(hash, pNumber, StringHash("mCount"), mCount)
    
    call MsgAll("pNumber:" + I2S(pNumber) + "/mCount:" + I2S(mCount) + "/rectNumber:" + I2S(rectNumber) + "/currentWave:" + I2S(currentWave))
    if ( mCount <= 0 ) then
      if ( currentWave < Hunting__EStageMaxWave(rectNumber) ) then
        set currentWave=currentWave + 1
        call SaveInteger(hash, pNumber, StringHash("currentWave"), currentWave)
        call Hunting__CharacterMoveIn(pNumber , - 400. , 0)
        call Hunting__CreateMonsters(pNumber , rectNumber , currentWave)
      else
        call Hunting__Clear(pNumber , rectNumber)
      endif
    endif
  endfunction
  function Hunting__Init takes nothing returns nothing
    // 이벤트 추가
    call Hunting__RectAddEvent(gg_rct_Hunting_Enter_01_Down , 1 , bj_KEYEVENTKEY_DOWN)
    call Hunting__RectAddEvent(gg_rct_Hunting_Enter_02 , 2 , bj_KEYEVENTKEY_LEFT)
    set Hunting__tempRegion=null
    
    // 조건, 액션
    call TriggerAddCondition(Hunting__tempEnterTrigger, Condition(function Hunting__isEnterHero))
    call TriggerAddAction(Hunting__tempEnterTrigger, function Hunting__EnterAction)
    
    call TriggerAddAction(Hunting__DyingTrigger, function Hunting__MonsterDying)
    
    // 구역 설정, 2개의 위치에 따라 max까지 반복
    call Hunting__RectSetup(gg_rct_Player_Hunting_Rect_01 , gg_rct_Player_Hunting_Rect_02 , bj_MAX_PLAYERS)
    // 메모리 반환
    set Hunting__tempEnterTrigger=null
    //set DyingTrigger = null *해당이름 계속 사용하니 null 처리 안함*
  endfunction
// scope Hunting ends
// END IMPORT OF System\Hunting.j
// BEGIN IMPORT OF System\Enchant.j
// scope Enchant begins

  function Enchant__Trig_Enchant_Actions takes nothing returns nothing
    local integer P= GetPlayerId(GetOwningPlayer(GetTriggerUnit())) + 1
    local item t= LoadItemHandle(hash, P, StringHash("ItemData1"))
    local texttag tt
    local string s= LoadStr(hash, GetHandleId(t), StringHash("ItemAddData"))
    local integer i= S2I(JNStringSub(s, JNStringPos(s, "ec_") + 3, 2))
    local string ts= "성공확률: " + R2SW(Pow(.9, i - 1) * 100., 2, 1) + "%"
 
    if ( t != null ) then
      call PauseUnit(GetTriggerUnit(), true)
    
      call Bufftt(CreateTextTagUnitBJ("강화할 아이템: " + GetItemName(t) + " +" + I2S(i), GetTriggerUnit(), 30., 9., GetRandomReal(0., 100.), GetRandomReal(0., 100.), GetRandomReal(0., 100.), 0))
    
      set tt=CreateTextTagUnitBJ(ts, GetTriggerUnit(), 0., 10., GetRandomReal(0., 100.), GetRandomReal(0., 100.), GetRandomReal(0., 100.), 0)
      call TriggerSleepAction(.5)
      call SetTextTagTextBJ(tt, ts + " . ", 10.)
      call TriggerSleepAction(.5)
      call SetTextTagTextBJ(tt, ts + " . . ", 10.)
      call TriggerSleepAction(.5)
      call SetTextTagTextBJ(tt, ts + " . . .", 10.)
      call TriggerSleepAction(.5)
      if ( GetRandomReal(0., 1.) <= Pow(.9, i - 1) ) then
        if ( GetRandomReal(0., 100.) <= 15. ) then
          call SetTextTagTextBJ(tt, ts + " . . .대성공!", 10.)
          if ( JNStringContains(s, "ec_") ) then
            call SaveStr(hash, GetHandleId(t), StringHash("ItemAddData"), JNStringReplace(s, "ec_" + I2S(i), "ec_" + I2S(i + 2)))
          else
            call SaveStr(hash, GetHandleId(t), StringHash("ItemAddData"), s + "'ec_2")
          endif
        else
          call SetTextTagTextBJ(tt, ts + " . . .성공!", 10.)
          if ( JNStringContains(s, "ec_") ) then
            call SaveStr(hash, GetHandleId(t), StringHash("ItemAddData"), JNStringReplace(s, "ec_" + I2S(i), "ec_" + I2S(i + 1)))
          else
            call SaveStr(hash, GetHandleId(t), StringHash("ItemAddData"), s + "'ec_1")
          endif
        endif
      elseif ( GetRandomReal(0., 100.) <= 15. ) then
        call SetTextTagTextBJ(tt, ts + " . . .대실패!", 10.)
        call SaveStr(hash, GetHandleId(t), StringHash("ItemAddData"), JNStringReplace(s, "ec_" + I2S(i), "ec_0"))
      else
        call SetTextTagTextBJ(tt, ts + " . . .실패!", 10.)
        call SaveStr(hash, GetHandleId(t), StringHash("ItemAddData"), JNStringReplace(s, "ec_" + I2S(i), "ec_" + I2S(i - 1)))
      endif
      call PauseUnit(GetTriggerUnit(), false)
      call TriggerSleepAction(1.)
      call DestroyTextTag(tt)
      set tt=null
    else
      call BJDebugMsg("인벤토리 1번칸에 강화할 아이템을 놓아주세요.")
    endif
  endfunction 
  function Enchant__Init takes nothing returns nothing
    call CreateTextTagLocBJ("강화", Location(- 1024, - 1216), 30., 15., GetRandomReal(0., 100.), GetRandomReal(0., 100.), GetRandomReal(0., 100.), 0.)
    call TriggerRegisterEnterRectSimple(Enchant__triggerEnchant, gg_rct_Env_Moonlight)
    call TriggerAddAction(Enchant__triggerEnchant, function Enchant__Trig_Enchant_Actions)
  endfunction 
// scope Enchant ends
// END IMPORT OF System\Enchant.j
// BEGIN IMPORT OF System\Exit.j
// scope Exit begins
  function Exit__Trig_Exit_Actions takes nothing returns nothing
    call MsgAll(GetPlayerName(GetTriggerPlayer()) + " 나감")
  endfunction 
  function Exit__Init takes nothing returns nothing
    call TriggerRegisterPlayerEventLeave(exitTrigger, Player(0))
    call TriggerRegisterPlayerEventLeave(exitTrigger, Player(1))
    call TriggerRegisterPlayerEventLeave(exitTrigger, Player(2))
    call TriggerRegisterPlayerEventLeave(exitTrigger, Player(3))
    call TriggerRegisterPlayerEventLeave(exitTrigger, Player(4))
    call TriggerRegisterPlayerEventLeave(exitTrigger, Player(5))
    call TriggerRegisterPlayerEventLeave(exitTrigger, Player(6))
    call TriggerRegisterPlayerEventLeave(exitTrigger, Player(7))
    call TriggerRegisterPlayerEventLeave(exitTrigger, Player(8))
    call TriggerRegisterPlayerEventLeave(exitTrigger, Player(9))
    call TriggerRegisterPlayerEventLeave(exitTrigger, Player(10))
    call TriggerRegisterPlayerEventLeave(exitTrigger, Player(11))
    call TriggerAddAction(exitTrigger, function Exit__Trig_Exit_Actions)
  endfunction 
// scope Exit ends
// END IMPORT OF System\Exit.j
// BEGIN IMPORT OF Tests\TestScope.j
// scope TestScope begins
  function TestScope__DelayedInit3 takes nothing returns nothing
    local unit tempUnit= udg_hero[1]
    if ( tempUnit == null ) then
      call MsgAll("Hotkey null")
    elseif ( s__PlayerResource_character[s__PlayerResource__staticgetindex(1)] == null ) then
      set s__PlayerResource_character[s__PlayerResource__staticgetindex(1)]=s__CharacterResource_Create(tempUnit , s__ECharacter_UT2I(GetUnitTypeId(tempUnit)))
      // call CreateUnit(Player(0), 'H000', GetUnitX(tempUnit), GetUnitY(tempUnit), 0.)
    endif
    set tempUnit=null

  endfunction 
  
  function TestScope__Init takes nothing returns nothing
    call MsgAll("Start")
    // call TimerStart(CreateTimer(), 1., true, function DelayedInit3) 
  endfunction 
// scope TestScope ends
// END IMPORT OF Tests\TestScope.j
// BEGIN IMPORT OF Tests\AddReg.j

// scope AddReg begins
  function Trig_test_1_add_Actions takes nothing returns nothing
    local integer P= GetPlayerId(GetTriggerPlayer()) + 1
    local integer loopA= 1
    local integer tempKey= 0
    loop
      set tempKey=s__EHotkeys_H2I(s__MenuQuickSlot_BaseHotKey(s__EMenus_GetMainType(s__Quickmenu_Buttons[loopA]) , s__EMenus_GetSubTypeId(s__Quickmenu_Buttons[loopA])))
      call SaveInteger(hash, P, loopA, tempKey)
      call SaveInteger(hash, tempKey, P, loopA)
      //call BJDebugMsg("기본 등록 - " + I2S(loopA) + "번째 메뉴: " + MenuQuickSlot.BaseHotKey(loopA)) 
      call s__MenuQuickSlot_AddReg(P , loopA , tempKey)
      
      exitwhen loopA >= QUICK_MENU_COUNT_ALL
      set loopA=loopA + 1
    endloop
  endfunction 
  
  //=========================================================================== 
  function AddReg__Init takes nothing returns nothing
    set gg_trg_test_1_add=CreateTrigger()
    call TriggerRegisterPlayerChatEvent(gg_trg_test_1_add, Player(0), "-등록", true)
    call TriggerRegisterPlayerChatEvent(gg_trg_test_1_add, Player(1), "-등록", true)
    call TriggerRegisterPlayerChatEvent(gg_trg_test_1_add, Player(2), "-등록", true)
    call TriggerAddAction(gg_trg_test_1_add, function Trig_test_1_add_Actions)
  endfunction 
// scope AddReg ends
// END IMPORT OF Tests\AddReg.j
// BEGIN IMPORT OF Tests\FrameGrid.j
// scope DisplayGrid begins
  
  function GetShowGridLine takes integer size returns nothing
      if size == 0 then
          call DzFrameShow(DisplayGrid__GridLine_Small, false)
          call DzFrameShow(DisplayGrid__GridLine_Medium, false)
          call DzFrameShow(DisplayGrid__GridLine_Large, false)
      elseif size == 1 then
          call DzFrameShow(DisplayGrid__GridLine_Small, false)
          call DzFrameShow(DisplayGrid__GridLine_Medium, false)
          call DzFrameShow(DisplayGrid__GridLine_Large, true)
      elseif size == 2 then
          call DzFrameShow(DisplayGrid__GridLine_Small, false)
          call DzFrameShow(DisplayGrid__GridLine_Medium, true)
          call DzFrameShow(DisplayGrid__GridLine_Large, true)
      elseif size == 3 then
          call DzFrameShow(DisplayGrid__GridLine_Small, true)
          call DzFrameShow(DisplayGrid__GridLine_Medium, true)
          call DzFrameShow(DisplayGrid__GridLine_Large, true)
      endif
  endfunction
  
  function DisplayGrid__Main takes nothing returns nothing
      local integer targetFrame
      local integer frame
      local integer x= 1
      local integer y= 1
      local string texture
      
      call DestroyTrigger(GetTriggeringTrigger())
      set DisplayGrid__GridLine=DzCreateFrameByTagName("FRAME", "", DzGetGameUI(), "", 0)
      set DisplayGrid__GridLine_Small=DzCreateFrameByTagName("FRAME", "", DisplayGrid__GridLine, "", 0)
      set DisplayGrid__GridLine_Medium=DzCreateFrameByTagName("FRAME", "", DisplayGrid__GridLine, "", 0)
      set DisplayGrid__GridLine_Large=DzCreateFrameByTagName("FRAME", "", DisplayGrid__GridLine, "", 0)
      call DzFrameShow(DisplayGrid__GridLine_Small, false)
      call DzFrameShow(DisplayGrid__GridLine_Medium, false)
      call DzFrameShow(DisplayGrid__GridLine_Large, false)
      
      //알파 값
      call DzFrameSetAlpha(DisplayGrid__GridLine, DisplayGrid__GRID_ALPHA)
      
      //x축 격자 생성
      loop
          exitwhen x > 79
          if ModuloInteger(x, 10) == 0 then
              set targetFrame=DisplayGrid__GridLine_Large
              set texture="ReplaceableTextures\\TeamColor\\TeamColor04.blp"
          elseif ModuloInteger(x, 5) == 0 then
              set targetFrame=DisplayGrid__GridLine_Medium
              set texture="Textures\\white.blp"
          else
              set targetFrame=DisplayGrid__GridLine_Small
              set texture="ReplaceableTextures\\TeamColor\\TeamColor08.blp"
          endif
          set frame=DzCreateFrameByTagName("BACKDROP", "", targetFrame, "", 0)
          call DzFrameSetTexture(frame, texture, 0)
          call DzFrameSetAbsolutePoint(frame, JN_FRAMEPOINT_CENTER, x * 0.01, 0.30)
          call DzFrameSetSize(frame, 0.0001, 0.6)
          set x=x + 1
      endloop
      //x축 격자 수치 표기
      set x=1
      loop
          exitwhen x > 8
          set frame=DzCreateFrameByTagName("TEXT", "", DisplayGrid__GridLine_Large, "", 0)
          call DzFrameSetText(frame, "0." + I2S(x))
          call DzFrameSetAbsolutePoint(frame, JN_FRAMEPOINT_BOTTOMRIGHT, x * 0.1, 0.0)
          set x=x + 1
      endloop
      
      //y축 격자 생성
      loop
          exitwhen y > 59
          if ModuloInteger(y, 10) == 0 then
              set targetFrame=DisplayGrid__GridLine_Large
              set texture="ReplaceableTextures\\TeamColor\\TeamColor04.blp"
          elseif ModuloInteger(y, 5) == 0 then
              set targetFrame=DisplayGrid__GridLine_Medium
              set texture="Textures\\white.blp"
          else
              set targetFrame=DisplayGrid__GridLine_Small
              set texture="ReplaceableTextures\\TeamColor\\TeamColor08.blp"
          endif
          set frame=DzCreateFrameByTagName("BACKDROP", "", targetFrame, "", 0)
          call DzFrameSetTexture(frame, texture, 0)
          call DzFrameSetAbsolutePoint(frame, JN_FRAMEPOINT_CENTER, 0.40, y * 0.01)
          call DzFrameSetSize(frame, 0.8, 0.0001)
          set y=y + 1
      endloop
      
      //y축 격자 수치 표기
      set y=0
      loop
          exitwhen y > 8
          set frame=DzCreateFrameByTagName("TEXT", "", DisplayGrid__GridLine_Large, "", 0)
          call DzFrameSetText(frame, "0." + I2S(y))
          call DzFrameSetAbsolutePoint(frame, JN_FRAMEPOINT_TOPLEFT, 0.0, y * 0.1)
          set y=y + 1
      endloop
      
      //(0.0) 격자 수치 표기
      set frame=DzCreateFrameByTagName("TEXT", "", DisplayGrid__GridLine_Large, "", 0)
      call DzFrameSetText(frame, "0.0")
      call DzFrameSetAbsolutePoint(frame, JN_FRAMEPOINT_BOTTOMLEFT, 0.0, 0.0)
  endfunction
  
  function DisplayGrid__Command takes nothing returns nothing
      local string chat= StringCase(GetEventPlayerChatString(), false)
      if chat == "-g0" then
          call GetShowGridLine(0)
      elseif chat == "-g1" then
          call GetShowGridLine(1)
      elseif chat == "-g2" then
          call GetShowGridLine(2)
      elseif chat == "-g3" then
          call GetShowGridLine(3)
      endif
  endfunction

  function DisplayGrid__Init takes nothing returns nothing
      local trigger t= CreateTrigger()
      local integer i= 0
      call TriggerRegisterTimerEvent(t, 0.00, false)
      call TriggerAddAction(t, function DisplayGrid__Main)
      
      set t=CreateTrigger()
      loop
          exitwhen i > 11
          call TriggerRegisterPlayerChatEvent(t, Player(i), "-g", false)
          set i=i + 1
      endloop
      call TriggerAddAction(t, function DisplayGrid__Command)
      
      set t=null
  endfunction
// scope DisplayGrid ends
// END IMPORT OF Tests\FrameGrid.j
// BEGIN IMPORT OF Tests\ItemRandomEnchanter.j
// scope ItemRandomEnchanter begins
  constant function I2O takes integer i returns string
    if ( i == 1 ) then
      return "s1"
    elseif ( i == 2 ) then
      return "s2"
    elseif ( i == 3 ) then
      return "s3"
    elseif ( i == 4 ) then
      return "d1"
    elseif ( i == 5 ) then
      return "d2"
    elseif ( i == 6 ) then
      return "a1"
    elseif ( i == 7 ) then
      return "a2"
    elseif ( i == 8 ) then
      return "l1"
    elseif ( i == 9 ) then
      return "l2"
    elseif ( i == 10 ) then
      return "ed"
    elseif ( i == 11 ) then
      return "cp"
    elseif ( i == 12 ) then
      return "cx"
    elseif ( i == 13 ) then
      return "m1"
    elseif ( i == 14 ) then
      return "m2"
    elseif ( i == 15 ) then
      return "m3"
    elseif ( i == 16 ) then
      return "bs"
    elseif ( i == 17 ) then
      return "as"
    elseif ( i == 18 ) then
      return "ms"
    elseif ( i == 19 ) then
      return "g1"
    elseif ( i == 20 ) then
      return "g2"
    elseif ( i == 21 ) then
      return "p1"
    elseif ( i == 22 ) then
      return "p2"
    elseif ( i == 23 ) then
      return "p3"
    elseif ( i == 24 ) then
      return "sd"
    elseif ( i == 25 ) then
      return "sl"
    elseif ( i == 26 ) then
      return "md"
    elseif ( i == 27 ) then
      return "c1"
    elseif ( i == 28 ) then
      return "c2"
      
    elseif ( i == 29 ) then
      return "o1"
    elseif ( i == 30 ) then
      return "o2"
    elseif ( i == 31 ) then
      return "o3"
    elseif ( i == 32 ) then
      return "r1"
    elseif ( i == 33 ) then
      return "r2"
    elseif ( i == 34 ) then
      return "r3"
    elseif ( i == 35 ) then
      return "k1"
    elseif ( i == 36 ) then
      return "k2"
    elseif ( i == 37 ) then
      return "k3"
    else
      return ""
    endif
  endfunction 

  function ItemRandomEnchanter__ItemProcess takes integer i returns string
    if ( i == 4 or i == 5 ) then
      return I2O(i) + "_" + I2S(GetRandomInt(50, 200))
    elseif ( i == 11 or i == 13 or i == 16 or i == 17 or i == 21 or i == 22 or i == 23 or i == 24 or i == 26 or i == 27 or i == 28 ) then
      return I2O(i) + "_" + I2S(GetRandomInt(1, 10)) + "%"
    elseif ( i == 12 ) then
      return I2O(i) + "_" + R2SW(GetRandomReal(.1, .3), 1, 2) + "x"
    else
      return I2O(i) + "_" + I2S(GetRandomInt(1, 10))
    endif
  endfunction 
  function ItemRandomEnchanter__AddRandom takes integer i returns string
    return I2O(31 + i) + "_" + ItemRandomEnchanter__ItemProcess(GetRandomInt(1, 28))
  endfunction 
  function ItemRandomEnchanter__AddOption takes integer i returns string
    return I2O(28 + i) + "_" + ItemRandomEnchanter__ItemProcess(GetRandomInt(1, 28))
  endfunction 
  function ItemRandomEnchanter__AddSoket takes integer i returns string
    return I2O(34 + i) + "_" + ItemRandomEnchanter__ItemProcess(GetRandomInt(1, 28))
  endfunction 
  function ItemRandomEnchanter__Trig_ItemGet_Actions takes nothing returns nothing
    local integer P= GetPlayerId(GetOwningPlayer(GetTriggerUnit())) + 1
    local integer Slot= Equip_GetEmpty(P)
    local integer rand1= 1
    local string rand3= ""
    if ( GetItemType(GetManipulatedItem()) == ITEM_TYPE_ARTIFACT ) then
      if not ( HaveSavedString(hash, GetHandleId(GetManipulatedItem()), StringHash("ItemAddData")) ) then
        set rand3="tt_" + JNServerTime("MMdd_HHmm") + "-" + GetPlayerName(GetOwningPlayer(GetTriggerUnit()))
        if ( GetRandomReal(0., 100.) <= 20. ) then
          set rand3=rand3 + "'ra_매직"
          set rand3=rand3 + "'" + ItemRandomEnchanter__AddOption(1)
        elseif ( GetRandomReal(0., 100.) <= 20. ) then
          set rand3=rand3 + "'ra_레어"
          set rand3=rand3 + "'" + ItemRandomEnchanter__AddOption(1)
          set rand3=rand3 + "'" + ItemRandomEnchanter__AddRandom(1)
          call Bufftt(CreateTextTagUnitBJ("레어", GetTriggerUnit(), 30., 9., GetRandomReal(0., 100.), GetRandomReal(0., 100.), GetRandomReal(0., 100.), 0))
        elseif ( GetRandomReal(0., 100.) <= 20. ) then
          set rand3=rand3 + "'ra_유니크"
          set rand3=rand3 + "'" + ItemRandomEnchanter__AddOption(1)
          set rand3=rand3 + "'" + ItemRandomEnchanter__AddRandom(1)
          set rand3=rand3 + "'" + ItemRandomEnchanter__AddRandom(2)
          call Bufftt(CreateTextTagUnitBJ("유니크!", GetTriggerUnit(), 30., 10., GetRandomReal(0., 100.), GetRandomReal(0., 100.), GetRandomReal(0., 100.), 0))
        elseif ( GetRandomReal(0., 100.) <= 20. ) then
          set rand3=rand3 + "'ra_에픽"
          set rand3=rand3 + "'" + ItemRandomEnchanter__AddOption(1)
          set rand3=rand3 + "'" + ItemRandomEnchanter__AddRandom(1)
          set rand3=rand3 + "'" + ItemRandomEnchanter__AddRandom(2)
          set rand3=rand3 + "'" + ItemRandomEnchanter__AddRandom(3)
          call Bufftt(CreateTextTagUnitBJ("에픽!!", GetTriggerUnit(), 30., 11., GetRandomReal(0., 100.), GetRandomReal(0., 100.), GetRandomReal(0., 100.), 0))
        elseif ( GetRandomReal(0., 100.) <= 20. ) then
          set rand3=rand3 + "'ra_히든"
          set rand3=rand3 + "'" + ItemRandomEnchanter__AddOption(1)
          set rand3=rand3 + "'" + ItemRandomEnchanter__AddOption(2)
          set rand3=rand3 + "'" + ItemRandomEnchanter__AddRandom(1)
          set rand3=rand3 + "'" + ItemRandomEnchanter__AddRandom(2)
          set rand3=rand3 + "'" + ItemRandomEnchanter__AddRandom(3)
          call Bufftt(CreateTextTagUnitBJ("히든!!!", GetTriggerUnit(), 30., 12., GetRandomReal(0., 100.), GetRandomReal(0., 100.), GetRandomReal(0., 100.), 0))
        elseif ( GetRandomReal(0., 100.) <= 20. ) then
          set rand3=rand3 + "'ra_등급외"
          set rand3=rand3 + "'" + ItemRandomEnchanter__AddOption(1)
          set rand3=rand3 + "'" + ItemRandomEnchanter__AddOption(2)
          set rand3=rand3 + "'" + ItemRandomEnchanter__AddOption(3)
          set rand3=rand3 + "'" + ItemRandomEnchanter__AddRandom(1)
          set rand3=rand3 + "'" + ItemRandomEnchanter__AddRandom(2)
          set rand3=rand3 + "'" + ItemRandomEnchanter__AddRandom(3)
          call Bufftt(CreateTextTagUnitBJ("등급 외!!!!", GetTriggerUnit(), 30., 13., GetRandomReal(0., 100.), GetRandomReal(0., 100.), GetRandomReal(0., 100.), 0))
        else
          set rand3=rand3 + "'ra_노말"
        endif
      
        
        if ( GetRandomReal(0., 100.) <= 80. ) then
          set rand3=rand3 + "'ec_" + I2S(GetRandomInt(1, 4))
        endif
      
        
        if ( GetRandomReal(0., 100.) <= 10. ) then
          set rand3=rand3 + "'qo_S"
          set rand3=rand3 + "'" + ItemRandomEnchanter__AddSoket(1)
          set rand3=rand3 + "'" + ItemRandomEnchanter__AddSoket(2)
          set rand3=rand3 + "'" + ItemRandomEnchanter__AddSoket(3)
        elseif ( GetRandomReal(0., 90.) <= 10. ) then
          set rand3=rand3 + "'qo_A+"
          set rand3=rand3 + "'" + ItemRandomEnchanter__AddSoket(1)
          set rand3=rand3 + "'" + ItemRandomEnchanter__AddSoket(2)
        elseif ( GetRandomReal(0., 80.) <= 10. ) then
          set rand3=rand3 + "'qo_A"
          set rand3=rand3 + "'" + ItemRandomEnchanter__AddSoket(1)
          set rand3=rand3 + "'" + ItemRandomEnchanter__AddSoket(2)
        elseif ( GetRandomReal(0., 70.) <= 10. ) then
          set rand3=rand3 + "'qo_B+"
          set rand3=rand3 + "'" + ItemRandomEnchanter__AddSoket(1)
        elseif ( GetRandomReal(0., 60.) <= 10. ) then
          set rand3=rand3 + "'qo_B"
          set rand3=rand3 + "'" + ItemRandomEnchanter__AddSoket(1)
        elseif ( GetRandomReal(0., 50.) <= 10. ) then
          set rand3=rand3 + "'qo_C+"
        elseif ( GetRandomReal(0., 40.) <= 10. ) then
          set rand3=rand3 + "'qo_C"
        elseif ( GetRandomReal(0., 30.) <= 10. ) then
          set rand3=rand3 + "'qo_D+"
        elseif ( GetRandomReal(0., 20.) <= 10. ) then
          set rand3=rand3 + "'qo_D"
        else
          set rand3=rand3 + "'qo_F"
        endif
      
        if ( Slot > 0 ) then
          set rand1=GetRandomInt(29, 34)
          call SaveStr(hash, GetHandleId(GetManipulatedItem()), StringHash("ItemAddData"), rand3)
        else
          call BJDebugMsg("인벤토리가 모두 찼습니다.")
          call UnitRemoveItem(GetTriggerUnit(), GetManipulatedItem())
          return
        endif
      endif
      call SaveItemHandle(hash, P, StringHash("ItemData" + I2S(Slot)), GetManipulatedItem())
      if ( GetLocalPlayer() == Player(P - 1) ) then
        call DzFrameSetTexture(Frame_InvenButtonsBackDrop[Slot], EXGetItemDataString(GetItemTypeId(GetManipulatedItem()), 1), 0)
      endif
      call SetItemPosition(GetManipulatedItem(), StoreX, StoreY)
    else
      call RemoveItem(GetManipulatedItem())
    endif
  endfunction 

  function ItemRandomEnchanter__Init takes nothing returns nothing
    call TriggerRegisterAnyUnitEventBJ(ItemRandomEnchanter__triggerItemRandomEnchanter, EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddAction(ItemRandomEnchanter__triggerItemRandomEnchanter, function ItemRandomEnchanter__Trig_ItemGet_Actions)
  endfunction 
// scope ItemRandomEnchanter ends
// END IMPORT OF Tests\ItemRandomEnchanter.j
// BEGIN IMPORT OF Tests\UnitNameChange.j

// scope UnitNameChange begins
  // //! import "JAPIUnitState.j" 
  

  constant function UnitNameChange__I2U takes integer i returns unit
  if ( i == 1 ) then
    return gg_unit_H000_0011
  elseif ( i == 2 ) then
    return gg_unit_H001_0010
  elseif ( i == 3 ) then
    return gg_unit_H002_0009
  elseif ( i == 4 ) then
    return gg_unit_H003_0008
  elseif ( i == 5 ) then
    return gg_unit_H005_0003
  elseif ( i == 6 ) then
    return gg_unit_H004_0007
  else
    return null
  endif
endfunction 
function UnitNameChange__Action takes nothing returns nothing
  local integer P= GetPlayerId(GetTriggerPlayer()) + 1
  local unit u= udg_hero[P]
  if ( StringLength(SubString(GetEventPlayerChatString(), 8, 99)) < 4 ) then
    call SetHeroProperNameIndex(u , 0)
    //call Print("기본 이름으로 설정: " + JNStringSplit(EXExecuteScript("(require'jass.slk').unit[" + I2S(GetUnitTypeId(u))+"].Propernames"),",",0)) 
  else
    call SetHeroProperNameIndex(u , P)
    call SetHeroProperName(u , SubString(GetEventPlayerChatString(), 8, 99))
  endif
  //call Print("now: No." + I2S(GetHeroProperNameIndex(u)) + "/" + GetHeroProperName(u)) 
  set u=null
endfunction 
function UnitNameChange__Init takes nothing returns nothing
  local trigger trig= CreateTrigger()
  local integer loopA= bj_MAX_PLAYERS - 1
  loop
    call TriggerRegisterPlayerChatEvent(trig, Player(loopA), "-이름 ", false)
    exitwhen loopA <= 0
    set loopA=loopA - 1
  endloop
  call TriggerAddAction(trig, function UnitNameChange__Action)
  set trig=null
      
  
  set loopA=1
  loop
    call SetHeroProperNameIndex(UnitNameChange__I2U(loopA) , 0)
    exitwhen loopA >= 6
    set loopA=loopA + 1
  endloop
endfunction 
// scope UnitNameChange ends
// END IMPORT OF Tests\UnitNameChange.j

// //! import "UnUse\HandleProfiler.j"
// //! import "UnUse\ItemUIExample.j"
// //! import "UnUse\NewTexttag.j"
// END IMPORT OF C:\Program Files\Warcraft\New\Breach\Script\GitAdder.j
function InitCustomTriggers takes nothing returns nothing
    //Function not found: call InitTrig_Import_File()
endfunction

//***************************************************************************
//*
//*  Players
//*
//***************************************************************************

function InitCustomPlayerSlots takes nothing returns nothing

    // Player 0
    call SetPlayerStartLocation(Player(0), 0)
    call SetPlayerColor(Player(0), ConvertPlayerColor(0))
    call SetPlayerRacePreference(Player(0), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(0), true)
    call SetPlayerController(Player(0), MAP_CONTROL_USER)

endfunction

function InitCustomTeams takes nothing returns nothing
    // Force: 포스 1
    call SetPlayerTeam(Player(0), 0)

endfunction

//***************************************************************************
//*
//*  Main Initialization
//*
//***************************************************************************

//===========================================================================
function main takes nothing returns nothing
    call SetCameraBounds(- 10112.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), - 6016.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM), 10112.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), 6016.0 - GetCameraMargin(CAMERA_MARGIN_TOP), - 10112.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), 6016.0 - GetCameraMargin(CAMERA_MARGIN_TOP), 10112.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), - 6016.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM))
    call SetDayNightModels("Environment\\DNC\\DNCLordaeron\\DNCLordaeronTerrain\\DNCLordaeronTerrain.mdl", "Environment\\DNC\\DNCLordaeron\\DNCLordaeronUnit\\DNCLordaeronUnit.mdl")
    call NewSoundEnvironment("Default")
    call SetAmbientDaySound("CityScapeDay")
    call SetAmbientNightSound("CityScapeNight")
    call SetMapMusic("Music", true, 0)
    call InitSounds()
    call CreateRegions()
    call CreateAllItems()
    call CreateAllUnits()
    call InitBlizzard()

call ExecuteFunc("jasshelper__initstructs17940921")
call ExecuteFunc("MemoryLibBase___Init")
call JNMemory___Init()
call SkillDataStr___Init()
call EndGameHook___Init()
call MainFrame___Init()
call UnitDetailFrame___Init()
call SkillTree___Init()
call PortraitEditor___Init()
call PushKey___Init()
call Option___Init()
call Equip___Init()
call Info___Init()
call MiniInfo___Init()
call JNObjectGui___init()
call Time___Init()
call LoadAuto___Init()
call Save___Init()
call ClearCacher__Init()
call Hunting__Init()
call Enchant__Init()
call Exit__Init()
call TestScope__Init()
call AddReg__Init()
call DisplayGrid__Init()
call UnitNameChange__Init()

call ExecuteFunc("jasshelper__0initdatastructs17940921")
call ExecuteFunc("jasshelper__1initdatastructs17940921")
call ExecuteFunc("jasshelper__2initdatastructs17940921")
    call InitGlobals()
    call InitCustomTriggers()

endfunction

//***************************************************************************
//*
//*  Map Configuration
//*
//***************************************************************************

function config takes nothing returns nothing
    call SetMapName("TRIGSTR_072")
    call SetMapDescription("TRIGSTR_074")
    call SetPlayers(1)
    call SetTeams(1)
    call SetGamePlacement(MAP_PLACEMENT_USE_MAP_SETTINGS)

    call DefineStartLocation(0, - 9664.0, 5376.0)

    // Player setup
    call InitCustomPlayerSlots()
    call SetPlayerSlotAvailable(Player(0), MAP_CONTROL_USER)
    call InitGenericPlayerSlots()
endfunction




//Struct method generated initializers/callers:

//Functions for BigArrays:
function sa__Select_ViewInfo takes nothing returns boolean
local string s=f__arg_string1
local boolean Continue=f__arg_boolean1
      call DzFrameSetText(s__Select_selectTextCharacterNameKorean, JNStringSplit(s, "'", 0))
      call DzFrameSetText(s__Select_selectTextCharacterNameEnglish, JNStringSplit(s, "'", 1))
      call DzFrameSetText(s__Select_selectTextCharacterDescription1, JNStringSplit(s, "'", 2))
      call DzFrameSetText(s__Select_selectTextCharacterDescription2, JNStringSplit(s, "'", 3))
      call s__Select_SetStars(0 , S2I(JNStringSplit(s, "'", 4)) , "Select_stars1.tga")
      call s__Select_SetStars(1 , S2I(JNStringSplit(s, "'", 5)) , "Select_stars1.tga")
      call s__Select_SetStars(2 , S2I(JNStringSplit(s, "'", 6)) , "Select_stars1.tga")
      call s__Select_SetStars(3 , S2I(JNStringSplit(s, "'", 7)) , "Select_stars1.tga")
      call s__Select_SetStars(4 , S2I(JNStringSplit(s, "'", 8)) , "Select_stars2.tga")
      if ( SubString(JNStringSplit(s, "'", 9), 0, 10) == "|cffff8000" ) then
        call DzFrameSetTexture(s__Select_select_LeftPreview, "Select_BackRed.blp", 0)
        call DzFrameSetTexture(s__Select_select_SkillPreview, "Select_BackRedRed.blp", 0)
        if ( Continue ) then
          call DzFrameSetTexture(s__Select_selectBackStart, "Select_ContinueRed.blp", 0)
        else
          call DzFrameSetTexture(s__Select_selectBackStart, "Select_StartRed.blp", 0)
        endif
      else
        call DzFrameSetTexture(s__Select_select_LeftPreview, "Select_BackBlue.blp", 0)
        call DzFrameSetTexture(s__Select_select_SkillPreview, "Select_BackBlueBlue.blp", 0)
        if ( Continue ) then
          call DzFrameSetTexture(s__Select_selectBackStart, "Select_ContinueBlue.blp", 0)
        else
          call DzFrameSetTexture(s__Select_selectBackStart, "Select_StartBlue.blp", 0)
        endif
      endif
      call DzFrameSetText(s__Select_selectTextCharacterDamageType, JNStringSplit(s, "'", 9))
      call DzFrameSetText(s__Select_selectTextCharacterMainWeapon, JNStringSplit(s, "'", 10))
      call DzFrameSetTexture(s__s__Select_selectBackSkills[0], JNStringSplit(s, "'", 11), 0)
      call DzFrameSetTexture(s__s__Select_selectBackSkills[1], JNStringSplit(s, "'", 12), 0)
      call DzFrameSetTexture(s__s__Select_selectBackSkills[2], JNStringSplit(s, "'", 13), 0)
      call DzFrameSetTexture(s__s__Select_selectBackSkills[3], JNStringSplit(s, "'", 14), 0)
      call DzFrameShow(s__Select_select_Main, true)
      call DzFrameShow(s__Select_select_LeftPreview, false)
   return true
endfunction
function sa__Select_CountAdder takes nothing returns boolean

      set s__Select_currentCount=s__Select_currentCount + 1
set f__result_integer= s__Select_currentCount
   return true
endfunction
function sa__MenuQuickSlot_MenuClick takes nothing returns boolean
local integer i=f__arg_integer1
      if ( i == 1 ) then
        set s__EMenus_OX_Option=not s__EMenus_OX_Option
        call DzFrameShow(Option_Frame_SettingBackdrop[0], s__EMenus_OX_Option)
      elseif ( i == 2 ) then
        call JNOpenBrowser("https://discord.gg/8FubNC8mZ")
      elseif ( i == 3 ) then
        call JNOpenBrowser("https://open.kakao.com/o/gM1u4zn")
      elseif ( i == 4 ) then
      elseif ( i == 5 ) then
        set s__EMenus_OX_Inven=not s__EMenus_OX_Inven
        call DzFrameShow(Frame_InvenButtonsBackDrop[0], s__EMenus_OX_Inven)
      elseif ( i == 6 ) then
        set s__EMenus_OX_Stats=not s__EMenus_OX_Stats
        call DzFrameShow(Frame_Info[0], s__EMenus_OX_Stats)
      elseif ( i == 7 ) then
        set s__EMenus_OX_Skills1=not s__EMenus_OX_Skills1
        call DzFrameShow(SkillTree_TreeMainFrame, s__EMenus_OX_Skills1)
      elseif ( i == 8 ) then
        set s__EMenus_OX_Skills2=not s__EMenus_OX_Skills2
      endif
   return true
endfunction
function sa__MenuQuickSlot_ButtonClickDetail takes nothing returns boolean
local player p=f__arg_player1
local integer frame=f__arg_integer1
      if ( s__EMenus_GetMainType(frame) == SELECT_MENU_CHARACTER ) then
        set NowSelect[GetPlayerId(p) + 1]=s__EMenus_GetSubTypeId(frame)
        if ( GetLocalPlayer() == p ) then
          call StopSound(gg_snd_MouseClick1, false, false)
          call StartSound(gg_snd_MouseClick1)
          call sc__Select_ViewInfo(s__CharacterData_SelectDatas[s__CharacterData__staticgetindex(s__EMenus_GetSubTypeId(frame))] , ( 0 < S2I(JNStringSplit(JNStringSplit(LoadStr(hash, GetPlayerId(p) + 1, StringHash("Data")), "/", s__EMenus_GetSubTypeId(frame)), "'", 1)) ))
        endif
      elseif ( s__EMenus_GetMainType(frame) == QUICK_MENU_MENU ) then
        if ( GetLocalPlayer() == p ) then
          call StopSound(gg_snd_BigButtonClick, false, false)
          call StartSound(gg_snd_BigButtonClick)
          call s__MenuQuickSlot_MenuClick(s__EMenus_GetSubTypeId(frame))
        endif
      elseif ( s__EMenus_GetMainType(frame) == QUICK_MENU_ITEMSLOT ) then
      elseif ( s__EMenus_GetMainType(frame) == QUICK_MENU_SKILLSLOT ) then
      endif
   return true
endfunction

function sa__IResource__factory takes nothing returns boolean
    if (f__arg_integer1==30) then
        set f__result_integer=s__OptionResource__allocate()
    elseif (f__arg_integer1==31) then
        set f__result_integer=s__PlayerResource__allocate()
    elseif (f__arg_integer1==33) then
        set f__result_integer=s__CharacterResource__allocate()
    elseif (f__arg_integer1==36) then
        set f__result_integer=s__StatResource__allocate()
    elseif (f__arg_integer1==37) then
        set f__result_integer=s__SlotResource__allocate()
    else
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: IResource, given a wrong typeid: "+I2S(f__arg_integer1))
    endif
    return true
endfunction

function sa__SlotResource_Create takes nothing returns boolean
local integer inputCharacter=f__arg_integer1
local integer slot=f__arg_integer2
local integer id=f__arg_integer3
local integer level=f__arg_integer4
      local integer this= sc__IResource__factory(si__SlotResource)
      set s__SlotResource_owner[this]=inputCharacter
      set s__SlotResource_slot[this]=slot
      call sc__SlotResource_ChangeBaseID(this,id , level)
set f__result_integer= this
   return true
endfunction
function sa__SlotResource_ChangeBaseID takes nothing returns boolean
local integer this=f__arg_this
local integer id=f__arg_integer1
local integer level=f__arg_integer2
      set s__IResource_id[this]=id
      call sc__SlotResource_ChangeIcon(s__CharacterResource_playerId[s__SlotResource_owner[this]] , id , s__SlotResource_slot[this])
      call sc__SlotResource_InitVariables(this)
      call s__SlotResource_ChangeLevel(this,level)
      call sc__SlotResource_ChangeObjectData(this,EXGetUnitAbility(s__CharacterResource_Unit[s__SlotResource_owner[this]], s__SlotData_GetSkillCode(s__SlotData__staticgetindex(s__SlotResource_slot[this]),s__IResource_id[s___PlayerResource_options[s__PlayerResource_options[s__PlayerResource__staticgetindex(s__CharacterResource_playerId[s__SlotResource_owner[this]])]+s__EHotkeyMenu_SubMenuSmartMode]] == 1)))
   return true
endfunction
function sa__SlotResource_ChangeIcon takes nothing returns boolean
local integer playerId=f__arg_integer1
local integer characterId=f__arg_integer2
local integer slot=f__arg_integer3
      if ( GetLocalPlayer() == Player(playerId - 1) ) then
        call s__SlotResource_ChangeSlotIcon(slot , true , IfEmpty(s___TreeMainCoreData_iconPath[s__TreeMainCoreData_iconPath[s__TreeMainCoreData__staticgetindex(characterId)]+slot] , "ReplaceableTextures\\CommandButtons\\BTNReplay-Pause.blp"))
      endif
   return true
endfunction
function sa__SlotResource_InitVariables takes nothing returns boolean
local integer this=f__arg_this
      set s__SlotResource_tempString=s__SkillData_Detail[s__SkillData__staticgetindex(s__IResource_id[this])]
      if ( JNStringContains(s__SlotResource_tempString, "#") ) then
        if ( JNStringContains(s__SlotResource_tempString, "#CastingTime") ) then
          set s__SlotResource_lastCastingTime[this]=s__SkillData_CastingTime[s__SkillData__staticgetindex(s__IResource_id[this])]
        else
          set s__SlotResource_lastCastingTime[this]=0
        endif
        if ( JNStringContains(s__SlotResource_tempString, "#Damage") ) then
          set s__SlotResource_lastDamage[this]=s__SkillData_Damage[s__SkillData__staticgetindex(s__IResource_id[this])]
        else
          set s__SlotResource_lastDamage[this]=0
        endif
        if ( JNStringContains(s__SlotResource_tempString, "#Distance") ) then
          set s__SlotResource_lastDistance[this]=s__SkillData_Distance[s__SkillData__staticgetindex(s__IResource_id[this])]
        else
          set s__SlotResource_lastDistance[this]=0
        endif
        if ( JNStringContains(s__SlotResource_tempString, "#Range") ) then
          set s__SlotResource_lastRange[this]=s__SkillData_Range[s__SkillData__staticgetindex(s__IResource_id[this])]
        else
          set s__SlotResource_lastRange[this]=0
        endif
        if ( JNStringContains(s__SlotResource_tempString, "#Duration") ) then
          set s__SlotResource_lastDuration[this]=s__SkillData_Duration[s__SkillData__staticgetindex(s__IResource_id[this])]
        else
          set s__SlotResource_lastDuration[this]=0
        endif
        if ( JNStringContains(s__SlotResource_tempString, "#Mana") ) then
          set s__SlotResource_lastCostMana[this]=s__SkillData_CostMana[s__SkillData__staticgetindex(s__IResource_id[this])]
        else
          set s__SlotResource_lastCostMana[this]=0
        endif
        if ( JNStringContains(s__SlotResource_tempString, "#CoolDown") ) then
          set s__SlotResource_lastCooldownTime[this]=s__SkillData_CoolTime[s__SkillData__staticgetindex(s__IResource_id[this])]
        else
          set s__SlotResource_lastCooldownTime[this]=0
        endif
      else
        set s__SlotResource_lastCastingTime[this]=0
        set s__SlotResource_lastDamage[this]=0
        set s__SlotResource_lastDistance[this]=0
        set s__SlotResource_lastRange[this]=0
        set s__SlotResource_lastDuration[this]=0
        set s__SlotResource_lastCostMana[this]=0
        set s__SlotResource_lastCooldownTime[this]=0
      endif
   return true
endfunction
function sa__SlotResource_UpdateInitVariables takes nothing returns boolean
local integer this=f__arg_this
      set s__SlotResource_tempString=s__SkillData_ValueChange[s__SkillData__staticgetindex(s__IResource_id[this])]
      if ( JNStringContains(s__SlotResource_tempString, "~") ) then
        if ( JNStringContains(s__SlotResource_tempString, "~CastingTime") ) then
          set s__SlotResource_lastCastingTime[this]=s__SkillData_CastingTime[s__SkillData__staticgetindex(s__IResource_id[this])] + ( s__SkillData_CastingTimeAdd[s__SkillData__staticgetindex(s__IResource_id[this])] * ( s__SlotResource_level[this] - 1 ) )
        endif
        if ( JNStringContains(s__SlotResource_tempString, "~Damage") ) then
          set s__SlotResource_lastDamage[this]=s__SkillData_Damage[s__SkillData__staticgetindex(s__IResource_id[this])] + ( s__SkillData_DamageAdd[s__SkillData__staticgetindex(s__IResource_id[this])] * ( s__SlotResource_level[this] - 1 ) )
        endif
        if ( JNStringContains(s__SlotResource_tempString, "~Distance") ) then
          set s__SlotResource_lastDistance[this]=s__SkillData_Distance[s__SkillData__staticgetindex(s__IResource_id[this])] + ( s__SkillData_DistanceAdd[s__SkillData__staticgetindex(s__IResource_id[this])] * ( s__SlotResource_level[this] - 1 ) )
        endif
        if ( JNStringContains(s__SlotResource_tempString, "~Range") ) then
          set s__SlotResource_lastRange[this]=s__SkillData_Range[s__SkillData__staticgetindex(s__IResource_id[this])] + ( s__SkillData_RangeAdd[s__SkillData__staticgetindex(s__IResource_id[this])] * ( s__SlotResource_level[this] - 1 ) )
        endif
        if ( JNStringContains(s__SlotResource_tempString, "~Duration") ) then
          set s__SlotResource_lastDuration[this]=s__SkillData_Duration[s__SkillData__staticgetindex(s__IResource_id[this])] + ( s__SkillData_DurationAdd[s__SkillData__staticgetindex(s__IResource_id[this])] * ( s__SlotResource_level[this] - 1 ) )
        endif
        if ( JNStringContains(s__SlotResource_tempString, "~Mana") ) then
          set s__SlotResource_lastCostMana[this]=s__SkillData_CostMana[s__SkillData__staticgetindex(s__IResource_id[this])] + ( s__SkillData_CostManaAdd[s__SkillData__staticgetindex(s__IResource_id[this])] * ( s__SlotResource_level[this] - 1 ) )
        endif
        if ( JNStringContains(s__SlotResource_tempString, "~CoolDown") ) then
          set s__SlotResource_lastCooldownTime[this]=s__SkillData_CoolTime[s__SkillData__staticgetindex(s__IResource_id[this])] + ( s__SkillData_CoolTimeAdd[s__SkillData__staticgetindex(s__IResource_id[this])] * ( s__SlotResource_level[this] - 1 ) )
        endif
      endif
   return true
endfunction
function sa__SlotResource_ChangeObjectData takes nothing returns boolean
local integer this=f__arg_this
local ability abil=f__arg_ability1
      call s__SlotResource_ChangeTargetingUI(this,abil , s__SkillData_TypeUI[s__SkillData__staticgetindex(s__IResource_id[this])])
      call EXSetAbilityDataReal(abil, 1, 101, s__SlotResource_lastCastingTime[this] * 0.01)
      call EXSetAbilityDataReal(abil, 1, 101, s__SlotResource_lastCooldownTime[this] * 0.01)
      call EXSetAbilityDataInteger(abil, 1, 104, s__SlotResource_lastCostMana[this] / 10)
      call EXSetAbilityDataString(abil, 1, 218, s__SlotResource_GetCurrentTooltips(this,true))
      call IncUnitAbilityLevel(s__CharacterResource_Unit[s__SlotResource_owner[this]], s__SlotData_GetSkillCode(s__SlotData__staticgetindex(s__SlotResource_slot[this]),( s__IResource_id[s___PlayerResource_options[s__PlayerResource_options[s__PlayerResource__staticgetindex(s__CharacterResource_playerId[s__SlotResource_owner[this]])]+s__EHotkeyMenu_SubMenuSmartMode]] == 1 )))
      call DecUnitAbilityLevel(s__CharacterResource_Unit[s__SlotResource_owner[this]], s__SlotData_GetSkillCode(s__SlotData__staticgetindex(s__SlotResource_slot[this]),( s__IResource_id[s___PlayerResource_options[s__PlayerResource_options[s__PlayerResource__staticgetindex(s__CharacterResource_playerId[s__SlotResource_owner[this]])]+s__EHotkeyMenu_SubMenuSmartMode]] == 1 )))
   return true
endfunction
function sa__StatResource_Create takes nothing returns boolean
local integer inputCharacter=f__arg_integer1
local integer inputSubTypeId=f__arg_integer2
      local integer this= sc__IResource__factory(si__StatResource)
      set s__StatResource_owner[this]=inputCharacter
      set s__IResource_id[this]=inputSubTypeId
set f__result_integer= this
   return true
endfunction
function sa__CharacterResource__disposeArrays takes nothing returns boolean
 local integer this=f__arg_this
 local integer kthis
    set si__CharacterResource_arrN=si__CharacterResource_arrN+1
    set kthis=si__CharacterResource_arr[this]
    set si__CharacterResource_arrV[si__CharacterResource_arrN]=kthis
 return true
endfunction
function sa__PlayerResource__disposeArrays takes nothing returns boolean
 local integer this=f__arg_this
 local integer kthis
    set si__PlayerResource_arrN=si__PlayerResource_arrN+1
    set kthis=si__PlayerResource_arr[this]
    set si__PlayerResource_arrV[si__PlayerResource_arrN]=kthis
 return true
endfunction
function sa__PlayerResource__staticgetindex takes nothing returns boolean
local integer input=f__arg_integer1
      if ( input <= 0 or MAX_PLAYER_COUNT <= input ) then
        call MsgAll("오류/P.R[" + I2S(input) + "]는 설정 범위(1~" + I2S(MAX_PLAYER_COUNT - 1) + ")를 벗어납니다.")
set f__result_integer= 0
return true
      elseif ( s__s__PlayerResource_privatePlayerResource[input] == 0 ) then
        call MsgAll("오류/P.R[" + I2S(input) + "]는 설정되지 않았습니다.")
set f__result_integer= 0
return true
      endif
set f__result_integer= s__s__PlayerResource_privatePlayerResource[input]
   return true
endfunction
function sa___prototype67_Load_ExecuteAction takes nothing returns boolean
 local player target=f__arg_player1
 local integer data=f__arg_integer1

    set GetServerPlayer=target
    set NowSelect[GetPlayerId(target) + 1]=data
    call TriggerExecute(s__Load_triggerLoad)
    return true
endfunction

function jasshelper__initstructs17940921 takes nothing returns nothing
    set st__Select_ViewInfo=CreateTrigger()
    call TriggerAddCondition(st__Select_ViewInfo,Condition( function sa__Select_ViewInfo))
    set st__Select_CountAdder=CreateTrigger()
    call TriggerAddCondition(st__Select_CountAdder,Condition( function sa__Select_CountAdder))
    set st__MenuQuickSlot_MenuClick=CreateTrigger()
    call TriggerAddCondition(st__MenuQuickSlot_MenuClick,Condition( function sa__MenuQuickSlot_MenuClick))
    set st__MenuQuickSlot_ButtonClickDetail=CreateTrigger()
    call TriggerAddCondition(st__MenuQuickSlot_ButtonClickDetail,Condition( function sa__MenuQuickSlot_ButtonClickDetail))
    set st__IResource__factory=CreateTrigger()
    call TriggerAddCondition(st__IResource__factory,Condition(function sa__IResource__factory))
    set st__SlotResource_Create=CreateTrigger()
    call TriggerAddCondition(st__SlotResource_Create,Condition( function sa__SlotResource_Create))
    set st__SlotResource_ChangeBaseID=CreateTrigger()
    call TriggerAddCondition(st__SlotResource_ChangeBaseID,Condition( function sa__SlotResource_ChangeBaseID))
    set st__SlotResource_ChangeIcon=CreateTrigger()
    call TriggerAddCondition(st__SlotResource_ChangeIcon,Condition( function sa__SlotResource_ChangeIcon))
    set st__SlotResource_InitVariables=CreateTrigger()
    call TriggerAddCondition(st__SlotResource_InitVariables,Condition( function sa__SlotResource_InitVariables))
    set st__SlotResource_UpdateInitVariables=CreateTrigger()
    call TriggerAddCondition(st__SlotResource_UpdateInitVariables,Condition( function sa__SlotResource_UpdateInitVariables))
    set st__SlotResource_ChangeObjectData=CreateTrigger()
    call TriggerAddCondition(st__SlotResource_ChangeObjectData,Condition( function sa__SlotResource_ChangeObjectData))
    set st__IResource_onDestroy[37]=null
    set st__StatResource_Create=CreateTrigger()
    call TriggerAddCondition(st__StatResource_Create,Condition( function sa__StatResource_Create))
    set st__IResource_onDestroy[36]=null
    set st__IResource_onDestroy[33]=CreateTrigger()
    call TriggerAddCondition(st__IResource_onDestroy[33],Condition( function sa__CharacterResource__disposeArrays))
    set st__PlayerResource__staticgetindex=CreateTrigger()
    call TriggerAddCondition(st__PlayerResource__staticgetindex,Condition( function sa__PlayerResource__staticgetindex))
    set st__IResource_onDestroy[31]=CreateTrigger()
    call TriggerAddCondition(st__IResource_onDestroy[31],Condition( function sa__PlayerResource__disposeArrays))
    set st__IResource_onDestroy[30]=null
    set st__Ptr_onDestroy[8]=null
    set st__Ptr_onDestroy[7]=null
    set st__Ptr_onDestroy[6]=null
    set st__Ptr_onDestroy[5]=null
    set st__Ptr_onDestroy[4]=null
    set st__Ptr_onDestroy[3]=null
    set st__Ptr_onDestroy[2]=null
    set st___prototype67[1]=CreateTrigger()
    call TriggerAddAction(st___prototype67[1],function sa___prototype67_Load_ExecuteAction)
    call TriggerAddCondition(st___prototype67[1],Condition(function sa___prototype67_Load_ExecuteAction))













































    call ExecuteFunc("s__StatData_onInit")
    call ExecuteFunc("s__SkillData_onInit")
    call ExecuteFunc("s__SlotData_onInit")
    call ExecuteFunc("s__HotkeyData_onInit")
    call ExecuteFunc("s__CharacterData_onInit")
    call ExecuteFunc("s__TreeMainCoreData_onInit")
    call ExecuteFunc("s__PlayerResource_onInit")
    call ExecuteFunc("s__EndGameHook___MemoryBlock_onInit")
    call ExecuteFunc("s__MenuQuickSlot_onInit")
    call ExecuteFunc("s__Select_onInit")
    call ExecuteFunc("s__Load_onInit")
endfunction

function jasshelper__0initdatastructs17940921 takes nothing returns nothing
 local integer s

//Loaded from: Data\SkillData.slk
    set s=s__SkillData_getFromKey(1)
    set s__SkillData_Character[s]=1
    set s__SkillData_TypeMain[s]=1
    set s__SkillData_TypeTree[s]=2
    set s__SkillData_RequireLevel[s]=0
    set s__SkillData_TypeCore[s]=1
    set s__SkillData_TypeUI[s]=4
    set s__SkillData_ValueUse[s]="#Distance/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~Mana/~CoolDown"
    set s__SkillData_Distance[s]=100
    set s__SkillData_CoolTime[s]=1999
    set s__SkillData_CoolTimeAdd[s]='-111'
    set s__SkillData_CostMana[s]=101
    set s__SkillData_CostManaAdd[s]=11
    set s=s__SkillData_getFromKey(2)
    set s__SkillData_Character[s]=1
    set s__SkillData_TypeMain[s]=1
    set s__SkillData_TypeTree[s]=2
    set s__SkillData_RequireLevel[s]=2
    set s__SkillData_TypeCore[s]=1
    set s__SkillData_TypeUI[s]=4
    set s__SkillData_ValueUse[s]="#Distance/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~Mana/~CoolDown"
    set s__SkillData_Distance[s]=150
    set s__SkillData_CoolTime[s]=1800
    set s__SkillData_CoolTimeAdd[s]='-100'
    set s__SkillData_CostMana[s]=147
    set s__SkillData_CostManaAdd[s]=17
    set s=s__SkillData_getFromKey(3)
    set s__SkillData_Character[s]=1
    set s__SkillData_TypeMain[s]=1
    set s__SkillData_TypeTree[s]=2
    set s__SkillData_RequireLevel[s]=5
    set s__SkillData_TypeCore[s]=1
    set s__SkillData_TypeUI[s]=4
    set s__SkillData_ValueUse[s]="#Distance/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~Mana/~CoolDown"
    set s__SkillData_Distance[s]=225
    set s__SkillData_CoolTime[s]=1497
    set s__SkillData_CoolTimeAdd[s]=-83
    set s__SkillData_CostMana[s]=220
    set s__SkillData_CostManaAdd[s]=25
    set s=s__SkillData_getFromKey(4)
    set s__SkillData_Character[s]=1
    set s__SkillData_TypeMain[s]=1
    set s__SkillData_TypeTree[s]=2
    set s__SkillData_RequireLevel[s]=8
    set s__SkillData_TypeCore[s]=1
    set s__SkillData_TypeUI[s]=4
    set s__SkillData_ValueUse[s]="#Distance/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~Mana/~CoolDown"
    set s__SkillData_Distance[s]=300
    set s__SkillData_CoolTime[s]=1203
    set s__SkillData_CoolTimeAdd[s]=-67
    set s__SkillData_CostMana[s]=303
    set s__SkillData_CostManaAdd[s]=33
    set s=s__SkillData_getFromKey(5)
    set s__SkillData_Character[s]=1
    set s__SkillData_TypeMain[s]=1
    set s__SkillData_TypeTree[s]=2
    set s__SkillData_RequireLevel[s]=10
    set s__SkillData_TypeCore[s]=1
    set s__SkillData_TypeUI[s]=4
    set s__SkillData_ValueUse[s]="#Distance/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~Mana/~CoolDown"
    set s__SkillData_Distance[s]=350
    set s__SkillData_CoolTime[s]=1004
    set s__SkillData_CoolTimeAdd[s]=-56
    set s__SkillData_CostMana[s]=349
    set s__SkillData_CostManaAdd[s]=39
    set s=s__SkillData_getFromKey(6)
    set s__SkillData_Character[s]=1
    set s__SkillData_TypeMain[s]=1
    set s__SkillData_TypeTree[s]=1
    set s__SkillData_RequireLevel[s]=0
    set s__SkillData_TypeCore[s]=2
    set s__SkillData_TypeUI[s]=2
    set s__SkillData_ValueUse[s]="#CastingTime/#Damage/#Duration/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~CastingTime/~Mana/~CoolDown"
    set s__SkillData_CastingTime[s]=140
    set s__SkillData_CastingTimeAdd[s]=10
    set s__SkillData_Duration[s]=100
    set s__SkillData_CoolTime[s]=1999
    set s__SkillData_CoolTimeAdd[s]='-111'
    set s__SkillData_Damage[s]=30
    set s__SkillData_CostMana[s]=101
    set s__SkillData_CostManaAdd[s]=11
    set s=s__SkillData_getFromKey(7)
    set s__SkillData_Character[s]=1
    set s__SkillData_TypeMain[s]=1
    set s__SkillData_TypeTree[s]=1
    set s__SkillData_RequireLevel[s]=2
    set s__SkillData_TypeCore[s]=2
    set s__SkillData_TypeUI[s]=2
    set s__SkillData_ValueUse[s]="#CastingTime/#Damage/#Duration/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~CastingTime/~Mana/~CoolDown"
    set s__SkillData_CastingTime[s]=122
    set s__SkillData_CastingTimeAdd[s]=8
    set s__SkillData_Duration[s]=50
    set s__SkillData_CoolTime[s]=1800
    set s__SkillData_CoolTimeAdd[s]='-100'
    set s__SkillData_Damage[s]=100
    set s__SkillData_CostMana[s]=147
    set s__SkillData_CostManaAdd[s]=17
    set s=s__SkillData_getFromKey(8)
    set s__SkillData_Character[s]=1
    set s__SkillData_TypeMain[s]=1
    set s__SkillData_TypeTree[s]=1
    set s__SkillData_RequireLevel[s]=5
    set s__SkillData_TypeCore[s]=2
    set s__SkillData_TypeUI[s]=2
    set s__SkillData_ValueUse[s]="#CastingTime/#Damage/#Duration/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~CastingTime/~Mana/~CoolDown"
    set s__SkillData_CastingTime[s]=104
    set s__SkillData_CastingTimeAdd[s]=6
    set s__SkillData_Duration[s]=150
    set s__SkillData_CoolTime[s]=1497
    set s__SkillData_CoolTimeAdd[s]=-83
    set s__SkillData_Damage[s]=50
    set s__SkillData_CostMana[s]=220
    set s__SkillData_CostManaAdd[s]=25
    set s=s__SkillData_getFromKey(9)
    set s__SkillData_Character[s]=1
    set s__SkillData_TypeMain[s]=1
    set s__SkillData_TypeTree[s]=6
    set s__SkillData_RequireLevel[s]=4
    set s__SkillData_TypeCore[s]=3
    set s__SkillData_TypeUI[s]=4
    set s__SkillData_ValueUse[s]="#Damage/#Distance/#Range/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~Damage/~Mana/~CoolDown"
    set s__SkillData_Distance[s]=350
    set s__SkillData_CoolTime[s]=2489
    set s__SkillData_CoolTimeAdd[s]='-100'
    set s__SkillData_Damage[s]=249
    set s__SkillData_DamageAdd[s]=15
    set s__SkillData_Range[s]=150
    set s__SkillData_CostMana[s]=643
    set s__SkillData_CostManaAdd[s]=129
    set s=s__SkillData_getFromKey(10)
    set s__SkillData_Character[s]=1
    set s__SkillData_TypeMain[s]=1
    set s__SkillData_TypeTree[s]=6
    set s__SkillData_RequireLevel[s]=7
    set s__SkillData_TypeCore[s]=3
    set s__SkillData_TypeUI[s]=4
    set s__SkillData_ValueUse[s]="#Damage/#Distance/#Range/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~Damage/~Mana/~CoolDown"
    set s__SkillData_Distance[s]=500
    set s__SkillData_CoolTime[s]=4190
    set s__SkillData_CoolTimeAdd[s]='-168'
    set s__SkillData_Damage[s]=484
    set s__SkillData_DamageAdd[s]=29
    set s__SkillData_Range[s]=150
    set s__SkillData_CostMana[s]=964
    set s__SkillData_CostManaAdd[s]=193
    set s=s__SkillData_getFromKey(11)
    set s__SkillData_Character[s]=1
    set s__SkillData_TypeMain[s]=1
    set s__SkillData_TypeTree[s]=6
    set s__SkillData_RequireLevel[s]=9
    set s__SkillData_TypeCore[s]=3
    set s__SkillData_TypeUI[s]=4
    set s__SkillData_ValueUse[s]="#Damage/#Distance/#Range/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~Damage/~Mana/~CoolDown"
    set s__SkillData_Distance[s]=600
    set s__SkillData_CoolTime[s]=5777
    set s__SkillData_CoolTimeAdd[s]='-231'
    set s__SkillData_Damage[s]=748
    set s__SkillData_DamageAdd[s]=45
    set s__SkillData_Range[s]=150
    set s__SkillData_CostMana[s]=1178
    set s__SkillData_CostManaAdd[s]=236
    set s=s__SkillData_getFromKey(12)
    set s__SkillData_Character[s]=1
    set s__SkillData_TypeMain[s]=1
    set s__SkillData_TypeTree[s]=6
    set s__SkillData_RequireLevel[s]=11
    set s__SkillData_TypeCore[s]=3
    set s__SkillData_TypeUI[s]=4
    set s__SkillData_ValueUse[s]="#Damage/#Distance/#Range/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~Damage/~Mana/~CoolDown"
    set s__SkillData_Distance[s]=700
    set s__SkillData_CoolTime[s]=7846
    set s__SkillData_CoolTimeAdd[s]='-314'
    set s__SkillData_Damage[s]=1152
    set s__SkillData_DamageAdd[s]=69
    set s__SkillData_Range[s]=150
    set s__SkillData_CostMana[s]=1392
    set s__SkillData_CostManaAdd[s]=278
    set s=s__SkillData_getFromKey(13)
    set s__SkillData_Character[s]=1
    set s__SkillData_TypeMain[s]=2
    set s__SkillData_TypeTree[s]=3
    set s__SkillData_RequireLevel[s]=2
    set s__SkillData_TypeCore[s]=5
    set s__SkillData_TypeUI[s]=4
    set s__SkillData_ValueUse[s]="#CastingTime/#Damage/#Distance/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~CastingTime/~Damage/~Mana/~CoolDown"
    set s__SkillData_Distance[s]=250
    set s__SkillData_CastingTime[s]=95
    set s__SkillData_CastingTimeAdd[s]=-5
    set s__SkillData_CoolTime[s]=1694
    set s__SkillData_CoolTimeAdd[s]=-68
    set s__SkillData_Damage[s]=158
    set s__SkillData_DamageAdd[s]=10
    set s__SkillData_CostMana[s]=429
    set s__SkillData_CostManaAdd[s]=86
    set s=s__SkillData_getFromKey(14)
    set s__SkillData_Character[s]=1
    set s__SkillData_TypeMain[s]=2
    set s__SkillData_TypeTree[s]=3
    set s__SkillData_RequireLevel[s]=4
    set s__SkillData_TypeCore[s]=5
    set s__SkillData_TypeUI[s]=4
    set s__SkillData_ValueUse[s]="#CastingTime/#Damage/#Distance/#Range/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~CastingTime/~Damage/~Range/~Mana/~CoolDown"
    set s__SkillData_Distance[s]=350
    set s__SkillData_CastingTime[s]=95
    set s__SkillData_CastingTimeAdd[s]=-5
    set s__SkillData_CoolTime[s]=2489
    set s__SkillData_CoolTimeAdd[s]='-100'
    set s__SkillData_Damage[s]=249
    set s__SkillData_DamageAdd[s]=15
    set s__SkillData_Range[s]=300
    set s__SkillData_RangeAdd[s]=400
    set s__SkillData_CostMana[s]=643
    set s__SkillData_CostManaAdd[s]=129
    set s=s__SkillData_getFromKey(15)
    set s__SkillData_Character[s]=1
    set s__SkillData_TypeMain[s]=2
    set s__SkillData_TypeTree[s]=3
    set s__SkillData_RequireLevel[s]=7
    set s__SkillData_TypeCore[s]=5
    set s__SkillData_TypeUI[s]=4
    set s__SkillData_ValueUse[s]="#CastingTime/#Damage/#Distance/#Range/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~CastingTime/~Damage/~Range/~Mana/~CoolDown"
    set s__SkillData_Distance[s]=500
    set s__SkillData_CastingTime[s]=95
    set s__SkillData_CastingTimeAdd[s]=-5
    set s__SkillData_CoolTime[s]=4190
    set s__SkillData_CoolTimeAdd[s]='-168'
    set s__SkillData_Damage[s]=484
    set s__SkillData_DamageAdd[s]=29
    set s__SkillData_Range[s]=350
    set s__SkillData_RangeAdd[s]=450
    set s__SkillData_CostMana[s]=964
    set s__SkillData_CostManaAdd[s]=193
    set s=s__SkillData_getFromKey(16)
    set s__SkillData_Character[s]=1
    set s__SkillData_TypeMain[s]=2
    set s__SkillData_TypeTree[s]=7
    set s__SkillData_RequireLevel[s]=0
    set s__SkillData_TypeCore[s]=3
    set s__SkillData_TypeUI[s]=4
    set s__SkillData_ValueUse[s]="#Damage/#Distance/#Range/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~Damage/~Mana/~CoolDown"
    set s__SkillData_Distance[s]=150
    set s__SkillData_CoolTime[s]=1100
    set s__SkillData_CoolTimeAdd[s]=-44
    set s__SkillData_Damage[s]=100
    set s__SkillData_DamageAdd[s]=6
    set s__SkillData_Range[s]=150
    set s__SkillData_CostMana[s]=215
    set s__SkillData_CostManaAdd[s]=43
    set s=s__SkillData_getFromKey(17)
    set s__SkillData_Character[s]=1
    set s__SkillData_TypeMain[s]=2
    set s__SkillData_TypeTree[s]=7
    set s__SkillData_RequireLevel[s]=3
    set s__SkillData_TypeCore[s]=3
    set s__SkillData_TypeUI[s]=4
    set s__SkillData_ValueUse[s]="#Damage/#Distance/#Range/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~Damage/~Mana/~CoolDown"
    set s__SkillData_Distance[s]=300
    set s__SkillData_CoolTime[s]=2063
    set s__SkillData_CoolTimeAdd[s]=-83
    set s__SkillData_Damage[s]=199
    set s__SkillData_DamageAdd[s]=12
    set s__SkillData_Range[s]=150
    set s__SkillData_CostMana[s]=536
    set s__SkillData_CostManaAdd[s]=107
    set s=s__SkillData_getFromKey(18)
    set s__SkillData_Character[s]=1
    set s__SkillData_TypeMain[s]=2
    set s__SkillData_TypeTree[s]=7
    set s__SkillData_RequireLevel[s]=6
    set s__SkillData_TypeCore[s]=3
    set s__SkillData_TypeUI[s]=4
    set s__SkillData_ValueUse[s]="#Damage/#Distance/#Range/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~Damage/~Mana/~CoolDown"
    set s__SkillData_Distance[s]=450
    set s__SkillData_CoolTime[s]=3543
    set s__SkillData_CoolTimeAdd[s]='-142'
    set s__SkillData_Damage[s]=388
    set s__SkillData_DamageAdd[s]=23
    set s__SkillData_Range[s]=150
    set s__SkillData_CostMana[s]=857
    set s__SkillData_CostManaAdd[s]=171
    set s=s__SkillData_getFromKey(19)
    set s__SkillData_Character[s]=1
    set s__SkillData_TypeMain[s]=3
    set s__SkillData_TypeTree[s]=7
    set s__SkillData_RequireLevel[s]=11
    set s__SkillData_TypeCore[s]=3
    set s__SkillData_TypeUI[s]=4
    set s__SkillData_ValueUse[s]="#Damage/#Distance/#Range/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~Damage/~Mana/~CoolDown"
    set s__SkillData_Distance[s]=700
    set s__SkillData_CoolTime[s]=7846
    set s__SkillData_CoolTimeAdd[s]='-314'
    set s__SkillData_Damage[s]=1152
    set s__SkillData_DamageAdd[s]=69
    set s__SkillData_Range[s]=150
    set s__SkillData_CostMana[s]=1392
    set s__SkillData_CostManaAdd[s]=278
    set s=s__SkillData_getFromKey(20)
    set s__SkillData_Character[s]=1
    set s__SkillData_TypeMain[s]=2
    set s__SkillData_TypeTree[s]=4
    set s__SkillData_RequireLevel[s]=0
    set s__SkillData_TypeCore[s]=3
    set s__SkillData_TypeUI[s]=4
    set s__SkillData_ValueUse[s]="#Damage/#Range/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~Damage/~Mana/~CoolDown"
    set s__SkillData_CoolTime[s]=1100
    set s__SkillData_CoolTimeAdd[s]=-44
    set s__SkillData_Damage[s]=100
    set s__SkillData_DamageAdd[s]=6
    set s__SkillData_Range[s]=150
    set s__SkillData_CostMana[s]=215
    set s__SkillData_CostManaAdd[s]=43
    set s=s__SkillData_getFromKey(21)
    set s__SkillData_Character[s]=1
    set s__SkillData_TypeMain[s]=2
    set s__SkillData_TypeTree[s]=4
    set s__SkillData_RequireLevel[s]=2
    set s__SkillData_TypeCore[s]=3
    set s__SkillData_TypeUI[s]=4
    set s__SkillData_ValueUse[s]="#Damage/#Range/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~Damage/~Mana/~CoolDown"
    set s__SkillData_CoolTime[s]=1694
    set s__SkillData_CoolTimeAdd[s]=-68
    set s__SkillData_Damage[s]=158
    set s__SkillData_DamageAdd[s]=10
    set s__SkillData_Range[s]=250
    set s__SkillData_CostMana[s]=429
    set s__SkillData_CostManaAdd[s]=86
    set s=s__SkillData_getFromKey(22)
    set s__SkillData_Character[s]=1
    set s__SkillData_TypeMain[s]=2
    set s__SkillData_TypeTree[s]=4
    set s__SkillData_RequireLevel[s]=4
    set s__SkillData_TypeCore[s]=3
    set s__SkillData_TypeUI[s]=4
    set s__SkillData_ValueUse[s]="#Damage/#Distance/#Range/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~Damage/~Mana/~CoolDown"
    set s__SkillData_Distance[s]=350
    set s__SkillData_CoolTime[s]=2489
    set s__SkillData_CoolTimeAdd[s]='-100'
    set s__SkillData_Damage[s]=249
    set s__SkillData_DamageAdd[s]=15
    set s__SkillData_Range[s]=150
    set s__SkillData_CostMana[s]=643
    set s__SkillData_CostManaAdd[s]=129
    set s=s__SkillData_getFromKey(23)
    set s__SkillData_Character[s]=1
    set s__SkillData_TypeMain[s]=3
    set s__SkillData_TypeTree[s]=4
    set s__SkillData_RequireLevel[s]=7
    set s__SkillData_TypeCore[s]=3
    set s__SkillData_TypeUI[s]=4
    set s__SkillData_ValueUse[s]="#Damage/#Distance/#Range/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~Damage/~Mana/~CoolDown"
    set s__SkillData_Distance[s]=500
    set s__SkillData_CoolTime[s]=4190
    set s__SkillData_CoolTimeAdd[s]='-168'
    set s__SkillData_Damage[s]=484
    set s__SkillData_DamageAdd[s]=29
    set s__SkillData_Range[s]=150
    set s__SkillData_CostMana[s]=964
    set s__SkillData_CostManaAdd[s]=193
    set s=s__SkillData_getFromKey(24)
    set s__SkillData_Character[s]=1
    set s__SkillData_TypeMain[s]=3
    set s__SkillData_TypeTree[s]=4
    set s__SkillData_RequireLevel[s]=12
    set s__SkillData_TypeCore[s]=3
    set s__SkillData_TypeUI[s]=4
    set s__SkillData_ValueUse[s]="#Damage/#Range/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~Damage/~Mana/~CoolDown"
    set s__SkillData_CoolTime[s]=9101
    set s__SkillData_CoolTimeAdd[s]='-364'
    set s__SkillData_Damage[s]=1427
    set s__SkillData_DamageAdd[s]=86
    set s__SkillData_Range[s]=750
    set s__SkillData_CostMana[s]=1499
    set s__SkillData_CostManaAdd[s]=300
    set s=s__SkillData_getFromKey(25)
    set s__SkillData_Character[s]=1
    set s__SkillData_TypeMain[s]=2
    set s__SkillData_TypeTree[s]=5
    set s__SkillData_RequireLevel[s]=1
    set s__SkillData_TypeCore[s]=5
    set s__SkillData_TypeUI[s]=4
    set s__SkillData_ValueUse[s]="#CastingTime/#Damage/#Distance/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~CastingTime/~Damage/~Mana/~CoolDown"
    set s__SkillData_Distance[s]=200
    set s__SkillData_CastingTime[s]=95
    set s__SkillData_CastingTimeAdd[s]=-5
    set s__SkillData_CoolTime[s]=1375
    set s__SkillData_CoolTimeAdd[s]=-55
    set s__SkillData_Damage[s]=126
    set s__SkillData_DamageAdd[s]=8
    set s__SkillData_CostMana[s]=322
    set s__SkillData_CostManaAdd[s]=64
    set s=s__SkillData_getFromKey(26)
    set s__SkillData_Character[s]=1
    set s__SkillData_TypeMain[s]=2
    set s__SkillData_TypeTree[s]=5
    set s__SkillData_RequireLevel[s]=10
    set s__SkillData_TypeCore[s]=5
    set s__SkillData_TypeUI[s]=4
    set s__SkillData_ValueUse[s]="#CastingTime/#Damage/#Distance/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~CastingTime/~Damage/~Mana/~CoolDown"
    set s__SkillData_Distance[s]=650
    set s__SkillData_CastingTime[s]=95
    set s__SkillData_CastingTimeAdd[s]=-5
    set s__SkillData_CoolTime[s]=6744
    set s__SkillData_CoolTimeAdd[s]='-270'
    set s__SkillData_Damage[s]=929
    set s__SkillData_DamageAdd[s]=56
    set s__SkillData_CostMana[s]=1285
    set s__SkillData_CostManaAdd[s]=257
    set s=s__SkillData_getFromKey(27)
    set s__SkillData_Character[s]=1
    set s__SkillData_TypeMain[s]=5
    set s__SkillData_TypeTree[s]=22
    set s__SkillData_RequireLevel[s]=0
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s__SkillData_ValueUse[s]="#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~Mana/~CoolDown"
    set s__SkillData_CoolTime[s]=15
    set s__SkillData_CoolTimeAdd[s]=15
    set s__SkillData_CostMana[s]=2
    set s__SkillData_CostManaAdd[s]=2
    set s=s__SkillData_getFromKey(28)
    set s__SkillData_Character[s]=1
    set s__SkillData_TypeMain[s]=5
    set s__SkillData_TypeTree[s]=22
    set s__SkillData_RequireLevel[s]=1
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s__SkillData_ValueUse[s]="#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~Mana/~CoolDown"
    set s__SkillData_CoolTime[s]=15
    set s__SkillData_CoolTimeAdd[s]=15
    set s__SkillData_CostMana[s]=4
    set s__SkillData_CostManaAdd[s]=4
    set s=s__SkillData_getFromKey(29)
    set s__SkillData_Character[s]=1
    set s__SkillData_TypeMain[s]=5
    set s__SkillData_TypeTree[s]=22
    set s__SkillData_RequireLevel[s]=2
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s__SkillData_ValueUse[s]="#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~Mana/~CoolDown"
    set s__SkillData_CoolTime[s]=15
    set s__SkillData_CoolTimeAdd[s]=15
    set s__SkillData_CostMana[s]=8
    set s__SkillData_CostManaAdd[s]=8
    set s=s__SkillData_getFromKey(30)
    set s__SkillData_Character[s]=1
    set s__SkillData_TypeMain[s]=5
    set s__SkillData_TypeTree[s]=22
    set s__SkillData_RequireLevel[s]=3
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s__SkillData_ValueUse[s]="#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~Mana/~CoolDown"
    set s__SkillData_CoolTime[s]=15
    set s__SkillData_CoolTimeAdd[s]=15
    set s__SkillData_CostMana[s]=12
    set s__SkillData_CostManaAdd[s]=12
    set s=s__SkillData_getFromKey(31)
    set s__SkillData_Character[s]=1
    set s__SkillData_TypeMain[s]=5
    set s__SkillData_TypeTree[s]=22
    set s__SkillData_RequireLevel[s]=4
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s__SkillData_ValueUse[s]="#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~Mana/~CoolDown"
    set s__SkillData_CoolTime[s]=15
    set s__SkillData_CoolTimeAdd[s]=15
    set s__SkillData_CostMana[s]=16
    set s__SkillData_CostManaAdd[s]=16
    set s=s__SkillData_getFromKey(32)
    set s__SkillData_Character[s]=1
    set s__SkillData_TypeMain[s]=5
    set s__SkillData_TypeTree[s]=22
    set s__SkillData_RequireLevel[s]=5
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s__SkillData_ValueUse[s]="#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~Mana/~CoolDown"
    set s__SkillData_CoolTime[s]=15
    set s__SkillData_CoolTimeAdd[s]=15
    set s__SkillData_CostMana[s]=20
    set s__SkillData_CostManaAdd[s]=20
    set s=s__SkillData_getFromKey(33)
    set s__SkillData_Character[s]=1
    set s__SkillData_TypeMain[s]=5
    set s__SkillData_TypeTree[s]=22
    set s__SkillData_RequireLevel[s]=6
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s__SkillData_ValueUse[s]="#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~Mana/~CoolDown"
    set s__SkillData_CoolTime[s]=15
    set s__SkillData_CoolTimeAdd[s]=15
    set s__SkillData_CostMana[s]=24
    set s__SkillData_CostManaAdd[s]=24
    set s=s__SkillData_getFromKey(34)
    set s__SkillData_Character[s]=1
    set s__SkillData_TypeMain[s]=5
    set s__SkillData_TypeTree[s]=22
    set s__SkillData_RequireLevel[s]=7
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s__SkillData_ValueUse[s]="#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~Mana/~CoolDown"
    set s__SkillData_CoolTime[s]=15
    set s__SkillData_CoolTimeAdd[s]=15
    set s__SkillData_CostMana[s]=56
    set s__SkillData_CostManaAdd[s]=56
    set s=s__SkillData_getFromKey(35)
    set s__SkillData_Character[s]=1
    set s__SkillData_TypeMain[s]=5
    set s__SkillData_TypeTree[s]=22
    set s__SkillData_RequireLevel[s]=8
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s__SkillData_ValueUse[s]="#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~Mana/~CoolDown"
    set s__SkillData_CoolTime[s]=15
    set s__SkillData_CoolTimeAdd[s]=15
    set s__SkillData_CostMana[s]=28
    set s__SkillData_CostManaAdd[s]=28
    set s=s__SkillData_getFromKey(36)
    set s__SkillData_Character[s]=1
    set s__SkillData_TypeMain[s]=5
    set s__SkillData_TypeTree[s]=22
    set s__SkillData_RequireLevel[s]=9
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s__SkillData_ValueUse[s]="#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~Mana/~CoolDown"
    set s__SkillData_CoolTime[s]=15
    set s__SkillData_CoolTimeAdd[s]=15
    set s__SkillData_CostMana[s]=32
    set s__SkillData_CostManaAdd[s]=32
    set s=s__SkillData_getFromKey(37)
    set s__SkillData_Character[s]=1
    set s__SkillData_TypeMain[s]=5
    set s__SkillData_TypeTree[s]=22
    set s__SkillData_RequireLevel[s]=10
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s__SkillData_ValueUse[s]="#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~Mana/~CoolDown"
    set s__SkillData_CoolTime[s]=15
    set s__SkillData_CoolTimeAdd[s]=15
    set s__SkillData_CostMana[s]=36
    set s__SkillData_CostManaAdd[s]=36
    set s=s__SkillData_getFromKey(38)
    set s__SkillData_Character[s]=1
    set s__SkillData_TypeMain[s]=5
    set s__SkillData_TypeTree[s]=22
    set s__SkillData_RequireLevel[s]=11
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s__SkillData_ValueUse[s]="#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~Mana/~CoolDown"
    set s__SkillData_CoolTime[s]=15
    set s__SkillData_CoolTimeAdd[s]=15
    set s__SkillData_CostMana[s]=40
    set s__SkillData_CostManaAdd[s]=40
    set s=s__SkillData_getFromKey(39)
    set s__SkillData_Character[s]=1
    set s__SkillData_TypeMain[s]=5
    set s__SkillData_TypeTree[s]=22
    set s__SkillData_RequireLevel[s]=12
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s__SkillData_ValueUse[s]="#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~Mana/~CoolDown"
    set s__SkillData_CoolTime[s]=15
    set s__SkillData_CoolTimeAdd[s]=15
    set s__SkillData_CostMana[s]=44
    set s__SkillData_CostManaAdd[s]=44
    set s=s__SkillData_getFromKey(40)
    set s__SkillData_Character[s]=1
    set s__SkillData_TypeMain[s]=5
    set s__SkillData_TypeTree[s]=22
    set s__SkillData_RequireLevel[s]=13
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s__SkillData_ValueUse[s]="#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~Mana/~CoolDown"
    set s__SkillData_CoolTime[s]=15
    set s__SkillData_CoolTimeAdd[s]=15
    set s__SkillData_CostMana[s]=48
    set s__SkillData_CostManaAdd[s]=48
    set s=s__SkillData_getFromKey(41)
    set s__SkillData_Character[s]=1
    set s__SkillData_TypeMain[s]=5
    set s__SkillData_TypeTree[s]=22
    set s__SkillData_RequireLevel[s]=14
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s__SkillData_ValueUse[s]="#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~Mana/~CoolDown"
    set s__SkillData_CoolTime[s]=15
    set s__SkillData_CoolTimeAdd[s]=15
    set s__SkillData_CostMana[s]=52
    set s__SkillData_CostManaAdd[s]=52
    set s=s__SkillData_getFromKey(42)
    set s__SkillData_Character[s]=1
    set s__SkillData_TypeMain[s]=4
    set s__SkillData_TypeTree[s]=25
    set s__SkillData_RequireLevel[s]=1
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s__SkillData_ValueUse[s]="#Damage"
    set s__SkillData_ValueChange[s]="~Damage"
    set s__SkillData_Damage[s]=1
    set s__SkillData_DamageAdd[s]=10
    set s=s__SkillData_getFromKey(43)
    set s__SkillData_Character[s]=1
    set s__SkillData_TypeMain[s]=4
    set s__SkillData_TypeTree[s]=25
    set s__SkillData_RequireLevel[s]=8
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s__SkillData_ValueUse[s]="#Damage"
    set s__SkillData_ValueChange[s]="~Damage"
    set s__SkillData_Damage[s]=1
    set s__SkillData_DamageAdd[s]=10
    set s=s__SkillData_getFromKey(44)
    set s__SkillData_Character[s]=2
    set s__SkillData_TypeMain[s]=1
    set s__SkillData_TypeTree[s]=11
    set s__SkillData_RequireLevel[s]=0
    set s__SkillData_TypeCore[s]=7
    set s__SkillData_TypeUI[s]=3
    set s__SkillData_ValueUse[s]="#CastingTime/#Damage/#Distance/#Duration/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~CastingTime/~Damage/~Mana/~CoolDown"
    set s__SkillData_Distance[s]=350
    set s__SkillData_CastingTime[s]=95
    set s__SkillData_CastingTimeAdd[s]=5
    set s__SkillData_Duration[s]=200
    set s__SkillData_CoolTime[s]=1100
    set s__SkillData_CoolTimeAdd[s]=-44
    set s__SkillData_Damage[s]=100
    set s__SkillData_DamageAdd[s]=6
    set s__SkillData_CostMana[s]=215
    set s__SkillData_CostManaAdd[s]=43
    set s=s__SkillData_getFromKey(45)
    set s__SkillData_Character[s]=2
    set s__SkillData_TypeMain[s]=1
    set s__SkillData_TypeTree[s]=11
    set s__SkillData_RequireLevel[s]=1
    set s__SkillData_TypeCore[s]=7
    set s__SkillData_TypeUI[s]=3
    set s__SkillData_ValueUse[s]="#CastingTime/#Damage/#Distance/#Duration/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~CastingTime/~Damage/~Mana/~CoolDown"
    set s__SkillData_Distance[s]=400
    set s__SkillData_CastingTime[s]=95
    set s__SkillData_CastingTimeAdd[s]=5
    set s__SkillData_Duration[s]=60
    set s__SkillData_CoolTime[s]=1375
    set s__SkillData_CoolTimeAdd[s]=-55
    set s__SkillData_Damage[s]=126
    set s__SkillData_DamageAdd[s]=8
    set s__SkillData_CostMana[s]=322
    set s__SkillData_CostManaAdd[s]=64
    set s=s__SkillData_getFromKey(46)
    set s__SkillData_Character[s]=2
    set s__SkillData_TypeMain[s]=1
    set s__SkillData_TypeTree[s]=11
    set s__SkillData_RequireLevel[s]=3
    set s__SkillData_TypeCore[s]=7
    set s__SkillData_TypeUI[s]=3
    set s__SkillData_ValueUse[s]="#CastingTime/#Damage/#Distance/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~CastingTime/~Damage/~Mana/~CoolDown"
    set s__SkillData_Distance[s]=500
    set s__SkillData_CastingTime[s]=95
    set s__SkillData_CastingTimeAdd[s]=5
    set s__SkillData_CoolTime[s]=2063
    set s__SkillData_CoolTimeAdd[s]=-83
    set s__SkillData_Damage[s]=199
    set s__SkillData_DamageAdd[s]=12
    set s__SkillData_CostMana[s]=536
    set s__SkillData_CostManaAdd[s]=107
    set s=s__SkillData_getFromKey(47)
    set s__SkillData_Character[s]=2
    set s__SkillData_TypeMain[s]=1
    set s__SkillData_TypeTree[s]=11
    set s__SkillData_RequireLevel[s]=3
    set s__SkillData_TypeCore[s]=7
    set s__SkillData_TypeUI[s]=3
    set s__SkillData_ValueUse[s]="#CastingTime/#Damage/#Distance/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~CastingTime/~Damage/~Mana/~CoolDown"
    set s__SkillData_Distance[s]=500
    set s__SkillData_CastingTime[s]=95
    set s__SkillData_CastingTimeAdd[s]=5
    set s__SkillData_CoolTime[s]=2063
    set s__SkillData_CoolTimeAdd[s]=-83
    set s__SkillData_Damage[s]=199
    set s__SkillData_DamageAdd[s]=12
    set s__SkillData_CostMana[s]=536
    set s__SkillData_CostManaAdd[s]=107
    set s=s__SkillData_getFromKey(48)
    set s__SkillData_Character[s]=2
    set s__SkillData_TypeMain[s]=1
    set s__SkillData_TypeTree[s]=11
    set s__SkillData_RequireLevel[s]=7
    set s__SkillData_TypeCore[s]=7
    set s__SkillData_TypeUI[s]=3
    set s__SkillData_ValueUse[s]="#CastingTime/#Damage/#Distance/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~CastingTime/~Damage/~Mana/~CoolDown"
    set s__SkillData_Distance[s]=700
    set s__SkillData_CastingTime[s]=95
    set s__SkillData_CastingTimeAdd[s]=5
    set s__SkillData_CoolTime[s]=4190
    set s__SkillData_CoolTimeAdd[s]='-168'
    set s__SkillData_Damage[s]=484
    set s__SkillData_DamageAdd[s]=29
    set s__SkillData_CostMana[s]=964
    set s__SkillData_CostManaAdd[s]=193
    set s=s__SkillData_getFromKey(49)
    set s__SkillData_Character[s]=2
    set s__SkillData_TypeMain[s]=1
    set s__SkillData_TypeTree[s]=11
    set s__SkillData_RequireLevel[s]=0
    set s__SkillData_TypeCore[s]=7
    set s__SkillData_TypeUI[s]=3
    set s__SkillData_ValueUse[s]="#CastingTime/#Damage/#Distance/#Duration/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~CastingTime/~Damage/~Mana/~CoolDown"
    set s__SkillData_Distance[s]=350
    set s__SkillData_CastingTime[s]=95
    set s__SkillData_CastingTimeAdd[s]=5
    set s__SkillData_Duration[s]=65
    set s__SkillData_CoolTime[s]=1100
    set s__SkillData_CoolTimeAdd[s]=-44
    set s__SkillData_Damage[s]=100
    set s__SkillData_DamageAdd[s]=6
    set s__SkillData_CostMana[s]=215
    set s__SkillData_CostManaAdd[s]=43
    set s=s__SkillData_getFromKey(50)
    set s__SkillData_Character[s]=2
    set s__SkillData_TypeMain[s]=1
    set s__SkillData_TypeTree[s]=11
    set s__SkillData_RequireLevel[s]=1
    set s__SkillData_TypeCore[s]=7
    set s__SkillData_TypeUI[s]=3
    set s__SkillData_ValueUse[s]="#CastingTime/#Damage/#Distance/#Duration/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~CastingTime/~Damage/~Mana/~CoolDown"
    set s__SkillData_Distance[s]=400
    set s__SkillData_CastingTime[s]=95
    set s__SkillData_CastingTimeAdd[s]=5
    set s__SkillData_Duration[s]=100
    set s__SkillData_CoolTime[s]=1375
    set s__SkillData_CoolTimeAdd[s]=-55
    set s__SkillData_Damage[s]=126
    set s__SkillData_DamageAdd[s]=8
    set s__SkillData_CostMana[s]=322
    set s__SkillData_CostManaAdd[s]=64
    set s=s__SkillData_getFromKey(51)
    set s__SkillData_Character[s]=2
    set s__SkillData_TypeMain[s]=1
    set s__SkillData_TypeTree[s]=11
    set s__SkillData_RequireLevel[s]=6
    set s__SkillData_TypeCore[s]=7
    set s__SkillData_TypeUI[s]=3
    set s__SkillData_ValueUse[s]="#CastingTime/#Damage/#Distance/#Duration/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~CastingTime/~Damage/~Mana/~CoolDown"
    set s__SkillData_Distance[s]=650
    set s__SkillData_CastingTime[s]=95
    set s__SkillData_CastingTimeAdd[s]=5
    set s__SkillData_Duration[s]=500
    set s__SkillData_CoolTime[s]=3543
    set s__SkillData_CoolTimeAdd[s]='-142'
    set s__SkillData_Damage[s]=388
    set s__SkillData_DamageAdd[s]=23
    set s__SkillData_CostMana[s]=857
    set s__SkillData_CostManaAdd[s]=171
    set s=s__SkillData_getFromKey(52)
    set s__SkillData_Character[s]=2
    set s__SkillData_TypeMain[s]=1
    set s__SkillData_TypeTree[s]=11
    set s__SkillData_RequireLevel[s]=8
    set s__SkillData_TypeCore[s]=9
    set s__SkillData_TypeUI[s]=5
    set s__SkillData_ValueUse[s]="#CastingTime/#Damage/#Distance/#Duration/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~CastingTime/~Damage/~Mana/~CoolDown"
    set s__SkillData_Distance[s]=750
    set s__SkillData_CastingTime[s]=95
    set s__SkillData_CastingTimeAdd[s]=5
    set s__SkillData_Duration[s]=330
    set s__SkillData_CoolTime[s]=4930
    set s__SkillData_CoolTimeAdd[s]='-197'
    set s__SkillData_Damage[s]=602
    set s__SkillData_DamageAdd[s]=36
    set s__SkillData_CostMana[s]=1071
    set s__SkillData_CostManaAdd[s]=214
    set s=s__SkillData_getFromKey(53)
    set s__SkillData_Character[s]=2
    set s__SkillData_TypeMain[s]=2
    set s__SkillData_TypeTree[s]=12
    set s__SkillData_RequireLevel[s]=0
    set s__SkillData_TypeCore[s]=8
    set s__SkillData_TypeUI[s]=2
    set s__SkillData_ValueUse[s]="#Range"
    set s__SkillData_Range[s]=200
    set s=s__SkillData_getFromKey(54)
    set s__SkillData_Character[s]=2
    set s__SkillData_TypeMain[s]=2
    set s__SkillData_TypeTree[s]=12
    set s__SkillData_RequireLevel[s]=1
    set s__SkillData_TypeCore[s]=8
    set s__SkillData_TypeUI[s]=2
    set s__SkillData_ValueUse[s]="#Range"
    set s__SkillData_Range[s]=200
    set s=s__SkillData_getFromKey(55)
    set s__SkillData_Character[s]=2
    set s__SkillData_TypeMain[s]=2
    set s__SkillData_TypeTree[s]=12
    set s__SkillData_RequireLevel[s]=2
    set s__SkillData_TypeCore[s]=8
    set s__SkillData_TypeUI[s]=2
    set s__SkillData_ValueUse[s]="#Range"
    set s__SkillData_Range[s]=200
    set s=s__SkillData_getFromKey(56)
    set s__SkillData_Character[s]=2
    set s__SkillData_TypeMain[s]=2
    set s__SkillData_TypeTree[s]=12
    set s__SkillData_RequireLevel[s]=3
    set s__SkillData_TypeCore[s]=3
    set s__SkillData_TypeUI[s]=4
    set s__SkillData_ValueUse[s]="#Damage/#Distance/#Range/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~Damage/~Mana/~CoolDown"
    set s__SkillData_Distance[s]=300
    set s__SkillData_CoolTime[s]=2063
    set s__SkillData_CoolTimeAdd[s]=-83
    set s__SkillData_Damage[s]=199
    set s__SkillData_DamageAdd[s]=12
    set s__SkillData_Range[s]=150
    set s__SkillData_CostMana[s]=536
    set s__SkillData_CostManaAdd[s]=107
    set s=s__SkillData_getFromKey(57)
    set s__SkillData_Character[s]=2
    set s__SkillData_TypeMain[s]=2
    set s__SkillData_TypeTree[s]=12
    set s__SkillData_RequireLevel[s]=4
    set s__SkillData_TypeCore[s]=8
    set s__SkillData_TypeUI[s]=2
    set s__SkillData_ValueUse[s]="#Range"
    set s__SkillData_Range[s]=200
    set s=s__SkillData_getFromKey(58)
    set s__SkillData_Character[s]=2
    set s__SkillData_TypeMain[s]=2
    set s__SkillData_TypeTree[s]=12
    set s__SkillData_RequireLevel[s]=5
    set s__SkillData_TypeCore[s]=8
    set s__SkillData_TypeUI[s]=2
    set s__SkillData_ValueUse[s]="#Range"
    set s__SkillData_Range[s]=200
    set s=s__SkillData_getFromKey(59)
    set s__SkillData_Character[s]=2
    set s__SkillData_TypeMain[s]=2
    set s__SkillData_TypeTree[s]=12
    set s__SkillData_RequireLevel[s]=6
    set s__SkillData_TypeCore[s]=8
    set s__SkillData_TypeUI[s]=2
    set s__SkillData_ValueUse[s]="#Range"
    set s__SkillData_Range[s]=200
    set s=s__SkillData_getFromKey(60)
    set s__SkillData_Character[s]=2
    set s__SkillData_TypeMain[s]=2
    set s__SkillData_TypeTree[s]=12
    set s__SkillData_RequireLevel[s]=7
    set s__SkillData_TypeCore[s]=8
    set s__SkillData_TypeUI[s]=2
    set s__SkillData_ValueUse[s]="#Range"
    set s__SkillData_Range[s]=200
    set s=s__SkillData_getFromKey(61)
    set s__SkillData_Character[s]=2
    set s__SkillData_TypeMain[s]=3
    set s__SkillData_TypeTree[s]=12
    set s__SkillData_RequireLevel[s]=8
    set s__SkillData_TypeCore[s]=8
    set s__SkillData_TypeUI[s]=2
    set s__SkillData_ValueUse[s]="#Range"
    set s__SkillData_Range[s]=200
    set s=s__SkillData_getFromKey(62)
    set s__SkillData_Character[s]=2
    set s__SkillData_TypeMain[s]=3
    set s__SkillData_TypeTree[s]=12
    set s__SkillData_RequireLevel[s]=9
    set s__SkillData_TypeCore[s]=8
    set s__SkillData_TypeUI[s]=2
    set s__SkillData_ValueUse[s]="#Range"
    set s__SkillData_Range[s]=200
    set s=s__SkillData_getFromKey(63)
    set s__SkillData_Character[s]=2
    set s__SkillData_TypeMain[s]=2
    set s__SkillData_TypeTree[s]=26
    set s__SkillData_RequireLevel[s]=3
    set s__SkillData_TypeCore[s]=8
    set s__SkillData_TypeUI[s]=2
    set s__SkillData_ValueUse[s]="#CastingTime/#Range/#Duration/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~CastingTime/~Duration/~CoolDown"
    set s__SkillData_CastingTime[s]=2
    set s__SkillData_CastingTimeAdd[s]=2
    set s__SkillData_Duration[s]=2
    set s__SkillData_DurationAdd[s]=2
    set s__SkillData_CoolTime[s]=15
    set s__SkillData_CoolTimeAdd[s]=15
    set s__SkillData_Range[s]=200
    set s__SkillData_CostMana[s]=60
    set s=s__SkillData_getFromKey(64)
    set s__SkillData_Character[s]=2
    set s__SkillData_TypeMain[s]=2
    set s__SkillData_TypeTree[s]=26
    set s__SkillData_RequireLevel[s]=5
    set s__SkillData_TypeCore[s]=8
    set s__SkillData_TypeUI[s]=2
    set s__SkillData_ValueUse[s]="#CastingTime/#Range/#Duration/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~CastingTime/~Duration/~CoolDown"
    set s__SkillData_CastingTime[s]=3
    set s__SkillData_CastingTimeAdd[s]=3
    set s__SkillData_Duration[s]=3
    set s__SkillData_DurationAdd[s]=3
    set s__SkillData_CoolTime[s]=20
    set s__SkillData_CoolTimeAdd[s]=20
    set s__SkillData_Range[s]=300
    set s__SkillData_CostMana[s]=100
    set s=s__SkillData_getFromKey(65)
    set s__SkillData_Character[s]=2
    set s__SkillData_TypeMain[s]=3
    set s__SkillData_TypeTree[s]=26
    set s__SkillData_RequireLevel[s]=7
    set s__SkillData_TypeCore[s]=8
    set s__SkillData_TypeUI[s]=2
    set s__SkillData_ValueUse[s]="#CastingTime/#Range/#Duration/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~CastingTime/~Duration/~CoolDown"
    set s__SkillData_CastingTime[s]=4
    set s__SkillData_CastingTimeAdd[s]=4
    set s__SkillData_Duration[s]=4
    set s__SkillData_DurationAdd[s]=4
    set s__SkillData_CoolTime[s]=28
    set s__SkillData_CoolTimeAdd[s]=28
    set s__SkillData_Range[s]=400
    set s__SkillData_CostMana[s]=140
    set s=s__SkillData_getFromKey(66)
    set s__SkillData_Character[s]=2
    set s__SkillData_TypeMain[s]=5
    set s__SkillData_TypeTree[s]=22
    set s__SkillData_RequireLevel[s]=0
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s=s__SkillData_getFromKey(67)
    set s__SkillData_Character[s]=2
    set s__SkillData_TypeMain[s]=5
    set s__SkillData_TypeTree[s]=22
    set s__SkillData_RequireLevel[s]=1
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s=s__SkillData_getFromKey(68)
    set s__SkillData_Character[s]=2
    set s__SkillData_TypeMain[s]=5
    set s__SkillData_TypeTree[s]=22
    set s__SkillData_RequireLevel[s]=2
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s=s__SkillData_getFromKey(69)
    set s__SkillData_Character[s]=2
    set s__SkillData_TypeMain[s]=5
    set s__SkillData_TypeTree[s]=22
    set s__SkillData_RequireLevel[s]=3
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s=s__SkillData_getFromKey(70)
    set s__SkillData_Character[s]=2
    set s__SkillData_TypeMain[s]=5
    set s__SkillData_TypeTree[s]=22
    set s__SkillData_RequireLevel[s]=4
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s=s__SkillData_getFromKey(71)
    set s__SkillData_Character[s]=2
    set s__SkillData_TypeMain[s]=5
    set s__SkillData_TypeTree[s]=22
    set s__SkillData_RequireLevel[s]=5
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s=s__SkillData_getFromKey(72)
    set s__SkillData_Character[s]=2
    set s__SkillData_TypeMain[s]=5
    set s__SkillData_TypeTree[s]=22
    set s__SkillData_RequireLevel[s]=6
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s=s__SkillData_getFromKey(73)
    set s__SkillData_Character[s]=2
    set s__SkillData_TypeMain[s]=5
    set s__SkillData_TypeTree[s]=22
    set s__SkillData_RequireLevel[s]=7
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s=s__SkillData_getFromKey(74)
    set s__SkillData_Character[s]=2
    set s__SkillData_TypeMain[s]=5
    set s__SkillData_TypeTree[s]=22
    set s__SkillData_RequireLevel[s]=8
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s=s__SkillData_getFromKey(75)
    set s__SkillData_Character[s]=2
    set s__SkillData_TypeMain[s]=5
    set s__SkillData_TypeTree[s]=22
    set s__SkillData_RequireLevel[s]=9
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s=s__SkillData_getFromKey(76)
    set s__SkillData_Character[s]=3
    set s__SkillData_TypeMain[s]=1
    set s__SkillData_TypeTree[s]=2
    set s__SkillData_RequireLevel[s]=0
    set s__SkillData_TypeCore[s]=1
    set s__SkillData_TypeUI[s]=4
    set s__SkillData_ValueUse[s]="#Distance/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~Mana/~CoolDown"
    set s__SkillData_Distance[s]=100
    set s__SkillData_CoolTime[s]=1999
    set s__SkillData_CoolTimeAdd[s]='-111'
    set s__SkillData_CostMana[s]=101
    set s__SkillData_CostManaAdd[s]=11
    set s=s__SkillData_getFromKey(77)
    set s__SkillData_Character[s]=3
    set s__SkillData_TypeMain[s]=1
    set s__SkillData_TypeTree[s]=2
    set s__SkillData_RequireLevel[s]=4
    set s__SkillData_TypeCore[s]=1
    set s__SkillData_TypeUI[s]=4
    set s__SkillData_ValueUse[s]="#Distance/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~Mana/~CoolDown"
    set s__SkillData_Distance[s]=200
    set s__SkillData_CoolTime[s]=1601
    set s__SkillData_CoolTimeAdd[s]=-89
    set s__SkillData_CostMana[s]=202
    set s__SkillData_CostManaAdd[s]=22
    set s=s__SkillData_getFromKey(78)
    set s__SkillData_Character[s]=3
    set s__SkillData_TypeMain[s]=1
    set s__SkillData_TypeTree[s]=2
    set s__SkillData_RequireLevel[s]=9
    set s__SkillData_TypeCore[s]=1
    set s__SkillData_TypeUI[s]=4
    set s__SkillData_ValueUse[s]="#Distance/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~Mana/~CoolDown"
    set s__SkillData_Distance[s]=325
    set s__SkillData_CoolTime[s]=1099
    set s__SkillData_CoolTimeAdd[s]=-61
    set s__SkillData_CostMana[s]=326
    set s__SkillData_CostManaAdd[s]=36
    set s=s__SkillData_getFromKey(79)
    set s__SkillData_Character[s]=3
    set s__SkillData_TypeMain[s]=4
    set s__SkillData_TypeTree[s]=10
    set s__SkillData_RequireLevel[s]=1
    set s__SkillData_TypeCore[s]=4
    set s__SkillData_TypeUI[s]=2
    set s=s__SkillData_getFromKey(80)
    set s__SkillData_Character[s]=3
    set s__SkillData_TypeMain[s]=4
    set s__SkillData_TypeTree[s]=10
    set s__SkillData_RequireLevel[s]=3
    set s__SkillData_TypeCore[s]=4
    set s__SkillData_TypeUI[s]=2
    set s=s__SkillData_getFromKey(81)
    set s__SkillData_Character[s]=3
    set s__SkillData_TypeMain[s]=4
    set s__SkillData_TypeTree[s]=10
    set s__SkillData_RequireLevel[s]=6
    set s__SkillData_TypeCore[s]=4
    set s__SkillData_TypeUI[s]=2
    set s=s__SkillData_getFromKey(82)
    set s__SkillData_Character[s]=3
    set s__SkillData_TypeMain[s]=4
    set s__SkillData_TypeTree[s]=10
    set s__SkillData_RequireLevel[s]=9
    set s__SkillData_TypeCore[s]=4
    set s__SkillData_TypeUI[s]=2
    set s=s__SkillData_getFromKey(83)
    set s__SkillData_Character[s]=3
    set s__SkillData_TypeMain[s]=2
    set s__SkillData_TypeTree[s]=8
    set s__SkillData_RequireLevel[s]=0
    set s__SkillData_TypeCore[s]=3
    set s__SkillData_TypeUI[s]=4
    set s__SkillData_ValueUse[s]="#Damage/#Distance/#Range/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~Damage/~Mana/~CoolDown"
    set s__SkillData_Distance[s]=150
    set s__SkillData_CoolTime[s]=1100
    set s__SkillData_CoolTimeAdd[s]=-44
    set s__SkillData_Damage[s]=100
    set s__SkillData_DamageAdd[s]=6
    set s__SkillData_Range[s]=150
    set s__SkillData_CostMana[s]=215
    set s__SkillData_CostManaAdd[s]=43
    set s=s__SkillData_getFromKey(84)
    set s__SkillData_Character[s]=3
    set s__SkillData_TypeMain[s]=2
    set s__SkillData_TypeTree[s]=8
    set s__SkillData_RequireLevel[s]=2
    set s__SkillData_TypeCore[s]=9
    set s__SkillData_TypeUI[s]=5
    set s__SkillData_ValueUse[s]="#Damage/#Range/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~Damage/~Mana/~CoolDown"
    set s__SkillData_CoolTime[s]=1694
    set s__SkillData_CoolTimeAdd[s]=-68
    set s__SkillData_Damage[s]=158
    set s__SkillData_DamageAdd[s]=10
    set s__SkillData_Range[s]=250
    set s__SkillData_CostMana[s]=429
    set s__SkillData_CostManaAdd[s]=86
    set s=s__SkillData_getFromKey(85)
    set s__SkillData_Character[s]=3
    set s__SkillData_TypeMain[s]=2
    set s__SkillData_TypeTree[s]=8
    set s__SkillData_RequireLevel[s]=3
    set s__SkillData_TypeCore[s]=3
    set s__SkillData_TypeUI[s]=4
    set s__SkillData_ValueUse[s]="#Damage/#Distance/#Range/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~Damage/~Mana/~CoolDown"
    set s__SkillData_Distance[s]=300
    set s__SkillData_CoolTime[s]=2063
    set s__SkillData_CoolTimeAdd[s]=-83
    set s__SkillData_Damage[s]=199
    set s__SkillData_DamageAdd[s]=12
    set s__SkillData_Range[s]=150
    set s__SkillData_CostMana[s]=536
    set s__SkillData_CostManaAdd[s]=107
    set s=s__SkillData_getFromKey(86)
    set s__SkillData_Character[s]=3
    set s__SkillData_TypeMain[s]=2
    set s__SkillData_TypeTree[s]=8
    set s__SkillData_RequireLevel[s]=5
    set s__SkillData_TypeCore[s]=5
    set s__SkillData_TypeUI[s]=4
    set s__SkillData_ValueUse[s]="#CastingTime/#Damage/#Distance/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~CastingTime/~Damage/~Mana/~CoolDown"
    set s__SkillData_Distance[s]=400
    set s__SkillData_CastingTime[s]=95
    set s__SkillData_CastingTimeAdd[s]=-5
    set s__SkillData_CoolTime[s]=2979
    set s__SkillData_CoolTimeAdd[s]='-119'
    set s__SkillData_Damage[s]=311
    set s__SkillData_DamageAdd[s]=19
    set s__SkillData_CostMana[s]=750
    set s__SkillData_CostManaAdd[s]=150
    set s=s__SkillData_getFromKey(87)
    set s__SkillData_Character[s]=3
    set s__SkillData_TypeMain[s]=2
    set s__SkillData_TypeTree[s]=8
    set s__SkillData_RequireLevel[s]=7
    set s__SkillData_TypeCore[s]=3
    set s__SkillData_TypeUI[s]=4
    set s__SkillData_ValueUse[s]="#Damage/#Distance/#Range/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~Damage/~Mana/~CoolDown"
    set s__SkillData_Distance[s]=500
    set s__SkillData_CoolTime[s]=4190
    set s__SkillData_CoolTimeAdd[s]='-168'
    set s__SkillData_Damage[s]=484
    set s__SkillData_DamageAdd[s]=29
    set s__SkillData_Range[s]=150
    set s__SkillData_CostMana[s]=964
    set s__SkillData_CostManaAdd[s]=193
    set s=s__SkillData_getFromKey(88)
    set s__SkillData_Character[s]=3
    set s__SkillData_TypeMain[s]=3
    set s__SkillData_TypeTree[s]=8
    set s__SkillData_RequireLevel[s]=9
    set s__SkillData_TypeCore[s]=8
    set s__SkillData_TypeUI[s]=2
    set s=s__SkillData_getFromKey(89)
    set s__SkillData_Character[s]=3
    set s__SkillData_TypeMain[s]=2
    set s__SkillData_TypeTree[s]=9
    set s__SkillData_RequireLevel[s]=2
    set s__SkillData_TypeCore[s]=7
    set s__SkillData_TypeUI[s]=3
    set s__SkillData_ValueUse[s]="#CastingTime/#Damage/#Distance/#Duration/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~CastingTime/~Damage/~Mana/~CoolDown"
    set s__SkillData_Distance[s]=450
    set s__SkillData_CastingTime[s]=95
    set s__SkillData_CastingTimeAdd[s]=5
    set s__SkillData_Duration[s]=150
    set s__SkillData_CoolTime[s]=1694
    set s__SkillData_CoolTimeAdd[s]=-68
    set s__SkillData_Damage[s]=158
    set s__SkillData_DamageAdd[s]=10
    set s__SkillData_CostMana[s]=429
    set s__SkillData_CostManaAdd[s]=86
    set s=s__SkillData_getFromKey(90)
    set s__SkillData_Character[s]=3
    set s__SkillData_TypeMain[s]=2
    set s__SkillData_TypeTree[s]=9
    set s__SkillData_RequireLevel[s]=3
    set s__SkillData_TypeCore[s]=7
    set s__SkillData_TypeUI[s]=3
    set s__SkillData_ValueUse[s]="#CastingTime/#Damage/#Distance/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~CastingTime/~Damage/~Mana/~CoolDown"
    set s__SkillData_Distance[s]=500
    set s__SkillData_CastingTime[s]=95
    set s__SkillData_CastingTimeAdd[s]=5
    set s__SkillData_CoolTime[s]=2063
    set s__SkillData_CoolTimeAdd[s]=-83
    set s__SkillData_Damage[s]=199
    set s__SkillData_DamageAdd[s]=12
    set s__SkillData_CostMana[s]=536
    set s__SkillData_CostManaAdd[s]=107
    set s=s__SkillData_getFromKey(91)
    set s__SkillData_Character[s]=3
    set s__SkillData_TypeMain[s]=2
    set s__SkillData_TypeTree[s]=9
    set s__SkillData_RequireLevel[s]=4
    set s__SkillData_TypeCore[s]=7
    set s__SkillData_TypeUI[s]=3
    set s__SkillData_ValueUse[s]="#CastingTime/#Damage/#Distance/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~CastingTime/~Damage/~Mana/~CoolDown"
    set s__SkillData_Distance[s]=550
    set s__SkillData_CastingTime[s]=95
    set s__SkillData_CastingTimeAdd[s]=5
    set s__SkillData_CoolTime[s]=2489
    set s__SkillData_CoolTimeAdd[s]='-100'
    set s__SkillData_Damage[s]=249
    set s__SkillData_DamageAdd[s]=15
    set s__SkillData_CostMana[s]=643
    set s__SkillData_CostManaAdd[s]=129
    set s=s__SkillData_getFromKey(92)
    set s__SkillData_Character[s]=3
    set s__SkillData_TypeMain[s]=2
    set s__SkillData_TypeTree[s]=9
    set s__SkillData_RequireLevel[s]=6
    set s__SkillData_TypeCore[s]=7
    set s__SkillData_TypeUI[s]=3
    set s__SkillData_ValueUse[s]="#CastingTime/#Damage/#Distance/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~CastingTime/~Damage/~Mana/~CoolDown"
    set s__SkillData_Distance[s]=650
    set s__SkillData_CastingTime[s]=95
    set s__SkillData_CastingTimeAdd[s]=5
    set s__SkillData_CoolTime[s]=3543
    set s__SkillData_CoolTimeAdd[s]='-142'
    set s__SkillData_Damage[s]=388
    set s__SkillData_DamageAdd[s]=23
    set s__SkillData_CostMana[s]=857
    set s__SkillData_CostManaAdd[s]=171
    set s=s__SkillData_getFromKey(93)
    set s__SkillData_Character[s]=3
    set s__SkillData_TypeMain[s]=3
    set s__SkillData_TypeTree[s]=9
    set s__SkillData_RequireLevel[s]=8
    set s__SkillData_TypeCore[s]=7
    set s__SkillData_TypeUI[s]=3
    set s__SkillData_ValueUse[s]="#CastingTime/#Damage/#Distance/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~CastingTime/~Damage/~Mana/~CoolDown"
    set s__SkillData_Distance[s]=750
    set s__SkillData_CastingTime[s]=95
    set s__SkillData_CastingTimeAdd[s]=5
    set s__SkillData_CoolTime[s]=4930
    set s__SkillData_CoolTimeAdd[s]='-197'
    set s__SkillData_Damage[s]=602
    set s__SkillData_DamageAdd[s]=36
    set s__SkillData_CostMana[s]=1071
    set s__SkillData_CostManaAdd[s]=214
    set s=s__SkillData_getFromKey(94)
    set s__SkillData_Character[s]=3
    set s__SkillData_TypeMain[s]=4
    set s__SkillData_TypeTree[s]=24
    set s__SkillData_RequireLevel[s]=3
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s=s__SkillData_getFromKey(95)
    set s__SkillData_Character[s]=3
    set s__SkillData_TypeMain[s]=4
    set s__SkillData_TypeTree[s]=24
    set s__SkillData_RequireLevel[s]=6
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s=s__SkillData_getFromKey(96)
    set s__SkillData_Character[s]=3
    set s__SkillData_TypeMain[s]=4
    set s__SkillData_TypeTree[s]=24
    set s__SkillData_RequireLevel[s]=8
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s=s__SkillData_getFromKey(97)
    set s__SkillData_Character[s]=3
    set s__SkillData_TypeMain[s]=4
    set s__SkillData_TypeTree[s]=24
    set s__SkillData_RequireLevel[s]=10
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s=s__SkillData_getFromKey(98)
    set s__SkillData_Character[s]=3
    set s__SkillData_TypeMain[s]=5
    set s__SkillData_TypeTree[s]=22
    set s__SkillData_RequireLevel[s]=0
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s=s__SkillData_getFromKey(99)
    set s__SkillData_Character[s]=3
    set s__SkillData_TypeMain[s]=5
    set s__SkillData_TypeTree[s]=22
    set s__SkillData_RequireLevel[s]=1
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s=s__SkillData_getFromKey(100)
    set s__SkillData_Character[s]=3
    set s__SkillData_TypeMain[s]=5
    set s__SkillData_TypeTree[s]=22
    set s__SkillData_RequireLevel[s]=2
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1

endfunction

function jasshelper__1initdatastructs17940921 takes nothing returns nothing
 local integer s

//Loaded from: Data\SkillData.slk
    set s=s__SkillData_getFromKey(101)
    set s__SkillData_Character[s]=3
    set s__SkillData_TypeMain[s]=5
    set s__SkillData_TypeTree[s]=22
    set s__SkillData_RequireLevel[s]=3
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s=s__SkillData_getFromKey(102)
    set s__SkillData_Character[s]=3
    set s__SkillData_TypeMain[s]=5
    set s__SkillData_TypeTree[s]=22
    set s__SkillData_RequireLevel[s]=4
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s=s__SkillData_getFromKey(103)
    set s__SkillData_Character[s]=3
    set s__SkillData_TypeMain[s]=5
    set s__SkillData_TypeTree[s]=22
    set s__SkillData_RequireLevel[s]=5
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s=s__SkillData_getFromKey(104)
    set s__SkillData_Character[s]=3
    set s__SkillData_TypeMain[s]=5
    set s__SkillData_TypeTree[s]=22
    set s__SkillData_RequireLevel[s]=6
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s=s__SkillData_getFromKey(105)
    set s__SkillData_Character[s]=3
    set s__SkillData_TypeMain[s]=5
    set s__SkillData_TypeTree[s]=22
    set s__SkillData_RequireLevel[s]=7
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s=s__SkillData_getFromKey(106)
    set s__SkillData_Character[s]=3
    set s__SkillData_TypeMain[s]=5
    set s__SkillData_TypeTree[s]=22
    set s__SkillData_RequireLevel[s]=8
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s=s__SkillData_getFromKey(107)
    set s__SkillData_Character[s]=3
    set s__SkillData_TypeMain[s]=5
    set s__SkillData_TypeTree[s]=22
    set s__SkillData_RequireLevel[s]=9
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s=s__SkillData_getFromKey(108)
    set s__SkillData_Character[s]=5
    set s__SkillData_TypeMain[s]=1
    set s__SkillData_TypeTree[s]=13
    set s__SkillData_RequireLevel[s]=0
    set s__SkillData_TypeCore[s]=7
    set s__SkillData_TypeUI[s]=3
    set s__SkillData_ValueUse[s]="#Damage/#Range/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~Damage/~Mana/~CoolDown"
    set s__SkillData_CoolTime[s]=1100
    set s__SkillData_CoolTimeAdd[s]=-44
    set s__SkillData_Damage[s]=100
    set s__SkillData_DamageAdd[s]=6
    set s__SkillData_Range[s]=150
    set s__SkillData_CostMana[s]=215
    set s__SkillData_CostManaAdd[s]=43
    set s=s__SkillData_getFromKey(109)
    set s__SkillData_Character[s]=5
    set s__SkillData_TypeMain[s]=1
    set s__SkillData_TypeTree[s]=13
    set s__SkillData_RequireLevel[s]=1
    set s__SkillData_TypeCore[s]=3
    set s__SkillData_TypeUI[s]=4
    set s__SkillData_ValueUse[s]="#Damage/#Distance/#Range/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~Damage/~Mana/~CoolDown"
    set s__SkillData_Distance[s]=200
    set s__SkillData_CoolTime[s]=1375
    set s__SkillData_CoolTimeAdd[s]=-55
    set s__SkillData_Damage[s]=126
    set s__SkillData_DamageAdd[s]=8
    set s__SkillData_Range[s]=150
    set s__SkillData_CostMana[s]=322
    set s__SkillData_CostManaAdd[s]=64
    set s=s__SkillData_getFromKey(110)
    set s__SkillData_Character[s]=5
    set s__SkillData_TypeMain[s]=1
    set s__SkillData_TypeTree[s]=13
    set s__SkillData_RequireLevel[s]=5
    set s__SkillData_TypeCore[s]=4
    set s__SkillData_TypeUI[s]=2
    set s=s__SkillData_getFromKey(111)
    set s__SkillData_Character[s]=5
    set s__SkillData_TypeMain[s]=1
    set s__SkillData_TypeTree[s]=24
    set s__SkillData_RequireLevel[s]=3
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s=s__SkillData_getFromKey(112)
    set s__SkillData_Character[s]=5
    set s__SkillData_TypeMain[s]=1
    set s__SkillData_TypeTree[s]=24
    set s__SkillData_RequireLevel[s]=6
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s=s__SkillData_getFromKey(113)
    set s__SkillData_Character[s]=5
    set s__SkillData_TypeMain[s]=1
    set s__SkillData_TypeTree[s]=24
    set s__SkillData_RequireLevel[s]=9
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s=s__SkillData_getFromKey(114)
    set s__SkillData_Character[s]=5
    set s__SkillData_TypeMain[s]=2
    set s__SkillData_TypeTree[s]=14
    set s__SkillData_RequireLevel[s]=0
    set s__SkillData_TypeCore[s]=7
    set s__SkillData_TypeUI[s]=3
    set s__SkillData_ValueUse[s]="#CastingTime/#Damage/#Distance/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~CastingTime/~Damage/~Mana/~CoolDown"
    set s__SkillData_Distance[s]=350
    set s__SkillData_CastingTime[s]=95
    set s__SkillData_CastingTimeAdd[s]=5
    set s__SkillData_CoolTime[s]=1100
    set s__SkillData_CoolTimeAdd[s]=-44
    set s__SkillData_Damage[s]=100
    set s__SkillData_DamageAdd[s]=6
    set s__SkillData_CostMana[s]=215
    set s__SkillData_CostManaAdd[s]=43
    set s=s__SkillData_getFromKey(115)
    set s__SkillData_Character[s]=5
    set s__SkillData_TypeMain[s]=2
    set s__SkillData_TypeTree[s]=14
    set s__SkillData_RequireLevel[s]=1
    set s__SkillData_TypeCore[s]=7
    set s__SkillData_TypeUI[s]=3
    set s__SkillData_ValueUse[s]="#CastingTime/#Damage/#Distance/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~CastingTime/~Damage/~Mana/~CoolDown"
    set s__SkillData_Distance[s]=400
    set s__SkillData_CastingTime[s]=95
    set s__SkillData_CastingTimeAdd[s]=5
    set s__SkillData_CoolTime[s]=1375
    set s__SkillData_CoolTimeAdd[s]=-55
    set s__SkillData_Damage[s]=126
    set s__SkillData_DamageAdd[s]=8
    set s__SkillData_CostMana[s]=322
    set s__SkillData_CostManaAdd[s]=64
    set s=s__SkillData_getFromKey(116)
    set s__SkillData_Character[s]=5
    set s__SkillData_TypeMain[s]=2
    set s__SkillData_TypeTree[s]=14
    set s__SkillData_RequireLevel[s]=1
    set s__SkillData_TypeCore[s]=7
    set s__SkillData_TypeUI[s]=3
    set s__SkillData_ValueUse[s]="#CastingTime/#Damage/#Distance/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~CastingTime/~Damage/~Mana/~CoolDown"
    set s__SkillData_Distance[s]=400
    set s__SkillData_CastingTime[s]=95
    set s__SkillData_CastingTimeAdd[s]=5
    set s__SkillData_CoolTime[s]=1375
    set s__SkillData_CoolTimeAdd[s]=-55
    set s__SkillData_Damage[s]=126
    set s__SkillData_DamageAdd[s]=8
    set s__SkillData_CostMana[s]=322
    set s__SkillData_CostManaAdd[s]=64
    set s=s__SkillData_getFromKey(117)
    set s__SkillData_Character[s]=5
    set s__SkillData_TypeMain[s]=2
    set s__SkillData_TypeTree[s]=14
    set s__SkillData_RequireLevel[s]=2
    set s__SkillData_TypeCore[s]=7
    set s__SkillData_TypeUI[s]=3
    set s__SkillData_ValueUse[s]="#CastingTime/#Damage/#Distance/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~CastingTime/~Damage/~Mana/~CoolDown"
    set s__SkillData_Distance[s]=450
    set s__SkillData_CastingTime[s]=95
    set s__SkillData_CastingTimeAdd[s]=5
    set s__SkillData_CoolTime[s]=1694
    set s__SkillData_CoolTimeAdd[s]=-68
    set s__SkillData_Damage[s]=158
    set s__SkillData_DamageAdd[s]=10
    set s__SkillData_CostMana[s]=429
    set s__SkillData_CostManaAdd[s]=86
    set s=s__SkillData_getFromKey(118)
    set s__SkillData_Character[s]=5
    set s__SkillData_TypeMain[s]=2
    set s__SkillData_TypeTree[s]=14
    set s__SkillData_RequireLevel[s]=2
    set s__SkillData_TypeCore[s]=7
    set s__SkillData_TypeUI[s]=3
    set s__SkillData_ValueUse[s]="#CastingTime/#Damage/#Distance/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~CastingTime/~Damage/~Mana/~CoolDown"
    set s__SkillData_Distance[s]=450
    set s__SkillData_CastingTime[s]=95
    set s__SkillData_CastingTimeAdd[s]=5
    set s__SkillData_CoolTime[s]=1694
    set s__SkillData_CoolTimeAdd[s]=-68
    set s__SkillData_Damage[s]=158
    set s__SkillData_DamageAdd[s]=10
    set s__SkillData_CostMana[s]=429
    set s__SkillData_CostManaAdd[s]=86
    set s=s__SkillData_getFromKey(119)
    set s__SkillData_Character[s]=5
    set s__SkillData_TypeMain[s]=2
    set s__SkillData_TypeTree[s]=14
    set s__SkillData_RequireLevel[s]=2
    set s__SkillData_TypeCore[s]=7
    set s__SkillData_TypeUI[s]=3
    set s__SkillData_ValueUse[s]="#CastingTime/#Damage/#Distance/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~CastingTime/~Damage/~Mana/~CoolDown"
    set s__SkillData_Distance[s]=450
    set s__SkillData_CastingTime[s]=95
    set s__SkillData_CastingTimeAdd[s]=5
    set s__SkillData_CoolTime[s]=1694
    set s__SkillData_CoolTimeAdd[s]=-68
    set s__SkillData_Damage[s]=158
    set s__SkillData_DamageAdd[s]=10
    set s__SkillData_CostMana[s]=429
    set s__SkillData_CostManaAdd[s]=86
    set s=s__SkillData_getFromKey(120)
    set s__SkillData_Character[s]=5
    set s__SkillData_TypeMain[s]=2
    set s__SkillData_TypeTree[s]=15
    set s__SkillData_RequireLevel[s]=1
    set s__SkillData_TypeCore[s]=8
    set s__SkillData_TypeUI[s]=2
    set s=s__SkillData_getFromKey(121)
    set s__SkillData_Character[s]=5
    set s__SkillData_TypeMain[s]=2
    set s__SkillData_TypeTree[s]=15
    set s__SkillData_RequireLevel[s]=2
    set s__SkillData_TypeCore[s]=8
    set s__SkillData_TypeUI[s]=2
    set s=s__SkillData_getFromKey(122)
    set s__SkillData_Character[s]=5
    set s__SkillData_TypeMain[s]=2
    set s__SkillData_TypeTree[s]=15
    set s__SkillData_RequireLevel[s]=4
    set s__SkillData_TypeCore[s]=8
    set s__SkillData_TypeUI[s]=2
    set s=s__SkillData_getFromKey(123)
    set s__SkillData_Character[s]=5
    set s__SkillData_TypeMain[s]=3
    set s__SkillData_TypeTree[s]=15
    set s__SkillData_RequireLevel[s]=6
    set s__SkillData_TypeCore[s]=8
    set s__SkillData_TypeUI[s]=2
    set s=s__SkillData_getFromKey(124)
    set s__SkillData_Character[s]=5
    set s__SkillData_TypeMain[s]=3
    set s__SkillData_TypeTree[s]=15
    set s__SkillData_RequireLevel[s]=8
    set s__SkillData_TypeCore[s]=8
    set s__SkillData_TypeUI[s]=2
    set s=s__SkillData_getFromKey(125)
    set s__SkillData_Character[s]=5
    set s__SkillData_TypeMain[s]=5
    set s__SkillData_TypeTree[s]=23
    set s__SkillData_RequireLevel[s]=4
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s=s__SkillData_getFromKey(126)
    set s__SkillData_Character[s]=5
    set s__SkillData_TypeMain[s]=5
    set s__SkillData_TypeTree[s]=23
    set s__SkillData_RequireLevel[s]=6
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s=s__SkillData_getFromKey(127)
    set s__SkillData_Character[s]=5
    set s__SkillData_TypeMain[s]=5
    set s__SkillData_TypeTree[s]=23
    set s__SkillData_RequireLevel[s]=8
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s=s__SkillData_getFromKey(128)
    set s__SkillData_Character[s]=5
    set s__SkillData_TypeMain[s]=5
    set s__SkillData_TypeTree[s]=22
    set s__SkillData_RequireLevel[s]=0
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s=s__SkillData_getFromKey(129)
    set s__SkillData_Character[s]=5
    set s__SkillData_TypeMain[s]=5
    set s__SkillData_TypeTree[s]=22
    set s__SkillData_RequireLevel[s]=1
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s=s__SkillData_getFromKey(130)
    set s__SkillData_Character[s]=5
    set s__SkillData_TypeMain[s]=5
    set s__SkillData_TypeTree[s]=22
    set s__SkillData_RequireLevel[s]=2
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s=s__SkillData_getFromKey(131)
    set s__SkillData_Character[s]=5
    set s__SkillData_TypeMain[s]=5
    set s__SkillData_TypeTree[s]=22
    set s__SkillData_RequireLevel[s]=3
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s=s__SkillData_getFromKey(132)
    set s__SkillData_Character[s]=5
    set s__SkillData_TypeMain[s]=5
    set s__SkillData_TypeTree[s]=22
    set s__SkillData_RequireLevel[s]=4
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s=s__SkillData_getFromKey(133)
    set s__SkillData_Character[s]=5
    set s__SkillData_TypeMain[s]=5
    set s__SkillData_TypeTree[s]=22
    set s__SkillData_RequireLevel[s]=5
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s=s__SkillData_getFromKey(134)
    set s__SkillData_Character[s]=5
    set s__SkillData_TypeMain[s]=5
    set s__SkillData_TypeTree[s]=22
    set s__SkillData_RequireLevel[s]=6
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s=s__SkillData_getFromKey(135)
    set s__SkillData_Character[s]=5
    set s__SkillData_TypeMain[s]=5
    set s__SkillData_TypeTree[s]=22
    set s__SkillData_RequireLevel[s]=7
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s=s__SkillData_getFromKey(136)
    set s__SkillData_Character[s]=5
    set s__SkillData_TypeMain[s]=5
    set s__SkillData_TypeTree[s]=22
    set s__SkillData_RequireLevel[s]=8
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s=s__SkillData_getFromKey(137)
    set s__SkillData_Character[s]=5
    set s__SkillData_TypeMain[s]=5
    set s__SkillData_TypeTree[s]=22
    set s__SkillData_RequireLevel[s]=9
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s=s__SkillData_getFromKey(138)
    set s__SkillData_Character[s]=4
    set s__SkillData_TypeMain[s]=1
    set s__SkillData_TypeTree[s]=2
    set s__SkillData_RequireLevel[s]=0
    set s__SkillData_TypeCore[s]=1
    set s__SkillData_TypeUI[s]=4
    set s__SkillData_ValueUse[s]="#Distance/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~Mana/~CoolDown"
    set s__SkillData_Distance[s]=100
    set s__SkillData_CoolTime[s]=1999
    set s__SkillData_CoolTimeAdd[s]='-111'
    set s__SkillData_CostMana[s]=101
    set s__SkillData_CostManaAdd[s]=11
    set s=s__SkillData_getFromKey(139)
    set s__SkillData_Character[s]=4
    set s__SkillData_TypeMain[s]=1
    set s__SkillData_TypeTree[s]=2
    set s__SkillData_RequireLevel[s]=2
    set s__SkillData_TypeCore[s]=1
    set s__SkillData_TypeUI[s]=4
    set s__SkillData_ValueUse[s]="#Distance/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~Mana/~CoolDown"
    set s__SkillData_Distance[s]=150
    set s__SkillData_CoolTime[s]=1800
    set s__SkillData_CoolTimeAdd[s]='-100'
    set s__SkillData_CostMana[s]=147
    set s__SkillData_CostManaAdd[s]=17
    set s=s__SkillData_getFromKey(140)
    set s__SkillData_Character[s]=4
    set s__SkillData_TypeMain[s]=1
    set s__SkillData_TypeTree[s]=18
    set s__SkillData_RequireLevel[s]=0
    set s__SkillData_TypeCore[s]=7
    set s__SkillData_TypeUI[s]=3
    set s__SkillData_ValueUse[s]="#CastingTime/#Damage/#Distance/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~CastingTime/~Damage/~Mana/~CoolDown"
    set s__SkillData_Distance[s]=350
    set s__SkillData_CastingTime[s]=95
    set s__SkillData_CastingTimeAdd[s]=5
    set s__SkillData_CoolTime[s]=1100
    set s__SkillData_CoolTimeAdd[s]=-44
    set s__SkillData_Damage[s]=100
    set s__SkillData_DamageAdd[s]=6
    set s__SkillData_CostMana[s]=215
    set s__SkillData_CostManaAdd[s]=43
    set s=s__SkillData_getFromKey(141)
    set s__SkillData_Character[s]=4
    set s__SkillData_TypeMain[s]=1
    set s__SkillData_TypeTree[s]=18
    set s__SkillData_RequireLevel[s]=1
    set s__SkillData_TypeCore[s]=7
    set s__SkillData_TypeUI[s]=3
    set s__SkillData_ValueUse[s]="#CastingTime/#Damage/#Distance/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~CastingTime/~Damage/~Mana/~CoolDown"
    set s__SkillData_Distance[s]=400
    set s__SkillData_CastingTime[s]=95
    set s__SkillData_CastingTimeAdd[s]=5
    set s__SkillData_CoolTime[s]=1375
    set s__SkillData_CoolTimeAdd[s]=-55
    set s__SkillData_Damage[s]=126
    set s__SkillData_DamageAdd[s]=8
    set s__SkillData_CostMana[s]=322
    set s__SkillData_CostManaAdd[s]=64
    set s=s__SkillData_getFromKey(142)
    set s__SkillData_Character[s]=4
    set s__SkillData_TypeMain[s]=1
    set s__SkillData_TypeTree[s]=18
    set s__SkillData_RequireLevel[s]=2
    set s__SkillData_TypeCore[s]=7
    set s__SkillData_TypeUI[s]=3
    set s__SkillData_ValueUse[s]="#CastingTime/#Damage/#Distance/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~CastingTime/~Damage/~Mana/~CoolDown"
    set s__SkillData_Distance[s]=450
    set s__SkillData_CastingTime[s]=95
    set s__SkillData_CastingTimeAdd[s]=5
    set s__SkillData_CoolTime[s]=1694
    set s__SkillData_CoolTimeAdd[s]=-68
    set s__SkillData_Damage[s]=158
    set s__SkillData_DamageAdd[s]=10
    set s__SkillData_CostMana[s]=429
    set s__SkillData_CostManaAdd[s]=86
    set s=s__SkillData_getFromKey(143)
    set s__SkillData_Character[s]=4
    set s__SkillData_TypeMain[s]=1
    set s__SkillData_TypeTree[s]=18
    set s__SkillData_RequireLevel[s]=3
    set s__SkillData_TypeCore[s]=7
    set s__SkillData_TypeUI[s]=3
    set s__SkillData_ValueUse[s]="#CastingTime/#Damage/#Distance/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~CastingTime/~Damage/~Mana/~CoolDown"
    set s__SkillData_Distance[s]=500
    set s__SkillData_CastingTime[s]=95
    set s__SkillData_CastingTimeAdd[s]=5
    set s__SkillData_CoolTime[s]=2063
    set s__SkillData_CoolTimeAdd[s]=-83
    set s__SkillData_Damage[s]=199
    set s__SkillData_DamageAdd[s]=12
    set s__SkillData_CostMana[s]=536
    set s__SkillData_CostManaAdd[s]=107
    set s=s__SkillData_getFromKey(144)
    set s__SkillData_Character[s]=4
    set s__SkillData_TypeMain[s]=1
    set s__SkillData_TypeTree[s]=18
    set s__SkillData_RequireLevel[s]=5
    set s__SkillData_TypeCore[s]=7
    set s__SkillData_TypeUI[s]=3
    set s__SkillData_ValueUse[s]="#CastingTime/#Damage/#Distance/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~CastingTime/~Damage/~Mana/~CoolDown"
    set s__SkillData_Distance[s]=600
    set s__SkillData_CastingTime[s]=95
    set s__SkillData_CastingTimeAdd[s]=5
    set s__SkillData_CoolTime[s]=2979
    set s__SkillData_CoolTimeAdd[s]='-119'
    set s__SkillData_Damage[s]=311
    set s__SkillData_DamageAdd[s]=19
    set s__SkillData_CostMana[s]=750
    set s__SkillData_CostManaAdd[s]=150
    set s=s__SkillData_getFromKey(145)
    set s__SkillData_Character[s]=4
    set s__SkillData_TypeMain[s]=1
    set s__SkillData_TypeTree[s]=18
    set s__SkillData_RequireLevel[s]=6
    set s__SkillData_TypeCore[s]=7
    set s__SkillData_TypeUI[s]=3
    set s__SkillData_ValueUse[s]="#CastingTime/#Damage/#Distance/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~CastingTime/~Damage/~Mana/~CoolDown"
    set s__SkillData_Distance[s]=650
    set s__SkillData_CastingTime[s]=95
    set s__SkillData_CastingTimeAdd[s]=5
    set s__SkillData_CoolTime[s]=3543
    set s__SkillData_CoolTimeAdd[s]='-142'
    set s__SkillData_Damage[s]=388
    set s__SkillData_DamageAdd[s]=23
    set s__SkillData_CostMana[s]=857
    set s__SkillData_CostManaAdd[s]=171
    set s=s__SkillData_getFromKey(146)
    set s__SkillData_Character[s]=4
    set s__SkillData_TypeMain[s]=1
    set s__SkillData_TypeTree[s]=18
    set s__SkillData_RequireLevel[s]=7
    set s__SkillData_TypeCore[s]=2
    set s__SkillData_TypeUI[s]=2
    set s__SkillData_ValueUse[s]="#CastingTime/#Damage/#Duration/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~CastingTime/~Mana/~CoolDown"
    set s__SkillData_CastingTime[s]=86
    set s__SkillData_CastingTimeAdd[s]=4
    set s__SkillData_Duration[s]=200
    set s__SkillData_CoolTime[s]=1298
    set s__SkillData_CoolTimeAdd[s]=-72
    set s__SkillData_Damage[s]=50
    set s__SkillData_CostMana[s]=271
    set s__SkillData_CostManaAdd[s]=31
    set s=s__SkillData_getFromKey(147)
    set s__SkillData_Character[s]=4
    set s__SkillData_TypeMain[s]=1
    set s__SkillData_TypeTree[s]=18
    set s__SkillData_RequireLevel[s]=9
    set s__SkillData_TypeCore[s]=2
    set s__SkillData_TypeUI[s]=2
    set s__SkillData_ValueUse[s]="#CastingTime/#Damage/#Duration/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~CastingTime/~Mana/~CoolDown"
    set s__SkillData_CastingTime[s]=68
    set s__SkillData_CastingTimeAdd[s]=2
    set s__SkillData_Duration[s]=500
    set s__SkillData_CoolTime[s]=1099
    set s__SkillData_CoolTimeAdd[s]=-61
    set s__SkillData_Damage[s]=20
    set s__SkillData_CostMana[s]=326
    set s__SkillData_CostManaAdd[s]=36
    set s=s__SkillData_getFromKey(148)
    set s__SkillData_Character[s]=4
    set s__SkillData_TypeMain[s]=1
    set s__SkillData_TypeTree[s]=18
    set s__SkillData_RequireLevel[s]=10
    set s__SkillData_TypeCore[s]=7
    set s__SkillData_TypeUI[s]=3
    set s__SkillData_ValueUse[s]="#CastingTime/#Damage/#Distance/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~CastingTime/~Damage/~Mana/~CoolDown"
    set s__SkillData_Distance[s]=850
    set s__SkillData_CastingTime[s]=95
    set s__SkillData_CastingTimeAdd[s]=5
    set s__SkillData_CoolTime[s]=6744
    set s__SkillData_CoolTimeAdd[s]='-270'
    set s__SkillData_Damage[s]=929
    set s__SkillData_DamageAdd[s]=56
    set s__SkillData_CostMana[s]=1285
    set s__SkillData_CostManaAdd[s]=257
    set s=s__SkillData_getFromKey(149)
    set s__SkillData_Character[s]=4
    set s__SkillData_TypeMain[s]=2
    set s__SkillData_TypeTree[s]=17
    set s__SkillData_RequireLevel[s]=1
    set s__SkillData_TypeCore[s]=3
    set s__SkillData_TypeUI[s]=4
    set s__SkillData_ValueUse[s]="#Damage/#Distance/#Range/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~Damage/~Mana/~CoolDown"
    set s__SkillData_Distance[s]=200
    set s__SkillData_CoolTime[s]=1375
    set s__SkillData_CoolTimeAdd[s]=-55
    set s__SkillData_Damage[s]=126
    set s__SkillData_DamageAdd[s]=8
    set s__SkillData_Range[s]=150
    set s__SkillData_CostMana[s]=322
    set s__SkillData_CostManaAdd[s]=64
    set s=s__SkillData_getFromKey(150)
    set s__SkillData_Character[s]=4
    set s__SkillData_TypeMain[s]=2
    set s__SkillData_TypeTree[s]=17
    set s__SkillData_RequireLevel[s]=3
    set s__SkillData_TypeCore[s]=1
    set s__SkillData_TypeUI[s]=4
    set s=s__SkillData_getFromKey(151)
    set s__SkillData_Character[s]=4
    set s__SkillData_TypeMain[s]=2
    set s__SkillData_TypeTree[s]=17
    set s__SkillData_RequireLevel[s]=4
    set s__SkillData_TypeCore[s]=7
    set s__SkillData_TypeUI[s]=3
    set s__SkillData_ValueUse[s]="#CastingTime/#Damage/#Distance/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~CastingTime/~Damage/~Mana/~CoolDown"
    set s__SkillData_Distance[s]=550
    set s__SkillData_CastingTime[s]=95
    set s__SkillData_CastingTimeAdd[s]=5
    set s__SkillData_CoolTime[s]=2489
    set s__SkillData_CoolTimeAdd[s]='-100'
    set s__SkillData_Damage[s]=249
    set s__SkillData_DamageAdd[s]=15
    set s__SkillData_CostMana[s]=643
    set s__SkillData_CostManaAdd[s]=129
    set s=s__SkillData_getFromKey(152)
    set s__SkillData_Character[s]=4
    set s__SkillData_TypeMain[s]=2
    set s__SkillData_TypeTree[s]=17
    set s__SkillData_RequireLevel[s]=5
    set s__SkillData_TypeCore[s]=3
    set s__SkillData_TypeUI[s]=4
    set s__SkillData_ValueUse[s]="#Damage/#Distance/#Range/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~Damage/~Mana/~CoolDown"
    set s__SkillData_Distance[s]=400
    set s__SkillData_CoolTime[s]=2979
    set s__SkillData_CoolTimeAdd[s]='-119'
    set s__SkillData_Damage[s]=311
    set s__SkillData_DamageAdd[s]=19
    set s__SkillData_Range[s]=150
    set s__SkillData_CostMana[s]=750
    set s__SkillData_CostManaAdd[s]=150
    set s=s__SkillData_getFromKey(153)
    set s__SkillData_Character[s]=4
    set s__SkillData_TypeMain[s]=2
    set s__SkillData_TypeTree[s]=17
    set s__SkillData_RequireLevel[s]=7
    set s__SkillData_TypeCore[s]=3
    set s__SkillData_TypeUI[s]=4
    set s__SkillData_ValueUse[s]="#Damage/#Distance/#Range/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~Damage/~Mana/~CoolDown"
    set s__SkillData_Distance[s]=500
    set s__SkillData_CoolTime[s]=4190
    set s__SkillData_CoolTimeAdd[s]='-168'
    set s__SkillData_Damage[s]=484
    set s__SkillData_DamageAdd[s]=29
    set s__SkillData_Range[s]=150
    set s__SkillData_CostMana[s]=964
    set s__SkillData_CostManaAdd[s]=193
    set s=s__SkillData_getFromKey(154)
    set s__SkillData_Character[s]=4
    set s__SkillData_TypeMain[s]=3
    set s__SkillData_TypeTree[s]=17
    set s__SkillData_RequireLevel[s]=8
    set s__SkillData_TypeCore[s]=3
    set s__SkillData_TypeUI[s]=4
    set s__SkillData_ValueUse[s]="#Damage/#Distance/#Range/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~Damage/~Mana/~CoolDown"
    set s__SkillData_Distance[s]=550
    set s__SkillData_CoolTime[s]=4930
    set s__SkillData_CoolTimeAdd[s]='-197'
    set s__SkillData_Damage[s]=602
    set s__SkillData_DamageAdd[s]=36
    set s__SkillData_Range[s]=150
    set s__SkillData_CostMana[s]=1071
    set s__SkillData_CostManaAdd[s]=214
    set s=s__SkillData_getFromKey(155)
    set s__SkillData_Character[s]=4
    set s__SkillData_TypeMain[s]=2
    set s__SkillData_TypeTree[s]=17
    set s__SkillData_RequireLevel[s]=0
    set s__SkillData_TypeCore[s]=3
    set s__SkillData_TypeUI[s]=4
    set s__SkillData_ValueUse[s]="#Damage/#Distance/#Range/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~Damage/~Mana/~CoolDown"
    set s__SkillData_Distance[s]=150
    set s__SkillData_CoolTime[s]=1100
    set s__SkillData_CoolTimeAdd[s]=-44
    set s__SkillData_Damage[s]=100
    set s__SkillData_DamageAdd[s]=6
    set s__SkillData_Range[s]=150
    set s__SkillData_CostMana[s]=215
    set s__SkillData_CostManaAdd[s]=43
    set s=s__SkillData_getFromKey(156)
    set s__SkillData_Character[s]=4
    set s__SkillData_TypeMain[s]=2
    set s__SkillData_TypeTree[s]=17
    set s__SkillData_RequireLevel[s]=2
    set s__SkillData_TypeCore[s]=3
    set s__SkillData_TypeUI[s]=4
    set s__SkillData_ValueUse[s]="#Damage/#Distance/#Range/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~Damage/~Mana/~CoolDown"
    set s__SkillData_Distance[s]=250
    set s__SkillData_CoolTime[s]=1694
    set s__SkillData_CoolTimeAdd[s]=-68
    set s__SkillData_Damage[s]=158
    set s__SkillData_DamageAdd[s]=10
    set s__SkillData_Range[s]=150
    set s__SkillData_CostMana[s]=429
    set s__SkillData_CostManaAdd[s]=86
    set s=s__SkillData_getFromKey(157)
    set s__SkillData_Character[s]=4
    set s__SkillData_TypeMain[s]=2
    set s__SkillData_TypeTree[s]=17
    set s__SkillData_RequireLevel[s]=4
    set s__SkillData_TypeCore[s]=7
    set s__SkillData_TypeUI[s]=3
    set s__SkillData_ValueUse[s]="#CastingTime/#Damage/#Distance/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~CastingTime/~Damage/~Mana/~CoolDown"
    set s__SkillData_Distance[s]=550
    set s__SkillData_CastingTime[s]=95
    set s__SkillData_CastingTimeAdd[s]=5
    set s__SkillData_CoolTime[s]=2489
    set s__SkillData_CoolTimeAdd[s]='-100'
    set s__SkillData_Damage[s]=249
    set s__SkillData_DamageAdd[s]=15
    set s__SkillData_CostMana[s]=643
    set s__SkillData_CostManaAdd[s]=129
    set s=s__SkillData_getFromKey(158)
    set s__SkillData_Character[s]=4
    set s__SkillData_TypeMain[s]=2
    set s__SkillData_TypeTree[s]=17
    set s__SkillData_RequireLevel[s]=5
    set s__SkillData_TypeCore[s]=9
    set s__SkillData_TypeUI[s]=5
    set s__SkillData_ValueUse[s]="#Damage/#Range/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~Damage/~Mana/~CoolDown"
    set s__SkillData_CoolTime[s]=2979
    set s__SkillData_CoolTimeAdd[s]='-119'
    set s__SkillData_Damage[s]=311
    set s__SkillData_DamageAdd[s]=19
    set s__SkillData_Range[s]=400
    set s__SkillData_CostMana[s]=750
    set s__SkillData_CostManaAdd[s]=150
    set s=s__SkillData_getFromKey(159)
    set s__SkillData_Character[s]=4
    set s__SkillData_TypeMain[s]=2
    set s__SkillData_TypeTree[s]=17
    set s__SkillData_RequireLevel[s]=6
    set s__SkillData_TypeCore[s]=7
    set s__SkillData_TypeUI[s]=3
    set s__SkillData_ValueUse[s]="#CastingTime/#Damage/#Distance/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~CastingTime/~Damage/~Mana/~CoolDown"
    set s__SkillData_Distance[s]=650
    set s__SkillData_CastingTime[s]=95
    set s__SkillData_CastingTimeAdd[s]=5
    set s__SkillData_CoolTime[s]=3543
    set s__SkillData_CoolTimeAdd[s]='-142'
    set s__SkillData_Damage[s]=388
    set s__SkillData_DamageAdd[s]=23
    set s__SkillData_CostMana[s]=857
    set s__SkillData_CostManaAdd[s]=171
    set s=s__SkillData_getFromKey(160)
    set s__SkillData_Character[s]=4
    set s__SkillData_TypeMain[s]=2
    set s__SkillData_TypeTree[s]=17
    set s__SkillData_RequireLevel[s]=7
    set s__SkillData_TypeCore[s]=9
    set s__SkillData_TypeUI[s]=5
    set s__SkillData_ValueUse[s]="#Damage/#Range/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~Damage/~Mana/~CoolDown"
    set s__SkillData_CoolTime[s]=4190
    set s__SkillData_CoolTimeAdd[s]='-168'
    set s__SkillData_Damage[s]=484
    set s__SkillData_DamageAdd[s]=29
    set s__SkillData_Range[s]=500
    set s__SkillData_CostMana[s]=964
    set s__SkillData_CostManaAdd[s]=193
    set s=s__SkillData_getFromKey(161)
    set s__SkillData_Character[s]=4
    set s__SkillData_TypeMain[s]=3
    set s__SkillData_TypeTree[s]=17
    set s__SkillData_RequireLevel[s]=9
    set s__SkillData_TypeCore[s]=7
    set s__SkillData_TypeUI[s]=3
    set s__SkillData_ValueUse[s]="#CastingTime/#Damage/#Distance/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~CastingTime/~Damage/~Mana/~CoolDown"
    set s__SkillData_Distance[s]=800
    set s__SkillData_CastingTime[s]=95
    set s__SkillData_CastingTimeAdd[s]=5
    set s__SkillData_CoolTime[s]=5777
    set s__SkillData_CoolTimeAdd[s]='-231'
    set s__SkillData_Damage[s]=748
    set s__SkillData_DamageAdd[s]=45
    set s__SkillData_CostMana[s]=1178
    set s__SkillData_CostManaAdd[s]=236
    set s=s__SkillData_getFromKey(162)
    set s__SkillData_Character[s]=4
    set s__SkillData_TypeMain[s]=4
    set s__SkillData_TypeTree[s]=24
    set s__SkillData_RequireLevel[s]=1
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s=s__SkillData_getFromKey(163)
    set s__SkillData_Character[s]=4
    set s__SkillData_TypeMain[s]=4
    set s__SkillData_TypeTree[s]=24
    set s__SkillData_RequireLevel[s]=4
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s=s__SkillData_getFromKey(164)
    set s__SkillData_Character[s]=4
    set s__SkillData_TypeMain[s]=4
    set s__SkillData_TypeTree[s]=24
    set s__SkillData_RequireLevel[s]=7
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s=s__SkillData_getFromKey(165)
    set s__SkillData_Character[s]=4
    set s__SkillData_TypeMain[s]=4
    set s__SkillData_TypeTree[s]=24
    set s__SkillData_RequireLevel[s]=9
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s=s__SkillData_getFromKey(166)
    set s__SkillData_Character[s]=4
    set s__SkillData_TypeMain[s]=5
    set s__SkillData_TypeTree[s]=22
    set s__SkillData_RequireLevel[s]=0
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s=s__SkillData_getFromKey(167)
    set s__SkillData_Character[s]=4
    set s__SkillData_TypeMain[s]=5
    set s__SkillData_TypeTree[s]=22
    set s__SkillData_RequireLevel[s]=1
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s=s__SkillData_getFromKey(168)
    set s__SkillData_Character[s]=4
    set s__SkillData_TypeMain[s]=5
    set s__SkillData_TypeTree[s]=22
    set s__SkillData_RequireLevel[s]=2
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s=s__SkillData_getFromKey(169)
    set s__SkillData_Character[s]=4
    set s__SkillData_TypeMain[s]=5
    set s__SkillData_TypeTree[s]=22
    set s__SkillData_RequireLevel[s]=3
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s=s__SkillData_getFromKey(170)
    set s__SkillData_Character[s]=4
    set s__SkillData_TypeMain[s]=5
    set s__SkillData_TypeTree[s]=22
    set s__SkillData_RequireLevel[s]=4
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s=s__SkillData_getFromKey(171)
    set s__SkillData_Character[s]=4
    set s__SkillData_TypeMain[s]=5
    set s__SkillData_TypeTree[s]=22
    set s__SkillData_RequireLevel[s]=5
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s=s__SkillData_getFromKey(172)
    set s__SkillData_Character[s]=4
    set s__SkillData_TypeMain[s]=5
    set s__SkillData_TypeTree[s]=22
    set s__SkillData_RequireLevel[s]=6
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s=s__SkillData_getFromKey(173)
    set s__SkillData_Character[s]=4
    set s__SkillData_TypeMain[s]=5
    set s__SkillData_TypeTree[s]=22
    set s__SkillData_RequireLevel[s]=7
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s=s__SkillData_getFromKey(174)
    set s__SkillData_Character[s]=4
    set s__SkillData_TypeMain[s]=5
    set s__SkillData_TypeTree[s]=22
    set s__SkillData_RequireLevel[s]=8
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s=s__SkillData_getFromKey(175)
    set s__SkillData_Character[s]=4
    set s__SkillData_TypeMain[s]=5
    set s__SkillData_TypeTree[s]=22
    set s__SkillData_RequireLevel[s]=9
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s=s__SkillData_getFromKey(176)
    set s__SkillData_Character[s]=6
    set s__SkillData_TypeMain[s]=1
    set s__SkillData_TypeTree[s]=2
    set s__SkillData_RequireLevel[s]=0
    set s__SkillData_TypeCore[s]=1
    set s__SkillData_TypeUI[s]=4
    set s__SkillData_ValueUse[s]="#Distance/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~Mana/~CoolDown"
    set s__SkillData_Distance[s]=100
    set s__SkillData_CoolTime[s]=1999
    set s__SkillData_CoolTimeAdd[s]='-111'
    set s__SkillData_CostMana[s]=101
    set s__SkillData_CostManaAdd[s]=11
    set s=s__SkillData_getFromKey(177)
    set s__SkillData_Character[s]=6
    set s__SkillData_TypeMain[s]=1
    set s__SkillData_TypeTree[s]=2
    set s__SkillData_RequireLevel[s]=10
    set s__SkillData_TypeCore[s]=1
    set s__SkillData_TypeUI[s]=4
    set s__SkillData_ValueUse[s]="#Distance/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~Mana/~CoolDown"
    set s__SkillData_Distance[s]=350
    set s__SkillData_CoolTime[s]=1004
    set s__SkillData_CoolTimeAdd[s]=-56
    set s__SkillData_CostMana[s]=349
    set s__SkillData_CostManaAdd[s]=39
    set s=s__SkillData_getFromKey(178)
    set s__SkillData_Character[s]=6
    set s__SkillData_TypeMain[s]=1
    set s__SkillData_TypeTree[s]=21
    set s__SkillData_RequireLevel[s]=0
    set s__SkillData_TypeCore[s]=2
    set s__SkillData_TypeUI[s]=2
    set s__SkillData_ValueUse[s]="#CastingTime/#Damage/#Duration/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~CastingTime/~Mana/~CoolDown"
    set s__SkillData_CastingTime[s]=140
    set s__SkillData_CastingTimeAdd[s]=10
    set s__SkillData_Duration[s]=100
    set s__SkillData_CoolTime[s]=1999
    set s__SkillData_CoolTimeAdd[s]='-111'
    set s__SkillData_Damage[s]=30
    set s__SkillData_CostMana[s]=101
    set s__SkillData_CostManaAdd[s]=11
    set s=s__SkillData_getFromKey(179)
    set s__SkillData_Character[s]=6
    set s__SkillData_TypeMain[s]=1
    set s__SkillData_TypeTree[s]=21
    set s__SkillData_RequireLevel[s]=2
    set s__SkillData_TypeCore[s]=8
    set s__SkillData_TypeUI[s]=2
    set s=s__SkillData_getFromKey(180)
    set s__SkillData_Character[s]=6
    set s__SkillData_TypeMain[s]=1
    set s__SkillData_TypeTree[s]=21
    set s__SkillData_RequireLevel[s]=4
    set s__SkillData_TypeCore[s]=5
    set s__SkillData_TypeUI[s]=4
    set s__SkillData_ValueUse[s]="#CastingTime/#Damage/#Distance/#Duration/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~CastingTime/~Damage/~Mana/~CoolDown"
    set s__SkillData_Distance[s]=350
    set s__SkillData_CastingTime[s]=95
    set s__SkillData_CastingTimeAdd[s]=-5
    set s__SkillData_Duration[s]=500
    set s__SkillData_CoolTime[s]=2489
    set s__SkillData_CoolTimeAdd[s]='-100'
    set s__SkillData_Damage[s]=249
    set s__SkillData_DamageAdd[s]=15
    set s__SkillData_CostMana[s]=643
    set s__SkillData_CostManaAdd[s]=129
    set s=s__SkillData_getFromKey(181)
    set s__SkillData_Character[s]=6
    set s__SkillData_TypeMain[s]=1
    set s__SkillData_TypeTree[s]=21
    set s__SkillData_RequireLevel[s]=6
    set s__SkillData_TypeCore[s]=8
    set s__SkillData_TypeUI[s]=2
    set s=s__SkillData_getFromKey(182)
    set s__SkillData_Character[s]=6
    set s__SkillData_TypeMain[s]=1
    set s__SkillData_TypeTree[s]=21
    set s__SkillData_RequireLevel[s]=8
    set s__SkillData_TypeCore[s]=8
    set s__SkillData_TypeUI[s]=2
    set s=s__SkillData_getFromKey(183)
    set s__SkillData_Character[s]=6
    set s__SkillData_TypeMain[s]=2
    set s__SkillData_TypeTree[s]=19
    set s__SkillData_RequireLevel[s]=0
    set s__SkillData_TypeCore[s]=3
    set s__SkillData_TypeUI[s]=4
    set s__SkillData_ValueUse[s]="#Damage/#Distance/#Range/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~Damage/~Mana/~CoolDown"
    set s__SkillData_Distance[s]=150
    set s__SkillData_CoolTime[s]=1100
    set s__SkillData_CoolTimeAdd[s]=-44
    set s__SkillData_Damage[s]=100
    set s__SkillData_DamageAdd[s]=6
    set s__SkillData_Range[s]=150
    set s__SkillData_CostMana[s]=215
    set s__SkillData_CostManaAdd[s]=43
    set s=s__SkillData_getFromKey(184)
    set s__SkillData_Character[s]=6
    set s__SkillData_TypeMain[s]=2
    set s__SkillData_TypeTree[s]=19
    set s__SkillData_RequireLevel[s]=2
    set s__SkillData_TypeCore[s]=7
    set s__SkillData_TypeUI[s]=3
    set s__SkillData_ValueUse[s]="#CastingTime/#Damage/#Distance/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~CastingTime/~Damage/~Mana/~CoolDown"
    set s__SkillData_Distance[s]=450
    set s__SkillData_CastingTime[s]=95
    set s__SkillData_CastingTimeAdd[s]=5
    set s__SkillData_CoolTime[s]=1694
    set s__SkillData_CoolTimeAdd[s]=-68
    set s__SkillData_Damage[s]=158
    set s__SkillData_DamageAdd[s]=10
    set s__SkillData_CostMana[s]=429
    set s__SkillData_CostManaAdd[s]=86
    set s=s__SkillData_getFromKey(185)
    set s__SkillData_Character[s]=6
    set s__SkillData_TypeMain[s]=2
    set s__SkillData_TypeTree[s]=19
    set s__SkillData_RequireLevel[s]=4
    set s__SkillData_TypeCore[s]=7
    set s__SkillData_TypeUI[s]=3
    set s__SkillData_ValueUse[s]="#CastingTime/#Damage/#Distance/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~CastingTime/~Damage/~Mana/~CoolDown"
    set s__SkillData_Distance[s]=550
    set s__SkillData_CastingTime[s]=95
    set s__SkillData_CastingTimeAdd[s]=5
    set s__SkillData_CoolTime[s]=2489
    set s__SkillData_CoolTimeAdd[s]='-100'
    set s__SkillData_Damage[s]=249
    set s__SkillData_DamageAdd[s]=15
    set s__SkillData_CostMana[s]=643
    set s__SkillData_CostManaAdd[s]=129
    set s=s__SkillData_getFromKey(186)
    set s__SkillData_Character[s]=6
    set s__SkillData_TypeMain[s]=2
    set s__SkillData_TypeTree[s]=19
    set s__SkillData_RequireLevel[s]=6
    set s__SkillData_TypeCore[s]=3
    set s__SkillData_TypeUI[s]=4
    set s__SkillData_ValueUse[s]="#Damage/#Distance/#Range/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~Damage/~Mana/~CoolDown"
    set s__SkillData_Distance[s]=450
    set s__SkillData_CoolTime[s]=3543
    set s__SkillData_CoolTimeAdd[s]='-142'
    set s__SkillData_Damage[s]=388
    set s__SkillData_DamageAdd[s]=23
    set s__SkillData_Range[s]=150
    set s__SkillData_CostMana[s]=857
    set s__SkillData_CostManaAdd[s]=171
    set s=s__SkillData_getFromKey(187)
    set s__SkillData_Character[s]=6
    set s__SkillData_TypeMain[s]=3
    set s__SkillData_TypeTree[s]=19
    set s__SkillData_RequireLevel[s]=8
    set s__SkillData_TypeCore[s]=3
    set s__SkillData_TypeUI[s]=4
    set s__SkillData_ValueUse[s]="#Damage/#Distance/#Range/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~Damage/~Mana/~CoolDown"
    set s__SkillData_Distance[s]=550
    set s__SkillData_CoolTime[s]=4930
    set s__SkillData_CoolTimeAdd[s]='-197'
    set s__SkillData_Damage[s]=602
    set s__SkillData_DamageAdd[s]=36
    set s__SkillData_Range[s]=150
    set s__SkillData_CostMana[s]=1071
    set s__SkillData_CostManaAdd[s]=214
    set s=s__SkillData_getFromKey(188)
    set s__SkillData_Character[s]=6
    set s__SkillData_TypeMain[s]=2
    set s__SkillData_TypeTree[s]=20
    set s__SkillData_RequireLevel[s]=1
    set s__SkillData_TypeCore[s]=8
    set s__SkillData_TypeUI[s]=2
    set s=s__SkillData_getFromKey(189)
    set s__SkillData_Character[s]=6
    set s__SkillData_TypeMain[s]=2
    set s__SkillData_TypeTree[s]=20
    set s__SkillData_RequireLevel[s]=3
    set s__SkillData_TypeCore[s]=8
    set s__SkillData_TypeUI[s]=2
    set s=s__SkillData_getFromKey(190)
    set s__SkillData_Character[s]=6
    set s__SkillData_TypeMain[s]=2
    set s__SkillData_TypeTree[s]=20
    set s__SkillData_RequireLevel[s]=5
    set s__SkillData_TypeCore[s]=8
    set s__SkillData_TypeUI[s]=2
    set s=s__SkillData_getFromKey(191)
    set s__SkillData_Character[s]=6
    set s__SkillData_TypeMain[s]=2
    set s__SkillData_TypeTree[s]=20
    set s__SkillData_RequireLevel[s]=7
    set s__SkillData_TypeCore[s]=8
    set s__SkillData_TypeUI[s]=2
    set s=s__SkillData_getFromKey(192)
    set s__SkillData_Character[s]=6
    set s__SkillData_TypeMain[s]=3
    set s__SkillData_TypeTree[s]=20
    set s__SkillData_RequireLevel[s]=9
    set s__SkillData_TypeCore[s]=9
    set s__SkillData_TypeUI[s]=5
    set s__SkillData_ValueUse[s]="#Damage/#Range/#Mana/#CoolDown"
    set s__SkillData_ValueChange[s]="~Damage/~Mana/~CoolDown"
    set s__SkillData_CoolTime[s]=5777
    set s__SkillData_CoolTimeAdd[s]='-231'
    set s__SkillData_Damage[s]=748
    set s__SkillData_DamageAdd[s]=45
    set s__SkillData_Range[s]=600
    set s__SkillData_CostMana[s]=1178
    set s__SkillData_CostManaAdd[s]=236
    set s=s__SkillData_getFromKey(193)
    set s__SkillData_Character[s]=6
    set s__SkillData_TypeMain[s]=4
    set s__SkillData_TypeTree[s]=25
    set s__SkillData_RequireLevel[s]=2
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s=s__SkillData_getFromKey(194)
    set s__SkillData_Character[s]=6
    set s__SkillData_TypeMain[s]=4
    set s__SkillData_TypeTree[s]=25
    set s__SkillData_RequireLevel[s]=6
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s=s__SkillData_getFromKey(195)
    set s__SkillData_Character[s]=6
    set s__SkillData_TypeMain[s]=4
    set s__SkillData_TypeTree[s]=25
    set s__SkillData_RequireLevel[s]=9
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s=s__SkillData_getFromKey(196)
    set s__SkillData_Character[s]=6
    set s__SkillData_TypeMain[s]=5
    set s__SkillData_TypeTree[s]=22
    set s__SkillData_RequireLevel[s]=0
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s=s__SkillData_getFromKey(197)
    set s__SkillData_Character[s]=6
    set s__SkillData_TypeMain[s]=5
    set s__SkillData_TypeTree[s]=22
    set s__SkillData_RequireLevel[s]=1
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s=s__SkillData_getFromKey(198)
    set s__SkillData_Character[s]=6
    set s__SkillData_TypeMain[s]=5
    set s__SkillData_TypeTree[s]=22
    set s__SkillData_RequireLevel[s]=2
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s=s__SkillData_getFromKey(199)
    set s__SkillData_Character[s]=6
    set s__SkillData_TypeMain[s]=5
    set s__SkillData_TypeTree[s]=22
    set s__SkillData_RequireLevel[s]=3
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s=s__SkillData_getFromKey(200)
    set s__SkillData_Character[s]=6
    set s__SkillData_TypeMain[s]=5
    set s__SkillData_TypeTree[s]=22
    set s__SkillData_RequireLevel[s]=4
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1

endfunction

function jasshelper__2initdatastructs17940921 takes nothing returns nothing
 local integer s

//Loaded from: Data\SkillData.slk
    set s=s__SkillData_getFromKey(201)
    set s__SkillData_Character[s]=6
    set s__SkillData_TypeMain[s]=5
    set s__SkillData_TypeTree[s]=22
    set s__SkillData_RequireLevel[s]=5
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s=s__SkillData_getFromKey(202)
    set s__SkillData_Character[s]=6
    set s__SkillData_TypeMain[s]=5
    set s__SkillData_TypeTree[s]=22
    set s__SkillData_RequireLevel[s]=6
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s=s__SkillData_getFromKey(203)
    set s__SkillData_Character[s]=6
    set s__SkillData_TypeMain[s]=5
    set s__SkillData_TypeTree[s]=22
    set s__SkillData_RequireLevel[s]=7
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s=s__SkillData_getFromKey(204)
    set s__SkillData_Character[s]=6
    set s__SkillData_TypeMain[s]=5
    set s__SkillData_TypeTree[s]=22
    set s__SkillData_RequireLevel[s]=8
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1
    set s=s__SkillData_getFromKey(205)
    set s__SkillData_Character[s]=6
    set s__SkillData_TypeMain[s]=5
    set s__SkillData_TypeTree[s]=22
    set s__SkillData_RequireLevel[s]=9
    set s__SkillData_TypeCore[s]=6
    set s__SkillData_TypeUI[s]=1

endfunction

