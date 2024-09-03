interface IDropEvent
    method OnDropEvent takes DropSystem dropSystem returns nothing
endinterface

struct BossDropSystem extends IDropEvent
    method OnDropEvent takes DropSystem dropSystem returns nothing
        local unit sourceUnit = dropSystem.GetDyingUnit()
        //...
    endmethod


    private static thistype instance = 0

    static method Instance takes nothing returns thistype
        if ( thistype.instance == 0 ) then
            set thistype.instance = thistype.allocate()
        endif
        return thistype.instance
    endmethod


    constant displayAllSessions = 1
    function GetName takes nothing returns string
        return "BossDropSystem"
    endfunction

endstruct