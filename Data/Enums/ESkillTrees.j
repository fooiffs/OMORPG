scope ESkillTrees
  struct ESkillTree  
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