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
	mov ax, 13h 		; Initialize video mode
	int 10h
	
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
%include "jingle.asm"
%include "anim.asm"

align 16
section .data
%include "data.asm"

;--------------------------------------------
; Bootloader signature
; MIght be messed up by sections
;--------------------------------------------
align 16
;times 510-($-$$) db 0
;dw 0xAA55