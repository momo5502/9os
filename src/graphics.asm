;-----------------------------------------------------------------------------------------------------
;
;       Graphics related operations reside here
;
;-----------------------------------------------------------------------------------------------------


;--------------------------------------------
; Fill every pixel on the screen
;--------------------------------------------
fillScreen:
	pusha
	mov bp, sp
	
	; Set segment offset to video buffer
	mov ax, 0A000h
	mov es, ax
	xor di, di
	
	call getScreenDim
	mov cx, ax
	
	; Get color from stack
	mov ax, [bp + 12h]
	
	; Fill buffer with color
	rep stosb

	popa
	retn 2

	
;--------------------------------------------
; Get screen dimension
;
; ax - height * width
; bx - width
; cx - height
;--------------------------------------------
getScreenDim:
	mov bx, [screenWidth]
	mov cx, [screenHeight]
	mov ax, cx
	mul bx	
	retn
	