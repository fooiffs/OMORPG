native EXExecuteScript takes string script returns string 
scope UnitNameChange initializer Init 
  // //! import "JAPIUnitState.j" 
  /* 1.31 추가 함수 
  constant native ConvertUnitStringField					takes integer i returns unitstringfield
  constant unitstringfield UNIT_SF_NAME                   = ConvertUnitStringField('unam')
  constant unitstringfield UNIT_SF_PROPER_NAMES           = ConvertUnitStringField('upro')
  */
  //! 보류 - 시작 후 생성하는 영웅이 같은 이름 index를 갖고 있으면 모두 함께 변경됨, 특별 Index 설정 불가. 
  //! 방법 - 생성시 초기번호를 0으로, 총 이름 13개 설정 후, 플레이어별 번호를 설정. 

  private constant function I2U takes integer i returns unit 
  if(i == 1) then 
    return gg_unit_H000_0011 
  elseif(i == 2) then 
    return gg_unit_H001_0010 
  elseif(i == 3) then 
    return gg_unit_H002_0009 
  elseif(i == 4) then 
    return gg_unit_H003_0008 
  elseif(i == 5) then 
    return gg_unit_H005_0003 
  elseif(i == 6) then 
    return gg_unit_H004_0007 
  else 
    return null 
  endif 
endfunction 
private function Action takes nothing returns nothing 
  local integer P = GetPlayerId(GetTriggerPlayer()) + 1 
  local unit u = udg_hero[P] 
  if(StringLength(SubString(GetEventPlayerChatString(), 8, 99)) < 4) then 
    call SetHeroProperNameIndex(u, 0) 
    //call Print("기본 이름으로 설정: " + JNStringSplit(EXExecuteScript("(require'jass.slk').unit[" + I2S(GetUnitTypeId(u))+"].Propernames"),",",0)) 
  else 
    call SetHeroProperNameIndex(u, P) 
    call SetHeroProperName(u, SubString(GetEventPlayerChatString(), 8, 99)) 
  endif 
  //call Print("now: No." + I2S(GetHeroProperNameIndex(u)) + "/" + GetHeroProperName(u)) 
  set u = null 
endfunction 
private function Init takes nothing returns nothing 
  local trigger trig = CreateTrigger() 
  local integer loopA = bj_MAX_PLAYERS - 1 
  loop 
    call TriggerRegisterPlayerChatEvent(trig, Player(loopA), "-이름 ", false) 
    exitwhen loopA <= 0 
    set loopA = loopA - 1 
  endloop 
  call TriggerAddAction(trig, function Action) 
  set trig = null 
      
  /* 기본 설치 유닛 기본 이름인 0번째 Index로 설정 */
  set loopA = 1 
  loop 
    call SetHeroProperNameIndex(I2U(loopA), 0) 
    exitwhen loopA >= 6 
    set loopA = loopA + 1 
  endloop 
endfunction 
endscope