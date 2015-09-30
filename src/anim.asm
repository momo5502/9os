;-----------------------------------------------------------------------------------------------------
;
;       Animation related operations reside here
;
;-----------------------------------------------------------------------------------------------------


; background:	7Fh 
; keks:				42h
; streusel:			6Dh
; glasur:			3Dh
; baeckchen:		40h
;
; rainbow:
;	red:			28h
;	orange:		2Ah
;	yellow: 		2Bh
;	green:		2Eh
;	cyan:		36h
;	violet:		6Bh


;--------------------------------------------
; Draw animation frame
;--------------------------------------------
drawAnimFrame:
	call drawAnimBackground
	retn
	
	
;--------------------------------------------
; Draw background
;--------------------------------------------
drawAnimBackground:
	push 7Eh
	call fillScreen
	retn
