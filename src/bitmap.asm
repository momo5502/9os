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
; Parameters: animbitmap, x, y, scale
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

  ; Scale
  mov dx, [bp + 18h]
  push dx

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
  retn 8

;--------------------------------------------
; Draw a bitmap
; Parameters: bitmap, x, y, scale
;--------------------------------------------
drawBitmap:
  pusha
  mov bp, sp

  xor dx, dx

  mov bx, [bp + 12h] ; Get bitmap
  add bx, 4h
  mov ax, bx

  drawBitmapLoop:

    xor cx, cx

    drawBitmapLoopScaleLoop:

      ; Push scale
      mov bx, [bp + 18h] ; Get scale
      push bx

      ; Push width
      mov bx, [bp + 12h] ; Get bitmap
      mov bx, [bx] ; Get width
      push bx

      ; Push Y coord
      push ax
      push dx
      mov ax, [bp + 18h] ; Get scale
      mul dx
      mov bx, [bp + 16h] ; Get Y coordinate
      add bx, ax
      pop dx
      pop ax
      add bx, cx
      push bx

      ; Check if exceeding height (not visible, but might overwrite later memory)
      push ax
      mov ax, [screenHeight]
      cmp bx, ax
      jl drawBitmapLoopScaleLoopContinue

      ; Terminate if exceeding
      add sp, 8h
      jmp drawBitmapFinish

      ; Continue if not exceeding
      drawBitmapLoopScaleLoopContinue:
      pop ax

      ; Push X coord
      mov bx, [bp + 14h] ; Get X coordinate
      push bx

      ; Push row buffer/pointer
      push ax

      call drawBitmapRow

      inc cx
      mov bx, [bp + 18h] ; Get scale
      cmp cx, bx
      jl drawBitmapLoopScaleLoop

    ; Increment buffer position
    mov bx, [bp + 12h] ; Get bitmap
    mov bx, [bx] ; Get width
    add ax, bx

    ; Increment row num
    inc dx
    mov bx, [bp + 12h] ; Get bitmap
    mov cx, [bx + 2h] ; Get height
    cmp dx, cx

    jl drawBitmapLoop

  drawBitmapFinish:
  popa
  retn 8

;--------------------------------------------
; Draw a bitmap row
; Parameters: pointer, x, y, width, scale
;--------------------------------------------
drawBitmapRow:
  pusha
  mov bp, sp

  xor cx, cx

  drawBitmapRowLoop:

    xor dx, dx

    drawBitmapRowLoopScaleLoop:

      ; Check if exceeding width within scale
      push dx
      mov ax, [bp + 1Ah] ; Get scale
      mul cx
      mov bx, [bp + 14h] ; Get X coord
      add bx, ax
      pop dx
      add bx, dx
      mov ax, [screenWidth]
      cmp bx, ax
      jge drawBitmapRowFinish

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
      push dx
      mov ax, [bp + 1Ah] ; Get scale
      mul cx
      mov bx, [bp + 14h] ; Get X coord
      add bx, ax
      pop dx
      add bx, dx
      push bx

      call paintPixel

      inc dx

      ; Check if scale loop is done
      mov ax, [bp + 1Ah]
      cmp dx, ax
      jl drawBitmapRowLoopScaleLoop

    drawBitmapRowLoopPaintDone:

    ; Increment counter
    inc cx

    ; Check if row finished
    mov bx, [bp + 18h] ; Get width
    cmp cx, bx
    jge drawBitmapRowFinish

    ; Return to loop, if no condition applies
    jmp drawBitmapRowLoop

  drawBitmapRowFinish:
  popa
  retn 10
