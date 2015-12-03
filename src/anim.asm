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
;	red:        28h
;	orange:     2Ah
;	yellow:     2Bh
;	green:      2Eh
;	cyan:       36h
;	violet:     6Bh


;--------------------------------------------
; Draw animation frame
;--------------------------------------------
drawAnimFrame:
	call drawAnimBackground
	call drawAnimRainbow
	call drawAnimCat
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
	push 65 ; Y
	push 110 ; X
	;push nyanCatFullBitmap
	;call drawBitmap

  push nyanCatAnimBitmap
	call drawAnimBitmap
	retn
