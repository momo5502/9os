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
; Parameters: bitmap, x, y, scale
;--------------------------------------------
drawBitmap:
  pusha
  mov bp, sp

  xor dx, dx

  add bx, 4h
  mov ax, bx

  drawBitmapLoop:
  
    xor cx, cx
  
    drawBitmapLoopScaleLoop:

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
      push bx

      ; Push X coord
      mov bx, [bp + 14h] ; Get X coordinate
      push bx

      ; Push row buffer/pointer
      push ax

      call drawBitmapRow
    
      mov bx, [bp + 18h] ; Get scale
      cmp cx, bx
      jl drawBitmapLoopScaleLoop

    ; Increment buffer position
    mov bx, [bp + 12h] ; Get bitmap
    mov bx, [bx] ; Get width
    add ax, bx

    ; Increment row num
    inc dx
    cmp dx, cx

    jl drawBitmapLoop

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
      push bx

      call paintPixel
      
      inc dx
      
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
  retn 10
