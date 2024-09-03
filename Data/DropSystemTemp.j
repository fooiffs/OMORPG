scope DropSystemTemp initializer init
    globals
        DropSystem array publicDropsystem
        integer sizeSkillData = 0
    endglobals
        
    struct DropSystem
        string	Character

        static method GetDyingUnit takes nothing returns unit
            return GetTriggerUnit()
        endmethod
    endstruct

    private function init takes nothing returns nothing
    endfunction
endscope