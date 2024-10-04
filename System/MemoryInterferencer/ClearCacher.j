scope ClearCacher initializer Init 

  function FCut takes string s, integer c returns string 
    if(s == null) then 
      return "" 
  else 
      set s = JNStringSplit(s, "|", c - 1) 
      if(SubString(s, 0, 3) == "cff") then 
        return "|" + s 
      else 
        return s 
      endif 
    endif 
  endfunction 
  function FSE_MakingFile takes string File returns nothing 
    call Preload("    	" + FCut(File, 1) + "	    ") 
    call Preload("    	" + FCut(File, 2) + "	    ") 
    call Preload("    	" + FCut(File, 3) + "	    ") 
    call Preload("    	" + FCut(File, 4) + "	    ") 
    call Preload("    	" + FCut(File, 5) + "	    ") 
    call Preload("    	" + FCut(File, 6) + "	    ") 
    call Preload("    	" + FCut(File, 7) + "	    ") 
    call Preload("    	" + FCut(File, 8) + "	    ") 
  endfunction 
  function FSE_MakingFile2 takes string Code1, string Code2, string Code3 returns nothing 
    call Preload("") 
    call Preload("    	\nMain Code:\n    	    	-load " + Code1 + "	    ") 
    call Preload("    	\n Sub Code:\n    	    	-load2 " + Code2 + "	    ") 
    call Preload("    	" + Code3 + "	    ") 
  endfunction 
  function FSE_MakeFile takes player p, string Name, boolean o returns nothing 
    local string savecode = "아이디: fooiff|직업: 성직자(순수) - Lv99|체마: 38,118/34,357|경험치: 43.9％|소유금: 720,000 Gold|포인트: 477 Point|시간: 3시간 39분|버전: New 1.12Cv|※내용은 지워도 상관없습니다. 코드만 남기세요." 
    if(GetLocalPlayer() == p) then 
      call PreloadGenClear() 
      call PreloadGenStart() 
      call FSE_MakingFile(savecode) 
      call FSE_MakingFile2("abcde", "efghi", FCut(savecode, 9)) 
      call PreloadGenEnd("OMOSave\\" + Name + ".txt") 
    endif 
    if(o) then 
      call BJDebugMsg("파일 만들기 |cff00ff00성공! |r - " + "|cffffdc3c" + "워크래프트 폴더 - CustomMapData - OMOSave 폴더의 \n          |r" + Name + ".txt" + "|cffffdc3c" + "으로 저장되었습니다.") 
    endif 
    set p = null 
  endfunction 

  private function OnGameEnd takes nothing returns nothing 
    call DzFrameSetUpdateCallback("") 
    if(udg_ExitOption == 1) then 
      call FSE_MakeFile(GetLocalPlayer(), GetPlayerName(GetLocalPlayer()) + "_" + JNServerTime("MMdd_HHmmss"), true) 
      call JNOpenBrowser("https://cafe.naver.com/w3lod") 
      call BJDebugMsg(GetPlayerName(GetLocalPlayer()) + " has exit") 
    elseif(udg_ExitOption == 2) then 
      call Save_Saving(GetLocalPlayer(), 0) 
    endif 
  endfunction 

  private function Init takes nothing returns nothing 
    call SetGameEndCallbackByCode(function OnGameEnd) 
  endfunction 

endscope 
