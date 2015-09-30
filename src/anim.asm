;-----------------------------------------------------------------------------------------------------
;
;       Animation related operations reside here
;
;-----------------------------------------------------------------------------------------------------


; background:	7Fh 
; keks:				42h
; streusel:			6Dh
; glasur:			3Dh
; baeckchen:		40h
;
; rainbow:
;	red:			28h
;	orange:		2Ah
;	yellow: 		2Bh
;	green:		2Eh
;	cyan:		36h
;	violet:		6Bh


;--------------------------------------------
; Draw animation frame
;--------------------------------------------
drawAnimFrame:
	;call drawRainbow
	call drawAnimBackground
	retn
	
	
;--------------------------------------------
; Draw background
;--------------------------------------------
drawAnimBackground:
	pusha
	
	; Set segment offset to video buffer
	mov ax, 0A000h
	mov es, ax
	xor di, di
	
	call getScreenDim
	mov cx, ax
	
	; Background color
	mov ax, 7Fh
	
	; Fill buffer with color
	rep stosb

	popa
	retn