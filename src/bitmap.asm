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
