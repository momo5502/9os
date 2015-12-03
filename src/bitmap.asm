;-----------------------------------------------------------------------------------------------------
;
;       Bitmap rendering here
;
;-----------------------------------------------------------------------------------------------------

;--------------------------------------------
;
; Bitmap structure:
;
;  struct bitmap
;  {
;    short width;
;    short height;
;    char data[width * height];
;  };
;
;--------------------------------------------

;--------------------------------------------
; Draw an animation bitmap
; Parameters: animbitmap, x, y
;--------------------------------------------
drawAnimBitmap:
  pusha
  mov bp, sp

  ; Get animbitmap
	mov bx, [bp + 12h]

  ; Get current position
	mov ax, [bx]

	add ax, 2
  add bx, ax

	; Check if end of anim
  mov cx, [bx]
	test cx, cx
	jnz drawAnimBitmapDraw

  ; Reset position to 0
  sub bx, ax
	add bx, 2
	mov ax, 2

  drawAnimBitmapDraw:

  ; Store new position
	push bx
	mov bx, [bp + 12h]
	mov [bx], ax
	pop bx

  ; Y coord
	mov dx, [bp + 16h]
	push dx

  ; X coord
	mov dx, [bp + 14h]
	push dx

  ; Push bitmap
	mov bx, [bx]
  push bx
	call drawBitmap

  popa
  retn 6

;--------------------------------------------
; Draw a bitmap
; Parameters: bitmap, x, y
;--------------------------------------------
drawBitmap:
	pusha
	mov bp, sp

  mov bx, [bp + 12h] ; Get bitmap
  mov cx, [bx + 2h] ; Get height
  xor dx, dx

  add bx, 4h
  mov ax, bx

  drawBitmapLoop:

    ; Push width
    mov bx, [bp + 12h] ; Get bitmap
    mov bx, [bx] ; Get width
    push bx

    ; Push Y coord
    mov bx, [bp + 16h] ; Get Y coordinate
    add bx, dx
    push bx

    ; Push X coord
    mov bx, [bp + 14h] ; Get X coordinate
    push bx

    ; Push row buffer/pointer
    push ax

    call drawBitmapRow

    ; Increment buffer position
    mov bx, [bp + 12h] ; Get bitmap
    mov bx, [bx] ; Get width
    add ax, bx

    ; Increment row num
    inc dx
    cmp dx, cx

    jl drawBitmapLoop

	popa
	retn 6

;--------------------------------------------
; Draw a bitmap row
; Parameters: pointer, x, y, width
;--------------------------------------------
drawBitmapRow:
  pusha
  mov bp, sp

  xor cx, cx

  drawBitmapRowLoop:

    ; Push color
    mov bx, [bp + 12h] ; Get pointer
    add bx, cx
    mov bx, word [bx]

    ; Check if transparent
    cmp bl, 10h
    je drawBitmapRowLoopPaintDone

    push bx

    ; Push Y coord
    mov bx, [bp + 16h] ; Get Y coord
    push bx

    ; Push X coord
    mov bx, [bp + 14h] ; Get X coord
    add bx, cx
    push bx

    call paintPixel

    drawBitmapRowLoopPaintDone:

    ; Increment counter
    inc cx

    ; Check if row finished
    mov bx, [bp + 18h] ; Get width
    cmp cx, bx
    jge drawBitmapRowFinish

    ; Check if exceeding width
    mov bx, [bp + 14h] ; Get X coord
    add bx, cx
    mov ax, [screenWidth]
    cmp bx, ax
    jge drawBitmapRowFinish

    ; Return to loop, if no condition applies
    jmp drawBitmapRowLoop

  drawBitmapRowFinish:
  popa
  retn 8
