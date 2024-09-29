scope ESkillTrees
  struct ESkillTree
    static constant integer MainCharacterName	           = 	1
    static constant integer MainTreeTypeLeft	           = 	2
    static constant integer MainTreeTypeCenter	         = 	3
    static constant integer MainTreeTypeRight	           = 	4
    
    static constant integer PopupTitle	                 = 	5
    static constant integer PopupDetailPoint	           = 	6
    static constant integer PopupDetailCurrentLevel	     = 	7
    
    static constant integer SubIcon	                     = 	8
    static constant integer SubTitle	                   = 	9
    static constant integer SubShortDescriptionTop	     = 	10
    static constant integer SubShortDescriptionMiddle	   = 	11
    static constant integer SubShortDescriptionLow	     = 	12
    static constant integer SubLongDescriptionCost	     = 	13
    static constant integer SubLongDescriptionDetials	   = 	14
    static constant integer SubLongDescriptionNextLevels = 	15

    static constant integer SubSkillMinusAll              = 	16
    static constant integer SubSkillMinusOne              = 	17
    static constant integer SubSkillPlusOne               = 	18
    static constant integer SubSkillPlusAll               = 	19

    // (GlobalInitializer.j)private static integer MAX_CHARACTER_COUNT
    private static constant integer MAX_SUBTYPE_COUNT            =  3
    private static string tempString = ""

    // struct SkillTreeData extends IResource
    // super.id => 이 스킬트리의 캐릭터 id 값
  
    // static 가공 왼쪽으로 몇자리, 소숫점 표시, 추가 문자열
    private static method ProcessI2S takes integer input, boolean isRoundUp, integer cutLength, boolean hasDot returns string
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
    static method GetInfoRequire takes integer playerId, integer skillId, integer currentLevel returns string
      if ( currentLevel == 0 ) then
        if ( PlayerResource[playerId].character.changeLevel < SkillData[skillId].RequireLevel ) then
          return "변신레벨 " + I2S(SkillData[skillId].RequireLevel) + " 이상 필요"
        else
          return "습득이 가능합니다"
        endif
      else
        set tempString = SkillData[skillId].ValueUse
        if ( JNStringContains(tempString, "#Mana") ) then
          if ( JNStringContains(tempString, "#CoolDown") ) then
            return "마나소모 " + ProcessI2S(SkillData[skillId].CostMana, true, 1, false) +", 쿨다운 " + ProcessI2S(SkillData[skillId].CoolTime, true, 1, true) + "초"
          else
            return "마나소모 " + ProcessI2S(SkillData[skillId].CostMana, true, 1, false)
          endif
        elseif ( JNStringContains(tempString, "#CoolDown") ) then
          return "쿨다운 " + ProcessI2S(SkillData[skillId].CoolTime, true, 1, true) + "초"
        else
          return "오류/GIR/" +I2S(playerId) + "/" + I2S(skillId) + "/" + I2S(currentLevel) + "/" + tempString
        endif
      endif
    endmethod
    static method AddCommaIfFilled takes string head returns string
      if ( head == "" ) then
        return " : "
      else
        return head + ", "
      endif
    endmethod
    static method AddZeroIfShort takes integer inputLength, boolean isNegative returns string
      if ( isNegative ) then
        set inputLength = inputLength - 1
      endif
      if ( inputLength <= 2 ) then
        return "0."
      else
        return "."
      endif
    endmethod
    static method AddSignalIfPositive takes boolean isPositive returns string
      if ( isPositive ) then
        return "+"
      else
        return ""
      endif
    endmethod
    private static method AddSignal takes integer input, integer cutLength, boolean hasDot returns string
      set cutLength = StringLength(I2S(input)) - cutLength
      if ( hasDot ) then
        return AddSignalIfPositive(0 <= input) + JNStringInsert(SubString(I2S(input),0,cutLength), cutLength-1, AddZeroIfShort(cutLength, input < 0))
      else
        return AddSignalIfPositive(0 <= input) + SubString(I2S(input),0,cutLength)
      endif
    endmethod
    private static method ConvertLevelToPoint takes integer skillLevel returns integer
      if ( skillLevel <= 1 ) then
        return 0
      elseif ( skillLevel <= 6 ) then
        return 1
      elseif ( skillLevel <= 9 ) then
        return 2
      elseif ( skillLevel == 10 ) then
        return 3
      endif
      return 999
    endmethod
    static method GetInfoNextLevel takes integer skillId, integer currentLevel returns string
      local string getString = SkillData[skillId].ValueChange
      set tempString = ""
      if ( 1 <= currentLevel and currentLevel <= 10 ) then
        if ( JNStringContains(getString, "~") ) then
          if ( JNStringContains(getString, "~CastingTime") ) then
            set tempString = AddCommaIfFilled(tempString) + "시전시간 " + AddSignal(SkillData[skillId].CastingTimeAdd, 1, true) + "초"
          endif
          if ( JNStringContains(getString, "~Damage") ) then
            set tempString = AddCommaIfFilled(tempString) + "데미지 " + AddSignal(SkillData[skillId].DamageAdd, 0, false)
            if ( JNStringContains(SkillData[skillId].Detail, "#Damage%") ) then
              set tempString = tempString + "%"
            endif
          endif
          if ( JNStringContains(getString, "~Distance") ) then
            set tempString = AddCommaIfFilled(tempString) + "거리 " + AddSignal(SkillData[skillId].DistanceAdd, 0, false)
          endif
          if ( JNStringContains(getString, "~Range") ) then
            set tempString = AddCommaIfFilled(tempString) + "범위 " + AddSignal(SkillData[skillId].RangeAdd, 0, false)
          endif
          if ( JNStringContains(getString, "~Duration") ) then
            set tempString = AddCommaIfFilled(tempString) + "지속시간 " + AddSignal(SkillData[skillId].DurationAdd, 1, true) + "초"
          endif
          if ( JNStringContains(getString, "~Mana") ) then
            set tempString = AddCommaIfFilled(tempString) + "마나소모 " + AddSignal(SkillData[skillId].CostManaAdd, 0, true)
          endif
          if ( JNStringContains(getString, "~CoolDown") ) then
            set tempString = AddCommaIfFilled(tempString) + "쿨다운 " + AddSignal(SkillData[skillId].CoolTimeAdd, 1, true) + "초"
          endif
        endif
        set tempString = "다음레벨(" + I2S(ConvertLevelToPoint(currentLevel+1)) + "P)" + tempString
      endif
      return tempString
    endmethod
  endstruct
endscope