;-----------------------------------------------------------------------------------------------------
;
;       Time related operations reside here
;
;-----------------------------------------------------------------------------------------------------


;--------------------------------------------
; Get system clock ticks since midnight
; Return in eax
;--------------------------------------------
getClockTicks:
  push ds
  xor eax,eax
  mov ds,eax
  mov eax, [ds:46Ch]
  pop ds
  retn


;--------------------------------------------
; Wait given ticks
;--------------------------------------------
waitTicks:
  push bp
  mov bp, sp

  call getClockTicks
  mov bx, ax

  waitSomeTicks_tickLoop:
    call getClockTicks
    sub ax, bx
    cmp ax, [bp + 4h]
    jle waitSomeTicks_tickLoop

  pop bp
  retn 2


;--------------------------------------------
; Wait intervall
;--------------------------------------------
waitIntervall:
  push 1
  call waitTicks
  retn
  
