  scope Save initializer Init
    globals
      private string array InvenData
      private string array EquipData
      
      public constant integer MAX_INVENTORY = 49
      public constant integer MAX_EQUIP = 16
      public constant integer MAX_CHARACTER = 6
    endglobals
    
    private function GetEquipData takes integer P returns nothing
     local integer loopA = 1
     local item t = null
      loop
        set t = LoadItemHandle(hash, P, StringHash("ItemData"+I2S(-loopA)))
        if ( t != null ) then
          set EquipData[loopA] = I2S(GetItemTypeId(t))+"/"+LoadStr(hash, GetHandleId(t), StringHash("ItemAddData"))
        else
          set EquipData[loopA] = ""
        endif
        exitwhen loopA >= MAX_EQUIP
        set loopA = loopA + 1
      endloop
     set t = null
    endfunction
    private function GetInvenData takes integer P returns nothing
     local integer loopA = 1
     local item t = null
      loop
        set t = LoadItemHandle(hash, P, StringHash("ItemData"+I2S(loopA)))
        if ( t != null ) then
          set InvenData[loopA] = I2S(GetItemTypeId(t))+"/"+LoadStr(hash, GetHandleId(t), StringHash("ItemAddData"))
        else
          set InvenData[loopA] = ""
        endif
        exitwhen loopA >= MAX_INVENTORY
        set loopA = loopA + 1
      endloop
     set t = null
    endfunction
    private function msgCheck takes player p, string s returns nothing
      if ( s != "저장이 성공적으로 되었습니다." ) then
        call DisplayTimedTextToPlayer(p, 0., 0., 8, "데이터 저장 |cffff0000실패: |r" + s)
      endif
    endfunction
    
    function EquipItemValue takes string name, integer P, integer Slot returns nothing
      local integer loopA = 1
      local integer loopB = 1
      local string s = ""
      
      loop
        set loopA = 1
        loop
          if ( loopB == Slot ) then
            set s = EquipData[loopA]
          else
            set s = LoadStr(hash, P, StringHash(I2S(loopB)+"e"+I2S(loopA)))
          endif
          if ( IsEmpty(s) ) then
            call JNObjectCharacterRemoveField(name, I2S(loopB)+"e"+I2S(loopA))
          else
            call JNObjectCharacterSetString(name, I2S(loopB)+"e"+I2S(loopA), s)
          endif
          
          exitwhen loopA >= MAX_EQUIP
          set loopA = loopA + 1
        endloop
        exitwhen loopB >= MAX_CHARACTER
        set loopB = loopB + 1
      endloop
    endfunction
    
    
    public function Saving takes player p, integer Slot returns nothing
     local integer P = GetPlayerId(p)+1
     local unit u = udg_hero[P]
     local boolean SpecialName = GetHeroProperNameIndex(u) > 0
     local integer loopA = 1
      call GetEquipData(P)
      call GetInvenData(P)    
      if ( GetLocalPlayer() == p ) then
        //if ( first ) then
          //call JNObjectCharacterResetCharacter(name)
  //        set first = false
          //call BJDebugMsg("Reset")
        //endif
        call JNObjectCharacterInit(JN_MAPID, Name[P], JN_SECRETKEY, "Save")
        
        call JNObjectCharacterSetString(Name[P], "Data", Time_Save(p, Slot))
        call BJDebugMsg("Saveing...Data: "+JNObjectCharacterGetString(Name[P], "Data"))
        if ( SpecialName ) then
          call JNObjectCharacterSetString(Name[P], I2S(loopA)+"_Name", GetHeroProperName(u))
        endif
        
        call EquipItemValue(Name[P], P, Slot)
        set loopA = 1
        loop
          if ( InvenData[loopA] != "" ) then
            call JNObjectCharacterSetString(Name[P], "i"+I2S(loopA), InvenData[loopA])
          else
            call JNObjectCharacterRemoveField(Name[P], "i"+I2S(loopA))
          endif
          exitwhen loopA >= MAX_INVENTORY
          set loopA = loopA + 1
        endloop
        call msgCheck(p, JNObjectCharacterSave(JN_MAPID, Name[P], JN_SECRETKEY, "Save"))
      endif
      set u = null
    endfunction
    private function SaveAction takes nothing returns nothing
      call Saving(GetTriggerPlayer(), Select_NowSelect[GetPlayerId(GetTriggerPlayer())+1])
    endfunction
    private function Init takes nothing returns nothing
     local integer i = 0
     local trigger trg = CreateTrigger()
      loop
        call TriggerRegisterPlayerChatEvent(trg, Player(i), "-save", false)
        exitwhen i >= bj_MAX_PLAYERS-1
        set i = i + 1
      endloop
      call TriggerAddAction(trg, function SaveAction)
     set trg = null
    endfunction
  endscope