scope ESkillTrees
  struct ESkillTree
    static key MainCharacterName
    static key MainTreeTypeLeft
    static key MainTreeTypeCenter
    static key MainTreeTypeRight
    
    static key PopupTitle
    static key PopupDetailPoint
    static key PopupDetailCurrentLevel
    
    static key SubIcon
    static key SubTitle
    static key SubShortDescriptionTop
    static key SubShortDescriptionMiddle
    static key SubShortDescriptionLow
    static key SubLongDescriptionCost
    static key SubLongDescriptionDetials
    static key SubLongDescriptionNextLevels

    static key SubSkillMinusAll
    static key SubSkillMinusOne
    static key SubSkillPlusOne
    static key SubSkillPlusAll

    // (GlobalInitializer.j)private static integer MAX_CHARACTER_COUNT
    private static constant integer MAX_SUBTYPE_COUNT = 3
    private static string tempString = ""

    // struct SkillTreeData extends IResource
    // super.id => 이 스킬트리의 캐릭터 id 값
  
    // static 가공 왼쪽으로 몇자리, 소숫점 표시, 추가 문자열
    public static method ProcessI2S takes integer input, boolean isRoundUp, integer cutLength, boolean hasDot returns string
      if ( isRoundUp ) then
        set input = input + 5
      endif
      set cutLength = StringLength(I2S(input)) - cutLength
      if ( hasDot ) then
        return JNStringInsert(SubString(I2S(input),0,cutLength), cutLength-1, ".")
      else
        return SubString(I2S(input),0,cutLength)
      endif
    endmethod
  endstruct
endscope