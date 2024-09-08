globals
//globals from DisplayGrid:
constant boolean LIBRARY_DisplayGrid=true
constant integer DisplayGrid___GRID_ALPHA= 255
        
integer DisplayGrid___GridLine
integer DisplayGrid___GridLine_Small
integer DisplayGrid___GridLine_Medium
integer DisplayGrid___GridLine_Large
//endglobals from DisplayGrid
//globals from ETile:
constant boolean LIBRARY_ETile=true
//endglobals from ETile
//globals from JNObjectGui:
constant boolean LIBRARY_JNObjectGui=true
constant string JN_MAPID= "LoD"
constant string JN_SECRETKEY= "9d316ce7-eb22-4637-8dd0-9d869aabfb7a"
player GetServerPlayer
string GetServerCode= null
integer JN_LoaderNow= 0
//endglobals from JNObjectGui
//globals from MemoryLibBase:
constant boolean LIBRARY_MemoryLibBase=true
integer pGameDll
//endglobals from MemoryLibBase
//globals from MemoryLibEnd:
constant boolean LIBRARY_MemoryLibEnd=true
//endglobals from MemoryLibEnd
//globals from SkillObject:
constant boolean LIBRARY_SkillObject=true
hashtable udg_hash= InitHashtable()
//endglobals from SkillObject
//globals from Typecast:
constant boolean LIBRARY_Typecast=true
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
//endglobals from Typecast
//globals from Hunting:
constant boolean LIBRARY_Hunting=true
region Hunting___tempRegion= null
rect array Hunting___PlayerRect
trigger Hunting___tempEnterTrigger= CreateTrigger()
trigger Hunting___DyingTrigger= CreateTrigger()
effect array Hunting___PlayerDecorationEffects
integer array Hunting___PlayerDecorationNumber
    
constant integer Hunting___MAX_ROW= 10
constant integer Hunting___MAX_COL= 8
//endglobals from Hunting
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
//globals from EndGameHook:
constant boolean LIBRARY_EndGameHook=true
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
//endglobals from EndGameHook
//globals from UnitName:
constant boolean LIBRARY_UnitName=true
//endglobals from UnitName
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
trigger gg_trg_Native_of_JNStopwatch= null
trigger gg_trg_Native_of_DzAPIFrameHandle= null
trigger gg_trg_Native_of_JNString= null
trigger gg_trg_Native_of_JNServer= null
trigger gg_trg_Native_of_DzAPISync= null
trigger gg_trg_Native_of_Misc= null
trigger gg_trg_Native_of_DzAPIHardware= null
trigger gg_trg_Nativa_of_JNMemory= null
trigger gg_trg_Native_of_JAPIEffect= null
trigger gg_trg_etc= null
trigger gg_trg_Import_File= null
trigger gg_trg_PKey= null
trigger gg_trg_PushKey= null
trigger gg_trg_StartSetting= null
trigger gg_trg_MainSubFrame= null
trigger gg_trg_SkillTrees= null
trigger gg_trg_Select= null
trigger gg_trg_test= null
trigger gg_trg_MenuQuickSlot= null
trigger gg_trg_Option= null
trigger gg_trg_Inventory_Equip= null
trigger gg_trg_Info= null
trigger gg_trg_MiniInfo= null
trigger gg_trg_JN_Object_Api= null
trigger gg_trg_Time= null
trigger gg_trg_Save= null
trigger gg_trg_Load5_Auto= null
trigger gg_trg_Load_End= null
trigger gg_trg_Load3_Repick= null
trigger gg_trg_Check= null
trigger gg_trg_test_1_add= null
trigger gg_trg_test_2_change= null
trigger gg_trg_test4= null
trigger gg_trg_test5= null
trigger gg_trg_Test6= null
trigger gg_trg_Reset= null
trigger gg_trg_test7= null
trigger gg_trg_Save2= null
trigger gg_trg_add= null
trigger gg_trg_Exit= null
trigger gg_trg_FrameGrid= null
trigger gg_trg_Typecast= null
trigger gg_trg_MemoryLib= null
trigger gg_trg_EndGameHook= null
trigger gg_trg_ClearWhenRestartGame= null
trigger gg_trg_UnitName= null
trigger gg_trg_HandleProfiler= null
trigger gg_trg_Regen= null
trigger gg_trg_Enchant= null
trigger gg_trg_ItemGet= null
trigger gg_trg_UnitNameTest= null
trigger gg_trg_Quest= null
trigger gg_trg________________________003= null
trigger gg_trg________________________002= null
trigger gg_trg________________________001= null
trigger gg_trg_rt= null
trigger gg_trg_UIMain= null
trigger gg_trg_Tile= null
trigger gg_trg_Hunting= null
unit gg_unit_H005_0003= null
unit gg_unit_H004_0007= null
unit gg_unit_H003_0008= null
unit gg_unit_H002_0009= null
unit gg_unit_H001_0010= null
unit gg_unit_H000_0011= null
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
integer JNMemory___FrameMouseXOffset
integer JNMemory___FrameMouseYOffset
boolean array PKey___ChatState
hashtable hash= InitHashtable()
    
    
boolean PKey___OX_Option= false
boolean PKey___OX_Inven= false
boolean PKey___OX_Stats= false
boolean PKey___OX_Skills1= false
boolean PKey___OX_Skills2= false
dialog StartSetting___NoSaveDialog= DialogCreate()
    
integer array Frame_SelectBack
integer array Frame_SelectText
    
integer array Frame_Buttons
integer array Frame_ButtonsBackDrop
integer array Frame_ButtonsText
    
constant integer FRAME_TYPE_ITEM= 1
constant integer FRAME_TYPE_SKILL= 2
constant integer FRAME_TYPE_MENU= 3
constant integer FRAME_TYPE_PRESKILL= 4
constant integer FRAME_TYPE_CHARACTER= 5
    
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
integer SkillTree___SkillTreeNow
integer array SkillTree___SkillTreeButton
integer array SkillTree_SkillTreeBackdrop
integer array SkillTree___SkillTreeText
integer array SkillTree___SkillTreePopup
    
integer array SkillTree___SkillTree2Button
integer array SkillTree___SkillTree2Backdrop
integer array SkillTree___SkillTree2Text
integer array SkillTree___SkillTree2Popup
    
integer array SkillTree_Info
boolean array Select___PreLoad
integer array Select_NowSelect

unit array Select___SelectedUnit
boolean array Select___SelectBol
integer array Select___SelectCount
    
integer array Select___Frame_SelectStars
integer array Select___Frame_SelectSkills
    
integer array Select___SlotLv
integer array Select___SlotPlayTime

constant string Select_DEFAULT_DATA= "0'0/1_0'1.2500/2_0'0/3_0'0/4_0'0/5_0'0/6_0'0/"
                                         //Last Slot
                                           //플탐All
                                             //1번슬롯_
                                                //_플탐
                                                 //Lv.
                                                   //.경험치
real Select_startXX= - 9696.
real Select_startYY= 4288.
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
integer Time_StopWatch= 0
integer array Time_last
integer array Time_Original
string array Save___InvenData
string array Save___EquipData
    
constant integer Save_MAX_INVENTORY= 49
constant integer Save_MAX_EQUIP= 16
constant integer Save_MAX_CHARACTER= 6
string array Name
integer LoadAuto___int= 0
string array InvenData2
string array EquipData2
constant real XX= 1280.
constant real YY= 1024.

trigger l__library_init

//JASSHelper struct globals:
constant integer si__ETile=1
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
constant integer si__Ptr=2
integer si__Ptr_F=0
integer si__Ptr_I=0
integer array si__Ptr_V
integer array si__Ptr_type
trigger array st__Ptr_onDestroy
constant integer si__BytePtr=3
constant integer si__IntPtr=4
constant integer si__RealPtr=5
constant integer si__PtrPtr=6
constant integer si__CommandButtonData=7
constant integer si__GameUI=8
constant integer si__CommandButton=9
constant integer si__EndGameHook___MemoryBlock=10
integer s__EndGameHook___MemoryBlock_pHead
integer s__EndGameHook___MemoryBlock_size
constant integer si__EndGameHook___AssemblyWriter=11
integer si__EndGameHook___AssemblyWriter_F=0
integer si__EndGameHook___AssemblyWriter_I=0
integer array si__EndGameHook___AssemblyWriter_V
integer array s__EndGameHook___AssemblyWriter_pCursor
constant integer si__ECharacterName=12
integer si__ECharacterName_F=0
integer si__ECharacterName_I=0
integer array si__ECharacterName_V
constant integer s__ECharacterName_ICHIGO= 0
constant integer s__ECharacterName_RUKIA= 1
constant integer s__ECharacterName_URYU= 2
constant integer s__ECharacterName_ORIHIME= 3
constant integer s__ECharacterName_RENJI= 4
constant integer s__ECharacterName_SADO= 5
constant integer si__ESkillClass=13
integer si__ESkillClass_F=0
integer si__ESkillClass_I=0
integer array si__ESkillClass_V
constant integer s__ESkillClass_BASE_ACTIVE= 0
constant integer s__ESkillClass_CORE_ACTIVE= 1
constant integer s__ESkillClass_CORE_ULTIMATE= 2
constant integer s__ESkillClass_TRANSFORM= 3
constant integer s__ESkillClass_BASE_PASSIVE= 4
constant integer si__ESkillSubClass=14
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
constant integer si__ESkillMethod=15
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
constant integer si__ESkillTypeUI=16
integer si__ESkillTypeUI_F=0
integer si__ESkillTypeUI_I=0
integer array si__ESkillTypeUI_V
constant integer s__ESkillTypeUI_UN_CLICKABLE= 1
constant integer s__ESkillTypeUI_IMMEDIATELY= 2
constant integer s__ESkillTypeUI_SOLO_TARGET= 3
constant integer s__ESkillTypeUI_LOCATION_WITH_DIRECTION= 4
constant integer s__ESkillTypeUI_LOCATION_WITH_POSITION= 5
constant integer si__WorldEditor=17
integer si__WorldEditor_F=0
integer si__WorldEditor_I=0
integer array si__WorldEditor_V
string array s__WorldEditor_str
integer f__arg_this

endglobals
native JNStopwatchCreate takes nothing returns integer
native JNStopwatchStart takes integer id returns nothing
native JNStopwatchReset takes integer id returns nothing
native JNStopwatchElapsedMinute takes integer id returns integer
native JNStopwatchElapsedHour takes integer id returns integer//===========================================================================
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
 native DzSimpleTextureFindByName takes string name, integer id returns integer
native DzFrameSetModel takes integer frame, string modelFile, integer modelType, integer flag returns nothing
native JNStringPos takes string str, string sub returns integer
native JNStringContains takes string str, string sub returns boolean
native JNStringSplit takes string str, string sub, integer index returns string
native JNStringReplace takes string str, string old, string newstr returns string
native JNStringLength takes string str returns integer
native JNStringSub takes string str, integer start, integer length returns string//===========================================================================
native JNUse takes nothing returns boolean
native JNObjectCharacterResetCharacter takes string UserId returns nothing
native JNObjectCharacterSetInt takes string UserId, string Field, integer value returns nothing
native JNObjectCharacterSetString takes string UserId, string Field, string value returns nothing
native JNObjectCharacterSave takes string MapId, string UserId, string SecretKey, string Character returns string
native JNObjectCharacterGetInt takes string UserId, string Field returns integer
native JNObjectCharacterGetString takes string UserId, string Field returns string
native JNObjectCharacterInit takes string MapId, string UserId, string SecretKey, string Character returns integer
native JNServerTime takes string Format returns string//===========================================================================
native DzGetTriggerSyncPlayer takes nothing returns player
native DzGetTriggerSyncData takes nothing returns string
native DzSyncData takes string prefix, string data returns nothing
native DzTriggerRegisterSyncData takes trigger trig, string prefix, boolean server returns nothing
native EXGetItemDataString takes integer itemcode, integer data_type returns string
native JNWriteLog takes string str returns nothing//===========================================================================
native DzGetTriggerKeyPlayer takes nothing returns player
native DzGetTriggerKey takes nothing returns integer
native DzTriggerRegisterKeyEventByCode takes trigger trig, integer key, integer status, boolean sync, code funcHandle returns nothing
native DzTriggerRegisterMouseEventByCode takes trigger trig, integer btn, integer status, boolean sync, code funcHandle returns nothing
native JNMemoryGetInteger takes integer offset returns integer
native JNGetModuleHandle takes string moduleName returns integer
native JNMemoryGetReal takes integer offset returns real
native EXEffectMatRotateZ takes effect e, real angle returns nothing
native EXSetEffectSize takes effect e, real size returns nothing//===========================================================================
  native DzFrameGetName takes integer frame returns string
  native JNStringCount takes string str, string sub returns integer
  native DzFrameGetText takes integer frame returns string
  native DzFrameGetHeight takes integer frame returns real
native JNObjectCharacterServerConnectCheck takes nothing returns boolean
native JNObjectCharacterRemoveField takes string UserId, string Field returns nothing
native JNMemoryGetByte takes integer offset returns integer
native JNMemorySetInteger takes integer offset, integer value returns nothing
native JNMemorySetReal takes integer offset, real value returns nothing
native JNMemoryGetString takes integer offset, integer length returns string
native JNMemorySetByte takes integer offset, integer value returns nothing
native JNProcCall takes integer callConv, integer address, hashtable params returns boolean
native JNOpenBrowser takes string uri returns nothing
native JNMemorySetString takes integer offset, string value returns nothing
native BitAnd takes integer x, integer y returns integer
native BitOr takes integer x, integer y returns integer
native EXExecuteScript takes string script returns string


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

//Generated allocator of WorldEditor
function s__WorldEditor__allocate takes nothing returns integer
 local integer this=si__WorldEditor_F
    if (this!=0) then
        set si__WorldEditor_F=si__WorldEditor_V[this]
    else
        set si__WorldEditor_I=si__WorldEditor_I+1
        set this=si__WorldEditor_I
    endif
    if (this>8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: WorldEditor")
        return 0
    endif

    set si__WorldEditor_V[this]=-1
 return this
endfunction

//Generated destructor of WorldEditor
function s__WorldEditor_deallocate takes integer this returns nothing
    if this==null then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: WorldEditor")
        return
    elseif (si__WorldEditor_V[this]!=-1) then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: WorldEditor")
        return
    endif
    set si__WorldEditor_V[this]=si__WorldEditor_F
    set si__WorldEditor_F=this
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

//Generated allocator of ECharacterName
function s__ECharacterName__allocate takes nothing returns integer
 local integer this=si__ECharacterName_F
    if (this!=0) then
        set si__ECharacterName_F=si__ECharacterName_V[this]
    else
        set si__ECharacterName_I=si__ECharacterName_I+1
        set this=si__ECharacterName_I
    endif
    if (this>8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: ECharacterName")
        return 0
    endif

    set si__ECharacterName_V[this]=-1
 return this
endfunction

//Generated destructor of ECharacterName
function s__ECharacterName_deallocate takes integer this returns nothing
    if this==null then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: ECharacterName")
        return
    elseif (si__ECharacterName_V[this]!=-1) then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: ECharacterName")
        return
    endif
    set si__ECharacterName_V[this]=si__ECharacterName_F
    set si__ECharacterName_F=this
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

    set si__Ptr_type[this]=8
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

    set si__Ptr_type[this]=7
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

    set si__Ptr_type[this]=6
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

    set si__Ptr_type[this]=5
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

    set si__Ptr_type[this]=4
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

    set si__Ptr_type[this]=3
    set kthis=this

    set si__Ptr_V[this]=-1
 return this
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

    set si__Ptr_type[this]=9
    set kthis=this

    set si__Ptr_V[this]=-1
 return this
endfunction


//library DisplayGrid:
    
    function GetShowGridLine takes integer size returns nothing
        if size == 0 then
            call DzFrameShow(DisplayGrid___GridLine_Small, false)
            call DzFrameShow(DisplayGrid___GridLine_Medium, false)
            call DzFrameShow(DisplayGrid___GridLine_Large, false)
        elseif size == 1 then
            call DzFrameShow(DisplayGrid___GridLine_Small, false)
            call DzFrameShow(DisplayGrid___GridLine_Medium, false)
            call DzFrameShow(DisplayGrid___GridLine_Large, true)
        elseif size == 2 then
            call DzFrameShow(DisplayGrid___GridLine_Small, false)
            call DzFrameShow(DisplayGrid___GridLine_Medium, true)
            call DzFrameShow(DisplayGrid___GridLine_Large, true)
        elseif size == 3 then
            call DzFrameShow(DisplayGrid___GridLine_Small, true)
            call DzFrameShow(DisplayGrid___GridLine_Medium, true)
            call DzFrameShow(DisplayGrid___GridLine_Large, true)
        endif
    endfunction
    
    function DisplayGrid___Main takes nothing returns nothing
        local integer targetFrame
        local integer frame
        local integer x= 1
        local integer y= 1
        local string texture
        
        call DestroyTrigger(GetTriggeringTrigger())
        set DisplayGrid___GridLine=DzCreateFrameByTagName("FRAME", "", DzGetGameUI(), "", 0)
        set DisplayGrid___GridLine_Small=DzCreateFrameByTagName("FRAME", "", DisplayGrid___GridLine, "", 0)
        set DisplayGrid___GridLine_Medium=DzCreateFrameByTagName("FRAME", "", DisplayGrid___GridLine, "", 0)
        set DisplayGrid___GridLine_Large=DzCreateFrameByTagName("FRAME", "", DisplayGrid___GridLine, "", 0)
        call DzFrameShow(DisplayGrid___GridLine_Small, false)
        call DzFrameShow(DisplayGrid___GridLine_Medium, false)
        call DzFrameShow(DisplayGrid___GridLine_Large, false)
        
        //알파 값
        call DzFrameSetAlpha(DisplayGrid___GridLine, DisplayGrid___GRID_ALPHA)
        
        //x축 격자 생성
        loop
            exitwhen x > 79
            if ModuloInteger(x, 10) == 0 then
                set targetFrame=DisplayGrid___GridLine_Large
                set texture="ReplaceableTextures\\TeamColor\\TeamColor04.blp"
            elseif ModuloInteger(x, 5) == 0 then
                set targetFrame=DisplayGrid___GridLine_Medium
                set texture="Textures\\white.blp"
            else
                set targetFrame=DisplayGrid___GridLine_Small
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
            set frame=DzCreateFrameByTagName("TEXT", "", DisplayGrid___GridLine_Large, "", 0)
            call DzFrameSetText(frame, "0." + I2S(x))
            call DzFrameSetAbsolutePoint(frame, JN_FRAMEPOINT_BOTTOMRIGHT, x * 0.1, 0.0)
            set x=x + 1
        endloop
        
        //y축 격자 생성
        loop
            exitwhen y > 59
            if ModuloInteger(y, 10) == 0 then
                set targetFrame=DisplayGrid___GridLine_Large
                set texture="ReplaceableTextures\\TeamColor\\TeamColor04.blp"
            elseif ModuloInteger(y, 5) == 0 then
                set targetFrame=DisplayGrid___GridLine_Medium
                set texture="Textures\\white.blp"
            else
                set targetFrame=DisplayGrid___GridLine_Small
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
            set frame=DzCreateFrameByTagName("TEXT", "", DisplayGrid___GridLine_Large, "", 0)
            call DzFrameSetText(frame, "0." + I2S(y))
            call DzFrameSetAbsolutePoint(frame, JN_FRAMEPOINT_TOPLEFT, 0.0, y * 0.1)
            set y=y + 1
        endloop
        
        //(0.0) 격자 수치 표기
        set frame=DzCreateFrameByTagName("TEXT", "", DisplayGrid___GridLine_Large, "", 0)
        call DzFrameSetText(frame, "0.0")
        call DzFrameSetAbsolutePoint(frame, JN_FRAMEPOINT_BOTTOMLEFT, 0.0, 0.0)
    endfunction
    
    function DisplayGrid___Command takes nothing returns nothing
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

    function DisplayGrid___Init takes nothing returns nothing
        local trigger t= CreateTrigger()
        local integer i= 0
        call TriggerRegisterTimerEvent(t, 0.00, false)
        call TriggerAddAction(t, function DisplayGrid___Main)
        
        set t=CreateTrigger()
        loop
            exitwhen i > 11
            call TriggerRegisterPlayerChatEvent(t, Player(i), "-g", false)
            set i=i + 1
        endloop
        call TriggerAddAction(t, function DisplayGrid___Command)
        
        set t=null
    endfunction

//library DisplayGrid ends
//library ETile:
    
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

//library ETile ends
//library JNObjectGui:


  // JNObjectLoadSave
  function JNObjectCharacterInitG takes player p,string character returns nothing
    if GetLocalPlayer() == p then
      if udg_hero[GetPlayerId(p) + 1] == null then
        call JNObjectCharacterResetCharacter(Name[GetPlayerId(p) + 1])
      endif
      call JNObjectCharacterInit(JN_MAPID, Name[GetPlayerId(p) + 1], JN_SECRETKEY, character)
    endif
  endfunction

  function JNObjectCharacterCreateSync takes nothing returns nothing
    set GetServerPlayer=DzGetTriggerSyncPlayer()
    call TriggerExecute(gg_trg_Load_End)
  endfunction

  // JNObjectCharacterLoad
  function JNObjectCharacterGetIntegerSync takes nothing returns nothing
    local string str= DzGetTriggerSyncData()
    call SaveInteger(hash, GetPlayerId(DzGetTriggerSyncPlayer()) + 1, StringHash(JNStringSplit(str, "!", 0)), S2I(JNStringSplit(str, "!", 1)))
     call BJDebugMsg("load/save i - " + I2S(GetPlayerId(DzGetTriggerSyncPlayer()) + 1) + "/" + JNStringSplit(str, "!", 0) + "/" + JNStringSplit(str, "!", 1))
  endfunction

  function JNObjectCharacterGetStringSync takes nothing returns nothing
    local string str= DzGetTriggerSyncData()
    call SaveStr(hash, GetPlayerId(DzGetTriggerSyncPlayer()) + 1, StringHash(JNStringSplit(str, "!", 0)), JNStringSplit(str, "!", 1))
     call BJDebugMsg("load/save s - " + I2S(GetPlayerId(DzGetTriggerSyncPlayer()) + 1) + "/" + JNStringSplit(str, "!", 0) + "/" + JNStringSplit(str, "!", 1))
  endfunction

  function JNObjectGui___init takes nothing returns nothing
    local trigger trig= CreateTrigger()
    local integer i= 0

    call DzTriggerRegisterSyncData(trig, "JNEndSync", false)
    call TriggerAddAction(trig, function JNObjectCharacterCreateSync)

    set trig=CreateTrigger()
    call DzTriggerRegisterSyncData(trig, "JNIntSync", false)
    call TriggerAddAction(trig, function JNObjectCharacterGetIntegerSync)

    set trig=CreateTrigger()
    call DzTriggerRegisterSyncData(trig, "JNStrSync", false)
    call TriggerAddAction(trig, function JNObjectCharacterGetStringSync)

    loop
      exitwhen i == bj_MAX_PLAYERS
      set Name[i + 1]=GetPlayerName(Player(i))
      set i=i + 1
    endloop
    
    call JNUse()
    
    set trig=null
  endfunction


//library JNObjectGui ends
//library MemoryLibBase:


    function MemoryLibBase___Init takes nothing returns nothing
        set pGameDll=JNGetModuleHandle("Game.dll")
    endfunction

//library MemoryLibBase ends
//library MemoryLibEnd:

//library MemoryLibEnd ends
//library SkillObject:
// 추가한 시간: 24.08.31 03:08:00
  function SkillObject___init takes nothing returns nothing
    call SaveStr(udg_hash, StringHash("SkillObject"), 1, "대쉬//앞으로 #Distance 거리만큼 빠르게 내달립니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 2, "순보//앞으로 #Distance 거리만큼 순간적으로 내달립니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 3, "니도//호로들의 이동 보법입니다.\n#Distance 거리만큼 순간적으로 내달립니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 4, "소니도//아란칼들의 이동 보법입니다. \n#Distance 거리만큼 순간적으로 내달립니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 5, "브링거 라이트//풀브링거의 고속 보법입니다. \n#Distance 거리만큼 순식간에 이동합니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 6, "방어//방어 자세를 취해 데미지를 감소시킵니다.\n#Duration초간 데미지 #Damage% 감소")
    call SaveStr(udg_hash, StringHash("SkillObject"), 7, "회피//영압을 집중해 데미지를 감소시킵니다.\n#Duration초간 데미지 #Damage% 감소")
    call SaveStr(udg_hash, StringHash("SkillObject"), 8, "천무연신//허공에 검을 휘둘러 공격을 방어합니다. \n#Duration초간 데미지 #Damage% 감소")
    call SaveStr(udg_hash, StringHash("SkillObject"), 9, "세로//일직선상으로 빔을 날려 #Distance거리에 #Damage% 데미지를 가합니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 10, "그랑 레이 세로//왕허의 섬광, 피를 섞은 세로를 날려 #Distance거리에 #Damage% 데미지를 가합니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 11, "풀스크린 세로//강화된 세로를 날려 #Distance거리에 #Damage% 데미지를 가합니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 12, "원류파//해골 모양의 영압을 날려 #Distance거리에 #Damage% 데미지를 가합니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 13, "지열붕격//#Distance거리를 돌진한 후, 충격파로 #Range범위에 #Damage% 데미지를 가합니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 14, "선류참//#Distance거리를 돌진한 후, 회전베기로 #Range범위에 #Damage% 데미지를 가합니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 15, "명선붕격//#Distance거리를 돌진한 후, 소용돌이로 #Range범위에 #Damage% 데미지를 여러번 가합니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 16, "세로베기//검을 세로로 베어 #Distance거리에 #Damage% 데미지를 가합니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 17, "월아천충//거대한 참격을 날려 #Distance거리에 #Damage% 데미지를 가합니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 18, "월아십자충//월아천충을 십자가 모양으로 날려 #Distance거리에 #Damage% 데미지를 가합니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 19, "무쌍의일섬//월아천충과 그랑레이세로를 융합해 날립니다.\n#Distance거리에 #Damage% 데미지를 가합니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 20, "가로베기//검을 가로로 베어 #Range범위에 #Damage% 데미지를 가합니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 21, "공열섬//전방을 베어 순수한 검기로 공격합니다. \n#Range범위에 #Damage% 데미지를 가합니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 22, "천쇄참월//거대한 참격을 날려 #Distance거리에 #Damage% 데미지를 가합니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 23, "검은월아천충//호로의 힘으로 월아천충을 쏘아냅니다.\n#Distance거리에 #Damage% 데미지를 가합니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 24, "무월//잠재능력을 모두 해방시켜 참격을 발사합니다.\n#Range범위에 #Damage% 데미지를 가합니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 25, "찌르기//#Distance거리를 찌르며 돌진하며 #Damage% 데미지를 가합니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 26, "흑류아돌//검은 월아천충의 기운으로 #Distance거리를 돌진하며 #Damage% 데미지를 가합니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 27, "폭주//아드레날린을 상승시켜 빠르게 공격합니다.\n이속 +6%, 공속 +7%")
    call SaveStr(udg_hash, StringHash("SkillObject"), 28, "시해//아드레날린을 상승시켜 빠르게 공격합니다.\n이속 +13%, 공속 +15%")
    call SaveStr(udg_hash, StringHash("SkillObject"), 29, "만해//아드레날린을 상승시켜 빠르게 공격합니다.\n이속 +20%, 공속 +30%")
    call SaveStr(udg_hash, StringHash("SkillObject"), 30, "호로화//아드레날린을 상승시켜 빠르게 공격합니다.\n이속 +27%, 공속 +45%")
    call SaveStr(udg_hash, StringHash("SkillObject"), 31, "호로화 시해//아드레날린을 상승시켜 빠르게 공격합니다.\n이속 +34%, 공속 +60%")
    call SaveStr(udg_hash, StringHash("SkillObject"), 32, "호로화 만해 (각성호로화)//아드레날린을 상승시켜 빠르게 공격합니다.\n이속 +41%, 공속 +75%")
    call SaveStr(udg_hash, StringHash("SkillObject"), 33, "종해//아드레날린을 상승시켜 빠르게 공격합니다.\n이속 +48%, 공속 +90%")
    call SaveStr(udg_hash, StringHash("SkillObject"), 34, "무월//아드레날린을 상승시켜 빠르게 공격합니다.\n이속 -50%, 공속 +140%")
    call SaveStr(udg_hash, StringHash("SkillObject"), 35, "스컬 클래드//아드레날린을 상승시켜 빠르게 공격합니다.\n이속 +55%, 공속 +105%")
    call SaveStr(udg_hash, StringHash("SkillObject"), 36, "풀브링//아드레날린을 상승시켜 빠르게 공격합니다.\n이속 +62%, 공속 +120%")
    call SaveStr(udg_hash, StringHash("SkillObject"), 37, "풀브링 시해//아드레날린을 상승시켜 빠르게 공격합니다.\n이속 +69%, 공속 +135%")
    call SaveStr(udg_hash, StringHash("SkillObject"), 38, "풀브링 만해//아드레날린을 상승시켜 빠르게 공격합니다.\n이속 +76%, 공속 +150%")
    call SaveStr(udg_hash, StringHash("SkillObject"), 39, "진참월//아드레날린을 상승시켜 빠르게 공격합니다.\n이속 +83%, 공속 +165%")
    call SaveStr(udg_hash, StringHash("SkillObject"), 40, "진참월 호로화//아드레날린을 상승시켜 빠르게 공격합니다.\n이속 +90%, 공속 +180%")
    call SaveStr(udg_hash, StringHash("SkillObject"), 41, "진참월 만해//아드레날린을 상승시켜 빠르게 공격합니다.\n이속 +100%, 공속 +200%")
    call SaveStr(udg_hash, StringHash("SkillObject"), 42, "검압//기술에 영압을 추가하여 데미지를 준다.\n핵심 기술에 영력 #Damage%의 추가데미지")
    call SaveStr(udg_hash, StringHash("SkillObject"), 43, "블루트베네//퀸시 특유의 방어술. 영자를 핏속에 흘려넣어 방어력을 비약적으로 상승시킨다. \n모든 받는 피해 #Damage%만큼 감소")
    call SaveStr(udg_hash, StringHash("SkillObject"), 44, "파괴술 1. 충//손 끝에서 영압을 쏘아 대상에게 #Damage%의 피해를 줍니다.\n추가로, 2초간 25% 느려지게 만듭니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 45, "파괴술 4. 백뢰//손 끝에서 번개를 쏘아 대상에게 #Damage%의 피해와 0.6초 스턴을 가합니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 46, "파괴술 31 적화포//불꽃을 쏘아 #Damage%의 피해를 줍니다.\n추가로, 최대체력 0.8%의 데미지를 입힙니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 47, "파괴술 33 창화추//푸른 불꽃을 쏘아 #Damage%의 피해를 줍니다.\n추가로, 현재체력 2%의 데미지를 입힙니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 48, "파괴술 73 쌍련창화추//양 손에서 푸른 불꽃을 쏘아 #Damage%의 피해를 줍니다.\n추가로, 잃은 체력의 6%의 데미지를 입힙니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 49, "주박술 1 새//상대에게 수갑을 채워 #Damage%의 데미지를 가하고 0.65초 속박합니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 50, "주박술 4 저승//상대에게 #Damage%의 데미지를 가하고 1.0초 속박합니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 51, "주박술 61 육장광뇌//상대에게 판떼기 6개를 박아 #Damage%의 데미지와 5초 속박합니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 52, "주박술 81. 단공//영압으로 구성된 투명하고 거대한 벽을 생성하여, 주변 #Range범위의 공격을 3.3초간 막습니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 53, "기본의 춤, 백묘//검을 들고 아름다운 춤을 추어 주변에 데미지를 가합니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 54, "시작의 춤, 월백//주변을 속박시키고 표식을 생성합니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 55, "다음의 춤, 백련//춤을 추고, 주변에 있는 표식 및 방해효과를 폭발시켜 데미지를 가합니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 56, "세번째 춤, 백도//일직선상으로 냉기를 뿜어, #Distance거리에 #Damage% 데미지를 가합니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 57, "기쁨의 춤, 고백//주변에 적용된 표식 및 효과를 드러내고, 추가데미지를 가합니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 58, "슬픔의 춤, 탄백//주변에 적용된 표식 혹은 효과를 한번 더 적용하여 추가 피해를 입힙니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 59, "질풍의 춤, 백풍//춤추듯 지상에 내리며 강렬한 바람을 일으켜, 명중한 적 모두에게 절대 대미지를 주고 동상 상태로 만든다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 60, "표현의 춤, 자백//주변에 적용된 표식의 지속시간을 2배로 적용하고 빙결상태로 만듭니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 61, "분노의 춤, 백화//분노의 춤으로 주변을 밀쳐내고 경직시킵니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 62, "새하얀 춤, 설백//강력한 냉기를 뿜어 주변에 적용된 표식 및 효과를 폭발시키고 다시 적용합니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 63, "영하 18도//주변 적을 베고 빙결")
    call SaveStr(udg_hash, StringHash("SkillObject"), 64, "영하 50도//주변에 지진을 일으킴")
    call SaveStr(udg_hash, StringHash("SkillObject"), 65, "영하 273.15(절대영도)//모두 얼림.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 66, "냉정//침착하고 정확하게 공격합니다.\n본인 공속 +8%")
    call SaveStr(udg_hash, StringHash("SkillObject"), 67, "수백설 Lv1//침착하고 정확하게 공격합니다.\n적-7%, 아군 +8%")
    call SaveStr(udg_hash, StringHash("SkillObject"), 68, "수백설 Lv2//침착하고 정확하게 공격합니다.\n적-9%, 아군 +11%")
    call SaveStr(udg_hash, StringHash("SkillObject"), 69, "수백설 Lv3//침착하고 정확하게 공격합니다.\n적-11%, 아군 +14%")
    call SaveStr(udg_hash, StringHash("SkillObject"), 70, "백하벌 Lv1//침착하고 정확하게 공격합니다.\n적-13%, 아군 +17%")
    call SaveStr(udg_hash, StringHash("SkillObject"), 71, "백하벌 Lv2//침착하고 정확하게 공격합니다.\n적-15%, 아군 +20%")
    call SaveStr(udg_hash, StringHash("SkillObject"), 72, "백하벌 Lv3//침착하고 정확하게 공격합니다.\n적-17%, 아군 +23%")
    call SaveStr(udg_hash, StringHash("SkillObject"), 73, "다크 Lv1//침착하고 정확하게 공격합니다.\n적-19%, 아군 +26%")
    call SaveStr(udg_hash, StringHash("SkillObject"), 74, "다크 Lv2//침착하고 정확하게 공격합니다.\n적-21%, 아군 +29%")
    call SaveStr(udg_hash, StringHash("SkillObject"), 75, "다크 Lv3//침착하고 정확하게 공격합니다.\n적-25%, 아군 +35%")
    call SaveStr(udg_hash, StringHash("SkillObject"), 76, "대쉬//앞으로 #Distance 거리만큼 빠르게 내달립니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 77, "비염각//퀸시들의 고동 보법입니다. \n#Distance 거리만큼 고속으로 내달립니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 78, "그리마니엘//퀸시의 폴슈텐디히입니다. \n#Distance 거리만큼 초고속으로 이동합니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 79, "호작//공격시 영압을 소모하여 추가데미지를 가합니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 80, "산령수투//더 나은 무기를 통해 더 강력한 데미지를 줍니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 81, "은령호작//더 나은 무기를 통해 더 강력한 데미지를 줍니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 82, "산령수투(해방)//더 나은 무기를 통해 더 강력한 데미지를 줍니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 83, "하일리히 프파일//빛의 화살을 발사하여 #Distance거리에 #Damage% 데미지를 가합니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 84, "리히트 레겐//넓은 범위에 화살을 쏘아 #Range범위에 #Damage% 데미지를 가합니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 85, "섬광 화살//섬광 화살을 발사하여 #Distance거리에 #Damage% 데미지를 가하고, 실명 상태로 만듭니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 86, "천공의 일격//빛의 화살을 발사하며 #Distance거리를 이동하고 #Damage% 데미지를 가합니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 87, "천청의 빛//거대한 화살을 쏘아 #Distance거리에 #Damage% 데미지를 가하고, 능력을 저하시킵니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 88, "빛의 방패//빛으로 된 방패를 만들어 공격을 방어하고, 방패는 점점 강화되어 폭발하여 빛 화살로 변환되어 공격합니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 89, "짜이헨//마법진으로 #Damage를 가하고, 상대를 1.5초간 속박합니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 90, "그리츠//은통을 던져 5갈래 벽으로 #Damage를 가하고, 상대를 1.2초간 제압합니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 91, "하이젠//은통을 던져, 상대를 2초간 속박하고, #Damage%+최대체력 0.3%의 데미지를 가합니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 92, "슈프렝거//퀸시 크로스 모양의 진으로 상대를 3초간 속박하고, 고농축 영자를 폭발시켜 \n#Damage%+현재체력 2.3%의 데미지를 가합니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 93, "겔트슈랑크//젤레슈나이더의 고밀도 영자로 상대를 4초간 속박하고, 농축 영자를 폭발시켜 \n#Damage% + 잃은 체력 4.7%의 데미지를 가합니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 94, "영자의 예속//변신 중에 주변 영압 흡수하여, 마나 소모를 감소합니다. 변신 자체 마나소모 -3~-30%")
    call SaveStr(udg_hash, StringHash("SkillObject"), 95, "영자조작//변신 중에 주변의 영자를 조작하여, 자신에게 유리한 효과를 가져옵니다. 변신 쿨 -5~-50%")
    call SaveStr(udg_hash, StringHash("SkillObject"), 96, "블루트 아르테리에//변신 중에 동맥에 영자를 주입하여 공격적인 형태를 취합니다. 공속 5~50%")
    call SaveStr(udg_hash, StringHash("SkillObject"), 97, "슈리프트 - 완전반립//변신 중에 방해 효과를 반사합니다. 5~50%")
    call SaveStr(udg_hash, StringHash("SkillObject"), 98, "항복//자신을 내려놓고, 모든 것을 받아들입니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 99, "난장천괴 1//영자를 꼬아 자신을 강제로 조종합니다. 모든 방해효과에 면역이되며, 영자만 남아있다면 계속 움직일 수 있습니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 100, "난장천괴 2//영자를 꼬아 자신을 강제로 조종합니다. 모든 방해효과에 면역이되며, 영자만 남아있다면 계속 움직일 수 있습니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 101, "난장천괴 3//영자를 꼬아 자신을 강제로 조종합니다. 모든 방해효과에 면역이되며, 영자만 남아있다면 계속 움직일 수 있습니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 102, "렛트슈틸 1//일시적으로 퀸시 정수에 도달 각성합니다. 1레벨 이상 '패시브'들의 레벨이 상승합니다. 1/7/10레벨에 +1/+2/+3")
    call SaveStr(udg_hash, StringHash("SkillObject"), 103, "렛트슈틸 2//일시적으로 퀸시 정수에 도달 각성합니다. 1레벨 이상 '패시브'들의 레벨이 상승합니다. 1/7/10레벨에 +1/+2/+3")
    call SaveStr(udg_hash, StringHash("SkillObject"), 104, "렛트슈틸 3//일시적으로 퀸시 정수에 도달 각성합니다. 1레벨 이상 '패시브'들의 레벨이 상승합니다. 1/7/10레벨에 +1/+2/+3")
    call SaveStr(udg_hash, StringHash("SkillObject"), 105, "폴슈텐디히 1//퀸시의 힘을 끌어올려 몸에 두르고 싸웁니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 106, "폴슈텐디히 2//퀸시의 힘을 끌어올려 몸에 두르고 싸웁니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 107, "폴슈텐디히 3//퀸시의 힘을 끌어올려 몸에 두르고 싸웁니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 108, "발차기//상대를 발로 차버립니다. #Range범위에 #Damage% 데미지를 가합니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 109, "가라테//가라테 기술로 공격하여 #Damage% 데미지를 가합니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 110, "히로인//주변에 여성이 자신 뿐일 때, 스킬들의 거리 +5%")
    call SaveStr(udg_hash, StringHash("SkillObject"), 111, "변신페널티//변신시 이속페널티 감소 5~50%")
    call SaveStr(udg_hash, StringHash("SkillObject"), 112, "마나회복//변신시 최대마나 즉시회복 2~20%")
    call SaveStr(udg_hash, StringHash("SkillObject"), 113, "사상마련//평소에도 변신 상태와 같은 마음으로, 쉽게 몰입합니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 114, "츠바키(동백)//효과: 만개 - 최대 체력의 0.5-5% 데미지")
    call SaveStr(udg_hash, StringHash("SkillObject"), 115, "슌오우(벚꽃)//효과: 시듦 - 잃.체 0.2-2% x 3회")
    call SaveStr(udg_hash, StringHash("SkillObject"), 116, "아야메(붓꽃)//효과: 낙화 - 공격속도 -5~-50%, 2초")
    call SaveStr(udg_hash, StringHash("SkillObject"), 117, "히나기쿠(국화)//효과: 뿌리 - 이동속도 -5~-50%, 2초")
    call SaveStr(udg_hash, StringHash("SkillObject"), 118, "바이곤(매화)//효과: 꽃가루 - 도트데미지 (최대체력x0.1-1%) x 3회")
    call SaveStr(udg_hash, StringHash("SkillObject"), 119, "리리(백합)//효과: 꽃망울 - 공격력감소(중첩시 공격불가) 5-50%, 2초")
    call SaveStr(udg_hash, StringHash("SkillObject"), 120, "쌍천귀순//재생 : 체력회복 1%+잃5%, 1~10회x1초")
    call SaveStr(udg_hash, StringHash("SkillObject"), 121, "삼천결순//방어 : 받는 데미지 감소 30% 1~10초")
    call SaveStr(udg_hash, StringHash("SkillObject"), 122, "사천항순//더블캐스팅 필요, 삼천결순+츠바키. 데미지 감소 +31-40% + 데미지 반사 1회")
    call SaveStr(udg_hash, StringHash("SkillObject"), 123, "오천비순//더블캐스팅 필요, 삼천결순 + 쌍천귀순, 데미지 감소 41-50% + 체력 회복")
    call SaveStr(udg_hash, StringHash("SkillObject"), 124, "육천절순//트리플캐스팅 필요,  '삼천결순' - '쌍천귀순' - '고천참순'으로 발동. 범위 안 적 체력 감소 5-50% (일반몹)")
    call SaveStr(udg_hash, StringHash("SkillObject"), 125, "사상의거절//주변 쿨다운 감소 1-10%")
    call SaveStr(udg_hash, StringHash("SkillObject"), 126, "더블캐스팅//스킬 콤보로 변경, 모든 스킬 효과 +5~50%")
    call SaveStr(udg_hash, StringHash("SkillObject"), 127, "트리플캐스팅//스킬 트리플콤보로 변경, 모든 스킬 효과 +5~50% (합연산)")
    call SaveStr(udg_hash, StringHash("SkillObject"), 128, "헌신//다른 사람을 위해 희생하고, 정신을 집중하여 마나를 모읍니다. 이속 -10%")
    call SaveStr(udg_hash, StringHash("SkillObject"), 129, "희생//다른 사람을 위해 희생하고, 정신을 집중하여 마나를 모읍니다. 이속 -20%")
    call SaveStr(udg_hash, StringHash("SkillObject"), 130, "존중//다른 사람을 위해 희생하고, 정신을 집중하여 마나를 모읍니다. 이속 -30%")
    call SaveStr(udg_hash, StringHash("SkillObject"), 131, "용서//다른 사람을 위해 희생하고, 정신을 집중하여 마나를 모읍니다. 이속 -40%")
    call SaveStr(udg_hash, StringHash("SkillObject"), 132, "배려//다른 사람을 위해 희생하고, 정신을 집중하여 마나를 모읍니다. 이속 -50%")
    call SaveStr(udg_hash, StringHash("SkillObject"), 133, "사랑//다른 사람을 위해 희생하고, 정신을 집중하여 마나를 모읍니다. 이속 -60%")
    call SaveStr(udg_hash, StringHash("SkillObject"), 134, "수용//다른 사람을 위해 희생하고, 정신을 집중하여 마나를 모읍니다. 이속 -70%")
    call SaveStr(udg_hash, StringHash("SkillObject"), 135, "감사//다른 사람을 위해 희생하고, 정신을 집중하여 마나를 모읍니다. 이속 -80%")
    call SaveStr(udg_hash, StringHash("SkillObject"), 136, "애정//다른 사람을 위해 희생하고, 정신을 집중하여 마나를 모읍니다. 이속 -90%")
    call SaveStr(udg_hash, StringHash("SkillObject"), 137, "축복//다른 사람을 위해 희생하고, 정신을 집중하여 마나를 모읍니다. 이속 -99%")
    call SaveStr(udg_hash, StringHash("SkillObject"), 138, "대쉬//앞으로 #Distance 거리만큼 빠르게 내달립니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 139, "순보//사신들의 이동 보법입니다. \n#Distance 거리만큼 순간적으로 이동합니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 140, "박치기//적을 붙잡아 박치기를 하여 #Damage%의 데미지와 0.4초간 기절시킵니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 141, "일골//한쪽 주먹으로 강력한 타격을 가하여 #Damage% + 최대체력 0.4%의 데미지를 가합니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 142, "철장//손바닥으로 적을 때려부수어 #Damage% + 현재체력 1.5%의 데미지를 가합니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 143, "풍차//회전 발끝차기로 #Damage% + 잃은체력 1.5%의 데미지를 가합니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 144, "쌍골//양쪽 주먹으로 강력한 타격을 가하여 #Damage% + 최대체력 1.5%의 데미지를 가합니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 145, "적시//손발을 걸어 적의 행동을 제한합니다. \n#Damage%의 데미지를 가하고 5초간 공격력을 50% 감소시킵니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 146, "반귀상쇄//상대방에 귀도에 역회전을 걸어 공격을 방어합니다. \n#Duration초간 데미지 #Damage% 감소")
    call SaveStr(udg_hash, StringHash("SkillObject"), 147, "츼사코//상대방의 공격을 방어하고, 되돌려줍니다. \n#Duration초간 데미지 #Damage% 감소")
    call SaveStr(udg_hash, StringHash("SkillObject"), 148, "뇌왕권//초고속 주먹의 러쉬를 하여 추가로 65% 공격력 x 7회의 공격을 합니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 149, "슌센벤//세 번 채찍질하여, #Distance거리에 #Damage% 데미지를 가하고 넉백시킵니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 150, "센코//빠르게 돌진하여 경로상 적을 모두 베어냅니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 151, "쇼센가//땅에 심은 칼이 대상 아래에서 나와 #Damage%의 데미지와 1.6초간 공중으로 띄웁니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 152, "츠키사시//앞으로 쭉 찔러 #Distance거리에 #Damage% 데미지와 스턴을 가합니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 153, "히가 센코//여러 번 강하게 채찍질하여, #Distance거리에 #Damage% 데미지를 가합니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 154, "가진토츠//부서진 칼날을 내리쳐 #Distance거리에 #Damage% 데미지를 가하고, 출혈에 빠뜨립니다.\n조각당 데미지 +5%")
    call SaveStr(udg_hash, StringHash("SkillObject"), 155, "사미환//전방에 검을 휘둘러 #Distance거리에 #Damage% 데미지를 가합니다.\n조각을 남깁니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 156, "비아절교//주변 조각을 쏘아붙여 #Damage% 데미지를 가합니다.\n조각당 데미지 +5%")
    call SaveStr(udg_hash, StringHash("SkillObject"), 157, "비골대포//영압덩어리를 발사하여 #Damage%의 데미지를 가하고 상대를 밀어냅니다.\n그 후 2.5초간 50% 둔화를 가합니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 158, "우치 오로시//사미환을 길게 늘려 #Range범위에 #Damage% 데미지를 가합니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 159, "시아철포//상대에게 꽂은 검에서 영압을 발사하여 #Damage%의 데미지를 가합니다.\n그 후 상대를 불태워 2초간 최대체력 2%의 데미지를 가합니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 160, "히가 호코//사미환을 #Range범위에 #Damage% 데미지를 여러 번 가합니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 161, "메코진//비비왕이 지정된 상대를 물어뜯어 #Damage%의 데미지와 3초간 공중에 띄웁니다. \n그 후 5회 연속 물어뜯어 각각 85%의 데미지를 가합니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 162, "비비왕 - 내려찍기//슬로우 추가 +5%~50%")
    call SaveStr(udg_hash, StringHash("SkillObject"), 163, "비비왕 - 쥐어짜기//슬로우→스턴, 5~50%")
    call SaveStr(udg_hash, StringHash("SkillObject"), 164, "쌍왕 - 사루노//스킬 사용시, '비비왕' 혹은 '오로치왕' 추가적용 각 +3%")
    call SaveStr(udg_hash, StringHash("SkillObject"), 165, "쌍왕 - 헤비노//비비왕'과 '오로치왕' 사용시 다른스킬(한 개) 쿨 -2%")
    call SaveStr(udg_hash, StringHash("SkillObject"), 166, "분노//분노하여 더 강한 공격을 합니다. 이속 +6%, 뎀 +4%")
    call SaveStr(udg_hash, StringHash("SkillObject"), 167, "시해1//사미환 해방. 이속 +13%, 뎀 +8%")
    call SaveStr(udg_hash, StringHash("SkillObject"), 168, "시해2//사미환 해방. 이속 +20%, 뎀 +16%")
    call SaveStr(udg_hash, StringHash("SkillObject"), 169, "시해3//사미환 해방. 이속 +27%, 뎀 +24%")
    call SaveStr(udg_hash, StringHash("SkillObject"), 170, "만해1//비비왕 해방. 이속 +34%, 뎀 +32%")
    call SaveStr(udg_hash, StringHash("SkillObject"), 171, "만해2//오로치왕 해방. 이속 +41%, 뎀 +40%")
    call SaveStr(udg_hash, StringHash("SkillObject"), 172, "만해3//오로치왕 해방. 이속 +48%, 뎀 +48%")
    call SaveStr(udg_hash, StringHash("SkillObject"), 173, "진만해1//쌍왕 해방. 이속 +55%, 뎀 +56%")
    call SaveStr(udg_hash, StringHash("SkillObject"), 174, "진만해2//쌍왕 해방. 이속 +62%, 뎀 +64%")
    call SaveStr(udg_hash, StringHash("SkillObject"), 175, "진만해3//쌍왕 해방. 이속 +69%, 뎀 +72%")
    call SaveStr(udg_hash, StringHash("SkillObject"), 176, "대쉬//앞으로 #Distance 거리만큼 빠르게 내달립니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 177, "브링거 라이트//풀브링거의 고속 보법입니다. \n#Distance 거리만큼 순식간에 이동합니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 178, "방어//방어 자세를 취해 데미지를 감소시킵니다.\n#Duration초간 데미지 #Damage% 감소")
    call SaveStr(udg_hash, StringHash("SkillObject"), 179, "불안정한 땅//다져진 땅을 불안정하게 만들어, 상대를 혼란시켜 데미지를 감소시킵니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 180, "거인의돌진//#Distance거리를 찌르며 돌진하며 #Damage% 데미지를 가합니다. \n이후 일정시간동안 방어력과 이동속도가 증가합니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 181, "역천지명//일정 시간 동안 무적 상태가 되며, 스킬 사용 중 주변 적들에게 지속적으로 데미지를 가합니다. 스킬 종료 시 범위 내 적들을 공중으로 띄워 밀쳐냅니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 182, "무신의 분노//일정 시간 동안 받는 데미지가 감소되며, 주변에 지속적으로 데미지를 가합니다.  또한 공격을 받을 때마다 공격력이 증가합니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 183, "엘 디렉토//영압을 담은 주먹으로 #Distance거리에 #Damage% 데미지를 가합니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 184, "어스 그랩//상대에게 #Damage%의 데미지를 가하고 자신의 앞으로 끌어당깁니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 185, "어션 그래스프//상대를 붙잡아 #Damage% + 최대체력 0.3%의 데미지를 가하고 2초간 속박합니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 186, "악마의숨결//악마의 힘으로 #Distance거리에 #Damage% 데미지를 가하고, 둔화시킵니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 187, "라 무에르테//강한 영압으로 급소를 정확히 공격해, #Distance거리에 #Damage% 데미지를 가합니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 188, "슬래머//지면을 강타하여 지진을 일으켜 적들을 둔화시킵니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 189, "그루아 티라르//지면에 손을 박은 다음 그대로 땅을 들어 메치는 기술.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 190, "디스트럭시온//대지를 내리치며 범위 내 적들에게 데미지를 입히고 넘어뜨립니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 191, "엘레멘토//대지를 움직여 산사태를 일으켜 적들에게 데미지를 입힙니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 192, "천지의포효//대지를 밟아 가르고 산을 던져 #Range범위에 #Damage% 데미지를 가합니다.")
    call SaveStr(udg_hash, StringHash("SkillObject"), 193, "급소파악//공격 혹은 스킬 사용시 데미지를 증가시킵니다. 110% (최대 160%)/ 4% (최대 40%)")
    call SaveStr(udg_hash, StringHash("SkillObject"), 194, "패턴파악//같은 대상으로 지정시 스킬/공격당 데미지 증가 +2% (1렙 중첩 1 - 최대10회)")
    call SaveStr(udg_hash, StringHash("SkillObject"), 195, "요새화//같은 자리에 서있으면 방어력 증가 3% (1렙 중첩 1 - 최대10회) / 최종스택시 주변도발")
    call SaveStr(udg_hash, StringHash("SkillObject"), 196, "방어//방어 태세에 들어가, 방어를 증가시킵니다. 본인 방어 +4%")
    call SaveStr(udg_hash, StringHash("SkillObject"), 197, "거인의 오른팔 Lv1//거인의 오른팔을 이용해 적을 두렵게 하며 자신의 방어를 증가시킵니다. 적 방어 -1%, 본인 +8%")
    call SaveStr(udg_hash, StringHash("SkillObject"), 198, "거인의 오른팔 Lv2//거인의 오른팔을 이용해 적을 두렵게 하며 자신의 방어를 증가시킵니다. 적 방어 -4%, 본인 +12%")
    call SaveStr(udg_hash, StringHash("SkillObject"), 199, "거인의 오른팔 Lv3//거인의 오른팔을 이용해 적을 두렵게 하며 자신의 방어를 증가시킵니다. 적 방어 -7%, 본인 +16%")
    call SaveStr(udg_hash, StringHash("SkillObject"), 200, "거인의 오른팔(브라소 데레차 데 히간테) Lv1//거인의 오른팔을 이용해 적을 더욱 두렵게 하며 자신의 방어를 증가시킵니다. 적 방어 -10%, 본인 +20%")
    call SaveStr(udg_hash, StringHash("SkillObject"), 201, "거인의 오른팔(브라소 데레차 데 히간테) Lv2//거인의 오른팔을 이용해 적을 더욱 두렵게 하며 자신의 방어를 증가시킵니다. 적 방어 -13%, 본인 +24%")
    call SaveStr(udg_hash, StringHash("SkillObject"), 202, "거인의 오른팔(브라소 데레차 데 히간테) Lv3//거인의 오른팔을 이용해 적을 더욱 두렵게 하며 자신의 방어를 증가시킵니다. 적 방어 -16%, 본인 +28%")
    call SaveStr(udg_hash, StringHash("SkillObject"), 203, "악마의 왼팔(브라소 이스케르다 델 디아블로) Lv1//악마의 왼팔을 이용해 적을 매우 두렵게 하며 자신의 방어를 증가시킵니다. 적 방어 -19%, 본인 +32%")
    call SaveStr(udg_hash, StringHash("SkillObject"), 204, "악마의 왼팔(브라소 이스케르다 델 디아블로) Lv2//악마의 왼팔을 이용해 적을 매우 두렵게 하며 자신의 방어를 증가시킵니다. 적 방어 -22%, 본인 +36%")
    call SaveStr(udg_hash, StringHash("SkillObject"), 205, "악마의 왼팔(브라소 이스케르다 델 디아블로) Lv3//악마의 왼팔을 이용해 적을 매우 두렵게 하며 자신의 방어를 증가시킵니다. 적 방어 -25%, 본인 +40%")
  endfunction

//library SkillObject ends
//library Typecast:


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


//library Typecast ends
//library Hunting:
  
  constant function Hunting___EStageMaxWave takes integer stage returns integer
    if ( stage == 1 ) then
      return 2
    endif
    return 0
  endfunction
  function Hunting___RectAddEvent takes rect r,integer num,integer exitWhere returns nothing
    set Hunting___tempRegion=CreateRegion()
    call RegionAddRect(Hunting___tempRegion, r)
    call SaveInteger(hash, GetHandleId(Hunting___tempRegion), StringHash("rectNumber"), num)
    call TriggerRegisterEnterRegion(Hunting___tempEnterTrigger, Hunting___tempRegion, null)
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
      call BJDebugMsg("Hunting/Add/Exit error")
    endif
    call RemoveRect(r)
  endfunction
  function Hunting___isEnterHero takes nothing returns boolean
    return ( GetEnteringUnit() == udg_hero[GetPlayerId(GetOwningPlayer(GetEnteringUnit())) + 1] )
  endfunction
  function Hunting___DecorationLoc takes real x,real y,real probability,integer terrainType returns boolean
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
  function Hunting___DecorationAll takes rect r,integer terrainType returns nothing
    //해당 지점에 지역 크기(10)의 구역을 설정
    if ( terrainType == s__ETile_BLIGHT ) then
      call SetTerrainType(GetRectCenterX(r), GetRectCenterY(r), s__ETile_CITY_DIRT, - 1, Hunting___MAX_ROW / 2 + 1, 1)
      call SetBlightRect(Player(PLAYER_NEUTRAL_AGGRESSIVE), r, true)
    else
      call SetTerrainType(GetRectCenterX(r), GetRectCenterY(r), terrainType, - 1, Hunting___MAX_ROW / 2 + 1, 1)
      call SetBlightRect(Player(PLAYER_NEUTRAL_AGGRESSIVE), r, false)
    endif
  endfunction
  
  function Hunting___DecorationRect takes integer pNumber,integer rectNumber returns nothing
    local integer row= 0
    local integer col= 0
    if ( rectNumber == 1 ) then
      
      call Hunting___DecorationAll(Hunting___PlayerRect[pNumber] , s__ETile_CITY_DIRT)
      loop
        set row=0
        loop
          if ( not Hunting___DecorationLoc(GetRectMinX(Hunting___PlayerRect[pNumber]) + bj_CELLWIDTH * row , GetRectMinY(Hunting___PlayerRect[pNumber]) + bj_CELLWIDTH * col , .3 , s__ETile_CITY_DIRT_ROUGH) ) then
          
            // 실패시 10/70%로 블라이트 생성
            call Hunting___DecorationLoc(GetRectMinX(Hunting___PlayerRect[pNumber]) + bj_CELLWIDTH * row , GetRectMinY(Hunting___PlayerRect[pNumber]) + bj_CELLWIDTH * col , .14 , s__ETile_BLIGHT)
          endif
          exitwhen row >= Hunting___MAX_ROW
          set row=row + 1
        endloop
        exitwhen col >= Hunting___MAX_COL
        set col=col + 1
      endloop
    endif
  endfunction
  function Hunting___CharacterMoveIn takes integer pNumber,real combineX,real combineY returns nothing
    call SetUnitPosition(udg_hero[pNumber], GetRectCenterX(Hunting___PlayerRect[pNumber]) + combineX, GetRectCenterY(Hunting___PlayerRect[pNumber]) + combineY)
    call SetUnitFacing(udg_hero[pNumber], 0)
    if ( GetLocalPlayer() == Player(pNumber - 1) ) then
      call PanCameraToTimed(GetRectCenterX(Hunting___PlayerRect[pNumber]), GetRectCenterY(Hunting___PlayerRect[pNumber]), 0.)
    endif
  endfunction
  
  function Hunting___DecorationScale takes string s1,string s2 returns real
    if ( s1 == "1.00" and s2 == "1.00" ) then
      return 1.00
    else
      return GetRandomReal(S2R(s1), S2R(s2))
    endif
  endfunction
  function Hunting___DecorationDoodadLoc takes integer pNumber,real x,real y,real probability,integer objectId,integer objectId2,boolean top returns boolean
    set Hunting___PlayerDecorationNumber[pNumber]=Hunting___PlayerDecorationNumber[pNumber] + 1
    if ( GetRandomReal(0., 1.) <= probability ) then
      set Hunting___PlayerDecorationEffects[pNumber * 10 + Hunting___PlayerDecorationNumber[pNumber]]=AddSpecialEffect(EXExecuteScript("(require'jass.slk').doodad[" + I2S(objectId) + "].file"), x, y)
      if ( top ) then
        call EXEffectMatRotateZ(Hunting___PlayerDecorationEffects[pNumber * 10 + Hunting___PlayerDecorationNumber[pNumber]], bj_UNIT_FACING)
      else
        call EXEffectMatRotateZ(Hunting___PlayerDecorationEffects[pNumber * 10 + Hunting___PlayerDecorationNumber[pNumber]], 90.)
      endif
      call EXSetEffectSize(Hunting___PlayerDecorationEffects[pNumber * 10 + Hunting___PlayerDecorationNumber[pNumber]], Hunting___DecorationScale(EXExecuteScript("(require'jass.slk').doodad[" + I2S(objectId) + "].minScale") , EXExecuteScript("(require'jass.slk').doodad[" + I2S(objectId) + "].maxScale")))
      return true
    elseif ( objectId2 != 0 ) then
      set Hunting___PlayerDecorationEffects[pNumber * 10 + Hunting___PlayerDecorationNumber[pNumber]]=AddSpecialEffect(EXExecuteScript("(require'jass.slk').doodad[" + I2S(objectId2) + "].file"), x, y)
      if ( top ) then
        call EXEffectMatRotateZ(Hunting___PlayerDecorationEffects[pNumber * 10 + Hunting___PlayerDecorationNumber[pNumber]], bj_UNIT_FACING)
      else
        call EXEffectMatRotateZ(Hunting___PlayerDecorationEffects[pNumber * 10 + Hunting___PlayerDecorationNumber[pNumber]], 90.)
      endif
      call EXSetEffectSize(Hunting___PlayerDecorationEffects[pNumber * 10 + Hunting___PlayerDecorationNumber[pNumber]], Hunting___DecorationScale(EXExecuteScript("(require'jass.slk').doodad[" + I2S(objectId2) + "].minScale") , EXExecuteScript("(require'jass.slk').doodad[" + I2S(objectId2) + "].maxScale")))
    endif
    return false
  endfunction
  
  function Hunting___ClearDoodad takes integer pNumber returns nothing
    local integer loopA= Hunting___PlayerDecorationNumber[pNumber]
    loop
      exitwhen loopA <= 0
      call EXSetEffectSize(Hunting___PlayerDecorationEffects[pNumber * 10 + loopA], 0.)
      call DestroyEffect(Hunting___PlayerDecorationEffects[pNumber * 10 + loopA])
      set loopA=loopA - 1
    endloop
    set Hunting___PlayerDecorationNumber[pNumber]=0
    //call EnumDestructablesInRect(PlayerRect[pNumber], null, function ClearDoodadAll)
  endfunction
  function Hunting___DecorationDoodad takes integer pNumber,integer rectNumber returns nothing
    call Hunting___ClearDoodad(pNumber)
    if ( rectNumber == 1 ) then
      
      
      call Hunting___DecorationDoodadLoc(pNumber , GetRectMinX(Hunting___PlayerRect[pNumber]) + bj_CELLWIDTH * 3.5 , GetRectMaxY(Hunting___PlayerRect[pNumber]) - bj_CELLWIDTH * 0.25 , .5 , 'D019' , 'D00Q' , true)
      call Hunting___DecorationDoodadLoc(pNumber , GetRectMinX(Hunting___PlayerRect[pNumber]) + bj_CELLWIDTH * 5.5 , GetRectMaxY(Hunting___PlayerRect[pNumber]) - bj_CELLWIDTH * 0.25 , .5 , 'D019' , 'D00Q' , true)
      call Hunting___DecorationDoodadLoc(pNumber , GetRectMinX(Hunting___PlayerRect[pNumber]) + bj_CELLWIDTH * 7.5 , GetRectMaxY(Hunting___PlayerRect[pNumber]) - bj_CELLWIDTH * 0.25 , .5 , 'D019' , 'D00Q' , true)
      call Hunting___DecorationDoodadLoc(pNumber , GetRectMinX(Hunting___PlayerRect[pNumber]) + bj_CELLWIDTH * 2.5 , GetRectMinY(Hunting___PlayerRect[pNumber]) + bj_CELLWIDTH * 0.25 , .5 , 'D019' , 'D00Q' , false)
      call Hunting___DecorationDoodadLoc(pNumber , GetRectMinX(Hunting___PlayerRect[pNumber]) + bj_CELLWIDTH * 4.5 , GetRectMinY(Hunting___PlayerRect[pNumber]) + bj_CELLWIDTH * 0.25 , .5 , 'D019' , 'D00Q' , false)
      call Hunting___DecorationDoodadLoc(pNumber , GetRectMinX(Hunting___PlayerRect[pNumber]) + bj_CELLWIDTH * 6.5 , GetRectMinY(Hunting___PlayerRect[pNumber]) + bj_CELLWIDTH * 0.25 , .5 , 'D019' , 'D00Q' , false)
      
      if ( not Hunting___DecorationDoodadLoc(pNumber , GetRectMinX(Hunting___PlayerRect[pNumber]) + bj_CELLWIDTH * 1.5 , GetRectMaxY(Hunting___PlayerRect[pNumber]) - bj_CELLWIDTH * 0.25 , .4 , 'D00Q' , 0 , true) ) then
        if ( not Hunting___DecorationDoodadLoc(pNumber , GetRectMinX(Hunting___PlayerRect[pNumber]) + bj_CELLWIDTH * 1.5 , GetRectMaxY(Hunting___PlayerRect[pNumber]) - bj_CELLWIDTH * 0.25 , .33 , 'D01B' , 0 , true) ) then
        call Hunting___DecorationDoodadLoc(pNumber , GetRectMinX(Hunting___PlayerRect[pNumber]) + bj_CELLWIDTH * 1.5 , GetRectMaxY(Hunting___PlayerRect[pNumber]) - bj_CELLWIDTH * 0.25 , .33 , 'D00E' , 'D01F' , true)
        endif
      endif
      if ( not Hunting___DecorationDoodadLoc(pNumber , GetRectMinX(Hunting___PlayerRect[pNumber]) + bj_CELLWIDTH * 9.5 , GetRectMaxY(Hunting___PlayerRect[pNumber]) - bj_CELLWIDTH * 0.25 , .4 , 'D00Q' , 0 , true) ) then
        if ( not Hunting___DecorationDoodadLoc(pNumber , GetRectMinX(Hunting___PlayerRect[pNumber]) + bj_CELLWIDTH * 9.5 , GetRectMaxY(Hunting___PlayerRect[pNumber]) - bj_CELLWIDTH * 0.25 , .33 , 'D01B' , 0 , true) ) then
        call Hunting___DecorationDoodadLoc(pNumber , GetRectMinX(Hunting___PlayerRect[pNumber]) + bj_CELLWIDTH * 9.5 , GetRectMaxY(Hunting___PlayerRect[pNumber]) - bj_CELLWIDTH * 0.25 , .33 , 'D00E' , 'D01F' , true)
        endif
      endif
      if ( not Hunting___DecorationDoodadLoc(pNumber , GetRectMinX(Hunting___PlayerRect[pNumber]) + bj_CELLWIDTH * 0.5 , GetRectMinY(Hunting___PlayerRect[pNumber]) + bj_CELLWIDTH * 0.25 , .4 , 'D00Q' , 0 , false) ) then
        if ( not Hunting___DecorationDoodadLoc(pNumber , GetRectMinX(Hunting___PlayerRect[pNumber]) + bj_CELLWIDTH * 0.5 , GetRectMinY(Hunting___PlayerRect[pNumber]) + bj_CELLWIDTH * 0.25 , .33 , 'D01B' , 0 , false) ) then
        call Hunting___DecorationDoodadLoc(pNumber , GetRectMinX(Hunting___PlayerRect[pNumber]) + bj_CELLWIDTH * 0.5 , GetRectMinY(Hunting___PlayerRect[pNumber]) + bj_CELLWIDTH * 0.25 , .33 , 'D00E' , 'D01F' , false)
        endif
      endif
      if ( not Hunting___DecorationDoodadLoc(pNumber , GetRectMinX(Hunting___PlayerRect[pNumber]) + bj_CELLWIDTH * 8.5 , GetRectMinY(Hunting___PlayerRect[pNumber]) + bj_CELLWIDTH * 0.25 , .4 , 'D00Q' , 0 , false) ) then
        if ( not Hunting___DecorationDoodadLoc(pNumber , GetRectMinX(Hunting___PlayerRect[pNumber]) + bj_CELLWIDTH * 8.5 , GetRectMinY(Hunting___PlayerRect[pNumber]) + bj_CELLWIDTH * 0.25 , .33 , 'D01B' , 0 , false) ) then
        call Hunting___DecorationDoodadLoc(pNumber , GetRectMinX(Hunting___PlayerRect[pNumber]) + bj_CELLWIDTH * 8.5 , GetRectMinY(Hunting___PlayerRect[pNumber]) + bj_CELLWIDTH * 0.25 , .33 , 'D00E' , 'D01F' , false)
        endif
      endif
    endif
  endfunction
  
  function Hunting___AddDyingEvent takes integer pNumber,unit u returns nothing
    call SaveInteger(hash, GetHandleId(u), StringHash("pNumber"), pNumber)
    call SaveInteger(hash, pNumber, StringHash("mCount"), LoadInteger(hash, pNumber, StringHash("mCount")) + 1)
    call TriggerRegisterUnitEvent(Hunting___DyingTrigger, u, EVENT_UNIT_DEATH)
    call BJDebugMsg("added : " + GetUnitName(u) + "/" + I2S(LoadInteger(hash, pNumber, StringHash("mCount"))) + " at " + I2S(GetHandleId(Hunting___DyingTrigger)))
  endfunction
  function Hunting___AngleToUnit takes real x,real y,unit unitB returns real
    return bj_RADTODEG * Atan2(GetWidgetY(unitB) - y, GetWidgetX(unitB) - x)
  endfunction
  function Hunting___CreateMonster takes integer pNumber,integer count,integer monsterType,real x,real y,real angle returns nothing
    if ( angle < 0 ) then
      set angle=GetRandomDirectionDeg()
    elseif ( angle == 0. ) then
      set angle=Hunting___AngleToUnit(GetRectCenterX(Hunting___PlayerRect[pNumber]) + x , GetRectCenterY(Hunting___PlayerRect[pNumber]) + y , udg_hero[pNumber])
    endif
    loop
      exitwhen count <= 0
      call Hunting___AddDyingEvent(pNumber , CreateUnit(Player(PLAYER_NEUTRAL_AGGRESSIVE), monsterType, GetRectCenterX(Hunting___PlayerRect[pNumber]) + x, GetRectCenterY(Hunting___PlayerRect[pNumber]) + y, angle))
      set count=count - 1
    endloop
  endfunction
  function Hunting___CreateMonsters takes integer pNumber,integer rectNumber,integer wave returns nothing
    if ( rectNumber == 1 ) then
      if ( wave == 1 ) then
        call Hunting___CreateMonster(pNumber , 2 , 'nban' , 300 , 0 , 0)
      elseif ( wave == 2 ) then
        call Hunting___CreateMonster(pNumber , 1 , 'nenf' , 300 , 0 , 0)
      endif
    endif
  endfunction
  function Hunting___KillAll takes nothing returns nothing
    call RemoveUnit(GetEnumUnit())
  endfunction
  function Hunting___ClearRectUnits takes rect r returns nothing
    local group g= CreateGroup()
    call GroupEnumUnitsInRect(g, r, null)
    call ForGroup(g, function Hunting___KillAll)
    call DestroyGroup(g)
    set g=null
  endfunction
  function Hunting___EnterAction takes nothing returns nothing
    local integer rectNumber= LoadInteger(hash, GetHandleId(GetTriggeringRegion()), StringHash("rectNumber"))
    local integer pNumber= GetPlayerId(GetOwningPlayer(GetEnteringUnit())) + 1
    if ( rectNumber < 1 ) or ( pNumber < 1 ) then
      call BJDebugMsg("Bug/Hunting/Action/enter value 0 : " + I2S(rectNumber) + "//" + I2S(pNumber))
    else
      call Hunting___ClearRectUnits(Hunting___PlayerRect[pNumber])
      call SaveInteger(hash, pNumber, StringHash("rectNumber"), rectNumber)
      call SaveInteger(hash, pNumber, StringHash("currentWave"), 1)
      call SaveInteger(hash, pNumber, StringHash("mCount"), 0)
      
      call Hunting___CharacterMoveIn(pNumber , - 400. , 0)
      call Hunting___DecorationRect(pNumber , rectNumber)
      call Hunting___CreateMonsters(pNumber , rectNumber , 1)
      call Hunting___DecorationDoodad(pNumber , rectNumber)
    endif
  endfunction
  function Hunting___RectSetup takes rect r1,rect r2,integer max returns nothing
    local integer i= 3
    // 초기설정 - 
    local real length= GetRectMaxX(r1) - GetRectMinX(r1)
    local real space= GetRectMinX(r2) - GetRectMaxX(r1)
    if ( r1 == null ) or ( r2 == null ) then
      if ( r1 == null ) and ( r2 == null ) then
        call BJDebugMsg("Bug/Hunting/RectSetup/r1 r2 null")
      elseif ( r1 == null ) then
        call BJDebugMsg("Bug/Hunting/RectSetup/r1 null")
      else
        call BJDebugMsg("Bug/Hunting/RectSetup/r2 null")
      endif
    elseif ( Hunting___MAX_ROW != length / bj_CELLWIDTH ) or ( Hunting___MAX_COL != ( GetRectMaxY(r1) - GetRectMinY(r1) ) / bj_CELLWIDTH ) then
      call BJDebugMsg("Bug/Hunting/RectSetup/MAX ROW/COL != " + R2SW(length / bj_CELLWIDTH, 2, 0) + "//" + R2SW(( GetRectMaxY(r1) - GetRectMinY(r1) ) / bj_CELLWIDTH, 2, 0))
    else
      set Hunting___PlayerRect[1]=r1
      set Hunting___PlayerRect[2]=r2
      
      // 3부터 실행
      loop
        set Hunting___PlayerRect[i]=Rect(GetRectMaxX(Hunting___PlayerRect[i - 1]) + space, GetRectMinY(r1), GetRectMaxX(Hunting___PlayerRect[i - 1]) + space + length, GetRectMaxY(r1))
        exitwhen i >= max
        set i=i + 1
      endloop
    endif
  endfunction
  function Hunting___CharacterMoveTo takes integer pNumber,real x,real y returns nothing
    call SetUnitPosition(udg_hero[pNumber], x, y)
    if ( GetLocalPlayer() == Player(pNumber - 1) ) then
      call PanCameraToTimed(x, y, 0.)
    endif
  endfunction
  function Hunting___Clear takes integer pNumber,integer stage returns nothing
    call Hunting___CharacterMoveTo(pNumber , LoadReal(hash, StringHash("rectExitX"), stage) , LoadReal(hash, StringHash("rectExitY"), stage))
    if ( stage == 1 ) then
      call SetPlayerState(Player(pNumber - 1), PLAYER_STATE_RESOURCE_GOLD, GetPlayerState(Player(pNumber - 1), PLAYER_STATE_RESOURCE_GOLD) + 100)
      call AddHeroXP(udg_hero[pNumber], 50, false)
      
    else
      call BJDebugMsg("Hunting/Clear/ERROR 0")
    endif
  endfunction
  function Hunting___MonsterDying takes nothing returns nothing
    local unit u= GetTriggerUnit()
    local integer pNumber= LoadInteger(hash, GetHandleId(u), StringHash("pNumber"))
    local integer mCount= LoadInteger(hash, pNumber, StringHash("mCount")) - 1
    local integer rectNumber= LoadInteger(hash, pNumber, StringHash("rectNumber"))
    local integer currentWave= LoadInteger(hash, pNumber, StringHash("currentWave"))
    call SaveInteger(hash, pNumber, StringHash("mCount"), mCount)
    
    call BJDebugMsg("pNumber:" + I2S(pNumber) + "/mCount:" + I2S(mCount) + "/rectNumber:" + I2S(rectNumber) + "/currentWave:" + I2S(currentWave))
    if ( mCount <= 0 ) then
      if ( currentWave < Hunting___EStageMaxWave(rectNumber) ) then
        set currentWave=currentWave + 1
        call SaveInteger(hash, pNumber, StringHash("currentWave"), currentWave)
        call Hunting___CharacterMoveIn(pNumber , - 400. , 0)
        call Hunting___CreateMonsters(pNumber , rectNumber , currentWave)
      else
        call Hunting___Clear(pNumber , rectNumber)
      endif
    endif
  endfunction
  function Hunting___Init takes nothing returns nothing
    // 이벤트 추가
    call Hunting___RectAddEvent(gg_rct_Hunting_Enter_01_Down , 1 , bj_KEYEVENTKEY_DOWN)
    call Hunting___RectAddEvent(gg_rct_Hunting_Enter_02 , 2 , bj_KEYEVENTKEY_LEFT)
    set Hunting___tempRegion=null
    
    // 조건, 액션
    call TriggerAddCondition(Hunting___tempEnterTrigger, Condition(function Hunting___isEnterHero))
    call TriggerAddAction(Hunting___tempEnterTrigger, function Hunting___EnterAction)
    
    call TriggerAddAction(Hunting___DyingTrigger, function Hunting___MonsterDying)
    
    // 구역 설정, 2개의 위치에 따라 max까지 반복
    call Hunting___RectSetup(gg_rct_Player_Hunting_Rect_01 , gg_rct_Player_Hunting_Rect_02 , bj_MAX_PLAYERS)
    // 메모리 반환
    set Hunting___tempEnterTrigger=null
    //set DyingTrigger = null *해당이름 계속 사용하니 null 처리 안함*
  endfunction

//library Hunting ends
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
//library EndGameHook:



    function SetGameEndCallback takes string func returns nothing
        set EndGameHook___userCallbackName=func
        set EndGameHook___userCallbackCode=null
    endfunction

    function SetGameEndCallbackByCode takes code funcHandle returns nothing
        set EndGameHook___userCallbackName=null
        set EndGameHook___userCallbackCode=funcHandle
    endfunction


//textmacro instance: MemoryLib_DefineMemoryBlock("private", "MemoryBlock", "GameExitHook__MemoryBlock", "400")



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
//end of: MemoryLib_DefineMemoryBlock("private", "MemoryBlock", "GameExitHook__MemoryBlock", "400")

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


//library EndGameHook ends
//library UnitName:


  function UnitName___sub_2217A0 takes integer this returns integer
    local integer pFunc= pGameDll + 0x2217A0
    call SaveStr(JNProc_ht, JNProc_key, 0, "(I)I")
    call SaveInteger(JNProc_ht, JNProc_key, 1, this)
    if ( JNProcCall(JNProc__thiscall, pFunc, JNProc_ht) ) then
      return LoadInteger(JNProc_ht, JNProc_key, 0)
    endif
    return 0
  endfunction
  
  function UnitName___sub_378720 takes integer this returns integer
    local integer pFunc= pGameDll + 0x378720
    call SaveStr(JNProc_ht, JNProc_key, 0, "(I)I")
    call SaveInteger(JNProc_ht, JNProc_key, 1, this)
    if ( JNProcCall(JNProc__thiscall, pFunc, JNProc_ht) ) then
      return LoadInteger(JNProc_ht, JNProc_key, 0)
    endif
    return 0
  endfunction
  
  // sub_3782B0의 변형
  function UnitName___GetObjectNamePtr takes integer rawcode returns integer
    local integer a1= rawcode
    local integer a2= 0
    local integer result
    local integer v3
    local integer v4
    local integer v5
    local integer v6

    set v3=UnitName___sub_378720(a1)
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
  function UnitName___GetHeroTypeProperNamePtr takes integer heroTypeId,integer index returns integer
    local integer pUnitTypeData= UnitName___sub_378720(heroTypeId)
    local integer nHeroNames= s__IntPtr__staticgetindex(pUnitTypeData + 0xF4)
    local integer pHeroNames= s__PtrPtr__staticgetindex(pUnitTypeData + 0xF8)

    if ( index >= 0 and index < nHeroNames ) then
      return s__PtrPtr__getindex(pHeroNames,index)
    else
      return 0
    endif
  endfunction

  function UnitName___GetHeroTypeProperNamesSize takes integer heroTypeId returns integer
    local integer pUnitTypeData= UnitName___sub_378720(heroTypeId)
    local integer nHeroNames= s__IntPtr__staticgetindex(pUnitTypeData + 0xF4)
    return nHeroNames
  endfunction



  
  function SetObjectName takes integer rawcode,string newName returns nothing
    local integer pName= UnitName___GetObjectNamePtr(rawcode)
    call JNMemorySetString(pName, newName)
  endfunction

  
  function SetUnitTypeName takes integer unitTypeId,string newName returns nothing
    call SetObjectName(unitTypeId , newName)
  endfunction

  
  function GetHeroProperNameIndex takes unit whichHero returns integer
    local integer pUnit= UnitName___sub_2217A0(GetHandleId(whichHero))
    local integer pAbilityHero= s__PtrPtr__staticgetindex(pUnit + 0x1F0)
    local integer index= BitAnd(s__IntPtr__staticgetindex(pAbilityHero + 0xE8), 0xFFFF)
    local integer nHeroNames= UnitName___GetHeroTypeProperNamesSize(GetUnitTypeId(whichHero))

    if ( nHeroNames > 0 ) then
      return ModuloInteger(index, nHeroNames)
    else
      return 0
    endif
  endfunction

  
  function SetHeroProperNameIndex takes unit whichHero,integer index returns nothing
    local integer pUnit= UnitName___sub_2217A0(GetHandleId(whichHero))
    local integer pAbilityHero= s__PtrPtr__staticgetindex(pUnit + 0x1F0)
    local integer nHeroNames= UnitName___GetHeroTypeProperNamesSize(GetUnitTypeId(whichHero))
    local integer hiBits
    local integer loBits

    if ( nHeroNames > 0 ) then
      set hiBits=BitAnd(s__IntPtr__staticgetindex(pAbilityHero + 0xE8), 0xFFFF0000)
      set loBits=ModuloInteger(index, nHeroNames)
      call s__IntPtr__staticsetindex(pAbilityHero + 0xE8, BitOr(hiBits, loBits))
    endif
  endfunction

  
  function SetHeroTypeProperName takes integer heroTypeId,integer index,string newName returns nothing
    local integer pName= UnitName___GetHeroTypeProperNamePtr(heroTypeId , index)
    if ( pName != 0 ) then
      call JNMemorySetString(pName, newName)
    endif
  endfunction

  
  function GetHeroTypeProperName takes integer heroTypeId,integer index returns string
    local integer pName= UnitName___GetHeroTypeProperNamePtr(heroTypeId , index)
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

//library UnitName ends
//===========================================================================
// 
// 다른 워크래프트 III 지도
// 
//   Warcraft III map script
//   Generated by the Warcraft III World Editor
//   Date: Sat Sep 07 02:16:45 2024
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
    call CreateItem('azhr', - 9369.2, 2953.1)
    call CreateItem('azhr', - 9371.1, 2747.5)
    call CreateItem('ckng', - 9447.1, 2961.3)
    call CreateItem('ckng', - 9449.0, 2755.7)
    call CreateItem('ckng', - 9455.3, 2859.2)
    call CreateItem('desc', - 9532.1, 2963.3)
    call CreateItem('desc', - 9540.2, 2861.3)
    call CreateItem('desc', - 9534.0, 2757.7)
    call CreateItem('modt', - 9715.8, 2761.8)
    call CreateItem('modt', - 9722.1, 2865.4)
    call CreateItem('modt', - 9713.9, 2967.5)
    call CreateItem('ofro', - 9294.1, 2853.1)
    call CreateItem('ofro', - 9287.8, 2749.5)
    call CreateItem('ratf', - 9627.1, 2967.5)
    call CreateItem('ratf', - 9629.0, 2761.8)
    call CreateItem('ratf', - 9635.3, 2865.4)
    call CreateItem('rde4', - 9206.0, 2763.9)
    call CreateItem('rde4', - 9212.3, 2867.5)
    call CreateItem('tkno', - 9478.6, 2369.8)
    call CreateItem('tkno', - 9411.2, 2360.1)
    call CreateItem('tkno', - 9348.6, 2360.1)
    call CreateItem('tkno', - 9286.8, 2350.4)
    call CreateItem('tkno', - 9531.7, 2350.4)
    call CreateItem('tkno', - 9585.0, 2369.8)
    call CreateItem('tkno', - 9217.0, 2331.3)
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

    set gg_unit_H005_0003=CreateUnit(p, 'H005', - 9509.4, 5613.9, 243.624)
    set u=CreateUnit(p, 'H000', 644.4, 2903.3, 331.244)
    set gg_unit_H004_0007=CreateUnit(p, 'H004', - 9421.7, 5478.0, 215.831)
    set gg_unit_H003_0008=CreateUnit(p, 'H003', - 9627.6, 5665.2, 264.367)
    set gg_unit_H002_0009=CreateUnit(p, 'H002', - 9756.4, 5654.7, 284.859)
    set gg_unit_H001_0010=CreateUnit(p, 'H001', - 9866.4, 5598.7, 304.534)
    set gg_unit_H000_0011=CreateUnit(p, 'H000', - 9949.1, 5460.4, 331.244)
    set u=CreateUnit(p, 'H001', - 9888.5, 4225.1, 283.969)
    set u=CreateUnit(p, 'Hamg', - 9823.8, 4220.1, 248.391)
    set u=CreateUnit(p, 'H000', - 10020.1, 4200.2, 331.244)
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
// Trigger: Native of JNStopwatch
//===========================================================================





// Trigger: Native of DzAPIFrameHandle
//
// JN 함수 임포트!
//===========================================================================













































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
endfunction//===========================================================================
// Trigger: Native of JNString
//===========================================================================






// Trigger: Native of JNServer
//===========================================================================










// Trigger: Native of DzAPISync
//===========================================================================





// Trigger: Native of Misc
//===========================================================================
//JAPIItemState


// JAPIMisc
//native EXExecuteScript takes string script returns string

//JNCommon

// Trigger: Native of DzAPIHardware
//===========================================================================










//===========================================================================
// Trigger: Nativa of JNMemory
//===========================================================================




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
// Trigger: Native of JAPIEffect
//===========================================================================


// Trigger: Import File
//===========================================================================
// BEGIN IMPORT OF C:\Program Files\Warcraft\New\Breach\Script\GitAdder.j
// BEGIN IMPORT OF Data\ETile.j
// [출처] 워크래프트 내의 모든 타일셋 id (워크래프트3 리포지드 유즈맵 포럼 [W3UMF]) | 작성자 동동주
// Tile.SUMMER_DIRT_ROUGH 같은 방법으로 사용할 수 있습니다.
// 푸잎 - 안쓰는 타일은 굳이 저장할 필요 없지만 바이트단위로 먹으니 그냥 리스트로 남겨둠.
// END IMPORT OF Data\ETile.j
// BEGIN IMPORT OF Data\SkillData.j
// scope ESkillData begins
// scope ESkillData ends


// END IMPORT OF Data\SkillData.j
// BEGIN IMPORT OF Data\SkillObject.j
// END IMPORT OF Data\SkillObject.j
// BEGIN IMPORT OF System\Skills.j
    
    
    function s__WorldEditor_getStr takes integer this returns string
        return s__WorldEditor_str[this]
    endfunction
    
    function s__WorldEditor_setStr takes integer this,string str returns nothing
        set s__WorldEditor_str[this]=str
    endfunction
    
    
    function s__WorldEditor__get_string takes integer this returns string
        return s__WorldEditor_str[this]
    endfunction
    
    
    function s__WorldEditor_create takes string str returns integer
        local integer this= s__WorldEditor__allocate()
        call s__WorldEditor_setStr(this,str)
        return this
    endfunction
    
    function s__WorldEditor_txtMsg takes integer this,string str returns nothing
        call BJDebugMsg(str)
    endfunction
    
    function s__WorldEditor_onInit takes nothing returns nothing
        local integer worldEditor= s__WorldEditor_create("HelloWorld")
        call s__WorldEditor_txtMsg(worldEditor,s__WorldEditor_getStr(worldEditor))
        call s__WorldEditor_txtMsg(worldEditor,s__WorldEditor__get_string(worldEditor))
        call BJDebugMsg("test change")
    endfunction
// END IMPORT OF System\Skills.j
// BEGIN IMPORT OF System\Hunting.j
function DebugEffect takes string modelPath,real x,real y returns nothing
  if ( x == 0. or y == 0. ) then
    call BJDebugMsg("DebugEffect/ERROR 0")
  elseif ( modelPath == "1" ) then
    call AddSpecialEffect("units\\human\\Peasant\\Peasant.mdl", x, y)
  elseif ( modelPath == "2" ) then
    call AddSpecialEffect("units\\orc\\Grunt\\Grunt.mdl", x, y)
  elseif ( modelPath == "3" ) then
    call AddSpecialEffect("units\\undead\\Ghoul\\Ghoul.mdl", x, y)
  endif
endfunction

// END IMPORT OF System\Hunting.j
// END IMPORT OF C:\Program Files\Warcraft\New\Breach\Script\GitAdder.j
// Trigger: PKey
//
// ~N - 번호 반환
// ~S - 이름 반환
//===========================================================================
// scope PKey begins
    constant function PKey_H2I takes string s returns integer
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
    constant function PKey_I2H takes integer iKey returns string
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
    constant function F2IN takes integer MenuNo returns integer
    //m번째 값이 아이템/스킬/메뉴의 n번째 값인지 반환
      if ( MenuNo > 0 ) then
        if ( MenuNo <= 7 ) then
          return MenuNo
        elseif ( MenuNo <= 15 ) then
          return MenuNo - 7
        elseif ( MenuNo <= 23 ) then
          return MenuNo - 15
        endif
      endif
      return 0
    endfunction
    constant function FI2S takes integer FRAME_TYPE returns string
      if ( FRAME_TYPE == FRAME_TYPE_ITEM ) then
        return "아이템"
      elseif ( FRAME_TYPE == FRAME_TYPE_SKILL ) then
        return "스킬"
      elseif ( FRAME_TYPE == FRAME_TYPE_MENU ) then
        return "메인메뉴"
      elseif ( FRAME_TYPE == FRAME_TYPE_PRESKILL ) then
        return "스킬 미리보기"
      elseif ( FRAME_TYPE == FRAME_TYPE_CHARACTER ) then
        return "캐릭터 선택"
      endif
      return ""
    endfunction
    constant function F2IT takes integer MenuNo returns integer
    //m번째 값이 아이템/스킬/메뉴인지 반환(1=FRAME_TYPE_ITEM/2=FRAME_TYPE_SKILL/3=FRAME_TYPE_MENU)
      if ( MenuNo > 0 ) then
        if ( MenuNo <= 7 ) then
          return FRAME_TYPE_ITEM
        elseif ( MenuNo <= 15 ) then
          return FRAME_TYPE_SKILL
        elseif ( MenuNo <= 23 ) then
          return FRAME_TYPE_MENU
        endif
      endif
      return 0
    endfunction
    
    function PKey___ChatCheck takes nothing returns nothing
      set PKey___ChatState[GetPlayerId(DzGetTriggerSyncPlayer()) + 1]=S2I(DzGetTriggerSyncData()) != 0
      
    endfunction
    function PKey_MenuClick takes integer i returns nothing
    call StopSound(gg_snd_BigButtonClick, false, false)
    call StartSound(gg_snd_BigButtonClick)
    if ( i == 1 ) then
      set PKey___OX_Option=not PKey___OX_Option
      call DzFrameShow(Option_Frame_SettingBackdrop[0], PKey___OX_Option)
    elseif ( i == 2 ) then
      call JNOpenBrowser("https://discord.gg/8FubNC8mZ")
    elseif ( i == 3 ) then
      call JNOpenBrowser("https://open.kakao.com/o/gM1u4zn")
    elseif ( i == 4 ) then
    elseif ( i == 5 ) then
      set PKey___OX_Inven=not PKey___OX_Inven
      call DzFrameShow(Frame_InvenButtonsBackDrop[0], PKey___OX_Inven)
    elseif ( i == 6 ) then
      set PKey___OX_Stats=not PKey___OX_Stats
      call DzFrameShow(Frame_Info[0], PKey___OX_Stats)
    elseif ( i == 7 ) then
      set PKey___OX_Skills1=not PKey___OX_Skills1
      call DzFrameShow(SkillTree_SkillTreeBackdrop[0], PKey___OX_Skills1)
    elseif ( i == 8 ) then
      set PKey___OX_Skills2=not PKey___OX_Skills2
    endif
    endfunction
    function PKey___AllKey takes nothing returns nothing
      local player p= DzGetTriggerKeyPlayer()
      local integer Clicked= DzGetTriggerKey()
      local integer P= GetPlayerId(p) + 1
      //단축키 x - m번째 메뉴 실행
      if ( Clicked == JN_OSKEY_RETURN ) then
      //call BJDebugMsg ("Now Chat Value: " + I2S(JNMemoryGetByte(JNGetModuleHandle("Game.dll")+0xD04FEC)))
        if ( GetLocalPlayer() == p ) then
          if ( ( JNMemoryGetByte(JNGetModuleHandle("Game.dll") + 0xD04FEC) == 1 ) != PKey___ChatState[P] ) then
            //call JNStopwatchStart(StopWatch)
            //call BJDebugMsg ("채팅변경 - " + I2S(JNMemoryGetByte(JNGetModuleHandle("Game.dll")+0xD04FEC)))
            call DzSyncData("NowChat", I2S(JNMemoryGetByte(JNGetModuleHandle("Game.dll") + 0xD04FEC)))
          endif
        endif
      elseif ( PKey___ChatState[P] ) then
        if ( GetLocalPlayer() == p ) then
          if ( ( JNMemoryGetByte(JNGetModuleHandle("Game.dll") + 0xD04FEC) == 1 ) != PKey___ChatState[P] ) then
            //call JNStopwatchStart(StopWatch)
            call BJDebugMsg("채팅창 이상하게 닫고 단축키 - " + I2S(JNMemoryGetByte(JNGetModuleHandle("Game.dll") + 0xD04FEC)) + "_" + PKey_I2H(Clicked))
            call DzSyncData("NowChat", I2S(JNMemoryGetByte(JNGetModuleHandle("Game.dll") + 0xD04FEC)))
          endif
        endif
      elseif ( F2IN(LoadInteger(hash, P, Clicked)) > 0 ) then
      //off일때 - 단축키 작동
        call BJDebugMsg(GetPlayerName(p) + " Click2: " + PKey_I2H(Clicked) + " = " + I2S(LoadInteger(hash, P, Clicked)) + "번째 메뉴= " + I2S(F2IN(LoadInteger(hash, P, Clicked))) + "번째 " + FI2S(F2IT(LoadInteger(hash, P, Clicked))))
        
        set Clicked=LoadInteger(hash, P, Clicked)
        if ( F2IT(Clicked) == FRAME_TYPE_MENU ) then
          call PKey_MenuClick(F2IN(Clicked))
        else
        endif
      //else
        //call BJDebugMsg (GetPlayerName(p) + " Click3: " + I2H(Clicked) + ", 메뉴 없음")
      endif
      set p=null
    endfunction
    function PKey___init takes nothing returns nothing
      local trigger trig= CreateTrigger()
      local integer i= 0
      set trig=CreateTrigger()
      
       //JNSetAbilityTooltip
      //0~9(48~57), 핫키 0~9(96~105)
      set i=$30
      loop
        call DzTriggerRegisterKeyEventByCode(trig, i, 0, false, function PKey___AllKey)
        call DzTriggerRegisterKeyEventByCode(trig, i + $30, 0, false, function PKey___AllKey)
        exitwhen i >= $39
        set i=i + 1
      endloop
      
      //a~z 65~90
      set i=$41
      loop
        call DzTriggerRegisterKeyEventByCode(trig, i, 0, false, function PKey___AllKey)
        exitwhen i >= $5A
        set i=i + 1
      endloop
      
      //f1~f8 112~119
      set i=$70
      loop
        call DzTriggerRegisterKeyEventByCode(trig, i, 0, false, function PKey___AllKey)
        exitwhen i >= $77
        set i=i + 1
      endloop
      
      //탭 캡 쉬 컨 알 스 9 20 16 17 18 32
      call DzTriggerRegisterKeyEventByCode(trig, JN_OSKEY_TAB, 0, false, function PKey___AllKey)
      call DzTriggerRegisterKeyEventByCode(trig, JN_OSKEY_CAPSLOCK, 0, false, function PKey___AllKey)
      call DzTriggerRegisterKeyEventByCode(trig, JN_OSKEY_SHIFT, 0, false, function PKey___AllKey)
      call DzTriggerRegisterKeyEventByCode(trig, JN_OSKEY_CONTROL, 0, false, function PKey___AllKey)
      call DzTriggerRegisterKeyEventByCode(trig, JN_OSKEY_ALT, 0, false, function PKey___AllKey)
      call DzTriggerRegisterKeyEventByCode(trig, JN_OSKEY_SPACE, 0, false, function PKey___AllKey)
      
      //키패드 /*-+. 111 106 109 107 110
      //엔터키인 $6C(108)키 제외
      set i=$6A
      loop
        if ( i != JN_OSKEY_SEPARATOR ) then
          call DzTriggerRegisterKeyEventByCode(trig, i, 0, false, function PKey___AllKey)
        endif
        exitwhen i >= $6F
        set i=i + 1
      endloop
      
      //` -=\(백스) []    192  189 187 220 8  219 221
      //;' ,./ (쉬프트)   186 222  188 190 191  16
       
      call DzTriggerRegisterKeyEventByCode(trig, JN_OSKEY_OEM_3, 0, false, function PKey___AllKey)
      call DzTriggerRegisterKeyEventByCode(trig, JN_OSKEY_OEM_MINUS, 0, false, function PKey___AllKey)
      call DzTriggerRegisterKeyEventByCode(trig, JN_OSKEY_OEM_PLUS, 0, false, function PKey___AllKey)
      call DzTriggerRegisterKeyEventByCode(trig, JN_OSKEY_OEM_5, 0, false, function PKey___AllKey)
      call DzTriggerRegisterKeyEventByCode(trig, JN_OSKEY_BACKSPACE, 0, false, function PKey___AllKey)
      call DzTriggerRegisterKeyEventByCode(trig, JN_OSKEY_OEM_4, 0, false, function PKey___AllKey)
      call DzTriggerRegisterKeyEventByCode(trig, JN_OSKEY_OEM_6, 0, false, function PKey___AllKey)
      call DzTriggerRegisterKeyEventByCode(trig, JN_OSKEY_OEM_1, 0, false, function PKey___AllKey)
      call DzTriggerRegisterKeyEventByCode(trig, JN_OSKEY_OEM_7, 0, false, function PKey___AllKey)
      call DzTriggerRegisterKeyEventByCode(trig, JN_OSKEY_OEM_COMMA, 0, false, function PKey___AllKey)
      call DzTriggerRegisterKeyEventByCode(trig, JN_OSKEY_OEM_PERIOD, 0, false, function PKey___AllKey)
      call DzTriggerRegisterKeyEventByCode(trig, JN_OSKEY_OEM_2, 0, false, function PKey___AllKey)
      call DzTriggerRegisterKeyEventByCode(trig, JN_OSKEY_RSHIFT, 0, false, function PKey___AllKey)
      call DzTriggerRegisterKeyEventByCode(trig, JN_OSKEY_RALT, 0, false, function PKey___AllKey)
      call DzTriggerRegisterKeyEventByCode(trig, JN_OSKEY_RCONTROL, 0, false, function PKey___AllKey)
      
      call DzTriggerRegisterKeyEventByCode(trig, JN_OSKEY_RETURN, 0, false, function PKey___AllKey)
      
      set trig=CreateTrigger()
      call DzTriggerRegisterSyncData(trig, "NowChat", false)
      call TriggerAddAction(trig, function PKey___ChatCheck)
      
      set trig=null
    endfunction
// scope PKey ends
// Trigger: StartSetting
//===========================================================================
// scope StartSetting begins
  
  function StartSetting___NoSaveNoTime takes nothing returns nothing
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
    
    //call JNGetFrameByName2("ConsoleUI",0)
    //call TriggerSleepAction(2.)
    //call DzFrameClearAllPoints(Frame_Main)
    //call DzFrameSetParent(Frame_Main, DzFrameGetParent(JNGetFrameByName2(testframe,0)))
    //call DzFrameSetAllPoints(Frame_Main, DzGetGameUI())
  endfunction
  function StartSetting___Exit takes nothing returns nothing
    call DialogDisplay(GetLocalPlayer(), StartSetting___NoSaveDialog, false)
    call DestroyTimer(GetExpiredTimer())
  endfunction
  function StartSetting___StopSave takes nothing returns nothing
    call DialogDisplay(GetLocalPlayer(), StartSetting___NoSaveDialog, true)
    call TimerStart(CreateTimer(), 0., false, function StartSetting___Exit)
  endfunction
  function StartSetting___StopLoad takes nothing returns nothing
    call BJDebugMsg(GetPlayerName(Player(7 - 8)))
  endfunction
  
  function StartSetting___RemoveFrame takes integer frameID returns nothing
    call DzFrameClearAllPoints(frameID)
    call DzFrameSetAbsolutePoint(frameID, JN_FRAMEPOINT_TOPRIGHT, 0, 0)
  endfunction
  function StartSetting_Get takes integer Frame returns integer
    call DzFrameClearAllPoints(Frame)
    return Frame
  endfunction
  

  function StartSetting___Init takes nothing returns nothing
   local integer i= 0
   local trigger trg
   
    
    call SetFloatGameState(GAME_STATE_TIME_OF_DAY, 12.)
    call SetTimeOfDayScale(0.)
    call FogEnable(false)
    call FogMaskEnable(false)
    
    
    call DzFrameHideInterface()
    
    
    call DzFrameEditBlackBorders(0, 0)
  
    
    call DzEnableWideScreen(true)
    
    
    call StartSetting___RemoveFrame(DzFrameGetUpperButtonBarButton(0))
    call StartSetting___RemoveFrame(DzFrameGetUpperButtonBarButton(1))
    call StartSetting___RemoveFrame(DzFrameGetUpperButtonBarButton(2))
    
    
    set i=StartSetting_Get(DzFrameGetUpperButtonBarButton(3))
    call DzFrameSetSize(i, .022, .024)
    call DzFrameSetAbsolutePoint(i, JN_FRAMEPOINT_BOTTOMLEFT, .2, - .004)
    
    
    call StartSetting___RemoveFrame(DzSimpleFrameFindByName("ResourceBarFrame", 0))
    
    
    
    set i=0
    loop
      call DzFrameSetAbsolutePoint(DzFrameGetHeroBarButton(i), JN_FRAMEPOINT_TOPRIGHT, 0, 0)
      call DzFrameSetAbsolutePoint(DzFrameGetHeroHPBar(i), JN_FRAMEPOINT_TOPRIGHT, 0, 0)
      call DzFrameSetAbsolutePoint(DzFrameGetHeroManaBar(i), JN_FRAMEPOINT_TOPRIGHT, 0, 0)
      
      
      if ( i <= 4 ) then
        call DzFrameSetAbsolutePoint(DzFrameGetMinimapButton(i), JN_FRAMEPOINT_TOPRIGHT, 0, 0)
        
        
        if ( i <= 3 ) then
          call DzFrameSetAbsolutePoint(DzFrameGetCommandBarButton(0, i), JN_FRAMEPOINT_TOPRIGHT, 0., 0.)
          call DzFrameSetAbsolutePoint(DzFrameGetCommandBarButton(1, i), JN_FRAMEPOINT_TOPRIGHT, 0., 0.)
          call DzFrameSetAbsolutePoint(DzFrameGetCommandBarButton(2, i), JN_FRAMEPOINT_TOPRIGHT, 0., 0.)
        endif
      endif
      
      exitwhen i >= 5
      set i=i + 1
    endloop
    
    
    set i=StartSetting_Get(DzFrameGetMinimap())
    call DzFrameSetAbsolutePoint(i, JN_FRAMEPOINT_BOTTOMLEFT, 0.7, 0.45)
    call DzFrameSetAbsolutePoint(i, JN_FRAMEPOINT_TOPRIGHT, 0.78, 0.55)
    call DzFrameShow(i, false)
    
    
    set i=StartSetting_Get(DzFrameGetChatMessage())
    call DzFrameSetAbsolutePoint(i, JN_FRAMEPOINT_BOTTOMLEFT, 0., 0.02)
    call DzFrameSetAbsolutePoint(i, JN_FRAMEPOINT_TOPRIGHT, 0.2, 0.15)
    
    
    call DzFrameSetAlpha(JNMemoryGetInteger(JNMemoryGetInteger(JNGetModuleHandle("Game.dll") + 0xCB1B9C) + 0x20), 0)
    
    
    set i=StartSetting_Get(JNMemoryGetInteger(JNGetModuleHandle("Game.dll") + 0xCB1B9C))
    call DzFrameSetAllPoints(i, JNMemoryGetInteger(JNMemoryGetInteger(JNGetModuleHandle("Game.dll") + 0xCB1B9C) + 0x20))
    call DzFrameSetAbsolutePoint(i, JN_FRAMEPOINT_BOTTOMLEFT, 0., 0.)
    call DzFrameSetAbsolutePoint(i, JN_FRAMEPOINT_TOPRIGHT, .2, .02)
    call DzFrameSetAlpha(i, 255)
    
    
    set i=StartSetting_Get(DzFrameGetUnitMessage())
    call DzFrameSetAbsolutePoint(i, JN_FRAMEPOINT_BOTTOMLEFT, 0., .135)
    call DzFrameSetAbsolutePoint(i, JN_FRAMEPOINT_TOPRIGHT, .3, .435)
    
    
    
    
    call StartSetting___RemoveFrame(DzSimpleFrameFindByName("SimpleInfoPanelUnitDetail", 0))
    
    
    call StartSetting___RemoveFrame(DzFrameGetParent(DzSimpleFrameFindByName("SimpleInfoPanelUnitDetail", 0)))
    
    call StartSetting___RemoveFrame(DzFrameGetPortrait())

    
    call DzLoadToc("ui\\command_ui.toc")
    
    
    //call DzFrameSetAbsolutePoint(BlzGetOriginFrame(ORIGIN_FRAME_PORTRAIT_HP_TEXT, 0), JN_FRAMEPOINT_TOPRIGHT, 0, 0) - DzSimpleFrameFindByName("ConsoleUI", 0)에 귀속됨.
    //call DzFrameSetAbsolutePoint(BlzGetOriginFrame(ORIGIN_FRAME_PORTRAIT_MANA_TEXT, 0), JN_FRAMEPOINT_TOPRIGHT, 0, 0)
    
    //set Relative = DzSimpleFrameFindByName("SimpleInfoPanelUnitDetail", 0)
    //call DzFrameClearAllPoints(Relative)
    //call DzFrameSetAbsolutePoint(Relative, JN_FRAMEPOINT_CENTER, 0.12, 0.55)
    
    //call DzFrameClearAllPoints(DzSimpleFontStringFindByName("InfoPanelIconValue", 0))
    //call DzFrameSetAbsolutePoint(DzSimpleFontStringFindByName("InfoPanelIconValue", 0), JN_FRAMEPOINT_LEFT, .33, .0775)
    
    //call DzFrameSetPoint(DzCreateFrame("SI_Template", Frame_Main, 0), JN_FRAMEPOINT_CENTER, Relative, JN_FRAMEPOINT_CENTER, -0.085, -0.025)
    //call DzFrameSetTexture(DzFrameFindByName("SI_Template", 0), "ReplaceableTextures\\CommandButtons\\BTNSteelMelee.blp", 0)
    
    //call JNMemorySetReal(JNMemoryGetInteger(DzFrameGetTooltip() + 0x28) + 0x10, 0.134)
  
    set trg=CreateTrigger()
    call TriggerRegisterTimerEvent(trg, 0., false)
    call TriggerAddAction(trg, function StartSetting___NoSaveNoTime)
  
    set trg=CreateTrigger()
    call TriggerRegisterGameEvent(trg, EVENT_GAME_SAVE)
    call TriggerAddAction(trg, function StartSetting___StopSave)
    
    set trg=CreateTrigger()
    call TriggerRegisterGameEvent(trg, EVENT_GAME_LOADED)
    call TriggerAddAction(trg, function StartSetting___StopLoad)
  
   set trg=null
  endfunction
  
// scope StartSetting ends
// Trigger: MainSubFrame
//===========================================================================
// scope MainFrame begins
  function MainFrame___Init takes nothing returns nothing
   local integer i= 0
    
    set Frame_Main=DzCreateFrameByTagName("SPRITE", "", DzGetGameUI(), "", 0)
    call DzFrameSetAbsolutePoint(Frame_Main, JN_FRAMEPOINT_TOPRIGHT, 0., 0.)
    set Frame_Sub=DzCreateFrameByTagName("SPRITE", "", DzGetGameUI(), "", 0)
    call DzFrameSetAbsolutePoint(Frame_Sub, JN_FRAMEPOINT_TOPRIGHT, 0., 0.)
    
    
    set i=DzCreateFrameByTagName("TEXT", "", Frame_Sub, "", 0)
    call DzFrameSetAbsolutePoint(i, JN_FRAMEPOINT_CENTER, .25, .07)
    call DzFrameSetText(i, GetPlayerName(GetLocalPlayer()))
    
    
    set i=StartSetting_Get(DzSimpleFrameFindByName("SimpleHeroLevelBar", 0))
    call DzFrameSetAbsolutePoint(i, JN_FRAMEPOINT_BOTTOMLEFT, .3, .001)
    call DzFrameSetAbsolutePoint(i, JN_FRAMEPOINT_TOPRIGHT, .62, .017)
    
    
    set i=StartSetting_Get(DzSimpleFontStringFindByName("SimpleNameValue", 0))
    call DzFrameSetAbsolutePoint(i, JN_FRAMEPOINT_CENTER, .25, .055)
    
    
    set i=StartSetting_Get(DzSimpleFontStringFindByName("SimpleClassValue", 0))
    call DzFrameSetAbsolutePoint(i, JN_FRAMEPOINT_CENTER, .25, .040)
    
    
    set i=StartSetting_Get(DzSimpleFrameFindByName("SimpleProgressIndicator", 0))
    call DzFrameSetAbsolutePoint(i, JN_FRAMEPOINT_CENTER, .25, .035)
    
    call DzFrameShow(Frame_Main, false)
  endfunction
// scope MainFrame ends
// Trigger: SkillTrees
//
// UI\Widgets\EscMenu\Human\radiobutton-background.blp
// 동그라미 골드버튼 하이라이트
//===========================================================================
// scope SkillTree begins

  constant function SkillTree___SkillData takes integer i1,integer i2 returns string
    if ( i1 == 1 ) then
      if ( i2 == 1 ) then
        return "세로베기"
      elseif ( i2 == 2 ) then
        return "가로베기"
      elseif ( i2 == 3 ) then
        return "공열섬"
      elseif ( i2 == 4 ) then
        return "찌르기"
      elseif ( i2 == 5 ) then
        return "월아천충"
      elseif ( i2 == 6 ) then
        return "천쇄참월"
      elseif ( i2 == 7 ) then
        return "월아십자충"
      elseif ( i2 == 8 ) then
        return "검은 월아천충"
      elseif ( i2 == 9 ) then
        return "무쌍의 일섬"
      elseif ( i2 == 10 ) then
        return "흑류아돌"
      elseif ( i2 == 11 ) then
        return "무월"
      endif
    endif
    return ""
  endfunction
  constant function SkillTree___SkillorInfo takes integer no,integer arr returns integer
    if ( no == 1 ) then
      return SkillTree_SkillTreeBackdrop[arr]
    elseif ( no == 2 ) then
      return SkillTree___SkillTree2Backdrop[arr]
    else
      return SkillTree_Info[arr]
    endif
  endfunction
  function SkillTree_MakeLineX takes integer i,real x,real y,real size,integer no returns nothing
    if ( no == 1 ) then
      set SkillTree_SkillTreeBackdrop[i]=DzCreateFrameByTagName("BACKDROP", "", SkillTree___SkillorInfo(no , 0), "", 0)
    elseif ( no == 2 ) then
      set SkillTree___SkillTree2Backdrop[i]=DzCreateFrameByTagName("BACKDROP", "", SkillTree___SkillorInfo(no , 0), "", 0)
    else
      set SkillTree_Info[i]=DzCreateFrameByTagName("BACKDROP", "", SkillTree___SkillorInfo(no , 0), "", 0)
    endif
    call DzFrameSetTexture(SkillTree___SkillorInfo(no , i), "ReplaceableTextures\\TeamColor\\TeamColor04.blp", 0)
    call DzFrameSetPoint(SkillTree___SkillorInfo(no , i), JN_FRAMEPOINT_LEFT, SkillTree___SkillorInfo(no , 0), JN_FRAMEPOINT_TOPLEFT, x, y)
    call DzFrameSetSize(SkillTree___SkillorInfo(no , i), size, 0.0005)
  endfunction
  function SkillTree_MakeLineY takes integer i,real x,real y,real size,integer no returns nothing
    if ( no == 1 ) then
      set SkillTree_SkillTreeBackdrop[i]=DzCreateFrameByTagName("BACKDROP", "", SkillTree___SkillorInfo(no , 0), "", 0)
    elseif ( no == 2 ) then
      set SkillTree___SkillTree2Backdrop[i]=DzCreateFrameByTagName("BACKDROP", "", SkillTree___SkillorInfo(no , 0), "", 0)
    else
      set SkillTree_Info[i]=DzCreateFrameByTagName("BACKDROP", "", SkillTree___SkillorInfo(no , 0), "", 0)
    endif
    call DzFrameSetTexture(SkillTree___SkillorInfo(no , i), "ReplaceableTextures\\TeamColor\\TeamColor04.blp", 0)
    call DzFrameSetPoint(SkillTree___SkillorInfo(no , i), JN_FRAMEPOINT_TOP, SkillTree___SkillorInfo(no , 0), JN_FRAMEPOINT_TOPLEFT, x, y)
    call DzFrameSetSize(SkillTree___SkillorInfo(no , i), 0.0005, size)
  endfunction
  function SkillTree___MakeText takes integer i,real x,real y,string contents,real size,boolean center returns nothing
    set SkillTree___SkillTreeText[i]=DzCreateFrameByTagName("TEXT", "", SkillTree___SkillTreeNow, "", 0)
    if ( center ) then
      call DzFrameSetPoint(SkillTree___SkillTreeText[i], JN_FRAMEPOINT_CENTER, SkillTree___SkillTreeNow, JN_FRAMEPOINT_TOPLEFT, x, y)
    else
      call DzFrameSetPoint(SkillTree___SkillTreeText[i], JN_FRAMEPOINT_LEFT, SkillTree___SkillTreeNow, JN_FRAMEPOINT_TOPLEFT, x, y)
    endif
    if ( size != 0. ) then
      call DzFrameSetFont(SkillTree___SkillTreeText[i], "Fonts\\DFHeiMd.ttf", size, 0)
    endif
    call DzFrameSetText(SkillTree___SkillTreeText[i], contents)
  endfunction
  function SkillTree___MakeLink takes integer i,real x,real y,real size,string contents returns nothing
    set SkillTree_SkillTreeBackdrop[i]=DzCreateFrameByTagName("BACKDROP", "", SkillTree___SkillTreeNow, "", 0)
    call DzFrameSetTexture(SkillTree_SkillTreeBackdrop[i], contents, 0)
    call DzFrameSetPoint(SkillTree_SkillTreeBackdrop[i], JN_FRAMEPOINT_BOTTOM, SkillTree___SkillTreeNow, JN_FRAMEPOINT_TOPLEFT, x, y - 0.005)
    call DzFrameSetSize(SkillTree_SkillTreeBackdrop[i], .005, size + 0.01)
  endfunction
  function SkillTree___MakeLinkX takes integer i,real x,real y,real size,string contents returns nothing
    set SkillTree_SkillTreeBackdrop[i]=DzCreateFrameByTagName("BACKDROP", "", SkillTree___SkillTreeNow, "", 0)
    call DzFrameSetTexture(SkillTree_SkillTreeBackdrop[i], contents, 0)
    call DzFrameSetPoint(SkillTree_SkillTreeBackdrop[i], JN_FRAMEPOINT_LEFT, SkillTree___SkillTreeNow, JN_FRAMEPOINT_TOPLEFT, x, y)
    call DzFrameSetSize(SkillTree_SkillTreeBackdrop[i], size + .02, 0.005)
  endfunction
  function SkillTree___ButtonClick takes nothing returns nothing
    //local integer f = DzGetTriggerUIEventFrame()
    call BJDebugMsg("Clicked Player: " + GetPlayerName(DzGetTriggerUIEventPlayer()))
    
  endfunction
  
  constant function SkillTree___f2I takes integer f returns integer
    if ( f == SkillTree___SkillTreeButton[1] ) then
      return 1
    elseif ( f == SkillTree___SkillTreeButton[2] ) then
      return 2
    elseif ( f == SkillTree___SkillTreeButton[3] ) then
      return 3
    elseif ( f == SkillTree___SkillTreeButton[4] ) then
      return 4
    elseif ( f == SkillTree___SkillTreeButton[5] ) then
      return 5
    elseif ( f == SkillTree___SkillTreeButton[6] ) then
      return 6
    elseif ( f == SkillTree___SkillTreeButton[7] ) then
      return 7
    elseif ( f == SkillTree___SkillTreeButton[8] ) then
      return 8
    elseif ( f == SkillTree___SkillTreeButton[9] ) then
      return 9
    elseif ( f == SkillTree___SkillTreeButton[10] ) then
      return 10
    elseif ( f == SkillTree___SkillTreeButton[11] ) then
      return 11
    else
      return 0
    endif
  endfunction



  constant function SkillTree___MaxRow2 takes integer i1,integer space returns real
    return .0272 + i1 * .0068 - space * 0.006
  endfunction
  function SkillTree___MaxRow takes real title,string s,integer i2 returns real
    local string temp_s
    local real return_x= 0.07
    loop
      exitwhen i2 <= 0
      set temp_s=JNStringSplit(s, " - ", i2)
      set return_x=RMaxBJ(return_x, SkillTree___MaxRow2(JNStringLength(temp_s) , JNStringCount(temp_s, " ")))
      set i2=i2 - 1
    endloop
    set temp_s=null
    return RMaxBJ(title, return_x)
  endfunction
  constant function SkillTree___MaxHeight takes integer count returns real
    return count * .01
  endfunction
  function SkillTree___ButtonJustUp takes nothing returns nothing
   local integer f= DzGetTriggerUIEventFrame()
   local string s= SkillTree___SkillData(1 , SkillTree___f2I(f))
   local integer need= JNStringCount(DzFrameGetText(SkillTree___SkillTreePopup[2]), " - ")
   call DzFrameSetAbsolutePoint(SkillTree___SkillTree2Popup[0], JN_FRAMEPOINT_BOTTOMLEFT, GetFrameMouseX(), GetFrameMouseY())
   call DzFrameShow(SkillTree___SkillTree2Popup[0], true)
   
    if ( GetLocalPlayer() == DzGetTriggerUIEventPlayer() ) then
      call DzFrameSetText(SkillTree___SkillTreePopup[1], "|cffffcc00" + s)
      call DzFrameSetAbsolutePoint(SkillTree___SkillTreePopup[0], JN_FRAMEPOINT_BOTTOMLEFT, GetFrameMouseX(), GetFrameMouseY())
      if ( need == 0 ) then
        call DzFrameSetSize(SkillTree___SkillTreePopup[0], RMaxBJ(.07, .015 + JNStringLength(s) * .012 - JNStringCount(s, " ") * .008), .06)
      else
        call DzFrameSetSize(SkillTree___SkillTreePopup[0], SkillTree___MaxRow(.015 + JNStringLength(s) * .012 - JNStringCount(s, " ") * .008 , DzFrameGetText(SkillTree___SkillTreePopup[2]) , need), .06 + SkillTree___MaxHeight(need))
        call DzFrameSetPoint(SkillTree___SkillTreePopup[3], JN_FRAMEPOINT_TOPLEFT, SkillTree___SkillTreePopup[0], JN_FRAMEPOINT_TOPLEFT, .01, - DzFrameGetHeight(SkillTree___SkillTreePopup[0]) + .015)
      endif
      call DzFrameShow(SkillTree___SkillTreePopup[0], true)
    endif
  endfunction
  function SkillTree___ButtonJustDown takes nothing returns nothing
    if ( GetLocalPlayer() == DzGetTriggerUIEventPlayer() ) then
      call DzFrameShow(SkillTree___SkillTreePopup[0], false)
      call DzFrameShow(SkillTree___SkillTree2Popup[0], false)
    endif
  endfunction
  function SkillTree___MakeIcon takes integer i,real x,real y,real size,integer addButton,string texture returns nothing
    set SkillTree_SkillTreeBackdrop[i]=DzCreateFrameByTagName("BACKDROP", "", SkillTree___SkillTreeNow, "", 0)
    call DzFrameSetPoint(SkillTree_SkillTreeBackdrop[i], JN_FRAMEPOINT_CENTER, SkillTree___SkillTreeNow, JN_FRAMEPOINT_TOPLEFT, x, y)
    call DzFrameSetTexture(SkillTree_SkillTreeBackdrop[i], texture, 0)
    call DzFrameSetSize(SkillTree_SkillTreeBackdrop[i], size, size)
    if ( addButton >= 23 ) then
      set SkillTree___SkillTreeButton[addButton]=DzCreateFrameByTagName("BUTTON", "", SkillTree_SkillTreeBackdrop[i], "", 0)
      call DzFrameSetAllPoints(SkillTree___SkillTreeButton[addButton], SkillTree_SkillTreeBackdrop[i])
      call DzFrameSetScriptByCode(SkillTree___SkillTreeButton[addButton], JN_FRAMEEVENT_MOUSE_UP, function SkillTree___ButtonClick, false)
      call DzFrameSetScriptByCode(SkillTree___SkillTreeButton[addButton], JN_FRAMEEVENT_MOUSE_ENTER, function SkillTree___ButtonJustUp, false)
      call DzFrameSetScriptByCode(SkillTree___SkillTreeButton[addButton], JN_FRAMEEVENT_MOUSE_LEAVE, function SkillTree___ButtonJustDown, false)
    elseif ( addButton > 0 ) then
      set SkillTree___SkillTreeButton[addButton]=DzCreateFrameByTagName("BUTTON", "", SkillTree_SkillTreeBackdrop[i], "", 0)
      call DzFrameSetAllPoints(SkillTree___SkillTreeButton[addButton], SkillTree_SkillTreeBackdrop[i])
      call DzFrameSetScriptByCode(SkillTree___SkillTreeButton[addButton], JN_FRAMEEVENT_MOUSE_UP, function SkillTree___ButtonClick, false)
      call DzFrameSetScriptByCode(SkillTree___SkillTreeButton[addButton], JN_FRAMEEVENT_MOUSE_ENTER, function SkillTree___ButtonJustUp, false)
      call DzFrameSetScriptByCode(SkillTree___SkillTreeButton[addButton], JN_FRAMEEVENT_MOUSE_LEAVE, function SkillTree___ButtonJustDown, false)
    endif
  endfunction

  function SkillTree___MakeTextPopup takes integer i,real x,real y,string contents,real size returns nothing
    set SkillTree___SkillTreePopup[i]=DzCreateFrameByTagName("TEXT", "", SkillTree___SkillTreePopup[0], "", 0)
    call DzFrameSetPoint(SkillTree___SkillTreePopup[i], JN_FRAMEPOINT_TOPLEFT, SkillTree___SkillTreePopup[0], JN_FRAMEPOINT_TOPLEFT, x, y)
    call DzFrameSetText(SkillTree___SkillTreePopup[i], contents)
    if ( size != 0. ) then
      call DzFrameSetFont(SkillTree___SkillTreePopup[i], "Fonts\\DFHeiMd.ttf", size, 0)
    endif
  endfunction
  function SkillTree___CreateSkillTreePopup takes nothing returns nothing
    if ( false ) then
      set SkillTree___SkillTreePopup[0]=DzCreateFrameByTagName("BACKDROP", "", SkillTree_SkillTreeBackdrop[1], "QuestButtonBaseTemplate", 0)
      call DzFrameSetAbsolutePoint(SkillTree___SkillTreePopup[0], JN_FRAMEPOINT_BOTTOMLEFT, 0.14, 0.55)
      call SkillTree___MakeTextPopup(1 , .01 , - .010 , "|cffffcc00세로베기|r" , 0.015)
      call SkillTree___MakeTextPopup(2 , .01 , - .025 , "Lv: 10|cff00ff00+2|r/10" , 0.010)
      call SkillTree___MakeTextPopup(3 , .01 , - .045 , "|c000080c0자세히.. (클릭)|r" , 0.010)
    else
      set SkillTree___SkillTreePopup[0]=DzCreateFrameByTagName("BACKDROP", "", SkillTree_SkillTreeBackdrop[1], "QuestButtonBaseTemplate", 0)
      call DzFrameSetAbsolutePoint(SkillTree___SkillTreePopup[0], JN_FRAMEPOINT_BOTTOMLEFT, 0.14, 0.55)
      call DzFrameSetSize(SkillTree___SkillTreePopup[0], .07, .06)
      call SkillTree___MakeTextPopup(1 , .01 , - .010 , "|cffffcc00세로베기|r" , 0.015)
      call SkillTree___MakeTextPopup(2 , .01 , - .025 , "|cffff3315필요 스킬:\n - 찌르기 Lv1\n - 월아천충 Lv1\n - 검은 월아천충 Lv1" , 0.010)
      call SkillTree___MakeTextPopup(3 , .01 , - .075 , "|c000080c0자세히.. (클릭)|r" , 0.010)
    endif
    call DzFrameShow(SkillTree___SkillTreePopup[0], false)
  endfunction
  function SkillTree___CreateSkillTree takes nothing returns nothing
    set SkillTree_SkillTreeBackdrop[0]=DzCreateFrameByTagName("BACKDROP", "", DzGetGameUI(), "QuestButtonBaseTemplate", 0)
    call DzFrameSetAbsolutePoint(SkillTree_SkillTreeBackdrop[0], JN_FRAMEPOINT_TOPLEFT, 0.14, 0.55)
    call DzFrameSetSize(SkillTree_SkillTreeBackdrop[0], .22, .45)
    call DzFrameSetAlpha(SkillTree_SkillTreeBackdrop[0], 128)
    set SkillTree___SkillTreeNow=SkillTree_SkillTreeBackdrop[0]
    call SkillTree_MakeLineY(2 , .06 , - .01 , .43 , 1)
    call SkillTree_MakeLineX(3 , .06 , - .04 , .15 , 1)
    call SkillTree_MakeLineX(4 , .01 , - .06 , .20 , 1)
    call SkillTree_MakeLineY(5 , .11 , - .04 , .02 , 1)
    call SkillTree_MakeLineY(6 , .16 , - .04 , .02 , 1)
    
    set SkillTree_SkillTreeBackdrop[1]=DzCreateFrameByTagName("BACKDROP", "", SkillTree___SkillTreeNow, "", 0)
    call DzFrameSetAllPoints(SkillTree_SkillTreeBackdrop[1], SkillTree___SkillTreeNow)
    call DzFrameSetTexture(SkillTree_SkillTreeBackdrop[1], "SkillTree_Transparency.blp", 0)
    call DzFrameSetAlpha(SkillTree_SkillTreeBackdrop[1], 204)
    set SkillTree___SkillTreeNow=SkillTree_SkillTreeBackdrop[1]

    call SkillTree___MakeText(1 , .035 , - .03 , "이치고" , .015 , true)
    call SkillTree___MakeText(2 , .135 , - .02 , "스킬트리" , .020 , true)
    call SkillTree___MakeText(3 , .085 , - .05 , "[기본]" , 0. , true)
    call SkillTree___MakeText(4 , .135 , - .05 , "[핵심]" , 0. , true)
    call SkillTree___MakeText(5 , .185 , - .05 , "[변신]" , 0. , true)
    
    call SkillTree___MakeText(6 , .035 , - .07 , "필요 변신" , .01 , true)
    call SkillTree___MakeText(7 , .085 , - .07 , "종베기" , .01 , true)
    call SkillTree___MakeText(8 , .135 , - .07 , "횡베기" , .01 , true)
    call SkillTree___MakeText(9 , .185 , - .07 , "찌르기" , .01 , true)
    
    call SkillTree___MakeText(10 , .035 , - .10 , "기본" , 0. , true)
    call SkillTree___MakeText(11 , .035 , - .14 , "1단계" , 0. , true)
    call SkillTree___MakeText(12 , .035 , - .18 , "2단계" , 0. , true)
    call SkillTree___MakeText(13 , .035 , - .22 , "3단계" , 0. , true)
    call SkillTree___MakeText(14 , .035 , - .26 , "4단계" , 0. , true)
    call SkillTree___MakeText(15 , .035 , - .30 , "5단계" , 0. , true)
    call SkillTree___MakeText(16 , .035 , - .34 , "6단계" , 0. , true)
    call SkillTree___MakeText(17 , .035 , - .38 , "7단계" , 0. , true)
    call SkillTree___MakeText(18 , .035 , - .42 , "8단계" , 0. , true)
    //call MakeText(19, .035, -.46, "9단계", 0., true)
    
    call SkillTree___MakeIcon(19 , .085 , - .10 , .03 , 1 , "SkillTree_ichi_01.blp")
    call SkillTree___MakeIcon(20 , .135 , - .10 , .03 , 2 , "SkillTree_ichi_02.blp")
    call SkillTree___MakeIcon(21 , .135 , - .14 , .03 , 3 , "SkillTree_ichi_03.blp")
    call SkillTree___MakeIcon(22 , .185 , - .14 , .03 , 4 , "SkillTree_ichi_04.blp")
    call SkillTree___MakeIcon(23 , .085 , - .18 , .03 , 5 , "SkillTree_ichi_05.blp")
    call SkillTree___MakeIcon(24 , .135 , - .22 , .03 , 6 , "SkillTree_ichi_06.blp")
    call SkillTree___MakeIcon(25 , .085 , - .26 , .03 , 7 , "SkillTree_ichi_07_DIS.blp")
    call SkillTree___MakeIcon(26 , .135 , - .34 , .03 , 8 , "SkillTree_ichi_08_DIS.blp")
    call SkillTree___MakeIcon(27 , .085 , - .38 , .03 , 9 , "SkillTree_ichi_09_DIS.blp")
    call SkillTree___MakeIcon(28 , .185 , - .38 , .03 , 10 , "SkillTree_ichi_10_DIS.blp")
    call SkillTree___MakeIcon(29 , .135 , - .42 , .03 , 11 , "SkillTree_ichi_11_DIS.blp")
    
    call SkillTree___MakeLink(30 , .135 , - .12 , 0. , "SkillTree_ActiveLink_Red.blp")
    call SkillTree___MakeLink(31 , .085 , - .16 , .04 , "SkillTree_ActiveLink_Red.blp")
    call SkillTree___MakeLink(32 , .135 , - .20 , .04 , "SkillTree_ActiveLink_Red.blp")
    call SkillTree___MakeLink(33 , .085 , - .24 , .04 , "UI\\Widgets\\Console\\Human\\human-inventory-slotfiller.blp")
    call SkillTree___MakeLink(34 , .135 , - .32 , .08 , "UI\\Widgets\\Console\\Human\\human-inventory-slotfiller.blp")
    call SkillTree___MakeLink(35 , .085 , - .36 , .08 , "UI\\Widgets\\Console\\Human\\human-inventory-slotfiller.blp")
    call SkillTree___MakeLink(36 , .185 , - .36 , .20 , "UI\\Widgets\\Console\\Human\\human-inventory-slotfiller.blp")
    call SkillTree___MakeLinkX(37 , .100 , - .38 , .05 , "UI\\Widgets\\Console\\Human\\human-inventory-slotfiller.blp")
    call SkillTree___MakeLink(38 , .135 , - .40 , .04 , "UI\\Widgets\\Console\\Human\\human-inventory-slotfiller.blp")
  endfunction
  function SkillTree___CreateSkillTree2 takes nothing returns nothing
    set SkillTree___SkillTree2Backdrop[0]=DzCreateFrameByTagName("BACKDROP", "", SkillTree_SkillTreeBackdrop[0], "QuestButtonBaseTemplate", 0)
    call DzFrameSetAbsolutePoint(SkillTree___SkillTree2Backdrop[0], JN_FRAMEPOINT_TOPLEFT, 0.45, 0.55)
    call DzFrameSetSize(SkillTree___SkillTree2Backdrop[0], .2, .31)
    call DzFrameSetAlpha(SkillTree___SkillTree2Backdrop[0], 128)
    
    set SkillTree___SkillTreeNow=SkillTree___SkillTree2Backdrop[0]
    call SkillTree_MakeLineY(39 , .06 , - .01 , .09 , 2)
    call SkillTree_MakeLineX(40 , .06 , - .035 , .13 , 2)
    call SkillTree_MakeLineX(41 , .06 , - .065 , .13 , 2)
    call SkillTree_MakeLineX(42 , .01 , - .10 , .18 , 2)
    
    set SkillTree___SkillTree2Backdrop[1]=DzCreateFrameByTagName("BACKDROP", "", SkillTree___SkillTreeNow, "", 0)
    call DzFrameSetAllPoints(SkillTree___SkillTree2Backdrop[1], SkillTree___SkillTreeNow)
    call DzFrameSetTexture(SkillTree___SkillTree2Backdrop[1], "SkillTree_Transparency.blp", 0)
    call DzFrameSetAlpha(SkillTree___SkillTree2Backdrop[1], 204)
    set SkillTree___SkillTreeNow=SkillTree___SkillTree2Backdrop[1]
    call SkillTree___MakeIcon(43 , .035 , - .035 , .05 , 0 , "SkillTree_ichi_01.blp")
    call SkillTree___MakeIcon(44 , .025 , - .070 , .02 , 21 , "SkillTree_PlusMinus02.blp")
    call SkillTree___MakeIcon(45 , .045 , - .070 , .02 , 22 , "SkillTree_PlusMinus01.blp")
    call SkillTree___MakeText(46 , .035 , - .088 , "Lv 12/10" , .010 , true)
    
    call SkillTree___MakeText(47 , .125 , - .020 , "세로베기" , .020 , true)
    
    call SkillTree___MakeText(48 , .065 , - .050 , "전방을 세로로 베어 처음으로\n맞는 적에게 데미지를 줍니다." , .010 , false)

    call SkillTree___MakeText(49 , .065 , - .075 , "데미지: 50 (40 + 공격력 10%)" , .010 , false)
    call SkillTree___MakeText(50 , .065 , - .090 , "다음레벨: 65 (50 + 공격력 15%)" , .010 , false)
    
    call SkillTree___MakeText(51 , .100 , - .110 , "|cff3ca03c강화" , .015 , true)
    call SkillTree___MakeIcon(52 , .100 , - .135 , .03 , 0 , "SkillTree_AddFire_0.blp")
    call SkillTree___MakeIcon(53 , .085 , - .150 , .015 , 23 , "SkillTree_PlusMinus04.blp")
    call SkillTree___MakeIcon(54 , .115 , - .150 , .015 , 24 , "SkillTree_PlusMinus01.blp")
    call SkillTree___MakeText(55 , .100 , - .155 , "|cff3ca03c0/5" , .008 , true)
    
    call SkillTree___MakeText(56 , .070 , - .180 , "|cffed393e진화Ａ" , .015 , true)
    call SkillTree___MakeIcon(57 , .070 , - .205 , .03 , 0 , "SkillTree_AddFire_2_1.blp")
    call SkillTree___MakeIcon(58 , .055 , - .220 , .015 , 23 , "SkillTree_PlusMinus02.blp")
    call SkillTree___MakeIcon(59 , .085 , - .220 , .015 , 24 , "SkillTree_PlusMinus01.blp")
    call SkillTree___MakeText(60 , .070 , - .225 , "|cffed393e2/3" , .008 , true)
    call SkillTree___MakeText(61 , .130 , - .180 , "|cff3681eb진화Ｂ" , .015 , true)
    call SkillTree___MakeIcon(62 , .130 , - .205 , .03 , 0 , "SkillTree_AddFire_2_2.blp")
    call SkillTree___MakeIcon(63 , .115 , - .220 , .015 , 23 , "SkillTree_PlusMinus02.blp")
    call SkillTree___MakeIcon(64 , .145 , - .220 , .015 , 24 , "SkillTree_PlusMinus03.blp")
    call SkillTree___MakeText(65 , .130 , - .225 , "|cff3681eb3/3" , .008 , true)
    
    call SkillTree___MakeText(66 , .070 , - .250 , "|cffeb8dd0개화Ａ" , .015 , true)
    call SkillTree___MakeIcon(67 , .070 , - .275 , .03 , 0 , "SkillTree_AddFire_3_1.blp")
    call SkillTree___MakeIcon(68 , .055 , - .290 , .015 , 23 , "SkillTree_PlusMinus04.blp")
    call SkillTree___MakeIcon(69 , .085 , - .290 , .015 , 24 , "SkillTree_PlusMinus01.blp")
    call SkillTree___MakeText(70 , .070 , - .295 , "|cffeb8dd00/1" , .008 , true)
    call SkillTree___MakeText(71 , .130 , - .250 , "|cfffeff79개화Ｂ" , .015 , true)
    call SkillTree___MakeIcon(72 , .130 , - .275 , .03 , 0 , "SkillTree_AddFire_3_2.blp")
    call SkillTree___MakeIcon(73 , .115 , - .290 , .015 , 23 , "SkillTree_PlusMinus02.blp")
    call SkillTree___MakeIcon(74 , .145 , - .290 , .015 , 24 , "SkillTree_PlusMinus03.blp")
    call SkillTree___MakeText(75 , .130 , - .295 , "|cfffeff791/1" , .008 , true)
  endfunction
  function SkillTree___MakeText2Popup takes integer i,real x,real y,string contents,real size returns nothing
    set SkillTree___SkillTree2Popup[i]=DzCreateFrameByTagName("TEXT", "", SkillTree___SkillTreeNow, "", 0)
    call DzFrameSetPoint(SkillTree___SkillTree2Popup[i], JN_FRAMEPOINT_TOPLEFT, SkillTree___SkillTree2Popup[0], JN_FRAMEPOINT_TOPLEFT, x, y)
    call DzFrameSetText(SkillTree___SkillTree2Popup[i], contents)
    if ( size != 0. ) then
      call DzFrameSetFont(SkillTree___SkillTree2Popup[i], "Fonts\\DFHeiMd.ttf", size, 0)
    endif
  endfunction
  function SkillTree___CreateSkillTree2Popup takes nothing returns nothing
    set SkillTree___SkillTree2Popup[0]=DzCreateFrameByTagName("BACKDROP", "", SkillTree___SkillTreeNow, "QuestButtonBaseTemplate", 0)
    set SkillTree___SkillTreeNow=SkillTree___SkillTree2Popup[0]
    if ( false ) then
      if ( false ) then
        call DzFrameSetAbsolutePoint(SkillTree___SkillTree2Popup[0], JN_FRAMEPOINT_BOTTOMLEFT, 0.14, 0.55)
        call DzFrameSetSize(SkillTree___SkillTree2Popup[0], .07, .055)
        call SkillTree___MakeText2Popup(1 , .01 , - .010 , "|cffffcc00추가개방" , 0.)
        call SkillTree___MakeText2Popup(3 , .01 , - .035 , "|c000080c0클릭하여 개방|r" , 0.010)
      else
        call DzFrameSetAbsolutePoint(SkillTree___SkillTree2Popup[0], JN_FRAMEPOINT_BOTTOMLEFT, 0.14, 0.55)
        call DzFrameSetSize(SkillTree___SkillTree2Popup[0], .095, .105)
        call SkillTree___MakeText2Popup(1 , .01 , - .010 , "|cffffcc00추가개방" , 0.015)
        call SkillTree___MakeText2Popup(2 , .01 , - .035 , "|cffff3315필요사항:\n - 스킬레벨 4 이상\n - 스킬포인트 1 이상\n - 최대 레벨 도달" , 0.010)
        call SkillTree___MakeText2Popup(3 , .01 , - .085 , "|c000080c0조건 후 클릭하여 개방|r" , 0.010)
      endif
    else
      if ( false ) then
        call DzFrameSetAbsolutePoint(SkillTree___SkillTree2Popup[0], JN_FRAMEPOINT_BOTTOMLEFT, 0.14, 0.55)
        call DzFrameSetSize(SkillTree___SkillTree2Popup[0], .085, .055)
        call SkillTree___MakeText2Popup(1 , .01 , - .010 , "|cffffcc00개방제한" , 0.)
        call SkillTree___MakeText2Popup(3 , .01 , - .035 , "|c000080c0클릭하여 개방제한|r" , 0.010)
      else
        call DzFrameSetAbsolutePoint(SkillTree___SkillTree2Popup[0], JN_FRAMEPOINT_BOTTOMLEFT, 0.14, 0.55)
        call DzFrameSetSize(SkillTree___SkillTree2Popup[0], .100, .105)
        call SkillTree___MakeText2Popup(1 , .01 , - .010 , "|cffffcc00개방제한" , 0.015)
        call SkillTree___MakeText2Popup(2 , .01 , - .035 , "|cffff3315필요사항:\n - 상위 스킬 우선 제한\n - 골드 1,000 이상\n - 최소 레벨 도달" , 0.010)
        call SkillTree___MakeText2Popup(3 , .01 , - .085 , "|c000080c0조건 후 클릭하여 제한|r" , 0.010)
      endif
    endif
    
    call DzFrameShow(SkillTree___SkillTree2Popup[0], false)
  endfunction
  
  function SkillTree___Init takes nothing returns nothing
    call SkillTree___CreateSkillTree()
    call DzFrameShow(SkillTree_SkillTreeBackdrop[0], false)
    call SkillTree___CreateSkillTreePopup()
    call SkillTree___CreateSkillTree2()
    call DzFrameShow(SkillTree___SkillTree2Backdrop[0], false)
    call SkillTree___CreateSkillTree2Popup()
  endfunction
// scope SkillTree ends
// Trigger: Select
//
// CreateSelectIcon 5+i*2
// Frame_SelectBack
// MakeSelectText 16~18 +i *3
// Frame_SelectText
//===========================================================================
// scope Select begins

  constant function Select___F2In takes integer frame returns integer
  //아이템/스킬/메뉴의 n번째 값인지 반환
    if ( frame == Frame_Buttons[1] or frame == Frame_Buttons[8] or frame == Frame_Buttons[16] or frame == Select___Frame_SelectSkills[1] or frame == Frame_SelectBack[8] ) then
      return 1
    elseif ( frame == Frame_Buttons[2] or frame == Frame_Buttons[9] or frame == Frame_Buttons[17] or frame == Select___Frame_SelectSkills[3] or frame == Frame_SelectBack[10] ) then
      return 2
    elseif ( frame == Frame_Buttons[3] or frame == Frame_Buttons[10] or frame == Frame_Buttons[18] or frame == Select___Frame_SelectSkills[5] or frame == Frame_SelectBack[12] ) then
      return 3
    elseif ( frame == Frame_Buttons[4] or frame == Frame_Buttons[11] or frame == Frame_Buttons[19] or frame == Select___Frame_SelectSkills[7] or frame == Frame_SelectBack[14] ) then
      return 4
    elseif ( frame == Frame_Buttons[5] or frame == Frame_Buttons[12] or frame == Frame_Buttons[20] or frame == Frame_SelectBack[16] ) then
      return 5
    elseif ( frame == Frame_Buttons[6] or frame == Frame_Buttons[13] or frame == Frame_Buttons[21] or frame == Frame_SelectBack[18] ) then
      return 6
    elseif ( frame == Frame_Buttons[7] or frame == Frame_Buttons[14] or frame == Frame_Buttons[22] ) then
      return 7
    elseif ( frame == Frame_Buttons[15] or frame == Frame_Buttons[23] ) then
      return 8
    endif
   return 0
  endfunction
  constant function Select___F2It takes integer frame returns integer
  //아이템/스킬/메뉴인지 반환(1=FRAME_TYPE_ITEM/2=FRAME_TYPE_SKILL/3=FRAME_TYPE_MENU)
    if ( frame == Frame_Buttons[1] or frame == Frame_Buttons[2] or frame == Frame_Buttons[3] or frame == Frame_Buttons[4] or frame == Frame_Buttons[5] or frame == Frame_Buttons[6] or frame == Frame_Buttons[7] ) then
      return FRAME_TYPE_ITEM
    elseif ( frame == Frame_Buttons[8] or frame == Frame_Buttons[9] or frame == Frame_Buttons[10] or frame == Frame_Buttons[11] or frame == Frame_Buttons[12] or frame == Frame_Buttons[13] or frame == Frame_Buttons[14] or frame == Frame_Buttons[15] ) then
      return FRAME_TYPE_SKILL
    elseif ( frame == Frame_Buttons[16] or frame == Frame_Buttons[17] or frame == Frame_Buttons[18] or frame == Frame_Buttons[19] or frame == Frame_Buttons[20] or frame == Frame_Buttons[21] or frame == Frame_Buttons[22] or frame == Frame_Buttons[23] ) then
      return FRAME_TYPE_MENU
    elseif ( frame == Select___Frame_SelectSkills[1] or frame == Select___Frame_SelectSkills[3] or frame == Select___Frame_SelectSkills[5] or frame == Select___Frame_SelectSkills[7] ) then
      return FRAME_TYPE_PRESKILL
    elseif ( frame == Frame_SelectBack[8] or frame == Frame_SelectBack[10] or frame == Frame_SelectBack[12] or frame == Frame_SelectBack[14] or frame == Frame_SelectBack[16] or frame == Frame_SelectBack[18] ) then
      return FRAME_TYPE_CHARACTER
    endif
   return 0
  endfunction

  constant function Select_I2U takes integer i returns integer
    if ( i == 1 ) then
      return 'H000'
    elseif ( i == 2 ) then
      return 'H001'
    elseif ( i == 3 ) then
      return 'H002'
    elseif ( i == 4 ) then
      return 'H003'
    elseif ( i == 5 ) then
      return 'H005'
    elseif ( i == 6 ) then
      return 'H004'
    else
      return 0
    endif
  endfunction
  // 유닛 선택 해제 시 갱신 함수
  function Select___Deselected takes nothing returns nothing
    if GetLocalPlayer() == GetTriggerPlayer() then
      call DzFrameShow(Frame_Sub, false)
    endif
    set Select___SelectedUnit[GetPlayerId(GetTriggerPlayer()) + 1]=null
  endfunction
  function Select_Data_Select takes integer i returns string
    if ( i == 1 ) then
      return "쿠로사키 이치고'Ichigo Kurosaki'주인공. 유령을 보는 고교생.'카라쿠라 마을의 사신대행.'4'2'2'3'2'|cffff8000근접 물리 |cffd5d500[힘]'참백도(참월)'SkillTree_ichi_00.blp'SkillTree_ichi_05.blp'SkillTree_ichi_06.blp'SkillTree_ichi_11.blp'특성 스킬'검압 - 스킬 추가데미지'블루트베네 - 피격데미지 감소'월아천충'참격의 순간에 자신의 영압을 방출해 참격을 거대화.'강화시 데미지&범위 증가'천쇄참월'호로의 힘으로 월아천충을 쏘아낸다.'강화시 대상 출혈'무월'잠재능력을 모두 해방시켜 참격을 발사합니다.'강화시 출혈효과 폭발 추가데미지"
    elseif ( i == 2 ) then
      return "쿠치키 루키아'Rukia Kuchiki'더블 주인공이자 여주인공.'학교 성적은 국어 빼고 최하위.'3'3'3'5'4'|cff0080c0근접 마법 |cffd5d500[기술]'귀도, 참백도(수백설)'SkillTree_rukia_00.blp'SkillTree_rukia_02.blp'SkillTree_rukia_03.blp'SkillTree_rukia_04.blp'특성 스킬'영하 18도 - 주변 적을 베고 빙결'변신류 - 적 공속 감소, 아군 공속 증가'시작의 춤, 월백'주변을 속박시키고 표식을 생성합니다.'표식을 생성하고, 다른 스킬로 추가효과 가능'다음의 춤, 백련'춤을 추고, 주변 방해효과 폭발시켜 데미지를 가함.'강화시 표식을 폭발시켜 추가데미지'세번째 춤, 백도'상대를 관통시켜 얼립니다.'일직선상으로 냉기를 뿜어내, 적에게 데미지를 가함.'강화시 오한에 걸린 적 관통"
    elseif ( i == 3 ) then
      return "이시다 우류'Uryu Ishida'이치고와 같은 학교, 전교 석차 1위.'호로를 멸하는 퀸시의 후예.'5'0'1'2'3'|cffff8000원거리 물리 |cffd5d500[속도]'영자병장(은령호작)'SkillTree_Uryu_01.blp'SkillTree_Uryu_02.blp'SkillTree_Uryu_06.blp'SkillTree_Uryu_13.blp'특성스킬'은통 - 저장된 은통으로 마나회복 혹은 스킬사용 함.'산령수투 - 공격시 영압 소모해 추가데미지'하일리히 프파일'퀸시의 영자병장, 빛의 화살로 데미지를 가함.'강화시 추가데미지'리히트레겐'넓은 범위에 화살을 쏘아서 광역 공격을 함.'강화시 광역 대상 추가데미지'슈프렝거'퀸시 크로스 진에 농축 영자를 폭발시켜 속박&데미지.'강화시 속박대신 스턴"
    elseif ( i == 4 ) then
      return "이노우에 오리히메'Orihime Inoue'히로인, 기계치이자 돌머리.'머리핀(순순육화)을 항상 착용하고 다님.'2'5'5'2'5'|cff0080c0원거리 마법 |cffd5d500[마음]'머리핀(순순육화)'SkillTree_Inooue_21.blp'SkillTree_Inooue_01.blp'SkillTree_Inooue_12.blp'SkillTree_Inooue_13.blp'특성스킬'사상의거절 - 주변 쿨다운 감소 10%'더블캐스팅 - 스킬이 콤보로 변경되어, 추가효과 적용.'츠바키(고천참순)'츠바키를 날려 최대체력에 비례한 데미지를 가함.'강화시 출혈 및 최대체력 추가데미지'쌍천귀순'슌오우(벚꽃)+아야메(붓꽃), 퀵슬롯 등록해 사용.'매 초마다 주변의 잃은 체력을 회복합니다.'삼천결순'히나기쿠+바이곤+리리, 퀵슬롯에 등록해 사용.'삼각형 방패로 외부 공격 거절, 의지에 따라 방어력 상승."
    elseif ( i == 5 ) then
      return "아바라이 렌지'Renji Abarai'호정 13대의 6번대 부대장.'루키아와 소꿉친구이며 이치고와 대립.'4'2'1'4'4'|cffff8000근접 물리 |cffd5d500[기술]'참백도(사미환)'SkillTree_Renji_01.blp'SkillTree_Renji_03.blp'SkillTree_Renji_05.blp'SkillTree_Renji_07.blp'특성스킬'슌센벤, 박치기 등 추가스킬'변신류 - 이동속도와 데미지 증가'사미환'전방을 향해 검을 휘두르고, 조각을 남깁니다.'강화시 출혈효과 및 범위 증가'비아절교'주변 조각을 쏘아붙여 공격합니다. 조각당 데미지 증가'강화시 마비(누적시 스턴) 추가'비골대포'영압덩어리를 발사해 상대를 밀어냅니다.'강화시 화상적용, 상위스킬 시아철포"
    elseif ( i == 6 ) then
      return "사도 야스토라'Yasutora Sado'별명 차드, 멕시코 혼혈, 전교 11등.'우수한 성적과 상냥한 마음씨를 가짐.'3'4'4'3'2'|cffff8000근접 물리 |cffd5d500[힘]'오른팔과 왼팔'SkillTree_Sado_00.blp'SkillTree_Sado_01.blp'SkillTree_Sado_03.blp'SkillTree_Sado_02.blp'특성 스킬'대쉬 - 브링거 라이트'변신류 - 적 방어 감소, 본인 방어 증가'엘디렉토'전방에 주먹으로 영압을 발사해 데미지를 가함.'강화시 범위 증가 및 쿨다운 감소'슬래머'지면을 강타해 지진으로 적들을 둔화시킴.'강화시 범위 증가 및 넉백 적용'방어'방어 자세를 취해, 일정시간 피해를 감소시킵니다.'강화시 자동시전"
    endif
    return ""
  endfunction
  constant function Select___U2I takes unit u returns integer
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
  function Select___SetStars takes integer startnum,integer val,string texture returns nothing
   local integer i= 0
    loop
      if ( val > i ) then
        call DzFrameSetTexture(Select___Frame_SelectStars[startnum + i], texture, 0)
      else
        call DzFrameSetTexture(Select___Frame_SelectStars[startnum + i], "Select_stars0.tga", 0)
      endif
      exitwhen i >= 4
      set i=i + 1
    endloop
  endfunction
  function Select___ViewInfo takes string s,boolean Continue returns nothing
    //이름 영어 설명x2
    call DzFrameSetText(Frame_SelectText[2], JNStringSplit(s, "'", 0))
    call DzFrameSetText(Frame_SelectText[3], JNStringSplit(s, "'", 1))
    call DzFrameSetText(Frame_SelectText[4], JNStringSplit(s, "'", 2))
    call DzFrameSetText(Frame_SelectText[5], JNStringSplit(s, "'", 3))
    //별표
    call Select___SetStars(1 , S2I(JNStringSplit(s, "'", 4)) , "Select_stars1.tga")
    call Select___SetStars(6 , S2I(JNStringSplit(s, "'", 5)) , "Select_stars1.tga")
    call Select___SetStars(11 , S2I(JNStringSplit(s, "'", 6)) , "Select_stars1.tga")
    call Select___SetStars(16 , S2I(JNStringSplit(s, "'", 7)) , "Select_stars1.tga")
    call Select___SetStars(21 , S2I(JNStringSplit(s, "'", 8)) , "Select_stars2.tga")
        
    //피해, 무기, 스킬아이콘
    if ( SubString(JNStringSplit(s, "'", 9), 0, 10) == "|cffff8000" ) then
      call DzFrameSetTexture(Frame_SelectBack[3], "Select_BackRed.blp", 0)
      call DzFrameSetTexture(Frame_SelectBack[4], "Select_BackRedRed.blp", 0)
      if ( Continue ) then
        call DzFrameSetTexture(Frame_SelectBack[6], "Select_ContinueRed.blp", 0)
      else
        call DzFrameSetTexture(Frame_SelectBack[6], "Select_StartRed.blp", 0)
      endif
    else
      call DzFrameSetTexture(Frame_SelectBack[3], "Select_BackBlue.blp", 0)
      call DzFrameSetTexture(Frame_SelectBack[4], "Select_BackBlueBlue.blp", 0)
      if ( Continue ) then
        call DzFrameSetTexture(Frame_SelectBack[6], "Select_ContinueBlue.blp", 0)
      else
        call DzFrameSetTexture(Frame_SelectBack[6], "Select_StartBlue.blp", 0)
      endif
    endif
    call DzFrameSetText(Frame_SelectText[12], JNStringSplit(s, "'", 9))
    call DzFrameSetText(Frame_SelectText[14], JNStringSplit(s, "'", 10))

    call DzFrameSetTexture(Select___Frame_SelectSkills[2], JNStringSplit(s, "'", 11), 0)
    call DzFrameSetTexture(Select___Frame_SelectSkills[4], JNStringSplit(s, "'", 12), 0)
    call DzFrameSetTexture(Select___Frame_SelectSkills[6], JNStringSplit(s, "'", 13), 0)
    call DzFrameSetTexture(Select___Frame_SelectSkills[8], JNStringSplit(s, "'", 14), 0)
        
    call DzFrameShow(Frame_SelectBack[1], true)
    call DzFrameShow(Frame_SelectText[16], false)
  endfunction
  // 유닛 선택수 초기화 함수
  function Select___Selected_Inter takes nothing returns nothing
    local timer t= GetExpiredTimer()
    local integer tid= GetHandleId(t)
    local integer pid= LoadInteger(hash, tid, StringHash("pid"))
    set Select___SelectBol[pid]=false
    set Select___SelectCount[pid]=0
    call FlushChildHashtable(hash, tid)
    call DestroyTimer(t)
    set t=null
  endfunction
  // 유닛 선택 시 갱신 함수
  function Select___Selected takes nothing returns nothing
    local player p= GetTriggerPlayer()
    local integer pid= GetPlayerId(p) + 1
    local unit u= GetTriggerUnit()
    local timer t
    if ( Select___PreLoad[pid] ) then
      if ( Select___U2I(u) > 0 ) then
        set Select_NowSelect[pid]=Select___U2I(u)
        if ( GetLocalPlayer() == p ) then
        
          call Select___ViewInfo(Select_Data_Select(Select___U2I(u)) , ( S2I(JNStringSplit(JNStringSplit(LoadStr(hash, pid, StringHash("Data")), "/", Select___U2I(u)), "'", 1)) > 0 ))
          call ClearSelection()
        endif
      endif
    else
      set Select___SelectCount[pid]=Select___SelectCount[pid] + 1
      if ( Select___SelectCount[pid] > 1 ) then
        if ( GetLocalPlayer() == p ) then
          call DzFrameShow(Frame_Sub, false)
        endif
      elseif ( Select___SelectedUnit[pid] != null and Select___SelectedUnit[pid] != u ) then
        if ( GetLocalPlayer() == p ) then
          call DzFrameShow(Frame_Sub, false)
        endif
      else
        if GetLocalPlayer() == GetTriggerPlayer() then
          call DzFrameShow(Frame_Sub, true)
        endif
      endif
      if not Select___SelectBol[pid] then
        set Select___SelectBol[pid]=true
        set t=CreateTimer()
        call SaveInteger(hash, GetHandleId(t), StringHash("pid"), pid)
        call TimerStart(t, 0, false, function Select___Selected_Inter)
      endif
      set Select___SelectedUnit[pid]=u
    endif
   set u=null
   set t=null
  endfunction
  function Select_ButtonClick takes nothing returns nothing
    local integer f= DzGetTriggerUIEventFrame()
    //debug call BJDebugMsg("Clicked : " + I2S(F2In(f)) + "번째 " + FI2S(F2It(f)))
    if ( Select___F2It(f) == FRAME_TYPE_CHARACTER ) then
      set Select_NowSelect[GetPlayerId(DzGetTriggerUIEventPlayer()) + 1]=Select___F2In(f)
    endif
    if ( GetLocalPlayer() == DzGetTriggerUIEventPlayer() ) then
      if ( Select___F2It(f) == FRAME_TYPE_MENU ) then
        call PKey_MenuClick(Select___F2In(f))
      else
        call StopSound(gg_snd_MouseClick1, false, false)
        call StartSound(gg_snd_MouseClick1)
      endif
      
      if ( Select___F2It(f) == FRAME_TYPE_CHARACTER ) then
        call Select___ViewInfo(Select_Data_Select(Select___F2In(f)) , ( S2I(JNStringSplit(JNStringSplit(LoadStr(hash, GetPlayerId(DzGetTriggerUIEventPlayer()) + 1, StringHash("Data")), "/", Select___F2In(f)), "'", 1)) > 0 ))
      endif
    endif
  endfunction
    
  function Select___ButtonJustUp takes nothing returns nothing
    local integer f= DzGetTriggerUIEventFrame()
    if ( GetLocalPlayer() == DzGetTriggerUIEventPlayer() ) then
      //call BJDebugMsg("Mouse Up: " + I2S(F2In(f)) + "번째 " + FI2S(F2It(f)) +"="+JNStringSplit(Data_Select(NowSelect[GetPlayerId(DzGetTriggerUIEventPlayer())+1]),"'",12+3*F2In(f)))
      set f=12 + 3 * Select___F2In(f)
      call DzFrameSetText(Frame_SelectText[16], "|cffd5d500" + JNStringSplit(Select_Data_Select(Select_NowSelect[GetPlayerId(DzGetTriggerUIEventPlayer()) + 1]), "'", f))
      call DzFrameSetText(Frame_SelectText[17], JNStringSplit(Select_Data_Select(Select_NowSelect[GetPlayerId(DzGetTriggerUIEventPlayer()) + 1]), "'", f + 1))
      call DzFrameSetText(Frame_SelectText[18], JNStringSplit(Select_Data_Select(Select_NowSelect[GetPlayerId(DzGetTriggerUIEventPlayer()) + 1]), "'", f + 2))
      
      call DzFrameShow(Frame_SelectText[16], true)
    endif
  endfunction
  function Select___ButtonJustDown takes nothing returns nothing
    local integer f= DzGetTriggerUIEventFrame()
    if ( GetLocalPlayer() == DzGetTriggerUIEventPlayer() ) then
      call DzFrameShow(Frame_SelectText[16], false)
    endif
  endfunction
  function Msg takes player p,string msg returns nothing
    call DisplayTimedTextToPlayer(p, 0, 0, 6., msg)
  endfunction
  
  function Select___DataSync2 takes nothing returns nothing
    //To CreateUnit
    set GetServerPlayer=DzGetTriggerSyncPlayer()
    set Select_NowSelect[GetPlayerId(DzGetTriggerSyncPlayer()) + 1]=S2I(DzGetTriggerSyncData())
    call TriggerExecute(gg_trg_Load_End)
  endfunction
  
  function Select___ButtonStart takes nothing returns nothing
    local integer f= GetPlayerId(DzGetTriggerUIEventPlayer()) + 1
    set Select___PreLoad[f]=false
    if ( Select_I2U(Select_NowSelect[f]) == 0 ) then
      set Select___PreLoad[f]=true
      call Msg(DzGetTriggerUIEventPlayer() , "올바른 캐릭터를 선택 후, 시작하기를 눌러주세요")
    else
      if ( GetLocalPlayer() == DzGetTriggerUIEventPlayer() ) then
        call DzSyncData("Select", I2S(Select_NowSelect[f]))
        call DzFrameShow(Frame_SelectBack[0], false)
        call DzFrameShow(Frame_SelectBack[1], false)
        call DzFrameShow(Frame_Info[0], false)
        call ResetToGameCamera(0.)
        call SetCameraBoundsToRect(bj_mapInitialPlayableArea)
        call PanCameraTo(Select_startXX, Select_startYY)
        call EnablePreSelect(true, true)
        call DzFrameShow(DzFrameGetMinimap(), true)
      endif
    endif
  endfunction
  function Select___CameraBounds takes real x,real y returns nothing
    call SetCameraBounds(x, y, x, y, x, y, x, y)
  endfunction
  function Select___MakeSelect takes integer no,integer point,real x,real y,real xx,real yy,string texture returns integer
    set Frame_SelectBack[no]=DzCreateFrameByTagName("BACKDROP", "", Frame_SelectBack[1], "", no)
    call DzFrameSetAbsolutePoint(Frame_SelectBack[no], point, x, y)
    call DzFrameSetSize(Frame_SelectBack[no], xx, yy)
    call DzFrameSetTexture(Frame_SelectBack[no], texture, 0)
    return no + 1
  endfunction
  function Select___MakeStars takes integer no,integer parent,integer point,integer point2,real x,real y,real size,string texture returns integer
    set Select___Frame_SelectStars[no]=DzCreateFrameByTagName("BACKDROP", "", parent, "", no)
    call DzFrameSetPoint(Select___Frame_SelectStars[no], point, parent, point2, x, y)
    call DzFrameSetSize(Select___Frame_SelectStars[no], size, size)
    call DzFrameSetTexture(Select___Frame_SelectStars[no], texture, 0)
    return no + 1
  endfunction
  function Select___MakeSelectText takes integer no,integer parent,integer point,integer point2,real x,real y,real size,string text returns integer
    set Frame_SelectText[no]=DzCreateFrameByTagName("TEXT", "", parent, "", no)
    if ( size != 0. ) then
      call DzFrameSetFont(Frame_SelectText[no], "Fonts\\DFHeiMd.ttf", size, 0)
    endif
    call DzFrameSetPoint(Frame_SelectText[no], point, parent, point2, x, y)
    call DzFrameSetText(Frame_SelectText[no], text)
    return no + 1
  endfunction
    

  function Select___CreateSelectIcon takes integer types,real x,real y,real w,real h,string IconTexture returns nothing
      set Frame_SelectBack[types]=DzCreateFrameByTagName("BACKDROP", "", Frame_SelectBack[0], "", 0)
      call DzFrameSetAbsolutePoint(Frame_SelectBack[types], JN_FRAMEPOINT_CENTER, x, y)
      call DzFrameSetSize(Frame_SelectBack[types], w, h)
      call DzFrameSetTexture(Frame_SelectBack[types], IconTexture, 0)
  endfunction
  function Select___CreateSelectButton takes integer types returns nothing
    set Frame_SelectBack[types]=DzCreateFrameByTagName("BUTTON", "", Frame_SelectBack[types - 1], "ScoreScreenTabButtonTemplate", 0)
    call DzFrameSetAllPoints(Frame_SelectBack[types], Frame_SelectBack[types - 1])
    call DzFrameSetScriptByCode(Frame_SelectBack[types], JN_FRAMEEVENT_MOUSE_UP, function Select_ButtonClick, false)
  endfunction
  
  function Select___CreateSelectIcon2 takes integer types,integer parent,integer point,integer point2,real x,real y,real size,string IconTexture returns integer
    set Select___Frame_SelectSkills[types]=DzCreateFrameByTagName("BUTTON", "", Frame_SelectBack[1], "ScoreScreenTabButtonTemplate", 0)
    call DzFrameSetScriptByCode(Select___Frame_SelectSkills[types], JN_FRAMEEVENT_MOUSE_ENTER, function Select___ButtonJustUp, false)
    call DzFrameSetScriptByCode(Select___Frame_SelectSkills[types], JN_FRAMEEVENT_MOUSE_LEAVE, function Select___ButtonJustDown, false)
    call DzFrameSetPoint(Select___Frame_SelectSkills[types], point, parent, point2, x, y)
    call DzFrameSetSize(Select___Frame_SelectSkills[types], size, size)
      
    set types=types + 1
    //배경
    set Select___Frame_SelectSkills[types]=DzCreateFrameByTagName("BACKDROP", "", Select___Frame_SelectSkills[types - 1], "", 0)
    call DzFrameSetAllPoints(Select___Frame_SelectSkills[types], Select___Frame_SelectSkills[types - 1])
    call DzFrameSetTexture(Select___Frame_SelectSkills[types], IconTexture, 0)
    return types + 1
  endfunction
  function Select___CreateSelect takes nothing returns nothing
   local integer Text= 1
     
    call SetCameraField(CAMERA_FIELD_ROTATION, 90., 0.)
    call SetCameraField(CAMERA_FIELD_ANGLE_OF_ATTACK, 325., 0.)
    call SetCameraField(CAMERA_FIELD_TARGET_DISTANCE, 1024, 0.)
    call SetCameraField(CAMERA_FIELD_FIELD_OF_VIEW, 70., 0.)
    call SetCameraField(CAMERA_FIELD_FARZ, 5000., 0.)
    call Select___CameraBounds(- 9664. , 5440.)
       
    //체력바
    call EnablePreSelect(false, false)
    set Frame_SelectBack[0]=DzCreateFrameByTagName("TEXT", "", DzGetGameUI(), "", 0)
    call DzFrameSetFont(Frame_SelectBack[0], "Fonts\\MoonEpi2.ttf", .030, 1)
    call DzFrameSetAbsolutePoint(Frame_SelectBack[0], JN_FRAMEPOINT_CENTER, .4, .55)
    if ( GetRandomReal(0., 99.) <= 33. ) then
      call DzFrameSetText(Frame_SelectBack[0], "|cffFF7CBFThe Only My Own RPG")
    elseif ( GetRandomReal(0., 66.) <= 33. ) then
      call DzFrameSetText(Frame_SelectBack[0], "|cff28FF0DThe Only My Own RPG")
    else
      call DzFrameSetText(Frame_SelectBack[0], "|cff0085FFThe Only My Own RPG")
    endif
    set Text=Select___MakeSelectText(1 , Frame_SelectBack[0] , JN_FRAMEPOINT_TOPRIGHT , JN_FRAMEPOINT_BOTTOMRIGHT , 0. , 0. , 0. , "나만의 알피지")
    call DzFrameSetFont(Frame_SelectText[1], "Fonts\\MoonEpi2.ttf", .0136, 0)
    
    set Frame_SelectBack[1]=DzCreateFrameByTagName("TEXT", "", DzGetGameUI(), "", 0)
     
    //call DzFrameSetTexture(Frame_SelectBack[0], "ui\\Title-R.blp", 0)
    call Select___MakeSelect(2 , JN_FRAMEPOINT_TOPLEFT , .05 , .45 , .18 , .25 , "Select_Back.blp")
    set Text=Select___MakeSelectText(Text , Frame_SelectBack[2] , JN_FRAMEPOINT_TOP , JN_FRAMEPOINT_TOP , 0. , - .013 , .015 , "T" + I2S(Text) + "DarkElf Mage")
    set Text=Select___MakeSelectText(Text , Frame_SelectBack[2] , JN_FRAMEPOINT_TOPRIGHT , JN_FRAMEPOINT_TOPRIGHT , - .020 , - .035 , .010 , "T" + I2S(Text) + "다크엘프 마법사")
    
    set Text=Select___MakeSelectText(Text , Frame_SelectBack[2] , JN_FRAMEPOINT_TOPLEFT , JN_FRAMEPOINT_TOPLEFT , .020 , - .050 , .008 , "T" + I2S(Text) + "마법사는 강력한 마법 공격과 디버프를 사용해")
    set Text=Select___MakeSelectText(Text , Frame_SelectText[Text - 1] , JN_FRAMEPOINT_TOPLEFT , JN_FRAMEPOINT_BOTTOMLEFT , 0. , 0. , .008 , "T" + I2S(Text) + "적을 괴롭히고 다대다 전투에 강한 직업입니다.")
    
    set Text=Select___MakeSelectText(Text , Frame_SelectBack[2] , JN_FRAMEPOINT_TOPLEFT , JN_FRAMEPOINT_TOPLEFT , .020 , - .080 , .012 , "공격")
    call Select___MakeStars(1 , Frame_SelectText[Text - 1] , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_LEFT , .040 , 0. , .020 , "Select_stars1.tga")
    call Select___MakeStars(2 , Select___Frame_SelectStars[1] , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_RIGHT , 0. , 0. , .020 , "Select_stars1.tga")
    call Select___MakeStars(3 , Select___Frame_SelectStars[2] , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_RIGHT , 0. , 0. , .020 , "Select_stars1.tga")
    call Select___MakeStars(4 , Select___Frame_SelectStars[3] , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_RIGHT , 0. , 0. , .020 , "Select_stars1.tga")
    call Select___MakeStars(5 , Select___Frame_SelectStars[4] , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_RIGHT , 0. , 0. , .020 , "Select_stars1.tga")
    set Text=Select___MakeSelectText(Text , Frame_SelectText[Text - 1] , JN_FRAMEPOINT_TOPLEFT , JN_FRAMEPOINT_BOTTOMLEFT , 0. , - .02 , .012 , "방어")
    call Select___MakeStars(6 , Frame_SelectText[Text - 1] , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_LEFT , .040 , 0. , .020 , "Select_stars1.tga")
    call Select___MakeStars(7 , Select___Frame_SelectStars[6] , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_RIGHT , 0. , 0. , .020 , "Select_stars1.tga")
    call Select___MakeStars(8 , Select___Frame_SelectStars[7] , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_RIGHT , 0. , 0. , .020 , "Select_stars1.tga")
    call Select___MakeStars(9 , Select___Frame_SelectStars[8] , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_RIGHT , 0. , 0. , .020 , "Select_stars1.tga")
    call Select___MakeStars(10 , Select___Frame_SelectStars[9] , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_RIGHT , 0. , 0. , .020 , "Select_stars0.tga")
    set Text=Select___MakeSelectText(Text , Frame_SelectText[Text - 1] , JN_FRAMEPOINT_TOPLEFT , JN_FRAMEPOINT_BOTTOMLEFT , 0. , - .02 , .012 , "보조")
    call Select___MakeStars(11 , Frame_SelectText[Text - 1] , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_LEFT , .040 , 0. , .020 , "Select_stars1.tga")
    call Select___MakeStars(12 , Select___Frame_SelectStars[11] , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_RIGHT , 0. , 0. , .020 , "Select_stars1.tga")
    call Select___MakeStars(13 , Select___Frame_SelectStars[12] , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_RIGHT , 0. , 0. , .020 , "Select_stars1.tga")
    call Select___MakeStars(14 , Select___Frame_SelectStars[13] , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_RIGHT , 0. , 0. , .020 , "Select_stars0.tga")
    call Select___MakeStars(15 , Select___Frame_SelectStars[14] , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_RIGHT , 0. , 0. , .020 , "Select_stars0.tga")
    set Text=Select___MakeSelectText(Text , Frame_SelectText[Text - 1] , JN_FRAMEPOINT_TOPLEFT , JN_FRAMEPOINT_BOTTOMLEFT , 0. , - .02 , .012 , "방해")
    call Select___MakeStars(16 , Frame_SelectText[Text - 1] , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_LEFT , .040 , 0. , .020 , "Select_stars1.tga")
    call Select___MakeStars(17 , Select___Frame_SelectStars[16] , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_RIGHT , 0. , 0. , .020 , "Select_stars1.tga")
    call Select___MakeStars(18 , Select___Frame_SelectStars[17] , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_RIGHT , 0. , 0. , .020 , "Select_stars0.tga")
    call Select___MakeStars(19 , Select___Frame_SelectStars[18] , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_RIGHT , 0. , 0. , .020 , "Select_stars0.tga")
    call Select___MakeStars(20 , Select___Frame_SelectStars[19] , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_RIGHT , 0. , 0. , .020 , "Select_stars0.tga")
    set Text=Select___MakeSelectText(Text , Frame_SelectText[Text - 1] , JN_FRAMEPOINT_TOPLEFT , JN_FRAMEPOINT_BOTTOMLEFT , 0. , - .02 , .012 , "난이도")
    call Select___MakeStars(21 , Frame_SelectText[Text - 1] , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_LEFT , .040 , 0. , .020 , "Select_stars2.tga")
    call Select___MakeStars(22 , Select___Frame_SelectStars[21] , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_RIGHT , 0. , 0. , .020 , "Select_stars0.tga")
    call Select___MakeStars(23 , Select___Frame_SelectStars[22] , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_RIGHT , 0. , 0. , .020 , "Select_stars0.tga")
    call Select___MakeStars(24 , Select___Frame_SelectStars[23] , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_RIGHT , 0. , 0. , .020 , "Select_stars0.tga")
    call Select___MakeStars(25 , Select___Frame_SelectStars[24] , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_RIGHT , 0. , 0. , .020 , "Select_stars0.tga")
      
    call Select___MakeSelect(3 , JN_FRAMEPOINT_TOPLEFT , .6 , .4 , .20 , .23 , "Select_BackRed.blp")
    set Text=Select___MakeSelectText(Text , Frame_SelectBack[3] , JN_FRAMEPOINT_TOPLEFT , JN_FRAMEPOINT_TOPLEFT , .02 , - .02 , .010 , "|cff8f8f8f피해 유형")
    set Text=Select___MakeSelectText(Text , Frame_SelectText[Text - 1] , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_LEFT , .07 , 0. , .015 , "T" + I2S(Text) + "|cff0080c0마법 데미지")
    set Text=Select___MakeSelectText(Text , Frame_SelectBack[3] , JN_FRAMEPOINT_TOPLEFT , JN_FRAMEPOINT_TOPLEFT , .02 , - .04 , .010 , "|cff8f8f8f사용(전용)무기")
    set Text=Select___MakeSelectText(Text , Frame_SelectText[Text - 1] , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_LEFT , .07 , 0. , .012 , "T" + I2S(Text) + "[완드] [지팡이]")
      
    call Select___MakeSelect(4 , JN_FRAMEPOINT_TOPLEFT , .62 , .34 , .16 , .12 , "Select_BackRedRed.blp")
    set Text=Select___MakeSelectText(Text , Frame_SelectBack[4] , JN_FRAMEPOINT_TOPLEFT , JN_FRAMEPOINT_TOPLEFT , .01 , - .01 , .010 , "|cff8f8f8f주요 스킬 보기")
    call Select___CreateSelectIcon2(1 , Frame_SelectBack[4] , JN_FRAMEPOINT_TOP , JN_FRAMEPOINT_TOPLEFT , .024 , - .03 , .0275 , "war3mapImported\\frame_kakao.blp")
    call Select___CreateSelectIcon2(3 , Frame_SelectBack[4] , JN_FRAMEPOINT_TOP , JN_FRAMEPOINT_TOPLEFT , .061 , - .03 , .0275 , "war3mapImported\\frame_kakao.blp")
    call Select___CreateSelectIcon2(5 , Frame_SelectBack[4] , JN_FRAMEPOINT_TOP , JN_FRAMEPOINT_TOPLEFT , .099 , - .03 , .0275 , "war3mapImported\\frame_kakao.blp")
    call Select___CreateSelectIcon2(7 , Frame_SelectBack[4] , JN_FRAMEPOINT_TOP , JN_FRAMEPOINT_TOPLEFT , .136 , - .03 , .0275 , "war3mapImported\\frame_kakao.blp")
      
    set Text=Select___MakeSelectText(Text , Frame_SelectBack[4] , JN_FRAMEPOINT_TOPLEFT , JN_FRAMEPOINT_TOPLEFT , .01 , - .08 , .012 , "T" + I2S(Text) + "|cffd5d500분노의 소용돌이 |cffff8000Lv.1")
    
    set Text=Select___MakeSelectText(Text , Frame_SelectText[Text - 1] , JN_FRAMEPOINT_TOPLEFT , JN_FRAMEPOINT_BOTTOMLEFT , 0. , - .005 , .008 , "T" + I2S(Text) + "창을 크게 휘둘러 주위의 적들에게 공격력의")
    set Text=Select___MakeSelectText(Text , Frame_SelectText[Text - 1] , JN_FRAMEPOINT_TOPLEFT , JN_FRAMEPOINT_BOTTOMLEFT , 0. , 0. , .008 , "T" + I2S(Text) + "|cffff800060%|r만큼 마법피해를 최대 |cffff80003|r회 입힙니다.")

    set Frame_SelectBack[5]=DzCreateFrameByTagName("BUTTON", "", Frame_SelectBack[1], "ScoreScreenTabButtonTemplate", 0)
    call DzFrameSetPoint(Frame_SelectBack[5], JN_FRAMEPOINT_TOP, Frame_SelectBack[4], JN_FRAMEPOINT_BOTTOM, 0., - .005)
    call DzFrameSetSize(Frame_SelectBack[5], .11, .03)
    call DzFrameSetScriptByCode(Frame_SelectBack[5], JN_FRAMEEVENT_MOUSE_UP, function Select___ButtonStart, true)
    
    //시작하기
    set Frame_SelectBack[6]=DzCreateFrameByTagName("BACKDROP", "", Frame_SelectBack[5], "", 0)
    call DzFrameSetAllPoints(Frame_SelectBack[6], Frame_SelectBack[5])
    call DzFrameSetTexture(Frame_SelectBack[6], "Select_StartRed.blp", 0)
  endfunction
  function Select_I2T takes integer i returns string
    if ( i <= 0 ) then
      return ""
    elseif ( i < 100 ) then
      return I2S(i) + "분"
    elseif ( i < 600 ) then
      return R2SW(i / 60., 1, 2) + "시간"
    else
      return R2SW(i / 60., 2, 1) + "시간"
    
    endif
  endfunction
  function Select___CreateSelectBottom takes nothing returns nothing
   local integer i= 1
    //아래쪽
    loop
      call Select___CreateSelectIcon(5 + i * 2 , i * .12 , .1 , .1 , .04 , "Select_SlotBack75.blp")
      call Select___MakeSelectText(16 + i * 3 , Frame_SelectBack[5 + i * 2] , JN_FRAMEPOINT_TOPLEFT , JN_FRAMEPOINT_TOPLEFT , .005 , - .005 , .010 , JNStringSplit(JNStringSplit(Select_Data_Select(i), "'", 0), " ", 1) + " Lv00")
      call Select___MakeSelectText(17 + i * 3 , Frame_SelectBack[5 + i * 2] , JN_FRAMEPOINT_TOPRIGHT , JN_FRAMEPOINT_TOPRIGHT , - .005 , - .005 , .009 , " ")
      call Select___MakeSelectText(18 + i * 3 , Frame_SelectBack[5 + i * 2] , JN_FRAMEPOINT_BOTTOMRIGHT , JN_FRAMEPOINT_BOTTOMRIGHT , - .01 , .008 , .013 , "이어하기")
      
      call Select___CreateSelectButton(6 + i * 2)
      exitwhen i >= Save_MAX_CHARACTER
      set i=i + 1
    endloop
  endfunction
  function Select___CreateSelectBottom2 takes player p,string Input returns nothing
   local string s
   local integer i= 1
    //아래쪽
    loop
      set s=JNStringSplit(Input, "/", i)
      if ( S2I(JNStringSplit(JNStringSplit(s, "'", 1), ".", 0)) > 0 ) then
        if ( GetLocalPlayer() == p ) then
          call DzFrameSetTexture(Frame_SelectBack[5 + i * 2], "Select_SlotBack75.blp", 0)
          call DzFrameSetFont(Frame_SelectText[16 + i * 3], "Fonts\\DFHeiMd.ttf", .010, 0)
          call DzFrameSetText(Frame_SelectText[16 + i * 3], JNStringSplit(JNStringSplit(Select_Data_Select(i), "'", 0), " ", 1) + " Lv" + JNStringSplit(JNStringSplit(s, "'", 1), ".", 0))
          call DzFrameSetFont(Frame_SelectText[17 + i * 3], "Fonts\\DFHeiMd.ttf", .009, 0)
          call DzFrameSetText(Frame_SelectText[17 + i * 3], Select_I2T(S2I(JNStringSplit(JNStringSplit(s, "'", 0), "_", 1))))
          call DzFrameSetFont(Frame_SelectText[18 + i * 3], "Fonts\\DFHeiMd.ttf", .013, 0)
          call DzFrameSetText(Frame_SelectText[18 + i * 3], "이어하기")
        endif
      else
        if ( GetLocalPlayer() == p ) then
          call DzFrameSetTexture(Frame_SelectBack[5 + i * 2], "Select_SlotBack50.blp", 0)
          call DzFrameSetFont(Frame_SelectText[16 + i * 3], "Fonts\\DFHeiMd.ttf", .009, 0)
          call DzFrameSetText(Frame_SelectText[16 + i * 3], JNStringSplit(Select_Data_Select(i), "'", 0) + " (신규)")
          call DzFrameSetText(Frame_SelectText[17 + i * 3], "")
          call DzFrameSetFont(Frame_SelectText[18 + i * 3], "Fonts\\DFHeiMd.ttf", .008, 0)
          call DzFrameSetText(Frame_SelectText[18 + i * 3], "미리보기")
        endif
      endif
      
      exitwhen i >= Save_MAX_CHARACTER
      set i=i + 1
    endloop
  endfunction
  constant function IsEmpty takes string s returns boolean
    return ( s == "" ) or ( s == null )
  endfunction
  function Select_GetSaveData takes player p,string Input returns nothing
    if ( IsEmpty(Input) ) then
      set Input=Select_DEFAULT_DATA
    endif
    call SaveStr(hash, GetPlayerId(p) + 1, StringHash("Data"), Input)
    call Select___CreateSelectBottom2(p , Input)
   
  endfunction
    
  function Select___Init takes nothing returns nothing
   local integer i= 0
   local trigger trg
    call Select___CreateSelect()
    call Select___CreateSelectBottom()
    
    call DzFrameShow(Frame_SelectBack[1], false)
    call DzFrameShow(Frame_SelectText[16], false)
    
    set i=bj_MAX_PLAYERS - 1
    set trg=CreateTrigger()
    loop
      call TriggerRegisterPlayerUnitEvent(trg, Player(i), EVENT_PLAYER_UNIT_DESELECTED, null)
      set Select___PreLoad[i + 1]=true
      exitwhen i <= 0
      set i=i - 1
    endloop
    call TriggerAddAction(trg, function Select___Deselected)
  
    set i=bj_MAX_PLAYERS - 1
    set trg=CreateTrigger()
    loop
      call TriggerRegisterPlayerUnitEvent(trg, Player(i), EVENT_PLAYER_UNIT_SELECTED, null)
      exitwhen i <= 0
      set i=i - 1
    endloop
    call TriggerAddAction(trg, function Select___Selected)
    
    set trg=CreateTrigger()
    call DzTriggerRegisterSyncData(trg, "Select", false)
    call TriggerAddAction(trg, function Select___DataSync2)
    
    set trg=null
  endfunction
// scope Select ends
// Trigger: MenuQuickSlot
//===========================================================================
// scope MenuQuickSlot begins

function MenuQuickSlot_AddReg takes integer P,integer MenuNo,integer Hotkey returns nothing
  local string s= ""
  local integer i= 0
  if ( PKey_I2H(Hotkey) == "" ) then
    call DisplayTimedTextToPlayer(Player(P - 1), 0, 0, 4., "등록할 수 없는 단축키입니다. -" + I2S(Hotkey) + "=" + PKey_I2H(Hotkey))
  else
    set s=I2S(F2IN(MenuNo)) + "번째 " + FI2S(F2IT(MenuNo)) + " 단축키: "
    
    //기존 단축키 검사
    set i=LoadInteger(hash, P, MenuNo)
    if ( i != 0 ) then
      call SaveInteger(hash, P, MenuNo, 0)
      set s=s + PKey_I2H(i) + "→" + PKey_I2H(Hotkey) + " 변경 (기존 " + PKey_I2H(i) + "단축키 삭제"
      set i=LoadInteger(hash, P, Hotkey)
      if ( i != 0 ) then
        set s=s + ", 기존 " + PKey_I2H(Hotkey) + "단축키 " + I2S(F2IN(i)) + "번째 " + FI2S(F2IT(i)) + " 삭제)"
        call SaveInteger(hash, P, Hotkey, 0)
      else
        set s=s + ")"
      endif
    //변경
    else
    //등록
      set s=s + PKey_I2H(Hotkey) + " 등록"
      set i=LoadInteger(hash, P, Hotkey)
      if ( i != 0 ) then
        set s=s + " (기존 " + PKey_I2H(Hotkey) + "단축키 " + I2S(F2IN(i)) + "번째 " + FI2S(F2IT(i)) + " 삭제)"
        call SaveInteger(hash, P, Hotkey, 0)
      endif
    endif
    call SaveInteger(hash, P, MenuNo, Hotkey)
    call SaveInteger(hash, P, Hotkey, MenuNo)
    if ( GetLocalPlayer() == Player(P - 1) ) then
      call DzFrameSetText(LoadInteger(hash, LoadInteger(hash, 0, MenuNo), StringHash("FUI_HotKey")), PKey_I2H(Hotkey))
    endif
    call DisplayTimedTextToPlayer(Player(P - 1), 0, 0, 7., s)
  endif
  
  
  
  
  
  
endfunction
    constant function MenuQuickSlot_BaseHotKey takes integer MenuNo returns string
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
    function MenuQuickSlot___MakeHotKey takes integer frame,integer MenuNo returns nothing
      local integer HotFrame= DzCreateFrame("CommandButtonHotKeyBackDrop", frame, MenuNo)
      local integer HotFrameTxt= DzCreateFrame("CommandButtonHotKeyText", HotFrame, MenuNo)
      call DzFrameSetTexture(HotFrame, "ui\\widgets\\console\\human\\commandbutton\\human-button-lvls-overlay.blp", 0)
      call DzFrameSetPoint(HotFrame, JN_FRAMEPOINT_TOPLEFT, frame, JN_FRAMEPOINT_TOPLEFT, - .001, .001)
      call DzFrameSetPoint(HotFrameTxt, JN_FRAMEPOINT_CENTER, HotFrame, JN_FRAMEPOINT_CENTER, 0., 0.)
      //call DzFrameSetText(HotFrameTxt, BaseHotKey(MenuNo))
      call SaveInteger(hash, 0, MenuNo, frame)
      call SaveInteger(hash, frame, StringHash("FUI_HotKey"), HotFrameTxt)
      //call AddReg(P, MenuNo, Hotkey)
      //call BJDebugMsg("no"+I2S(MenuNo)+"="+I2S(frame))
    endfunction
    function MenuQuickSlot___CreateSkillFrameButton takes integer types,real x,real y,string IconTexture returns nothing
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
        call MenuQuickSlot___MakeHotKey(Frame_Buttons[types] , types)
    endfunction
    function MenuQuickSlot___CreateItemFrameButton takes integer types,real x,real y returns nothing
        set Frame_Buttons[types]=DzCreateFrameByTagName("BUTTON", "", Frame_Main, "ScoreScreenTabButtonTemplate", 0)
        call DzFrameSetAbsolutePoint(Frame_Buttons[types], JN_FRAMEPOINT_BOTTOMLEFT, x, y)
        call DzFrameSetSize(Frame_Buttons[types], 0.0235, 0.0235)
        
        set Frame_ButtonsBackDrop[types]=DzCreateFrameByTagName("BACKDROP", "", Frame_Buttons[types], "", 0)
        call DzFrameSetAllPoints(Frame_ButtonsBackDrop[types], Frame_Buttons[types])
        call DzFrameSetTexture(Frame_ButtonsBackDrop[types], "Inven_Empty.blp", 0)
        
        call DzFrameSetScriptByCode(Frame_Buttons[types], JN_FRAMEEVENT_MOUSE_UP, function Select_ButtonClick, false)
        call MenuQuickSlot___MakeHotKey(Frame_Buttons[types] , types)
    endfunction
    //call AddReg(P, MenuNo, Hotkey)
    function MenuQuickSlot___CreateMenuFrameButton takes integer types,real x,real y,real w,real h,string IconTexture returns nothing
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
        call MenuQuickSlot___MakeHotKey(Frame_Buttons[types] , types)
    endfunction
  function MenuQuickSlot___Init takes nothing returns nothing
   local integer i= 1
    
    loop
      call MenuQuickSlot___CreateItemFrameButton(i , .4215 + ( i * .025 ) , .03)
      exitwhen i >= 7
      set i=i + 1
    endloop
    
    
    call MenuQuickSlot___CreateSkillFrameButton(8 , .3 , .03 , "ReplaceableTextures\\CommandButtons\\BTNThoriumMelee.blp")
    call MenuQuickSlot___CreateSkillFrameButton(9 , .33 , .03 , "ReplaceableTextures\\CommandButtons\\BTNHumanArmorUpOne.blp")
    call MenuQuickSlot___CreateSkillFrameButton(10 , .36 , .03 , "ReplaceableTextures\\CommandButtons\\BTNHumanArmorUpTwo.blp")
    call MenuQuickSlot___CreateSkillFrameButton(11 , .39 , .03 , "ReplaceableTextures\\CommandButtons\\BTNHumanArmorUpThree.blp")
    call MenuQuickSlot___CreateSkillFrameButton(12 , .3 , .06 , "ReplaceableTextures\\CommandButtons\\BTNOrbOfFire.blp")
    call MenuQuickSlot___CreateSkillFrameButton(13 , .33 , .06 , "ReplaceableTextures\\CommandButtons\\BTNOrbOfVenom.blp")
    call MenuQuickSlot___CreateSkillFrameButton(14 , .36 , .06 , "ReplaceableTextures\\CommandButtons\\BTNOrbOfFrost.blp")
    call MenuQuickSlot___CreateSkillFrameButton(15 , .39 , .06 , "ReplaceableTextures\\CommandButtons\\BTNDaggerOfEscape.blp")
    
    
    call MenuQuickSlot___CreateMenuFrameButton(16 , .78 , 0.58 , .02 , .02 , "war3mapImported\\frame_setting.blp")
    call MenuQuickSlot___CreateMenuFrameButton(17 , .76 , 0.58 , .02 , .02 , "war3mapImported\\frame_discord.blp")
    call MenuQuickSlot___CreateMenuFrameButton(18 , .74 , 0.58 , .02 , .02 , "war3mapImported\\frame_kakao.blp")
    call MenuQuickSlot___CreateMenuFrameButton(19 , .63 , .01 , .03 , .03 , "war3mapImported\\frame_combat.blp")

    call MenuQuickSlot___CreateMenuFrameButton(20 , .67 , 0. , .03 , .03 , "Inven_Empty.blp")
    call MenuQuickSlot___CreateMenuFrameButton(21 , .7 , 0. , .03 , .03 , "war3mapImported\\frame_stats.blp")
    call MenuQuickSlot___CreateMenuFrameButton(22 , .73 , 0. , .03 , .03 , "war3mapImported\\frame_stats2.blp")
    call MenuQuickSlot___CreateMenuFrameButton(23 , .76 , 0. , .03 , .03 , "war3mapImported\\frame_skills.blp")
  endfunction
// scope MenuQuickSlot ends
// Trigger: Option
//===========================================================================
// scope Option begins

    function Option___Setting takes integer no,string text,real size,real x,real y returns integer
      set Option___Frame_Setting[no]=DzCreateFrameByTagName("TEXT", "", Option_Frame_SettingBackdrop[1], "", no)
      if ( size != 0. ) then
        call DzFrameSetFont(Option___Frame_Setting[no], "Fonts\\DFHeiMd.ttf", size, 1)
      endif
      call DzFrameSetPoint(Option___Frame_Setting[no], JN_FRAMEPOINT_LEFT, Option_Frame_SettingBackdrop[0], JN_FRAMEPOINT_TOPLEFT, .02 + x, - .015 - .025 * y)
      call DzFrameSetText(Option___Frame_Setting[no], text)
//call BJDebugMsg(I2S(no) + "=" + text)
      return no + 1
    endfunction
    function Option___SettingButton takes integer i,integer frame2,string text,code funcHandle returns integer
      set Option___Frame_Setting[i]=DzCreateFrameByTagName("GLUETEXTBUTTON", "", Option_Frame_SettingBackdrop[1], "ScriptDialogButton", 0)
      call DzFrameSetSize(Option___Frame_Setting[i], .085, 0.03)
      call DzFrameSetPoint(Option___Frame_Setting[i], JN_FRAMEPOINT_LEFT, frame2, JN_FRAMEPOINT_LEFT, .1, 0.)
      call DzFrameSetText(Option___Frame_Setting[i], text)
      call DzFrameSetScriptByCode(Option___Frame_Setting[i], JN_FRAMEEVENT_MOUSE_UP, funcHandle, false)
      return i + 1
    endfunction
    function Option___SettingClick takes nothing returns nothing
      local integer f= DzGetTriggerUIEventFrame()
      local player p= DzGetTriggerUIEventPlayer()
      call BJDebugMsg("player: " + GetPlayerName(p) + " clicked Setting")
    endfunction
    function Option___SettingSave takes nothing returns nothing
      local integer f= DzGetTriggerUIEventFrame()
      local player p= DzGetTriggerUIEventPlayer()
      call BJDebugMsg("player: " + GetPlayerName(p) + " click save server")
    endfunction
    function Option___SettingClose takes nothing returns nothing
      if ( GetLocalPlayer() == DzGetTriggerUIEventPlayer() ) then
        call DzFrameShow(Option_Frame_SettingBackdrop[0], false)
      endif
    endfunction
    function Option___SettingHotKey takes integer i,integer frame,real x,real y,string text,code funcHandle returns integer
      set Option___Frame_Setting[i]=DzCreateFrameByTagName("GLUETEXTBUTTON", "", Option_Frame_SettingBackdrop[1], "ScriptDialogButton", 0)
      call DzFrameSetSize(Option___Frame_Setting[i], .02667, .02667)
      call DzFrameSetPoint(Option___Frame_Setting[i], JN_FRAMEPOINT_LEFT, frame, JN_FRAMEPOINT_LEFT, .1 + x, y)
      call DzFrameSetText(Option___Frame_Setting[i], text)
      return i + 1
    endfunction
    function Option___SettingHotKeyClick takes nothing returns nothing
      local integer f= DzGetTriggerUIEventFrame()
      local player p= DzGetTriggerUIEventPlayer()
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
    
    set i=Option___Setting(1 , "미니 정보창" , .016 , 0. , 1.)
    set i=Option___Setting(i , "이펙트(개인)" , .016 , 0. , 2.)
    set i=Option___Setting(i , "이펙트(방장)" , .016 , 0. , 3.)
    set i=Option___Setting(i , "시야 설정" , .016 , 0. , 4.)
    set i=Option___Setting(i , "시야 고정" , .016 , 0. , 5.)
    set i=Option___Setting(i , "단축키 표시" , .016 , 0. , 6.)
    
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
    
    set i=Option___SettingButton(i , Option___Frame_Setting[1] , "|cfffed312ON |cffffffff/ |c004f4f4fOFF" , function Option___SettingClick)
    set i=Option___SettingButton(i , Option___Frame_Setting[2] , "|cfffed312기본 |cffffffff/ |c004f4f4f최소화" , function Option___SettingClick)
    set i=Option___SettingButton(i , Option___Frame_Setting[3] , "|c004f4f4fON |cffffffff/ |cfffed312OFF" , function Option___SettingClick)
    set i=Option___SettingButton(i , Option___Frame_Setting[4] , "|cfffed312150" , function Option___SettingClick)
    set i=Option___SettingButton(i , Option___Frame_Setting[5] , "|c004f4f4fON |cffffffff/ |cfffed312OFF" , function Option___SettingClick)
    set i=Option___SettingButton(i , Option___Frame_Setting[6] , "|cfffed312ON |cffffffff/ |c004f4f4fOFF" , function Option___SettingClick)
    
    set i=Option___SettingHotKey(i , Option___Frame_Setting[8] , 0. , 0.01 , MenuQuickSlot_BaseHotKey(8) , function Option___SettingHotKeyClick)
    set i=Option___SettingHotKey(i , Option___Frame_Setting[8] , 0.02 , 0.01 , MenuQuickSlot_BaseHotKey(9) , function Option___SettingHotKeyClick)
    set i=Option___SettingHotKey(i , Option___Frame_Setting[8] , 0.04 , 0.01 , MenuQuickSlot_BaseHotKey(10) , function Option___SettingHotKeyClick)
    set i=Option___SettingHotKey(i , Option___Frame_Setting[8] , 0.06 , 0.01 , MenuQuickSlot_BaseHotKey(11) , function Option___SettingHotKeyClick)
    set i=Option___SettingHotKey(i , Option___Frame_Setting[8] , 0. , - 0.01 , MenuQuickSlot_BaseHotKey(12) , function Option___SettingHotKeyClick)
    set i=Option___SettingHotKey(i , Option___Frame_Setting[8] , 0.02 , - 0.01 , MenuQuickSlot_BaseHotKey(13) , function Option___SettingHotKeyClick)
    set i=Option___SettingHotKey(i , Option___Frame_Setting[8] , 0.04 , - 0.01 , MenuQuickSlot_BaseHotKey(14) , function Option___SettingHotKeyClick)
    set i=Option___SettingHotKey(i , Option___Frame_Setting[8] , 0.06 , - 0.01 , MenuQuickSlot_BaseHotKey(15) , function Option___SettingHotKeyClick)

    set i=Option___SettingHotKey(i , Option___Frame_Setting[9] , 0. , 0.01 , MenuQuickSlot_BaseHotKey(1) , function Option___SettingHotKeyClick)
    set i=Option___SettingHotKey(i , Option___Frame_Setting[9] , 0.02 , 0.01 , MenuQuickSlot_BaseHotKey(2) , function Option___SettingHotKeyClick)
    set i=Option___SettingHotKey(i , Option___Frame_Setting[9] , 0.04 , 0.01 , MenuQuickSlot_BaseHotKey(3) , function Option___SettingHotKeyClick)
    set i=Option___SettingHotKey(i , Option___Frame_Setting[9] , 0.06 , 0.01 , MenuQuickSlot_BaseHotKey(4) , function Option___SettingHotKeyClick)
    set i=Option___SettingHotKey(i , Option___Frame_Setting[9] , 0.01 , - 0.01 , MenuQuickSlot_BaseHotKey(5) , function Option___SettingHotKeyClick)
    set i=Option___SettingHotKey(i , Option___Frame_Setting[9] , 0.03 , - 0.01 , MenuQuickSlot_BaseHotKey(6) , function Option___SettingHotKeyClick)
    set i=Option___SettingHotKey(i , Option___Frame_Setting[9] , 0.05 , - 0.01 , MenuQuickSlot_BaseHotKey(7) , function Option___SettingHotKeyClick)
    
    set i=Option___SettingHotKey(i , Option___Frame_Setting[10] , 0. , 0. , MenuQuickSlot_BaseHotKey(18) , function Option___SettingHotKeyClick)
    set i=Option___SettingHotKey(i , Option___Frame_Setting[10] , .03 , 0. , MenuQuickSlot_BaseHotKey(17) , function Option___SettingHotKeyClick)
    set i=Option___SettingHotKey(i , Option___Frame_Setting[10] , .06 , 0. , MenuQuickSlot_BaseHotKey(16) , function Option___SettingHotKeyClick)
    
    set i=Option___SettingHotKey(i , Option___Frame_Setting[11] , 0.01 , 0. , MenuQuickSlot_BaseHotKey(19) , function Option___SettingHotKeyClick)
    set i=Option___SettingHotKey(i , Option___Frame_Setting[11] , 0.04 , 0. , MenuQuickSlot_BaseHotKey(20) , function Option___SettingHotKeyClick)
    
    set i=Option___SettingHotKey(i , Option___Frame_Setting[12] , 0. , 0. , MenuQuickSlot_BaseHotKey(21) , function Option___SettingHotKeyClick)
    set i=Option___SettingHotKey(i , Option___Frame_Setting[12] , .03 , 0. , MenuQuickSlot_BaseHotKey(22) , function Option___SettingHotKeyClick)
    set i=Option___SettingHotKey(i , Option___Frame_Setting[12] , .06 , 0. , MenuQuickSlot_BaseHotKey(23) , function Option___SettingHotKeyClick)
    
    call DzFrameShow(Option_Frame_SettingBackdrop[0], false)
  endfunction
  function Option___Init takes nothing returns nothing
    call Option___CreateSetting()
  endfunction
// scope Option ends
// Trigger: Inventory Equip
//
// I_Change"
//     call DzSyncData("MouseVar", I2S(LoadInteger(hash, DzGetTriggerUIEventFrame(), StringHash("FrameID"))))
//   endfunction
//   public function MouseOut takes nothing returns nothing
//     call DzSyncData("MouseVar", "")
//===========================================================================
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
          //call BJDebugMsg(InvenInfo[0] + " = 1_InvenInfo[" + I2S(SkipStr(SubString(InvenInfo[0],0,2))) +"] = " + SubString(InvenInfo[0],3,StringLength(InvenInfo[0])))
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
      set Slot=Save_MAX_INVENTORY
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
      exitwhen loopA >= Save_MAX_INVENTORY
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
    
    //call BJDebugMsg(EXGetItemDataString(GetItemTypeId(t), 3) + "'" + LoadStr(hash, GetHandleId(t), StringHash("ItemAddData")))
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
    call DzFrameSetText(Equip___Frame_InvenInfo[int], "전설에 의하면 저주에 걸린 아쥰의 영혼이\n오늘 날까지도 자신의 심장을 찾고 있다고\n합니다.")

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
    call DzFrameSetText(Equip___Swap(first , int), "전설에 의하면 저주에 걸린 아쥰의 영혼이\n오늘 날까지도 자신의 심장을 찾고 있다고\n합니다.")

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
// Trigger: Info
//===========================================================================
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
    set SkillTree_Info[0]=Frame_Info[i]
    set i=i + 1
    
    set i=Info___Info(i , Frame_Info[i - 1] , .010 , JN_FRAMEPOINT_TOPLEFT , JN_FRAMEPOINT_TOPLEFT , Equip_EDGEGAP2 , - .005 , "방어(감소율)")
    set i=Info___Info(i , Frame_Info[i - 1] , .010 , JN_FRAMEPOINT_TOPLEFT , JN_FRAMEPOINT_BOTTOMLEFT , 0. , - Equip_EDGEGAP , "추가감소/회피")
    call Info___Info3(i - 2 , .010 , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_LEFT , .055 , 0. , I2S(GetRandomInt(1000, 9999)) + " (" + R2SW(GetRandomReal(10., 99.), 2, 1) + "%)")
    call Info___Info3(i - 1 , .010 , JN_FRAMEPOINT_LEFT , JN_FRAMEPOINT_LEFT , .055 , 0. , I2S(GetRandomInt(100, 999)) + " / " + I2S(GetRandomInt(10, 99)) + "%")
    
    
    call SkillTree_MakeLineY(1 , .055 , - .01 , .265 , 3)
    call SkillTree_MakeLineX(2 , .045 , - .0275 , .02 , 3)
    call SkillTree_MakeLineX(3 , .035 , - .0525 , .04 , 3)
    call SkillTree_MakeLineX(4 , .045 , - .0770 , .02 , 3)
    call SkillTree_MakeLineX(5 , .035 , - .1025 , .04 , 3)
    call SkillTree_MakeLineX(6 , .045 , - .1380 , .02 , 3)
    call SkillTree_MakeLineX(7 , .035 , - .1750 , .04 , 3)
    call SkillTree_MakeLineX(8 , .035 , - .2125 , .04 , 3)
    call SkillTree_MakeLineX(9 , .025 , - .2400 , .06 , 3)
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
// Trigger: MiniInfo
//===========================================================================
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
// Trigger: JN Object Api
//===========================================================================


// Trigger: Time
//===========================================================================
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
          exitwhen loopA >= Save_MAX_CHARACTER
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
    if ( Data == null ) or ( Data == "" ) then
      set Data=Select_DEFAULT_DATA
    endif
    
    set Data=I2S(Slot) + "'" + I2S(Time_Original[0]) + JNStringSub(Data, JNStringPos(Data, "/"), JNStringLength(Data))
    
    return JNStringReplace(Data, JNStringSplit(Data, "/", Slot), I2S(Slot) + "_" + I2S(Time_Original[Slot]) + "'" + I2S(GetHeroLevel(udg_hero[P])) + "." + I2S(GetHeroXP(udg_hero[P])))
  endfunction
  function Time___Init takes nothing returns nothing
    set Time_StopWatch=JNStopwatchCreate()
    call JNStopwatchStart(Time_StopWatch)
  endfunction

// scope Time ends
// Trigger: Save
//
// scope in scope가 가능하다
//===========================================================================

// scope Save begins
  
  function Save___GetEquipData takes integer P returns nothing
   local integer loopA= 1
   local item t= null
    loop
      set t=LoadItemHandle(hash, P, StringHash("ItemData" + I2S(- loopA)))
      if ( t != null ) then
        set Save___EquipData[loopA]=I2S(GetItemTypeId(t)) + "/" + LoadStr(hash, GetHandleId(t), StringHash("ItemAddData"))
      else
        set Save___EquipData[loopA]=""
      endif
      exitwhen loopA >= Save_MAX_EQUIP
      set loopA=loopA + 1
    endloop
   set t=null
  endfunction
  function Save___GetInvenData takes integer P returns nothing
   local integer loopA= 1
   local item t= null
    loop
      set t=LoadItemHandle(hash, P, StringHash("ItemData" + I2S(loopA)))
      if ( t != null ) then
        set Save___InvenData[loopA]=I2S(GetItemTypeId(t)) + "/" + LoadStr(hash, GetHandleId(t), StringHash("ItemAddData"))
      else
        set Save___InvenData[loopA]=""
      endif
      exitwhen loopA >= Save_MAX_INVENTORY
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
        
        exitwhen loopA >= Save_MAX_EQUIP
        set loopA=loopA + 1
      endloop
      exitwhen loopB >= Save_MAX_CHARACTER
      set loopB=loopB + 1
    endloop
  endfunction
  
  
  function Save_Saving takes player p,integer Slot returns nothing
   local integer P= GetPlayerId(p) + 1
   local unit u= udg_hero[P]
   local boolean SpecialName= GetHeroProperNameIndex(u) > 0
   local integer loopA= 1
    call Save___GetEquipData(P)
    call Save___GetInvenData(P)
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
        exitwhen loopA >= Save_MAX_INVENTORY
        set loopA=loopA + 1
      endloop
      call Save___msgCheck(p , JNObjectCharacterSave(JN_MAPID, Name[P], JN_SECRETKEY, "Save"))
    endif
    set u=null
  endfunction
  function Save___SaveAction takes nothing returns nothing
    call Save_Saving(GetTriggerPlayer() , Select_NowSelect[GetPlayerId(GetTriggerPlayer()) + 1])
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
// Trigger: Load5 Auto
//===========================================================================
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
   local integer i= Save_MAX_EQUIP
    
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
   local integer i= Save_MAX_INVENTORY
   
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
            
              exitwhen loopA >= Save_MAX_EQUIP
              set loopA=loopA + 1
            endloop
            
            set s=JNObjectCharacterGetString(Name[P], I2S(loopB) + "Name[P]")
            if ( s != "" ) then
              call DzSyncData("JNStrSync", I2S(loopB) + "_Name[P]" + "!" + s)
            endif
            exitwhen loopB >= Save_MAX_CHARACTER
            set loopB=loopB + 1
          endloop
          set loopA=1
          loop
            set s=JNObjectCharacterGetString(Name[P], "i" + I2S(loopA))
            if ( s != "" ) then
              call DzSyncData("JNStrSync", "i" + I2S(loopA) + "!" + s)
            endif
            exitwhen loopA >= Save_MAX_INVENTORY
            set loopA=loopA + 1
          endloop
        endif
      endif
      call DzSyncData("JNEndSync", "_")
    endif
  endfunction
  function LoadAuto___DataSync takes nothing returns nothing
    call Select_GetSaveData(DzGetTriggerSyncPlayer() , DzGetTriggerSyncData())
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
// Trigger: Load End
//
// "0'0/1_0'0/2_0'0/3_0'0/4_0'0/5_0'0/6_0'0/"
//===========================================================================
function SetEquipData takes integer P,integer Slot returns nothing
  local integer loopA= 1
  loop
    set EquipData2[loopA]=LoadStringBJ(StringHash(I2S(Slot) + "e" + I2S(loopA)), P, hash)
    exitwhen loopA >= Save_MAX_EQUIP
    set loopA=loopA + 1
  endloop
endfunction
function SetInvenData takes integer P returns nothing
  local integer loopA= 1
  loop
    set InvenData2[loopA]=LoadStringBJ(StringHash("i" + I2S(loopA)), P, hash)
    exitwhen loopA >= Save_MAX_INVENTORY
    set loopA=loopA + 1
  endloop
endfunction

constant function IsNotEmpty takes string s returns boolean
  return ( s != "" ) and ( s != null )
endfunction
function Trig_JN_Object_Load2_Actions takes nothing returns nothing
  local integer loopA= 0
  local string Data= ""
  local string HouseName= ""
  if ( JN_LoaderNow == 0 ) then
    set JN_LoaderNow=GetPlayerId(GetServerPlayer) + 1
    set Data=JNStringSplit(LoadStr(hash, JN_LoaderNow, StringHash("Data")), "/", Select_NowSelect[JN_LoaderNow])
    if ( IsNotEmpty(Data) ) then
      if ( Select_NowSelect[JN_LoaderNow] == 0 ) then
        call DisplayTimedTextToPlayer(GetServerPlayer, 0., 0., 20, "로드 |cff00ff00가능! |r - 로드할 준비가 되었습니다.")
      else
        set loopA=S2I(JNStringSplit(Data, "'", 1))
        if ( loopA == 0 ) then
          call Msg(GetLocalPlayer() , GetPlayerName(GetServerPlayer) + "님이 " + JNStringSplit(Select_Data_Select(Select_NowSelect[JN_LoaderNow]), "'", 0) + "을(를) 선택하였습니다.")
          call ResetEquip(JN_LoaderNow)
        else
          call Msg(GetLocalPlayer() , GetPlayerName(GetServerPlayer) + "님이 Lv." + I2S(loopA) + " " + JNStringSplit(Select_Data_Select(Select_NowSelect[JN_LoaderNow]), "'", 0) + "(으)로 모험을 이어갑니다.")
          call SetEquipData(JN_LoaderNow , Select_NowSelect[JN_LoaderNow])
        endif
        
        //집 이름 변경
        set HouseName=GetObjectName('nefm')
        if ( GetLocalPlayer() == GetServerPlayer ) then
          set HouseName=GetPlayerName(GetServerPlayer) + "가문의 " + GetObjectName(Select_I2U(Select_NowSelect[JN_LoaderNow])) + "네 집"
        endif
        call SetObjectName('nefm' , HouseName)
        
        set udg_hero[JN_LoaderNow]=CreateUnit(GetServerPlayer, Select_I2U(Select_NowSelect[JN_LoaderNow]), Select_startXX, Select_startYY, bj_UNIT_FACING)
        if ( GetLocalPlayer() == GetServerPlayer ) then
          call DzFrameShow(Frame_Main, true)
        endif
        
        call SetInvenData(JN_LoaderNow)
        
        call SetHeroLevel(udg_hero[JN_LoaderNow], loopA, false)
        call SetHeroXP(udg_hero[JN_LoaderNow], S2I(JNStringSplit(JNStringSplit(Data, "'", 1), ".", 1)), false)

        
        set Data=LoadStr(hash, JN_LoaderNow, StringHash(I2S(Select_NowSelect[JN_LoaderNow]) + "_Name"))
        if ( IsNotEmpty(Data) ) then
          call SetHeroProperNameIndex(udg_hero[JN_LoaderNow] , JN_LoaderNow)
          call SetHeroProperName(udg_hero[JN_LoaderNow] , Data)
        else
          call SetHeroProperNameIndex(udg_hero[JN_LoaderNow] , 0)
        endif
                
        set loopA=1
        loop
          set Data=EquipData2[loopA]
          if ( IsNotEmpty(Data) ) then
            set bj_lastCreatedItem=CreateItem(S2I(JNStringSplit(Data, "/", 0)), 0, 0)
            
            call SaveItemHandle(hash, JN_LoaderNow, StringHash("ItemData" + I2S(- loopA)), bj_lastCreatedItem)
            call SaveStr(hash, GetHandleId(bj_lastCreatedItem), StringHash("ItemAddData"), JNStringSplit(Data, "/", 1))
            if ( GetLocalPlayer() == GetServerPlayer ) then
              call DzFrameSetTexture(Equip_EquipBackdrop[loopA], EXGetItemDataString(GetItemTypeId(bj_lastCreatedItem), 1), 0)
            endif
            call Equip_Process(EXGetItemDataString(GetItemTypeId(bj_lastCreatedItem), 3) + "'" + LoadStr(hash, GetHandleId(bj_lastCreatedItem), StringHash("ItemAddData")) , JN_LoaderNow)
            call SetItemPosition(bj_lastCreatedItem, XX, YY)
          endif
          exitwhen loopA >= Save_MAX_EQUIP
          set loopA=loopA + 1
        endloop
        set loopA=1
        loop
          set Data=InvenData2[loopA]
          if ( IsNotEmpty(Data) ) then
            set bj_lastCreatedItem=CreateItem(S2I(JNStringSplit(Data, "/", 0)), 0, 0)
            
            call SaveItemHandle(hash, JN_LoaderNow, StringHash("ItemData" + I2S(loopA)), bj_lastCreatedItem)
            call SaveStr(hash, GetHandleId(bj_lastCreatedItem), StringHash("ItemAddData"), JNStringSplit(Data, "/", 1))
            if ( GetLocalPlayer() == GetServerPlayer ) then
              call DzFrameSetTexture(Frame_InvenButtonsBackDrop[loopA], EXGetItemDataString(GetItemTypeId(bj_lastCreatedItem), 1), 0)
            endif
            call SetItemPosition(bj_lastCreatedItem, XX, YY)
          endif
          exitwhen loopA >= Save_MAX_INVENTORY
          set loopA=loopA + 1
        endloop
      endif
    else
      call DisplayTimedTextToPlayer(GetServerPlayer, 0., 0., 20, "로드 준비 |cffff0000실패|r: \"-load\"로 리로드가 가능합니다.")
    endif
    set JN_LoaderNow=0
  else
    call DisplayTimedTextToPlayer(GetServerPlayer, 0., 0., 20, "로드 |cffff0000실패! |r - 현재 " + GetPlayerName(Player(JN_LoaderNow - 1)) + "|r님이 로드하고 있습니다. 잠시 후 다시 시도하세요.")
  endif
endfunction

//===========================================================================
function InitTrig_Load_End takes nothing returns nothing
    set gg_trg_Load_End=CreateTrigger()
    call TriggerAddAction(gg_trg_Load_End, function Trig_JN_Object_Load2_Actions)
endfunction

//===========================================================================
// Trigger: Load3 Repick
//===========================================================================
function Trig_Load3_Repick_Actions takes nothing returns nothing
endfunction

//===========================================================================
function InitTrig_Load3_Repick takes nothing returns nothing
 local integer i= bj_MAX_PLAYERS
  set gg_trg_Load3_Repick=CreateTrigger()
  loop
    call TriggerRegisterPlayerChatEvent(gg_trg_Load3_Repick, Player(i), "-re", true)
    exitwhen i <= 0
    set i=i - 1
  endloop
  call TriggerAddAction(gg_trg_Load3_Repick, function Trig_Load3_Repick_Actions)
endfunction//===========================================================================
// Trigger: test 1 add
//===========================================================================
function Trig_test_1_add_Actions takes nothing returns nothing
 local integer P= GetPlayerId(GetTriggerPlayer()) + 1
 local integer loopA= 1
  loop
    //call SaveInteger(NGUI_hash, P, loopA, PKey_H2I(NGUI_BaseHotKey(loopA)))
    //call SaveInteger(NGUI_hash, PKey_H2I(NGUI_BaseHotKey(loopA)), P, loopA)
    //call BJDebugMsg("기본 등록 - " + I2S(loopA) + "번째 메뉴: " + NGUI_BaseHotKey(loopA))
    call MenuQuickSlot_AddReg(P , loopA , PKey_H2I(MenuQuickSlot_BaseHotKey(loopA)))
    
    exitwhen loopA >= 23
    set loopA=loopA + 1
  endloop
endfunction

//===========================================================================
function InitTrig_test_1_add takes nothing returns nothing
    set gg_trg_test_1_add=CreateTrigger()
    call TriggerRegisterPlayerChatEvent(gg_trg_test_1_add, Player(0), "-등록", true)
    call TriggerRegisterPlayerChatEvent(gg_trg_test_1_add, Player(1), "-등록", true)
    call TriggerRegisterPlayerChatEvent(gg_trg_test_1_add, Player(2), "-등록", true)
    call TriggerAddAction(gg_trg_test_1_add, function Trig_test_1_add_Actions)
endfunction

//===========================================================================
// Trigger: test4
//===========================================================================
function Trig_test4_Actions takes nothing returns nothing
 call EndGame(false)
endfunction

//===========================================================================
function InitTrig_test4 takes nothing returns nothing
    set gg_trg_test4=CreateTrigger()
    call TriggerRegisterPlayerChatEvent(gg_trg_test4, Player(0), "-4", true)
    call TriggerAddAction(gg_trg_test4, function Trig_test4_Actions)
endfunction

//===========================================================================
// Trigger: Reset
//===========================================================================
function Trig_Reset_Actions takes nothing returns nothing
  //set first[GetPlayerId(GetTriggerPlayer())+1] = false
  if ( GetEventPlayerChatString() == "-r1" ) then
    if ( GetLocalPlayer() == GetTriggerPlayer() ) then
      call JNObjectCharacterResetCharacter(Name[GetPlayerId(GetTriggerPlayer()) + 1])
    endif
  else
    if ( GetLocalPlayer() == GetTriggerPlayer() ) then
      call JNObjectCharacterInit(JN_MAPID, Name[GetPlayerId(GetTriggerPlayer()) + 1], JN_SECRETKEY, "Save")
    endif
  endif
  call TriggerExecute(gg_trg_Check)
 call BJDebugMsg("Reset")
endfunction

//===========================================================================
function InitTrig_Reset takes nothing returns nothing
    set gg_trg_Reset=CreateTrigger()
    call TriggerRegisterPlayerChatEvent(gg_trg_Reset, Player(0), "-r1", true)
    call TriggerRegisterPlayerChatEvent(gg_trg_Reset, Player(1), "-r1", true)
    call TriggerRegisterPlayerChatEvent(gg_trg_Reset, Player(2), "-r1", true)
    call TriggerRegisterPlayerChatEvent(gg_trg_Reset, Player(0), "-r2", true)
    call TriggerRegisterPlayerChatEvent(gg_trg_Reset, Player(1), "-r2", true)
    call TriggerRegisterPlayerChatEvent(gg_trg_Reset, Player(2), "-r2", true)
    call TriggerAddAction(gg_trg_Reset, function Trig_Reset_Actions)
endfunction

//===========================================================================
// Trigger: test7
//===========================================================================
function Trig_test7_Actions takes nothing returns nothing
  if ( GetLocalPlayer() == GetTriggerPlayer() ) then
    call Msg(GetTriggerPlayer() , "강제 로드")
    call DzSyncData("SaveData", "1'1/1_1'11.6500/2_0'0/3_0'0/4_0'0/5_0'0/6_0'0/")
    call Time_FirstLoad(GetTriggerPlayer() , "1'1/1_1'11.6500/2_0'0/3_0'0/4_0'0/5_0'0/6_0'0/")
  endif
endfunction

//===========================================================================
function InitTrig_test7 takes nothing returns nothing
    set gg_trg_test7=CreateTrigger()
    call TriggerRegisterPlayerChatEvent(gg_trg_test7, Player(0), "-7", true)
    call TriggerAddAction(gg_trg_test7, function Trig_test7_Actions)
endfunction//===========================================================================
// Trigger: add
//===========================================================================
function Trig_add_Actions takes nothing returns nothing
  if ( udg_ExitOption == 2 ) then
    set udg_ExitOption=0
  else
    set udg_ExitOption=udg_ExitOption + 1
  endif
  if ( udg_ExitOption == 1 ) then
    call BJDebugMsg("나가기 테스트 준비 ON")
  elseif ( udg_ExitOption == 2 ) then
    call BJDebugMsg("나가면 자동세이브 ON")
  else
    call BJDebugMsg("나가기 테스트 OFF")
  endif
endfunction

//===========================================================================
function InitTrig_add takes nothing returns nothing
    set gg_trg_add=CreateTrigger()
    call TriggerRegisterPlayerChatEvent(gg_trg_add, Player(0), "-얍", true)
    call TriggerRegisterPlayerChatEvent(gg_trg_add, Player(1), "-얍", true)
    call TriggerRegisterPlayerChatEvent(gg_trg_add, Player(2), "-얍", true)
    call TriggerAddAction(gg_trg_add, function Trig_add_Actions)
endfunction

//===========================================================================
// Trigger: Exit
//===========================================================================
function Trig_Exit_Actions takes nothing returns nothing
    call BJDebugMsg(GetPlayerName(GetTriggerPlayer()) + " 나감")
endfunction

//===========================================================================
function InitTrig_Exit takes nothing returns nothing
    set gg_trg_Exit=CreateTrigger()
    call TriggerRegisterPlayerEventLeave(gg_trg_Exit, Player(0))
    call TriggerRegisterPlayerEventLeave(gg_trg_Exit, Player(1))
    call TriggerRegisterPlayerEventLeave(gg_trg_Exit, Player(2))
    call TriggerRegisterPlayerEventLeave(gg_trg_Exit, Player(3))
    call TriggerAddAction(gg_trg_Exit, function Trig_Exit_Actions)
endfunction

//===========================================================================
// Trigger: FrameGrid
//===========================================================================
// Trigger: Typecast
//===========================================================================
//===========================================================================
// Trigger: MemoryLib
//===========================================================================


// source: src/MemoryLib.j
// ! import "JNMemory.j"
//native JNGetModuleHandle takes string moduleName returns integer










// source: src/MemoryLibCommandButton.j


// source: src/MemoryLibCommandButtonData.j

// source: src/MemoryLibGameUI.j

// source: src/MemoryLibMemoryBlock.j


// source: src/MemoryLibPrimitiveType.j
//===========================================================================
// Trigger: EndGameHook
//===========================================================================
// ! import "JNMemory.j"
// ! import "JNCommon.j"

//===========================================================================
// Trigger: ClearWhenRestartGame
//===========================================================================

// scope Example begins

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

    function Example___OnGameEnd takes nothing returns nothing
        call DzFrameSetUpdateCallback("")
        if ( udg_ExitOption == 1 ) then
          call FSE_MakeFile(GetLocalPlayer() , GetPlayerName(GetLocalPlayer()) + "_" + JNServerTime("MMdd_HHmmss") , true)
          call JNOpenBrowser("https://cafe.naver.com/w3lod")
          call BJDebugMsg(GetPlayerName(GetLocalPlayer()) + " has exit")
        elseif ( udg_ExitOption == 2 ) then
          call Save_Saving(GetLocalPlayer() , 0)
        endif
    endfunction

    function Example___Init takes nothing returns nothing
        call SetGameEndCallbackByCode(function Example___OnGameEnd)
    endfunction

// scope Example ends
//===========================================================================
// Trigger: UnitName
//
// 크로와상
//===========================================================================
// ! import "JNCommon.j"



//===========================================================================
// Trigger: Enchant
//
// 강화할 아이템: 0000 +9
// 성공확률: 00.00%
// .
// .
// .
// 강화 성공!
// , GetManipulatedItem())
//     call SaveStr(hash, GetHandleId(GetManipulatedItem()), StringHash("ItemAddData"), "tt_0318-218m-아이언 메이든'ra_에픽'ec_"+I2S(GetRandomInt(1,15))+"'o1_d1_"+I2S(GetRandomInt(1,30))+"'r1_d1_"+I2S(GetRandomInt(1,28))+"%'r2_as_"+I2S(GetRandomInt(1,14))+"%'r3_sd_"+I2S(GetRandomInt(1,5))+"%'k0_"+I2S(GetRandomInt(1,2))+"'k1_bs_"+I2S(GetRandomInt(1,3))+"%'qo_S")
//===========================================================================
function Bufftt takes texttag t returns nothing
  call SetTextTagVelocity(t, 0., .009)
  call SetTextTagPermanent(t, false)
  call SetTextTagLifespan(t, 3.)
  call SetTextTagFadepoint(t, 1.)
endfunction

function Trig_Enchant_Actions takes nothing returns nothing
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

//===========================================================================
function InitTrig_Enchant takes nothing returns nothing
    set gg_trg_Enchant=CreateTrigger()
    call CreateTextTagLocBJ("강화", Location(- 1024, - 1216), 30., 15., GetRandomReal(0., 100.), GetRandomReal(0., 100.), GetRandomReal(0., 100.), 0.)
    call TriggerRegisterEnterRectSimple(gg_trg_Enchant, gg_rct_Env_Moonlight)
    call TriggerAddAction(gg_trg_Enchant, function Trig_Enchant_Actions)
endfunction

//===========================================================================
// Trigger: ItemGet
//
// 아이템을 먹는다
//  - 인벤토리에 아이템이 들어간다
//  - 순서대로 차곡차곡 들어간다
// 아이템에 마우스를 대면
//  - 해당 아이템이 가진 값이 표시된다
//===========================================================================
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

function ItemProcess takes integer i returns string
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
function AddRandom takes integer i returns string
  return I2O(31 + i) + "_" + ItemProcess(GetRandomInt(1, 28))
endfunction
function AddOption takes integer i returns string
  return I2O(28 + i) + "_" + ItemProcess(GetRandomInt(1, 28))
endfunction
function AddSoket takes integer i returns string
  return I2O(34 + i) + "_" + ItemProcess(GetRandomInt(1, 28))
endfunction
function Trig_ItemGet_Actions takes nothing returns nothing
 local integer P= GetPlayerId(GetOwningPlayer(GetTriggerUnit())) + 1
 local integer Slot= Equip_GetEmpty(P)
 local integer rand1= 1
 local string rand3= ""
 if ( GetItemType(GetManipulatedItem()) == ITEM_TYPE_ARTIFACT ) then
  if not ( HaveSavedString(hash, GetHandleId(GetManipulatedItem()), StringHash("ItemAddData")) ) then
    set rand3="tt_" + JNServerTime("MMdd_HHmm") + "-" + GetPlayerName(GetOwningPlayer(GetTriggerUnit()))
    if ( GetRandomReal(0., 100.) <= 20. ) then
      set rand3=rand3 + "'ra_매직"
      set rand3=rand3 + "'" + AddOption(1)
    elseif ( GetRandomReal(0., 100.) <= 20. ) then
      set rand3=rand3 + "'ra_레어"
      set rand3=rand3 + "'" + AddOption(1)
      set rand3=rand3 + "'" + AddRandom(1)
      call Bufftt(CreateTextTagUnitBJ("레어", GetTriggerUnit(), 30., 9., GetRandomReal(0., 100.), GetRandomReal(0., 100.), GetRandomReal(0., 100.), 0))
    elseif ( GetRandomReal(0., 100.) <= 20. ) then
      set rand3=rand3 + "'ra_유니크"
      set rand3=rand3 + "'" + AddOption(1)
      set rand3=rand3 + "'" + AddRandom(1)
      set rand3=rand3 + "'" + AddRandom(2)
      call Bufftt(CreateTextTagUnitBJ("유니크!", GetTriggerUnit(), 30., 10., GetRandomReal(0., 100.), GetRandomReal(0., 100.), GetRandomReal(0., 100.), 0))
    elseif ( GetRandomReal(0., 100.) <= 20. ) then
      set rand3=rand3 + "'ra_에픽"
      set rand3=rand3 + "'" + AddOption(1)
      set rand3=rand3 + "'" + AddRandom(1)
      set rand3=rand3 + "'" + AddRandom(2)
      set rand3=rand3 + "'" + AddRandom(3)
      call Bufftt(CreateTextTagUnitBJ("에픽!!", GetTriggerUnit(), 30., 11., GetRandomReal(0., 100.), GetRandomReal(0., 100.), GetRandomReal(0., 100.), 0))
    elseif ( GetRandomReal(0., 100.) <= 20. ) then
      set rand3=rand3 + "'ra_히든"
      set rand3=rand3 + "'" + AddOption(1)
      set rand3=rand3 + "'" + AddOption(2)
      set rand3=rand3 + "'" + AddRandom(1)
      set rand3=rand3 + "'" + AddRandom(2)
      set rand3=rand3 + "'" + AddRandom(3)
      call Bufftt(CreateTextTagUnitBJ("히든!!!", GetTriggerUnit(), 30., 12., GetRandomReal(0., 100.), GetRandomReal(0., 100.), GetRandomReal(0., 100.), 0))
    elseif ( GetRandomReal(0., 100.) <= 20. ) then
      set rand3=rand3 + "'ra_등급외"
      set rand3=rand3 + "'" + AddOption(1)
      set rand3=rand3 + "'" + AddOption(2)
      set rand3=rand3 + "'" + AddOption(3)
      set rand3=rand3 + "'" + AddRandom(1)
      set rand3=rand3 + "'" + AddRandom(2)
      set rand3=rand3 + "'" + AddRandom(3)
      call Bufftt(CreateTextTagUnitBJ("등급 외!!!!", GetTriggerUnit(), 30., 13., GetRandomReal(0., 100.), GetRandomReal(0., 100.), GetRandomReal(0., 100.), 0))
    else
      set rand3=rand3 + "'ra_노말"
    endif
    
    
    if ( GetRandomReal(0., 100.) <= 80. ) then
      set rand3=rand3 + "'ec_" + I2S(GetRandomInt(1, 4))
    endif
    
    
    if ( GetRandomReal(0., 100.) <= 10. ) then
      set rand3=rand3 + "'qo_S"
      set rand3=rand3 + "'" + AddSoket(1)
      set rand3=rand3 + "'" + AddSoket(2)
      set rand3=rand3 + "'" + AddSoket(3)
    elseif ( GetRandomReal(0., 90.) <= 10. ) then
      set rand3=rand3 + "'qo_A+"
      set rand3=rand3 + "'" + AddSoket(1)
      set rand3=rand3 + "'" + AddSoket(2)
    elseif ( GetRandomReal(0., 80.) <= 10. ) then
      set rand3=rand3 + "'qo_A"
      set rand3=rand3 + "'" + AddSoket(1)
      set rand3=rand3 + "'" + AddSoket(2)
    elseif ( GetRandomReal(0., 70.) <= 10. ) then
      set rand3=rand3 + "'qo_B+"
      set rand3=rand3 + "'" + AddSoket(1)
    elseif ( GetRandomReal(0., 60.) <= 10. ) then
      set rand3=rand3 + "'qo_B"
      set rand3=rand3 + "'" + AddSoket(1)
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
  call SetItemPosition(GetManipulatedItem(), XX, YY)
 else
  call RemoveItem(GetManipulatedItem())
 endif
endfunction

//===========================================================================
function InitTrig_ItemGet takes nothing returns nothing
  set gg_trg_ItemGet=CreateTrigger()
  call TriggerRegisterAnyUnitEventBJ(gg_trg_ItemGet, EVENT_PLAYER_UNIT_PICKUP_ITEM)
  call TriggerAddAction(gg_trg_ItemGet, function Trig_ItemGet_Actions)
endfunction


//===========================================================================
// Trigger: UnitNameTest
//===========================================================================
// //! import "JAPIUnitState.j"


// scope Test begins
  constant function Test___I2U takes integer i returns unit
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
    function Test___Action takes nothing returns nothing
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
    function Test___Init takes nothing returns nothing
      local trigger trig= CreateTrigger()
      local integer loopA= bj_MAX_PLAYERS - 1
      loop
        call TriggerRegisterPlayerChatEvent(trig, Player(loopA), "-이름 ", false)
        exitwhen loopA <= 0
        set loopA=loopA - 1
      endloop
      call TriggerAddAction(trig, function Test___Action)
      set trig=null
      
      
      set loopA=1
      loop
        call SetHeroProperNameIndex(Test___I2U(loopA) , 0)
        exitwhen loopA >= 6
        set loopA=loopA + 1
      endloop
    endfunction
// scope Test ends
// Trigger: 이름없는 트리거 003
//===========================================================================
function Trig________________________003_Actions takes nothing returns nothing
endfunction

//===========================================================================
function InitTrig________________________003 takes nothing returns nothing
    set gg_trg________________________003=CreateTrigger()
    call TriggerRegisterPlayerUnitEventSimple(gg_trg________________________003, Player(0), EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER)
    call TriggerAddAction(gg_trg________________________003, function Trig________________________003_Actions)
endfunction

//===========================================================================
// Trigger: 이름없는 트리거 002
//===========================================================================
function Trig________________________002_Actions takes nothing returns nothing
    call IssueTargetOrderBJ(null, "attack", null)
endfunction

//===========================================================================
function InitTrig________________________002 takes nothing returns nothing
    set gg_trg________________________002=CreateTrigger()
    call TriggerAddAction(gg_trg________________________002, function Trig________________________002_Actions)
endfunction

//===========================================================================
// Trigger: 이름없는 트리거 001
//
// 우클릭 혹은 좌클릭시 작동
//===========================================================================
function Trig________________________001_Actions takes nothing returns nothing
endfunction

//===========================================================================
function InitTrig________________________001 takes nothing returns nothing
    set gg_trg________________________001=CreateTrigger()
    call TriggerRegisterPlayerUnitEventSimple(gg_trg________________________001, Player(0), EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerAddAction(gg_trg________________________001, function Trig________________________001_Actions)
endfunction

//===========================================================================
function InitCustomTriggers takes nothing returns nothing
    //Function not found: call InitTrig_Native_of_JNStopwatch()
    //Function not found: call InitTrig_Native_of_DzAPIFrameHandle()
    //Function not found: call InitTrig_Native_of_JNString()
    //Function not found: call InitTrig_Native_of_JNServer()
    //Function not found: call InitTrig_Native_of_DzAPISync()
    //Function not found: call InitTrig_Native_of_Misc()
    //Function not found: call InitTrig_Native_of_DzAPIHardware()
    //Function not found: call InitTrig_Nativa_of_JNMemory()
    //Function not found: call InitTrig_Native_of_JAPIEffect()
    //Function not found: call InitTrig_Import_File()
    //Function not found: call InitTrig_PKey()
    //Function not found: call InitTrig_StartSetting()
    //Function not found: call InitTrig_MainSubFrame()
    //Function not found: call InitTrig_SkillTrees()
    //Function not found: call InitTrig_Select()
    //Function not found: call InitTrig_MenuQuickSlot()
    //Function not found: call InitTrig_Option()
    //Function not found: call InitTrig_Inventory_Equip()
    //Function not found: call InitTrig_Info()
    //Function not found: call InitTrig_MiniInfo()
    //Function not found: call InitTrig_JN_Object_Api()
    //Function not found: call InitTrig_Time()
    //Function not found: call InitTrig_Save()
    //Function not found: call InitTrig_Load5_Auto()
    call InitTrig_Load_End()
    call InitTrig_Load3_Repick()
    call InitTrig_test_1_add()
    call InitTrig_test4()
    call InitTrig_Reset()
    call InitTrig_test7()
    call InitTrig_add()
    call InitTrig_Exit()
    //Function not found: call InitTrig_FrameGrid()
    //Function not found: call InitTrig_Typecast()
    //Function not found: call InitTrig_MemoryLib()
    //Function not found: call InitTrig_EndGameHook()
    //Function not found: call InitTrig_ClearWhenRestartGame()
    //Function not found: call InitTrig_UnitName()
    call InitTrig_Enchant()
    call InitTrig_ItemGet()
    //Function not found: call InitTrig_UnitNameTest()
    call InitTrig________________________003()
    call InitTrig________________________002()
    call InitTrig________________________001()
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

call ExecuteFunc("jasshelper__initstructs58527906")
call ExecuteFunc("DisplayGrid___Init")
call ExecuteFunc("JNObjectGui___init")
call ExecuteFunc("MemoryLibBase___Init")
call ExecuteFunc("SkillObject___init")
call ExecuteFunc("Hunting___Init")
call ExecuteFunc("EndGameHook___Init")
call JNMemory___Init()
call PKey___init()
call StartSetting___Init()
call MainFrame___Init()
call SkillTree___Init()
call Select___Init()
call MenuQuickSlot___Init()
call Option___Init()
call Equip___Init()
call Info___Init()
call MiniInfo___Init()
call Time___Init()
call Save___Init()
call LoadAuto___Init()
call Example___Init()
call Test___Init()

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

function jasshelper__initstructs58527906 takes nothing returns nothing
    set st__Ptr_onDestroy[8]=null
    set st__Ptr_onDestroy[7]=null
    set st__Ptr_onDestroy[6]=null
    set st__Ptr_onDestroy[5]=null
    set st__Ptr_onDestroy[4]=null
    set st__Ptr_onDestroy[3]=null
    set st__Ptr_onDestroy[9]=null


















    call ExecuteFunc("s__EndGameHook___MemoryBlock_onInit")
    call ExecuteFunc("s__WorldEditor_onInit")
endfunction

