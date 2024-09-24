scope TestScope initializer Init
  private function DelayedInit2 takes nothing returns nothing
    local PlayerResource tempPlayer = PlayerResource[1]
    set bj_lastCreatedUnit = CreateUnit(Player(0), 'hfoo', 0, 0, 0)
    set PlayerResource[1].character = CharacterResource.Create(bj_lastCreatedUnit)
    // set PlayerResource[1].character.Skills[1] = SkillResource.Create(PlayerResource[1].character, 1, 9, 1)

    call BJDebugMsg(PlayerResource[1].character.Skills[1].GetNameWithRank(7) /*
    */+ "\n and " + SkillResource.GetInfoRequire(1, 9, 2) /*
    */+ "\n and " + SkillResource.GetInfoNextLevel(16, 2))
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
  endfunction
endscope