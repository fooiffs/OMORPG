struct WorldEditor
    private string str
    
    /*start of getter setter*/
    public method getStr takes nothing returns string
        return this.str
    endmethod
    
    public method setStr takes string str returns nothing
        set this.str = str
    endmethod
    /*end of getter setter*/
    /*or using method operator*/
    public method operator string takes nothing returns string
        return this.str
    endmethod
    /*end of method operator*/
    
    public static method create takes string str returns thistype
        local thistype this = thistype.allocate()
        call this.setStr(str)
        return this
    endmethod
    
    private method txtMsg takes string str returns nothing
        call BJDebugMsg(str)
    endmethod
    
    private static method onInit takes nothing returns nothing
        local WorldEditor worldEditor = WorldEditor.create("HelloWorld")
        call worldEditor.txtMsg(worldEditor.getStr())
        call worldEditor.txtMsg(worldEditor.string)
        call BJDebugMsg("test change")
    endmethod
endstruct