;-----------------------------------------------------------------------------------------------------
;
;       Binary header data
;
;-----------------------------------------------------------------------------------------------------
org 100h

section .text
bits 16

cmdline			times 497 db 0
setup_sects	db 0
root_flags		dw 0
syssize			dw 0
swap_dev		dw 0
ram_size		dw 0
vid_mode		dw 0
root_dev		dw 0
boot_flag		dw 0xAA55
