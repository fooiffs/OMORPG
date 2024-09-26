scope TestScope initializer Init
  globals
    constant integer JN_OSKEY_B                             = $42
    constant integer JN_OSKEY_C                             = $43
    constant integer ABILITY_DATA_HOTKET            = 200 // 단축키(보통) integer    ('ahky')    // X
    integer count = 0
    constant integer ABILITY_DATA_DATA_B            = 109 // real       ('....')
    constant integer ABILITY_DATA_DATA_C            = 110 // real       ('....')
  endglobals
  private function JNGetUnitAbilityHotkey takes unit whichUnit, integer abilId returns integer
    return EXGetAbilityDataInteger(EXGetUnitAbility(whichUnit, abilId), 1, ABILITY_DATA_HOTKET)
  endfunction
  private function JNGetUnitAbilityTargets takes unit whichUnit, integer abilId returns real
    return EXGetAbilityDataReal(EXGetUnitAbility(whichUnit, abilId), 1, ABILITY_DATA_DATA_B)
  endfunction
  private function JNGetUnitAbilityUIs takes unit whichUnit, integer abilId returns real
    return EXGetAbilityDataReal(EXGetUnitAbility(whichUnit, abilId), 1, ABILITY_DATA_DATA_C)
  endfunction
  private function JNSetUnitAbilityUIs takes unit whichUnit, integer abilId, real newValue returns nothing
    call EXSetAbilityDataReal(EXGetUnitAbility(whichUnit, abilId), 1, ABILITY_DATA_DATA_C, newValue)
  endfunction
  private function JNSetUnitAbilityHotkey takes unit whichUnit, integer abilId, integer newKey returns nothing
    call EXSetAbilityDataInteger(EXGetUnitAbility(whichUnit, abilId), 1, ABILITY_DATA_HOTKET, newKey)
  endfunction
  
  private function DelayedInit3 takes nothing returns nothing
    local unit tempUnit = udg_hero[1]
    if ( tempUnit == null ) then
      call BJDebugMsg("Hotkey null") 
    elseif ( PlayerResource[1].character == null ) then
      set PlayerResource[1].character = CharacterResource.Create(tempUnit)
    endif
    set tempUnit = null

  endfunction
  private function DelayedInit2 takes nothing returns nothing
    local PlayerResource tempPlayer = PlayerResource[1]

    // set PlayerResource[1].character.Skills[1] = SkillResource.Create(PlayerResource[1].character, 1, 9, 1)

    /* call BJDebugMsg(PlayerResource[1].character.Skills[1].GetNameWithRank(7) /*
    */+ "\n and " + SkillResource.GetInfoRequire(1, 9, 2) /*
    */+ "\n and " + SkillResource.GetInfoNextLevel(16, 2))
    */
    // ForceUIKeyBJ
  endfunction
  private function DelayedInit takes nothing returns nothing
    local integer index = 1
    local string tempString = ""
    // call BJDebugMsg("Start2")

    loop
      exitwhen ( MAX_SKILL_COUNT <= index )
      set tempString = ""
      set tempString = tempString + I2S(SkillData[index].Character) + "/"
      set tempString = tempString + I2S(SkillData[index].TypeMain) + "/"
      set tempString = tempString + I2S(SkillData[index].TypeTree) + "/"
      set tempString = tempString + I2S(SkillData[index].RequireLevel) + "/"
      set tempString = tempString + I2S(SkillData[index].TypeCore) + "/"
      set tempString = tempString + I2S(SkillData[index].TypeUI) + "/"
      set tempString = tempString + SkillData[index].Name + "/"
      set tempString = tempString + SkillData[index].Detail + "/"
      if ( SkillData[index].ValueUse != "" ) then
          set tempString = tempString + SkillData[index].ValueUse + "/"
      endif
      if ( SkillData[index].ValueChange != "" ) then
          set tempString = tempString + SkillData[index].ValueChange + "/"
      endif
      if ( SkillData[index].Distance+SkillData[index].DistanceAdd != 0 ) then
          set tempString = tempString + I2S(SkillData[index].Distance) + "~" + I2S(SkillData[index].DistanceAdd) + "/"
      endif
      if ( SkillData[index].CastingTime+SkillData[index].CastingTimeAdd != 0 ) then
          set tempString = tempString + I2S(SkillData[index].CastingTime) + "~" + I2S(SkillData[index].CastingTimeAdd) + "/"
      endif
      if ( SkillData[index].Duration+SkillData[index].DurationAdd != 0 ) then
          set tempString = tempString + I2S(SkillData[index].Duration) + "~" + I2S(SkillData[index].DurationAdd) + "/"
      endif
      if ( SkillData[index].CoolTime+SkillData[index].CoolTimeAdd != 0 ) then
          set tempString = tempString + I2S(SkillData[index].CoolTime) + "~" + I2S(SkillData[index].CoolTimeAdd) + "/"
      endif
      if ( SkillData[index].Damage+SkillData[index].DamageAdd != 0 ) then
          set tempString = tempString + I2S(SkillData[index].Damage) + "~" + I2S(SkillData[index].DamageAdd) + "/"
      endif
      if ( SkillData[index].Range+SkillData[index].RangeAdd != 0 ) then
          set tempString = tempString + I2S(SkillData[index].Range) + "~" + I2S(SkillData[index].RangeAdd) + "/"
      endif
      if ( SkillData[index].CostMana+SkillData[index].CostManaAdd != 0 ) then
          set tempString = tempString + I2S(SkillData[index].CostMana) + "~" + I2S(SkillData[index].CostManaAdd) + "."
      endif
      
    //   call DisplayTimedTextToPlayer(GetLocalPlayer(), 0., 0., 7., "No." + I2S(index) + " = " + tempString)

      set index = index + 1
    endloop
  endfunction
  private function Init takes nothing returns nothing
      call BJDebugMsg("Start")
      // call TimerStart(CreateTimer(), .5, false, function DelayedInit)
      call TimerStart(CreateTimer(), 1., false, function DelayedInit2)
      call TimerStart(CreateTimer(), 1., true, function DelayedInit3)
      // call TimerStart(CreateTimer(), 1., true, function DelayedInit4)
  endfunction
endscope