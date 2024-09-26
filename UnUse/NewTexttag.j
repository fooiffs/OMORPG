native EXSetEffectSize takes effect e, real size returns nothing

scope NewTexttag
  globals
    private constant real NUMBER_SPACE = 58. /*글자 사이 간격 */
    private constant player PC = Player(bj_PLAYER_NEUTRAL_EXTRA) /* 모델 소유주 */
    private constant real BASE_Y = 75. /* 기본 높이 */
    
    /* 누수 방지 */
    private effect temp_effect
    private string temp_s
  endglobals
  
  private constant function I2SS takes integer i returns string
  /* 아래 constant function은 I2S 사용이 안되니 그걸 위한 함수 */
    if ( i == 1 ) then
      return "1"
    elseif ( i == 2 ) then
      return "2"
    elseif ( i == 3 ) then
      return "3"
    elseif ( i == 4 ) then
      return "4"
    elseif ( i == 5 ) then
      return "5"
    elseif ( i == 6 ) then
      return "6"
    elseif ( i == 7 ) then
      return "7"
    elseif ( i == 8 ) then
      return "8"
    elseif ( i == 9 ) then
      return "9"
    else
      return "0"
    endif
  endfunction
  private constant function I2SSS takes integer Tag returns string
  /* 모델 및 구분자 */
    if Tag == 1 then     /* 물리 스킬 */
      return "R"
    elseif Tag == 2 then /* 마법 스킬 */
      return "B"
    elseif Tag == 3 then /* 물리 치명타 */
      return "N"
    elseif Tag == 4 then /* 마법 치명타 */
      return "F"
    elseif Tag == 5 then
      return "B"
    else
      return "M"
    endif
  endfunction
  private constant function II2S takes integer inCount, integer Tag returns string
    return "war3mapImported\\" + I2SSS(Tag) + I2SS(inCount) + ".mdl"
  endfunction
  private constant function SS2I takes string s returns integer
  /* 글자 최적화 */
    if ( s == "1" ) then
      return 1
    elseif ( s == "2" ) then
      return 2
    elseif ( s == "3" ) then
      return 3
    elseif ( s == "4" ) then
      return 4
    elseif ( s == "5" ) then
      return 5
    elseif ( s == "6" ) then
      return 6
    elseif ( s == "7" ) then
      return 7
    elseif ( s == "8" ) then
      return 8
    elseif ( s == "9" ) then
      return 9
    else
      return 0
    endif
  endfunction
  public function View takes real x, real y, integer val, real size, real dur, integer Tag returns nothing
    local integer loopA
    set temp_s = I2S(R2I(val))  /* 5687.21 -> "5687" */
    set loopA = StringLength(temp_s)
    set x = x-(loopA-1)*.5*(NUMBER_SPACE*size) /* 글자 가운데 정렬 */
    
    loop
      exitwhen loopA <= 0
      set temp_effect = AddSpecialEffect(II2S(SS2I(SubString(temp_s, loopA-1, loopA)), Tag), x+(NUMBER_SPACE*size)*loopA, y+BASE_Y)
      call EXSetEffectSize(temp_effect, size) /* 기존에 0.6쓰던거 그냥 1.0 쓰면됨 */
      call DestroyEffect(temp_effect)
    
      set loopA = loopA - 1
    endloop
  endfunction
  
endscope