scope TestScope initializer Init 
  private function DelayedInit3 takes nothing returns nothing 
    local unit tempUnit = udg_hero[1] 
    if(tempUnit == null) then 
      call MsgAll("Hotkey null") 
    elseif(PlayerResource[1].character == null) then 
      set PlayerResource[1].character = CharacterResource.Create(tempUnit, ECharacter.UT2I(GetUnitTypeId(tempUnit))) 
    endif 
    set tempUnit = null 

  endfunction 
  
  private function Init takes nothing returns nothing 
    call MsgAll("Start") 
    call TimerStart(CreateTimer(), 1., true, function DelayedInit3) 
  endfunction 
endscope