native EXGetAbilityDataInteger takes ability abil, integer level, integer data_type returns integer
native EXGetUnitAbility takes unit u, integer abilcode returns ability
native EXSetAbilityDataInteger takes ability abil, integer level, integer data_type, integer value returns boolean
native EXGetAbilityDataReal takes ability abil, integer level, integer data_type returns real
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
    return EXGetAbilityDataInteger(EXGetUnitAbility(whichUnit, abilId), 1, ABILITY_DATA_DATA_C)
  endfunction
  private function JNGetUnitAbilityTargets takes unit whichUnit, integer abilId returns real
    return EXGetAbilityDataReal(EXGetUnitAbility(whichUnit, abilId), 1, ABILITY_DATA_DATA_B)
  endfunction
  private function JNGetUnitAbilityUIs takes unit whichUnit, integer abilId returns real
    return EXGetAbilityDataReal(EXGetUnitAbility(whichUnit, abilId), 1, ABILITY_DATA_DATA_C)
  endfunction
  private function JNSetUnitAbilityHotkey takes unit whichUnit, integer abilId, integer newKey returns nothing
    call EXSetAbilityDataInteger(EXGetUnitAbility(whichUnit, abilId), 1, ABILITY_DATA_DATA_C, newKey)
  endfunction
  
  private function DelayedInit3 takes nothing returns nothing
    local unit tempUnit = udg_hero[1]
    if ( tempUnit == null ) then
      call BJDebugMsg("Hotkey null")
    else
      if ( count == 0 ) then
        call BJDebugMsg("Hotkey-C = " + I2S(JN_OSKEY_C))
        set udg_hero[2] = CreateUnit(Player(0), GetUnitTypeId(tempUnit), GetWidgetX(tempUnit), GetWidgetY(tempUnit), GetUnitFacing(tempUnit))
      elseif ( count == 1 ) then
        // call JNSetUnitAbilityHotkey(tempUnit, 'A000', JN_OSKEY_B)
        call BJDebugMsg("Hotkey-BB = " + I2S(JN_OSKEY_B))
      elseif ( count == 2 ) then
        // call BJDebugMsg("Hotkey-Local = " + I2S(GetLocalizedHotkey("B")))
      else
        call ForceUIKeyBJ(GetOwningPlayer(tempUnit), "B")
      endif
      set count = count + 1
      if ( count <= 5 ) then
        call BJDebugMsg("Targets" + I2S(count) +" = " + R2S(JNGetUnitAbilityTargets(tempUnit, 'A000')) )
        call BJDebugMsg("UIs" + I2S(count) +" = " + R2S(JNGetUnitAbilityUIs(tempUnit, 'A000')) )
      endif
    endif
    set tempUnit = null

  endfunction
  private function DelayedInit2 takes nothing returns nothing
    local PlayerResource tempPlayer = PlayerResource[1]
    set bj_lastCreatedUnit = CreateUnit(Player(0), 'hfoo', 0, 0, 0)
    set PlayerResource[1].character = CharacterResource.Create(bj_lastCreatedUnit)
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
      call TimerStart(CreateTimer(), .5, false, function DelayedInit)
      call TimerStart(CreateTimer(), 1., false, function DelayedInit2)
      call TimerStart(CreateTimer(), 1., true, function DelayedInit3)
  endfunction
endscope