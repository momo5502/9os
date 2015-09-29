;-----------------------------------------------------------------------------------------------------
;
;       9os by Maurice Heumann & Olrik Heuser
;
;-----------------------------------------------------------------------------------------------------

;--------------------------------------------
; Define origin
;
; GRUB chainloading:	0x7C00
; PXE booting:			0x100
;--------------------------------------------
;org 7C00h
org 100h

bits 16
section .text

;--------------------------------------------
; Jump to initialization
;--------------------------------------------
jmp main

;--------------------------------------------
; Main entry point
;--------------------------------------------
main:
	mov sp, 9C00h		; Initialize stack
	call initialize
	
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
	
	;call drawRainbow
	
	frame:
		call framePlayJingle
		call drawAnimFrame
		
		push 1
		call waitTicks
		
		jmp frame

	jmp $					; Infinite loop
	hlt						; Halt causes a return to pxelinux

;--------------------------------------------
; Load external sources
;--------------------------------------------
%include "graphics.asm"
%include "sound.asm"
%include "time.asm"
%include "maths.asm"
%include "jingle.asm"
%include "anim.asm"
%include "init.asm"

section .data
%include "data.asm"

;--------------------------------------------
; Bootloader signature
; MIght be messed up by sections
;--------------------------------------------
;times 510-($-$$) db 0
;dw 0xAA55