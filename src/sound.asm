;-----------------------------------------------------------------------------------------------------
;
;       Sound related operations reside here
;
;-----------------------------------------------------------------------------------------------------


;--------------------------------------------
; Start playing a given tone
;--------------------------------------------
playSound:
	push dx
	push cx
	push ax
	
	mov dx, 43h  ; Port
	mov ax, 0b6h ; Value
	out dx, ax

	mov cx, [tone]

	; Set frequency (1193180 / 1000)
	xor ax, ax
	mov dx, 42h		; Port
	mov al, cl			; Value (lower bits)
	out dx, ax

	xor ax, ax
	mov dx, 42h		; Port
	mov al, ch		; Value (higher bits)
	out dx, ax

	mov dx, 61h		; Speaker port
	in ax, dx			; Request current flags

	or ax, 3			; Set play flag
	out dx, ax			; Apply new flags to speaker
	
	pop ax
	pop cx
	pop dx
	retn
	

;--------------------------------------------
; Mute speaker
;--------------------------------------------
stopSound:
	xor ax, ax
	mov dx, 61h
	in ax, dx			; Request current speaker data
	
	and al, 0FCh		; Remove the play flag
	out dx, ax
	retn
	