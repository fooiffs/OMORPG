scope Time initializer Init
  globals
    public integer StopWatch = 0
    public integer array last
    public integer array Original
  endglobals
  public function Get takes nothing returns integer
    return JNStopwatchElapsedHour(StopWatch)*60+JNStopwatchElapsedMinute(StopWatch)
  endfunction
  public function FirstLoad takes player p, string Data returns nothing
    local integer loopA = 1
    if ( Data != "" and Data != null ) then
      if ( GetLocalPlayer() == p ) then
        loop
          set Original[loopA] = S2I(JNStringSplit(JNStringSplit(Data, I2S(loopA)+"_", 1), "'", 0))
          exitwhen loopA >= Save_MAX_CHARACTER
          set loopA = loopA + 1
        endloop
        set Original[0] = Original[1] + Original[2] + Original[3] + Original[4] + Original[5] + Original[6]
      endif
    endif
  endfunction
  public function Load takes player p, integer Slot returns nothing
    if ( GetLocalPlayer() == p ) then
      call Msg(p, "총 시간: " + I2S(Original[0]) + "-> " + I2S(Original[0]   +Get()-last[Slot]))
      call Msg(p, I2S(Slot)+"번 시간: " + I2S(Original[Slot]) + "-> " + I2S(Original[Slot]   +Get()-last[Slot]))
      set Original[0] =    Original[0]   +Get()-last[Slot]
      set Original[Slot] = Original[Slot]+Get()-last[Slot]
      set last[Slot] = Get()
    endif
  endfunction
  
  public function Save takes player p, integer Slot returns string
    local string Data = LoadStr(hash, GetPlayerId(p)+1, StringHash("Data"))
    local integer P = GetPlayerId(p)+1
    call Load(p, Slot)
    if ( Data == null ) or ( Data == "" ) then
      set Data = Select_DEFAULT_DATA
    endif
    /*포맷: LastSlot ' 플탐All */
    set Data = I2S(Slot)+"'"+I2S(Original[0])  +  JNStringSub(Data, JNStringPos(Data, "/"), JNStringLength(Data))
    /*포맷: Slot _ 플탐 ' 레벨 . 경험치 */
    return JNStringReplace(Data, JNStringSplit(Data, "/", Slot), I2S(Slot)+"_"+I2S(Original[Slot])+"'"+I2S(GetHeroLevel(udg_hero[P]))+"."+I2S(GetHeroXP(udg_hero[P])))
  endfunction
  private function Init takes nothing returns nothing
    set StopWatch = JNStopwatchCreate()
    call JNStopwatchStart(StopWatch)
  endfunction

endscope