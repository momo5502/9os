;-----------------------------------------------------------------------------------------------------
;
;       Math related operations reside here
;
;-----------------------------------------------------------------------------------------------------


;--------------------------------------------
; Get random 32bit number
;--------------------------------------------
getRandNum:
	call getClockTicks
	shl ecx, 10h
	mov cx, ax
	mov eax, [randSeed]
	xor eax, ecx
	mov bl, 3h
	
	getRandNum_performRounds:
		or ecx, ebx
		xor eax, ecx
		shl ecx, 1
		shr eax, 3
		dec bl
		cmp bl, 1
		jne getRandNum_performRounds
		
	add eax, ecx
	mov [randSeed], eax
	retn 
