;-----------------------------------------------------------------------------------------------------
;
;    Initialization operations reside here
;
;-----------------------------------------------------------------------------------------------------


;--------------------------------------------
; Main initialization routine
;--------------------------------------------
initialize:
	call initGfxMode
	call initA20
	;call initPMode
	retn
	
	
;--------------------------------------------
; Initialize graphics mode
; http://www.wagemakers.be/english/doc/vga
;--------------------------------------------
initGfxMode:
	mov ax, 13h 
	;mov ax, 4F02h
	;mov bx, 118h
	int 10h
	retn
	
	
;--------------------------------------------
; Initialize A20 line
;--------------------------------------------
initA20:
	cli

	call waitA20
	mov al, 0ADh
	out 64h, al
 
	call waitA20
	mov al, 0D0h
	out 64h, al
 
	call wait2A20
	in al, 60h
	push eax
 
	call waitA20
	mov al, 0D1h
	out 64h, al
 
	call waitA20
	pop eax
	or al, 2
	out 60h, al
 
	call waitA20
	mov al, 0AEh
	out 64h, al
 
	call waitA20
	sti
	retn
 
 
;--------------------------------------------
; A20 - Wait for keyboad controller
;--------------------------------------------
waitA20:
	in al, 64h
	test al, 2
	jnz waitA20
	retn
 

;--------------------------------------------
; A20 - Wait for keyboad controller (2)
;--------------------------------------------
wait2A20:
	in al, 64h
	test al, 1
	jz wait2A20
	retn

	
;--------------------------------------------
; Enter protected mode
; TODO:	- Setup gdt
;				- Init 32bits
;				- Jump to 32bit area
;--------------------------------------------
initPMode:
	cli
	
	; Disable hardware interrupts
	in ax, 70h
	or ax, 80h
	out 70h, ax
	
	; Enter protected mode
	mov eax, cr0
	or eax, 1
	mov cr0, eax
	
	; Enablle hardware interrupts
	in ax, 70h
	and ax, 7Fh
	out 70h, ax
	
	sti
	retn