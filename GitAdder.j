// database 관련 : enums가 가장 먼저 로드되어야 함. enums간에 순서는 상관 없음.
//! import "Native\DzAPIs.j"
//! import "Native\JNMics.j"
//! import "Native\JNServers.j"
//! import "Native\JNUnits.j"
//! import "Native\JNFrame.j"

//! import "Data\Enums\ETile.j"
//! import "Data\Enums\ECharacter.j"
//! import "Data\Enums\EHotkeyMenu.j"
//! import "Data\Enums\ESkillDatas.j"
//! import "Data\Enums\EStatDatas.j"
//! import "Data\Enums\EHotkeys.j"
//! import "Data\Enums\EMainMenus.j"
//! import "Data\Enums\ESkillTrees.j"

//! import "Data\GlobalInitializer.j"
//! loaddata "Data\SkillData.slk"
//! import "Data\SkillDataStr.j"
//! import "Data\IResources.j"

//! import "System\MemoryInterferencer\Typecast.j"
//! import "System\MemoryInterferencer\MemoryLib.j"
//! import "System\MemoryInterferencer\EndGameHook.j"
//! import "System\MemoryInterferencer\UnitNameChanger.j"

//! import "System\Frames\MainFrame.j"
//! import "System\Frames\UnitDetailFrame.j"
//! import "System\Frames\SkillTree.j"
//! import "System\Frames\PortraitEditor.j"
//! import "System\Frames\PushKey.j"
//! import "System\Frames\MenuQuickSlot.j"
//! import "System\Frames\Select.j"
//! import "System\Frames\Option.j"
//! import "System\Frames\InventoryEquip.j"
//! import "System\Frames\Info.j"
//! import "System\Frames\MiniInfo.j"

//! import "System\Server\ServerSetup.j"
//! import "System\Server\Time.j"
//! import "System\Server\LoadAuto.j"
//! import "System\Server\Load.j" /* need Select_NowSelect, UnitNameChanger_SetObjectName() */
//! import "System\Server\Save.j" /* need UnitNameChanger_GetHeroProperNameIndex() */

//! import "System\MemoryInterferencer\ClearCacher.j"

//! import "System\Hunting.j"
//! import "System\Enchant.j"
//! import "System\Exit.j"
//! import "Tests\TestScope.j"
//! import "Tests\AddReg.j"
//! import "Tests\FrameGrid.j"
//! import "Tests\ItemRandomEnchanter.j"
//! import "Tests\UnitNameChange.j"

// //! import "UnUse\HandleProfiler.j"
// //! import "UnUse\ItemUIExample.j"
// //! import "UnUse\NewTexttag.j"