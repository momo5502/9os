;-----------------------------------------------------------------------------------------------------
;
;       Graphics related operations reside here
;
;-----------------------------------------------------------------------------------------------------


;--------------------------------------------
; Increase the global color var
;--------------------------------------------
increaseForeColor:
	mov al, [color]
	inc al
	mov [color], al
	retn


;--------------------------------------------
; Randomize the global color var
;--------------------------------------------
randForeColor:
	call getRandNum
	mov bx, 100h
	xor dx, dx
	div bx 							; ax / bx - modulo stored in dx
	mov [color], dl 
	retn 


;--------------------------------------------
; Fill every pixel on the screen
; with the global color
;--------------------------------------------
fillScreen:
	fillScreen_Loop:
		call writePixel
		;call randForeColor
		;call increaseForeColor
		call isScreenFull
		test ax, ax
		jz fillScreen_Loop
		
	retn

	
;--------------------------------------------
; Set rainbow color
;--------------------------------------------
setRainbowColor:
	xor cx, cx
	xor dx, dx
	mov bx, 21h ; 200 / 6 ~ 33
	;mov bx, 20h
	mov ax, [yPos]
	;sub ax, 8
	div bx
	
	cmp ax, 5
	jle setRainbowColor_apply
	
	mov ax, 5
	
	setRainbowColor_apply:
	
	; Invert colors
	;mov dx, 5
	;sub dx, ax
	;mov ax, dx
	
	mov bx, rainbowTable
	add bx, ax
	mov cl, [bx]
	mov [color], cl
	retn
	

;--------------------------------------------
; Fill every pixel on the screen
; with a rainbow :D
;--------------------------------------------
drawRainbow:
	call isScreenFull
	
	drawRainbow_Loop:
		call setRainbowColor
		call writePixel
		call isScreenFull
		test ax, ax
		jz drawRainbow_Loop
	retn


;--------------------------------------------
; Detect if the screen has been filled
;--------------------------------------------
isScreenFull:
	xor ax, ax
	mov cx, [xPos]
	mov bx, [yPos]
	
	cmp cx, 0
	jne isScreenFull_return
	
	cmp bx, 0
	jne isScreenFull_return
	
	; Add experimental Y offset
	;add bx, 8h
	;mov [yPos], bx
	
	mov ax, 1
	
	isScreenFull_return:
		retn


;--------------------------------------------
; Write pixel to the frame buffer
;
; void __stdcall paintPixel(short x, short y, char color)
;--------------------------------------------
paintPixel:
	push bp
	mov bp, sp
	
	mov cx, [bp + 4h] ; xPos
	mov dx, [bp + 6h] ; yPos
	mov ax, [screenWidth]
	mul dx
	add ax, cx
	mov di, ax
	
	mov ax, 0A000h
	mov es, ax
	
	mov ax, [bp + 8h] ; color
	mov byte [es:di], al
	
	pop bp
	retn 6

;--------------------------------------------
; Fill the current pixel and increase  the
; current x and y positions accordingly
;--------------------------------------------
writePixel:
	push word [color] ; actually just a byte, maybe need to adapt the operand size
	push word [yPos]
	push word [xPos]
	call paintPixel
	
	mov ax, [xPos]				; Increase x position
	inc ax

	cmp ax, [screenWidth]	; Check if x position exceeds the width
	jl writePixel_setX

	xor ax, ax					; If it does, reset the x position

	mov bx, [yPos]				; Increase the y position as well
	inc bx 

	cmp bx, [screenHeight]	; Check if y position exceeds the height
	jl writePixel_setY

	xor bx, bx					; If it does, reset the y position

	writePixel_setY:				; Apply new y position
		mov [yPos], bx

	writePixel_setX:				; Apply new x position
		mov [xPos], ax
	retn 
