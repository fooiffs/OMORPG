//! loaddata "Data\OMOSLK16.slk"
scope temp initializer init
    globals
        SkillData array publicSkillData
        integer sizeSkillData = 0
    endglobals
        
    struct SkillData
        string Character
        string TypeMain
        string TypeTree
        string RequireLevel
        string TypeCore
        string TypeUI
        string Name
        string Detail
        string ValueUse
        string ValueChange
        integer Distance
        integer DistanceAdd
        integer CastingTime
        integer CastingTimeAdd
        integer Duration
        integer DutationAdd
        integer CoolTime
        integer CoolTimeAdd
        integer Damage
        integer DamageAdd
        integer Range
        integer RangeAdd
        integer CostMana
        integer CostManaAdd

        static method operator [] takes integer input returns thistype
        if ( publicSkillData[input] == 0 ) then
            call BJDebugMsg("Get8 : " + I2S(input) + " is 0")
            return 0
        else
            return publicSkillData[input]
        endif
        endmethod
        static method getFromKey takes integer input returns thistype
        if ( publicSkillData[input] == 0 ) then
            set publicSkillData[input] = create()
            set sizeSkillData = IMaxBJ(input, sizeSkillData)
        endif
        return publicSkillData[input]
        endmethod
    endstruct

    private function delayedInit takes nothing returns nothing
        local integer index = 1
        local string tempString = ""
        call BJDebugMsg("Start2")

        loop
        exitwhen sizeSkillData < index
        set tempString = ""
        set tempString = tempString + SkillData[index].Character + "/"
        set tempString = tempString + SkillData[index].TypeMain + "/"
        set tempString = tempString + SkillData[index].TypeTree + "/"
        set tempString = tempString + SkillData[index].RequireLevel + "/"
        set tempString = tempString + SkillData[index].TypeCore + "/"
        set tempString = tempString + SkillData[index].TypeUI + "/"
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
        if ( SkillData[index].Duration+SkillData[index].DutationAdd != 0 ) then
            set tempString = tempString + I2S(SkillData[index].Duration) + "~" + I2S(SkillData[index].DutationAdd) + "/"
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
        
        call DisplayTimedTextToPlayer(GetLocalPlayer(), 0., 0., 7., "No." + I2S(index) + " = " + tempString)

        set index = index + 1
        endloop
        temp
    endfunction
    private function init takes nothing returns nothing
        call BJDebugMsg("Start")
        call TimerStart(CreateTimer(), .1, false, function delayedInit)
    endfunction
endscope