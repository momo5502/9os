;-----------------------------------------------------------------------------------------------------
;
;       Animation related operations reside here
;
;-----------------------------------------------------------------------------------------------------


; background: 7Fh
; keks:       42h
; streusel:   6Dh
; glasur:     3Dh
; baeckchen:  40h
;
; rainbow:
;  red:        28h
;  orange:     2Ah
;  yellow:     2Bh
;  green:      2Eh
;  cyan:       36h
;  violet:     6Bh


;--------------------------------------------
; Draw animation frame
;--------------------------------------------
drawAnimFrame:
  call drawAnimBackground
  call drawAnimRainbow
  call drawAnimCat

  push 3 ; Shift rainbow every 3 ticks
  call shiftRainbowAnim

  ;call drawMouse
  retn


;--------------------------------------------
; Draw background
;--------------------------------------------
drawAnimBackground:
  push 7Eh
  call fillScreen
  retn


;--------------------------------------------
; Draw background
;--------------------------------------------
drawAnimCat:
  push 3   ; Scale
  push 65  ; Y
  push 110 ; X
  push nyanCatAnimBitmap
  call drawAnimBitmap
  retn


;--------------------------------------------
; Shift rainbow animation
;--------------------------------------------
rainbowAnimIndex: dw 0
shiftRainbowAnim:
  pusha
  mov bp, sp

  mov bx, [rainbowAnimIndex]
  add bx, 1

  mov ax, [bp + 12h]
  cmp bx, ax ; Every AX ticks
  jl shiftRainbowAnimStore

  xor bx, bx
  call shiftRainbowAlternation

  shiftRainbowAnimStore:
  mov [rainbowAnimIndex], bx

  popa
  retn 2
