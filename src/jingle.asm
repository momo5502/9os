;-----------------------------------------------------------------------------------------------------
;
;       Frame oriented jingle processor
;
;-----------------------------------------------------------------------------------------------------


;--------------------------------------------
; Play mulptiple tones within a frame
;--------------------------------------------
doPlayJingleToneNum:
  push bp
  mov bp, sp

  mov cx, [bp + 4h]

  doPlayJingleToneNumLoop:
    push cx
    call framePlayJingle
    call waitInterval
    pop cx

    dec cx
    cmp cx, 0
    jg doPlayJingleToneNumLoop

  pop bp
  retn 2

;--------------------------------------------
; Play jingle in frame
;--------------------------------------------
framePlayJingle:
  call playJingleTone
  call increaseJingleTonePos
  retn


;--------------------------------------------
; Increase jingle stage
;--------------------------------------------
increaseJingleStage:
  xor ax, ax
  mov al, [jingleStage]
  mov bx, jingleStages

  add ax, 2
  add bx, ax

  mov cx, [bx]

  cmp cx, 0
  jne increaseJingleStageApply

  ; Reset jingle stage; skip intro
  mov ax, 2

  increaseJingleStageApply:
  mov [jingleStage], al
  retn


;--------------------------------------------
; Get pointer to current stage object
;--------------------------------------------
getJingleStagePtr:
  xor ax, ax
  mov al, [jingleStage]
  mov bx, jingleStages
  add bx, ax
  mov ax, [bx]
  retn


;--------------------------------------------
; Get jingle tone
;--------------------------------------------
getJingleTone:
  call getJingleStagePtr

  xor bx, bx
  mov bl, [tonePos]
  add bx, ax
  mov ax, [bx]

  retn

;--------------------------------------------
; Increase current tone
; and stage if necessary
;--------------------------------------------
increaseJingleTonePos:

  call getJingleTone
  cmp ax, 0
  je increaseJingleTonePosReset

  xor bx, bx
  mov bl, [tonePos]
  add bx, 2
  mov [tonePos], bl

  call getJingleTone

  cmp ax, 0
  jne increaseJingleTonePosExit

  increaseJingleTonePosReset:
  mov [tonePos], byte 0
  call increaseJingleStage

  increaseJingleTonePosExit:
  retn


;--------------------------------------------
; Play current jingle tone
;--------------------------------------------
playJingleTone:
  call getJingleTone

  ; Check if tone is 0 - this should never occur!
  cmp ax, 0
  jne playJingleToneCheckMute

  call increaseJingleTonePos
  jmp playJingleTone

  playJingleToneCheckMute:
  cmp ax, 1
  jne playJingleToneCheckKeep

  call stopSound
  retn

  playJingleToneCheckKeep:
  cmp ax, 2
  jne playJingleToneDoPlay

  retn

  playJingleToneDoPlay:
  mov [tone], ax
  call playSound
  retn
