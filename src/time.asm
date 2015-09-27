;-----------------------------------------------------------------------------------------------------
;
;       Time related operations reside here
;
;-----------------------------------------------------------------------------------------------------


;--------------------------------------------
; Get system clock ticks since midnight
; Return in eax
;--------------------------------------------
getClockTicks:
	; Get clockticks using bios interrupt
	;xor ax, ax
	;int 1Ah
	;mov ax, cx
	;shl eax, 16
	;mov ax, dx
	;retn
	
	; Read ticks from memory
	push ds
	xor eax,eax
	mov ds,eax
	mov eax, [ds:46Ch]
	pop ds
	retn


;--------------------------------------------
; Wait given ticks
;--------------------------------------------
waitTicks:
	call getClockTicks
	mov bx, ax
	
	waitSomeTicks_tickLoop:
		call getClockTicks
		sub ax, bx
		cmp ax, [esp + 2h]
		jle waitSomeTicks_tickLoop
		
	retn 2
	