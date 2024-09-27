/* 240925 신규 :체력/마력 텍스트 */
scope PortraitEditor initializer Init
	globals
    private integer pGameDll
    private integer pGameUI
    private constant integer JNProc__fastcall = 3
    private boolean initializered = false
	endglobals

	// = DzFrameGetPortrait
	private function GetPortraitButton takes nothing returns integer
		if pGameUI != 0 then
			return JNMemoryGetInteger(pGameUI + 0x3F4)
		endif
		return 0
	endfunction
	// SimpleFontString
	private function GetPortraitButtonHPText takes nothing returns integer
		local integer pData = GetPortraitButton()
		if pData != 0 then
			return JNMemoryGetInteger(pData + 0x240)
		endif
		return 0
	endfunction
	// SimpleFontString
	private function GetPortraitButtonManaText takes nothing returns integer
		local integer pData = GetPortraitButton()
		if pData != 0 then
			return JNMemoryGetInteger(pData + 0x244)
		endif
		return 0
	endfunction
	
	// 상대 좌표가 아닌 고정 좌표만 사용하기에, 생략.
	// function SetCLayoutFramePoint takes integer pFrame, integer point, integer pParentFrame, integer relativePoint, real x, real y returns integer
	// 	local integer addr = pGameDll + 0x13FC20
		
	// 	if pFrame != 0 then
	// 		call SaveStr(JNProc_ht, JNProc_key, 0, "(IIIIRR)I")
	// 		call SaveInteger(JNProc_ht, JNProc_key, 1, pFrame)        
	// 		call SaveInteger(JNProc_ht, JNProc_key, 2, point)
	// 		call SaveInteger(JNProc_ht, JNProc_key, 3, pParentFrame)
	// 		call SaveInteger(JNProc_ht, JNProc_key, 4, relativePoint)
	// 		call SaveReal(JNProc_ht, JNProc_key, 5, x)
	// 		call SaveReal(JNProc_ht, JNProc_key, 6, y)
	// 		call SaveInteger(JNProc_ht, JNProc_key, 7, 1)
	// 		if JNProcCall(JNProc__thiscall, addr, JNProc_ht) then
	// 			return LoadInteger(JNProc_ht, JNProc_key, 0)
	// 		endif
	// 	endif
		
	// 	return 0
	// endfunction
	private function IsFrameLayout takes integer pFrame returns boolean
		local integer addr
		if pFrame != 0 then
			set addr = JNMemoryGetInteger(JNMemoryGetInteger(pFrame) + 0x1C)
			return addr == (pGameDll + 0x13F170 ) or addr == (pGameDll + 0x1428A0 )
		endif
		return false
	endfunction
	private function GetFrameLayout takes integer pFrame returns integer
		if pFrame != 0 then
			if not IsFrameLayout(pFrame) then
				return pFrame + 0xB4 // if 1.29+ 0xBC
			else
				return pFrame
			endif
		endif
		return 0
	endfunction
	private function SetCLayoutFrameAbsolutePoint takes integer pFrame, integer point, real offsetX, real offsetY returns integer
		local integer addr = pGameDll + 0x13FBB0
		
		if pFrame != 0 then
			call SaveStr(JNProc_ht, JNProc_key, 0, "(IIRRI)I")
			call SaveInteger(JNProc_ht, JNProc_key, 1, pFrame)        
			call SaveInteger(JNProc_ht, JNProc_key, 2, point)
			call SaveReal(JNProc_ht, JNProc_key, 3, (offsetX))
			call SaveReal(JNProc_ht, JNProc_key, 4, (offsetY))
			call SaveInteger(JNProc_ht, JNProc_key, 5, 1)
			if JNProcCall(JNProc__thiscall, addr, JNProc_ht) then
				return LoadInteger(JNProc_ht, JNProc_key, 0)
			endif
		endif
		
		return 0
	endfunction
	private function SetFrameAbsolutePoint takes integer pFrame, integer point, real offsetX, real offsetY returns integer
		if pFrame != 0 then
			return SetCLayoutFrameAbsolutePoint(GetFrameLayout(pFrame), point, offsetX, offsetY)
		endif
		return 0
	endfunction
	// function SetFramePoint takes integer pFrame, integer point, integer pParentFrame, integer relativePoint, real x, real y returns integer
	// 	if 0 < pFrame and 0 < pParentFrame then
	// 		return SetCLayoutFramePoint(GetFrameLayout(pFrame), point, GetFrameLayout(pParentFrame), relativePoint, x, y)
	// 	endif
	// 	return 0
	// endfunction
  private function Change2 takes integer inputHp returns nothing
    if ( inputHp != 0 ) then
      set initializered = true
      call DzFrameClearAllPoints(inputHp)
      call SetFrameAbsolutePoint(inputHp, JN_FRAMEPOINT_CENTER, .25, .025)
      set inputHp = GetPortraitButtonManaText()
      call DzFrameClearAllPoints(inputHp)
      call SetFrameAbsolutePoint(inputHp, JN_FRAMEPOINT_CENTER, .25, .010)
			call MsgAll("Changed")
			call ClearSelection()
    endif
  endfunction
  private function GetGameUI2 takes integer bInit, integer bRelease returns integer
		local integer addr = pGameDll + 0x3A0B70
		call SaveStr(JNProc_ht, JNProc_key, 0, "(II)I")
		call SaveInteger(JNProc_ht, JNProc_key, 1, bInit)        
		call SaveInteger(JNProc_ht, JNProc_key, 2, bRelease)
		if JNProcCall(JNProc__fastcall, addr, JNProc_ht) then
			return LoadInteger(JNProc_ht, JNProc_key, 0)
		endif
		return 0
	endfunction
	private function Init takes nothing returns nothing
		set pGameDll = JNGetModuleHandle("Game.dll")
		set pGameUI = GetGameUI2(0, 0)
	endfunction

	public function Change takes nothing returns nothing
		if ( not initializered ) then
			call Change2(GetPortraitButtonHPText())
		endif
	endfunction
endscope