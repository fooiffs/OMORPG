scope Enchant initializer Init 
  globals 
    private trigger triggerEnchant = CreateTrigger() 
  endglobals 

  private function Trig_Enchant_Actions takes nothing returns nothing 
    local integer P = GetPlayerId(GetOwningPlayer(GetTriggerUnit())) + 1 
    local item t = LoadItemHandle(hash, P, StringHash("ItemData1")) 
    local texttag tt 
    local string s = LoadStr(hash, GetHandleId(t), StringHash("ItemAddData")) 
    local integer i = S2I(JNStringSub(s, JNStringPos(s, "ec_") + 3, 2)) 
    local string ts = "성공확률: " + R2SW(Pow(.9, i - 1) * 100., 2, 1) + "%" 
 
    if(t != null) then 
      call PauseUnit(GetTriggerUnit(), true) 
    
      call Bufftt(CreateTextTagUnitBJ("강화할 아이템: " + GetItemName(t) + " +" + I2S(i), GetTriggerUnit(), 30., 9., GetRandomReal(0., 100.), GetRandomReal(0., 100.), GetRandomReal(0., 100.), 0)) 
    
      set tt = CreateTextTagUnitBJ(ts, GetTriggerUnit(), 0., 10., GetRandomReal(0., 100.), GetRandomReal(0., 100.), GetRandomReal(0., 100.), 0) 
      call TriggerSleepAction(.5) 
      call SetTextTagTextBJ(tt, ts + " . ", 10.) 
      call TriggerSleepAction(.5) 
      call SetTextTagTextBJ(tt, ts + " . . ", 10.) 
      call TriggerSleepAction(.5) 
      call SetTextTagTextBJ(tt, ts + " . . .", 10.) 
      call TriggerSleepAction(.5) 
      if(GetRandomReal(0., 1.) <= Pow(.9, i - 1)) then 
        if(GetRandomReal(0., 100.) <= 15.) then 
          call SetTextTagTextBJ(tt, ts + " . . .대성공!", 10.) 
          if(JNStringContains(s, "ec_")) then 
            call SaveStr(hash, GetHandleId(t), StringHash("ItemAddData"), JNStringReplace(s, "ec_" + I2S(i), "ec_" + I2S(i + 2))) 
          else 
            call SaveStr(hash, GetHandleId(t), StringHash("ItemAddData"), s + "'ec_2") 
          endif 
        else 
          call SetTextTagTextBJ(tt, ts + " . . .성공!", 10.) 
          if(JNStringContains(s, "ec_")) then 
            call SaveStr(hash, GetHandleId(t), StringHash("ItemAddData"), JNStringReplace(s, "ec_" + I2S(i), "ec_" + I2S(i + 1))) 
          else 
            call SaveStr(hash, GetHandleId(t), StringHash("ItemAddData"), s + "'ec_1") 
          endif 
        endif 
      elseif(GetRandomReal(0., 100.) <= 15.) then 
        call SetTextTagTextBJ(tt, ts + " . . .대실패!", 10.) 
        call SaveStr(hash, GetHandleId(t), StringHash("ItemAddData"), JNStringReplace(s, "ec_" + I2S(i), "ec_0")) 
      else 
        call SetTextTagTextBJ(tt, ts + " . . .실패!", 10.) 
        call SaveStr(hash, GetHandleId(t), StringHash("ItemAddData"), JNStringReplace(s, "ec_" + I2S(i), "ec_" + I2S(i - 1))) 
      endif 
      call PauseUnit(GetTriggerUnit(), false) 
      call TriggerSleepAction(1.) 
      call DestroyTextTag(tt) 
      set tt = null 
    else 
      call BJDebugMsg("인벤토리 1번칸에 강화할 아이템을 놓아주세요.") 
    endif 
  endfunction 
  private function Init takes nothing returns nothing 
    call CreateTextTagLocBJ("강화", Location(-1024, -1216), 30., 15., GetRandomReal(0., 100.), GetRandomReal(0., 100.), GetRandomReal(0., 100.), 0.) 
    call TriggerRegisterEnterRectSimple(triggerEnchant, gg_rct_Env_Moonlight) 
    call TriggerAddAction(triggerEnchant, function Trig_Enchant_Actions) 
  endfunction 
endscope