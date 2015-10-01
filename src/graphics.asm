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
	
	
;--------------------------------------------
; Write pixel to the frame buffer
;
; void __stdcall paintPixel(short x, short y, short color)
;--------------------------------------------
paintPixel:
	pusha
	mov bp, sp
	
	mov cx, [bp + 12h] ; xPos
	mov dx, [bp + 14h] ; yPos
	mov ax, [screenWidth]
	mul dx
	add ax, cx
	mov di, ax
	
	mov ax, 0A000h
	mov es, ax
	
	mov ax, [bp + 16h] ; color
	mov byte [es:di], al
	
	popa
	retn 6
