;-----------------------------------------------------------------------------------------------------
;
;       Mouse/cursor stuff here
;
;-----------------------------------------------------------------------------------------------------


;--------------------------------------------
; Enable mouse
;--------------------------------------------
mouseEnable:
	push es

	mov ax, 0C207h
	mov cx, cs
	mov es, cx
	mov bx, mouseHandler
	int 15h

	mov ax, 0C200h
	mov bh, 1
	int 15h

	pop es
	retn

mouseBM:
dw 3
dw 3
db 28h,28h,28h,28h
db 28h,28h,28h,28h
db 28h

mouseX: dw 0
mouseY: dw 0

drawMouse:
	push 1
	mov ax, [mouseY]
	push ax
	mov ax, [mouseX]
	push ax
	push mouseBM
	call drawBitmap
	retn

sanitizeValue:
	pusha
	mov bp, sp

	mov ax, [bp + 12h] ; Value
	mov bx, [bp + 14h] ; Min
	mov cx, [bp + 16h] ; Max

	; Check min Value
	cmp ax, bx
	jge santizeMaxValue

	; Reset to min value, if lower
	mov ax, bx
	jmp exitSanitation

	santizeMaxValue:
	cmp ax, cx
	jle exitSanitation

	; Reset to max value, if higher
	mov ax, cx

	exitSanitation:
	popa
	retn 6

mouseHandler:
  cld
  push ds
  push es
  pusha
  mov ax, cs
  mov ds, ax
  mov bp,sp
  mov al, [bp + 18h + 6]
  mov bl, al
  shl al, 3
  sbb ch, ch
  cbw
  mov al, [bp + 18h + 4]
  mov cl, [bp + 18h + 2]
  xchg bx, ax
  neg cx

	mov ax, [mouseX]
	add ax, bx
	mov bx, [screenWidth]

	push bx
	push 0
	push ax
	call sanitizeValue

	mov [mouseX], ax

	mov ax, [mouseY]
	add ax, cx
	mov cx, [screenHeight]

	push cx
	push 0
	push ax
	call sanitizeValue

	mov [mouseY], ax

  popa
  pop es
  pop ds
  retf
