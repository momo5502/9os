;-----------------------------------------------------------------------------------------------------
;
;       Rainbow drawing operations reside here
;
;		Note: Convention here is __cdecl, unlike in the rest of the project
;
;-----------------------------------------------------------------------------------------------------


;--------------------------------------------
; Draw rainbow
;--------------------------------------------
drawAnimRainbow:
	mov dx, [rainbowBlockCount]
	xor cx, cx
	
	drawAnimRainbowLoop:
		push cx
		call drawRainbowBlockForId
		pop cx
		
		inc cx
		
		cmp cx, dx
		jl drawAnimRainbowLoop
	
	call applyRainbowAlternation
	retn
	
	
	
;--------------------------------------------
; Draw block for given id/count
;--------------------------------------------
drawRainbowBlockForId:
	pusha
	mov bp, sp
	
	mov cx, [bp + 12h] ; Current block count
	
	push cx
	call getRainbowAlternationForId
	add esp, 2h
	
	add ax, [rainbowOffset]
	push ax	; y offset
	
	mov ax, cx
	mov bx, [rainbowBlockWidth]
	mul bx
	
	push ax	; x offset
	
	call drawRainbowBlock

	add sp, 4h
	
	popa
	retn
	
	
;--------------------------------------------
; Draw block for given x/y position
;--------------------------------------------
drawRainbowBlock:
	push bp
	mov bp, sp
	
	xor cx, cx	; x counter
	xor dx, dx ; y counter
	
	drawRainbowBlockLoop:
		push dx
		call getRainbowColor
		add sp, 2h
	
		; Push color
		push ax
	
		; Push y offset
		mov ax, [bp + 6h] ; y Offset
		add ax, dx
		push ax
		
		; Push x offset
		mov ax, [bp + 4h] ; x Offset
		add ax, cx
		push ax
		
		call paintPixel
		
		inc cx
		
		cmp cx, [rainbowBlockWidth]
		jl drawRainbowBlockLoop
		
		xor cx, cx
		inc dx
		
		cmp dx, [rainbowBlockHeight]
		jl drawRainbowBlockLoop
	
	pop bp
	retn

	
;--------------------------------------------
; Get rainbow color
;--------------------------------------------
getRainbowColor:
	push bp
	mov bp, sp
	
	push dx
	push cx
	push bx
	
	xor cx, cx
	xor dx, dx
	mov ax, [rainbowBlockHeight]
	mov bx, 6h
	div bx
	
	xor cx, cx
	xor dx, dx
	mov bx, ax
	
	mov ax, [bp + 4h]
	div bx
	
	add ax, rainbowTable
	mov bx, ax
	
	xor ax, ax
	mov al, [bx]

	pop bx
	pop cx
	pop dx
	pop bp
	retn
	
	
;--------------------------------------------
; Get alternation offset
;--------------------------------------------
getRainbowAlternationForId:
	push bp
	mov bp, sp
	
	push bx
	push cx
	push dx
	
	mov ax, [bp + 4h]
	
	xor dx, dx
	xor cx, cx
	xor bx, bx
	
	mov bl, [rainbowAlternation]
	add ax, bx
	
	mov bx, 2
	div bx
	
	mov ax, [rainbowAlternationOffset]
	mul dx
	
	pop dx
	pop cx
	pop bx
	pop bp
	retn
	
	
;--------------------------------------------
; Handle rainbow alternation
;--------------------------------------------
applyRainbowAlternation:
	mov al, [rainbowAlternation]
	xor al, 1
	mov [rainbowAlternation], al
	retn