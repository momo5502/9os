;-----------------------------------------------------------------------------------------------------
;
;       Graphics related operations reside here
;
;-----------------------------------------------------------------------------------------------------


;--------------------------------------------
; Move cursor to (0,0)
; Deprecated: Relies on bios interrrupt
;--------------------------------------------
moveCursorToOrigin:
	xor ax, ax
	xor dx, dx			; dl and dh describe x, y. Zero both to set the origin
	mov ah, 2h
	int 10h
	retn


;--------------------------------------------
; Write string passed on the stack
; Note the convention is __stdcall
;--------------------------------------------
writeString:
	mov si, [esp + 2h]

	writeString_loop:
		mov al, [si]
		or al, al
		jz writeString_return
		
		push ax
		call writeChar
		inc si
		jmp writeString_loop
		
	writeString_return:
		retn 2


;--------------------------------------------
; Write character passed on the stack
; Note the convention is __stdcall
;
; Deprecated: Relies on bios interrrupt
; TODO: Write to text buffer
;--------------------------------------------
writeChar:
	mov ax, [esp + 2h]
	mov ah, 0Eh
	mov bh, [bg_color]
	mov bl, [fore_color]
	int 10h
	retn 2


;--------------------------------------------
; Increase the global fore_color var
;--------------------------------------------
increaseForeColor:
	mov al, [fore_color]
	inc al
	mov [fore_color], al
	retn


;--------------------------------------------
; Randomize the global fore_color var
;--------------------------------------------
randForeColor:
	call getRandNum
	mov bx, 100h
	xor dx, dx
	div bx 							; ax / bx - modulo stored in dx
	mov [fore_color], dl 
	retn 


;--------------------------------------------
; Fill every pixel on the screen
; with the global fore_color
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
	mov [fore_color], cl
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
;--------------------------------------------
applyPixelToBuffer:
	; Write pixel using the graphics interrupt
	;xor ax, ax
	;mov ah, 0Ch					; Operation (write pixel)
	;mov al, [fore_color]		; Color
	;xor bx, bx					; Page number (0)
	;mov cx, [xPos]				; X Position
	;mov dx, [yPos]				; Y Position
	;int 10h
	
	; Write pixel using the linear frame buffer
	; This is way faster than calling the interrupt for every pixel
	mov cx, [xPos]
	mov dx, [yPos]
	mov ax, [screenWidth]
	mul dx
	add ax, cx
	mov di, ax
	
	mov ax, 0A000h
	mov es, ax
	
	xor ax, ax
	mov al, [fore_color]
	mov byte [es:di], al
	
	retn

;--------------------------------------------
; Fill the current pixel and increase  the
; current x and y positions accordingly
;--------------------------------------------
writePixel:
	call applyPixelToBuffer
	
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
