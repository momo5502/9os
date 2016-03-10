;-----------------------------------------------------------------------------------------------------
;
;       Complex bitmaps reside here
;
;-----------------------------------------------------------------------------------------------------

nyanCatAnimBitmap:
dw 0 ; Current position
; Bitmap array
dw nyanCatFull1Bitmap, nyanCatFull2Bitmap, nyanCatFull3Bitmap, nyanCatFull4Bitmap, nyanCatFull5Bitmap, nyanCatFull6Bitmap
dw nyanCatFull7Bitmap, nyanCatFull8Bitmap, nyanCatFull9Bitmap, nyanCatFull10Bitmap, nyanCatFull11Bitmap, nyanCatFull12Bitmap
dw 0 ; Terminator

emptyBitmap:
dw 0
dw 0
db 10h

blackPixel:
dw 1
dw 1
db 0

nyanCatFull1Bitmap:
dw 33 ; Width
dw 20 ; height

; Buffer
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 10h, 10h, 10h, 10h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 00h, 10h, 10h, 10h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 42h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 42h, 42h, 42h, 00h, 10h, 10h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 6Dh, 3Dh, 3Dh, 6Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 42h, 42h, 00h, 10h, 10h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 3Dh, 3Dh, 6Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 42h, 00h, 10h, 10h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 00h, 3Dh, 3Dh, 6Dh, 3Dh, 3Dh, 42h, 00h, 10h, 00h, 00h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 00h, 3Dh, 3Dh, 3Dh, 3Dh, 42h, 00h, 00h, 16h, 16h, 00h, 10h,
db 10h, 00h, 00h, 00h, 00h, 10h, 10h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 6Dh, 3Dh, 3Dh, 00h, 16h, 16h, 16h, 00h, 3Dh, 3Dh, 3Dh, 42h, 00h, 16h, 16h, 16h, 00h, 10h,
db 10h, 00h, 16h, 16h, 00h, 00h, 10h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 16h, 16h, 00h, 00h, 00h, 00h, 16h, 16h, 16h, 16h, 00h, 10h,
db 10h, 00h, 00h, 16h, 16h, 00h, 00h, 00h, 42h, 3Dh, 3Dh, 3Dh, 6Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 00h, 10h,
db 10h, 10h, 00h, 00h, 16h, 16h, 00h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 6Dh, 00h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 00h,
db 10h, 10h, 10h, 00h, 00h, 16h, 16h, 00h, 42h, 3Dh, 6Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 16h, 0Fh, 00h, 16h, 16h, 16h, 16h, 16h, 0Fh, 00h, 16h, 16h, 00h,
db 10h, 10h, 10h, 10h, 00h, 00h, 00h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 16h, 00h, 00h, 16h, 16h, 16h, 00h, 16h, 00h, 00h, 16h, 16h, 00h,
db 10h, 10h, 10h, 10h, 10h, 10h, 00h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 6Dh, 3Dh, 3Dh, 00h, 16h, 40h, 40h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 40h, 40h, 00h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 42h, 3Dh, 6Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 40h, 40h, 16h, 00h, 16h, 16h, 00h, 16h, 16h, 00h, 16h, 40h, 40h, 00h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 42h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 16h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 16h, 16h, 00h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 00h, 00h, 00h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 00h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 00h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 00h, 16h, 16h, 16h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 00h, 16h, 16h, 00h, 00h, 10h, 00h, 16h, 16h, 00h, 10h, 10h, 10h, 10h, 10h, 00h, 16h, 16h, 00h, 10h, 00h, 16h, 16h, 00h, 10h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 00h, 00h, 00h, 00h, 10h, 10h, 00h, 00h, 00h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 00h, 00h, 10h, 10h, 00h, 00h, 10h, 10h, 10h, 10h, 10h,


nyanCatFull2Bitmap:
dw 34 ; Width
dw 20 ; height

; Buffer
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 00h, 10h, 10h, 10h, 10h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 42h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 42h, 42h, 42h, 00h, 10h, 10h, 10h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 6Dh, 3Dh, 3Dh, 6Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 42h, 42h, 00h, 10h, 10h, 10h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 3Dh, 3Dh, 6Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 42h, 00h, 10h, 10h, 10h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 00h, 3Dh, 6Dh, 3Dh, 3Dh, 42h, 00h, 10h, 10h, 00h, 00h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 00h, 3Dh, 3Dh, 3Dh, 42h, 00h, 10h, 00h, 16h, 16h, 00h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 6Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 16h, 00h, 3Dh, 3Dh, 42h, 00h, 00h, 16h, 16h, 16h, 00h, 10h,
db 10h, 10h, 00h, 00h, 10h, 10h, 10h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 16h, 16h, 00h, 00h, 00h, 00h, 16h, 16h, 16h, 16h, 00h, 10h,
db 10h, 00h, 16h, 16h, 00h, 10h, 10h, 00h, 42h, 3Dh, 3Dh, 3Dh, 6Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 00h, 10h,
db 10h, 00h, 16h, 16h, 00h, 00h, 00h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 6Dh, 3Dh, 00h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 00h,
db 10h, 10h, 00h, 16h, 16h, 16h, 16h, 00h, 42h, 3Dh, 6Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 16h, 0Fh, 00h, 16h, 16h, 16h, 16h, 16h, 0Fh, 00h, 16h, 16h, 00h,
db 10h, 10h, 10h, 00h, 00h, 16h, 16h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 16h, 00h, 00h, 16h, 16h, 16h, 00h, 16h, 00h, 00h, 16h, 16h, 00h,
db 10h, 10h, 10h, 10h, 10h, 00h, 00h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 6Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 40h, 40h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 40h, 40h, 00h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 42h, 3Dh, 6Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 40h, 40h, 16h, 00h, 16h, 16h, 00h, 16h, 16h, 00h, 16h, 40h, 40h, 00h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 42h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 16h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 16h, 16h, 00h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 00h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 00h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 00h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 00h, 16h, 16h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 00h, 16h, 16h, 00h, 10h, 00h, 16h, 16h, 00h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 16h, 16h, 00h, 10h, 00h, 16h, 16h, 00h, 10h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 00h, 00h, 00h, 10h, 10h, 10h, 00h, 00h, 00h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 00h, 00h, 10h, 10h, 00h, 00h, 00h, 10h, 10h, 10h, 10h,


nyanCatFull3Bitmap:
dw 34 ; Width
dw 21 ; height

; Buffer
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 00h, 10h, 10h, 10h, 10h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 42h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 42h, 42h, 42h, 00h, 10h, 10h, 10h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 6Dh, 3Dh, 3Dh, 6Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 42h, 42h, 00h, 10h, 10h, 10h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 3Dh, 3Dh, 6Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 42h, 00h, 10h, 10h, 10h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 00h, 3Dh, 6Dh, 3Dh, 3Dh, 42h, 00h, 10h, 10h, 00h, 00h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 00h, 3Dh, 3Dh, 3Dh, 42h, 00h, 10h, 00h, 16h, 16h, 00h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 6Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 16h, 00h, 3Dh, 3Dh, 42h, 00h, 00h, 16h, 16h, 16h, 00h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 16h, 16h, 00h, 00h, 00h, 00h, 16h, 16h, 16h, 16h, 00h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 3Dh, 3Dh, 3Dh, 6Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 00h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 00h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 6Dh, 3Dh, 00h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 00h,
db 10h, 10h, 10h, 00h, 00h, 00h, 00h, 00h, 42h, 3Dh, 6Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 16h, 0Fh, 00h, 16h, 16h, 16h, 16h, 16h, 0Fh, 00h, 16h, 16h, 00h,
db 10h, 00h, 00h, 16h, 16h, 16h, 16h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 16h, 00h, 00h, 16h, 16h, 16h, 00h, 16h, 00h, 00h, 16h, 16h, 00h,
db 10h, 00h, 16h, 16h, 16h, 00h, 00h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 6Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 40h, 40h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 40h, 40h, 00h,
db 10h, 10h, 00h, 00h, 00h, 00h, 10h, 00h, 42h, 42h, 3Dh, 6Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 40h, 40h, 16h, 00h, 16h, 16h, 00h, 16h, 16h, 00h, 16h, 40h, 40h, 00h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 42h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 16h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 16h, 16h, 00h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 00h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 00h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 00h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 16h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 16h, 16h, 00h, 10h, 00h, 16h, 16h, 00h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 16h, 16h, 00h, 10h, 00h, 16h, 16h, 00h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 00h, 00h, 10h, 10h, 10h, 00h, 00h, 00h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 00h, 00h, 10h, 10h, 00h, 00h, 00h, 10h, 10h, 10h,


nyanCatFull4Bitmap:
dw 34 ; Width
dw 21 ; height

; Buffer
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 00h, 10h, 10h, 10h, 10h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 42h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 42h, 42h, 42h, 00h, 10h, 10h, 10h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 6Dh, 3Dh, 3Dh, 6Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 42h, 42h, 00h, 10h, 10h, 10h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 3Dh, 3Dh, 6Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 42h, 00h, 10h, 10h, 10h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 00h, 3Dh, 6Dh, 3Dh, 3Dh, 42h, 00h, 10h, 10h, 00h, 00h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 00h, 3Dh, 3Dh, 3Dh, 42h, 00h, 10h, 00h, 16h, 16h, 00h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 6Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 16h, 00h, 3Dh, 3Dh, 42h, 00h, 00h, 16h, 16h, 16h, 00h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 16h, 16h, 00h, 00h, 00h, 00h, 16h, 16h, 16h, 16h, 00h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 3Dh, 3Dh, 3Dh, 6Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 00h, 10h,
db 10h, 10h, 10h, 10h, 10h, 00h, 00h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 6Dh, 3Dh, 00h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 00h,
db 10h, 10h, 10h, 00h, 00h, 16h, 16h, 00h, 42h, 3Dh, 6Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 16h, 0Fh, 00h, 16h, 16h, 16h, 16h, 16h, 0Fh, 00h, 16h, 16h, 00h,
db 10h, 10h, 00h, 16h, 16h, 16h, 16h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 16h, 00h, 00h, 16h, 16h, 16h, 00h, 16h, 00h, 00h, 16h, 16h, 00h,
db 10h, 00h, 16h, 16h, 00h, 00h, 00h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 6Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 40h, 40h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 40h, 40h, 00h,
db 10h, 00h, 16h, 16h, 00h, 10h, 10h, 00h, 42h, 42h, 3Dh, 6Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 40h, 40h, 16h, 00h, 16h, 16h, 00h, 16h, 16h, 00h, 16h, 40h, 40h, 00h,
db 10h, 10h, 00h, 00h, 10h, 10h, 10h, 00h, 42h, 42h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 16h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 16h, 16h, 00h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 00h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 00h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 00h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 00h, 16h, 16h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 00h, 16h, 16h, 00h, 10h, 00h, 16h, 16h, 00h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 16h, 16h, 00h, 10h, 00h, 16h, 16h, 00h, 10h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 00h, 00h, 00h, 10h, 10h, 10h, 00h, 00h, 00h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 00h, 00h, 10h, 10h, 00h, 00h, 00h, 10h, 10h, 10h, 10h,

nyanCatFull5Bitmap:
dw 33 ; Width
dw 21 ; height

; Buffer
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 10h, 10h, 10h, 10h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 00h, 10h, 10h, 10h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 42h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 42h, 42h, 42h, 00h, 10h, 10h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 6Dh, 3Dh, 3Dh, 6Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 42h, 42h, 00h, 10h, 10h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 3Dh, 3Dh, 6Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 42h, 00h, 10h, 10h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 00h, 3Dh, 3Dh, 6Dh, 3Dh, 3Dh, 42h, 00h, 10h, 00h, 00h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 00h, 3Dh, 3Dh, 3Dh, 3Dh, 42h, 00h, 00h, 16h, 16h, 00h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 6Dh, 3Dh, 3Dh, 00h, 16h, 16h, 16h, 00h, 3Dh, 3Dh, 3Dh, 42h, 00h, 16h, 16h, 16h, 00h, 10h,
db 10h, 00h, 00h, 00h, 00h, 10h, 10h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 16h, 16h, 00h, 00h, 00h, 00h, 16h, 16h, 16h, 16h, 00h, 10h,
db 00h, 16h, 16h, 16h, 00h, 00h, 00h, 00h, 42h, 3Dh, 3Dh, 3Dh, 6Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 00h, 10h,
db 00h, 00h, 16h, 16h, 16h, 16h, 00h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 6Dh, 00h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 00h,
db 10h, 10h, 00h, 00h, 00h, 00h, 16h, 00h, 42h, 3Dh, 6Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 16h, 0Fh, 00h, 16h, 16h, 16h, 16h, 16h, 0Fh, 00h, 16h, 16h, 00h,
db 10h, 10h, 10h, 10h, 10h, 00h, 00h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 16h, 00h, 00h, 16h, 16h, 16h, 00h, 16h, 00h, 00h, 16h, 16h, 00h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 6Dh, 3Dh, 3Dh, 00h, 16h, 40h, 40h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 40h, 40h, 00h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 42h, 3Dh, 6Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 40h, 40h, 16h, 00h, 16h, 16h, 00h, 16h, 16h, 00h, 16h, 40h, 40h, 00h,
db 10h, 10h, 10h, 10h, 10h, 10h, 00h, 00h, 42h, 42h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 16h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 16h, 16h, 00h, 10h,
db 10h, 10h, 10h, 10h, 10h, 00h, 00h, 00h, 00h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 00h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 00h, 10h, 10h,
db 10h, 10h, 10h, 10h, 00h, 16h, 16h, 16h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 00h, 16h, 16h, 00h, 10h, 00h, 16h, 16h, 00h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 16h, 16h, 00h, 10h, 00h, 16h, 16h, 00h, 10h, 10h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 00h, 00h, 00h, 10h, 10h, 10h, 00h, 00h, 00h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 00h, 00h, 10h, 10h, 00h, 00h, 00h, 10h, 10h, 10h, 10h, 10h,

nyanCatFull6Bitmap:
dw 33 ; Width
dw 21 ; height

; Buffer
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 10h, 10h, 10h, 10h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 00h, 10h, 10h, 10h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 42h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 42h, 42h, 42h, 00h, 10h, 10h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 6Dh, 3Dh, 3Dh, 6Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 42h, 42h, 00h, 10h, 10h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 3Dh, 3Dh, 6Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 00h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 42h, 00h, 10h, 00h, 00h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 00h, 3Dh, 6Dh, 3Dh, 3Dh, 42h, 00h, 00h, 16h, 16h, 00h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 16h, 00h, 3Dh, 3Dh, 3Dh, 42h, 00h, 16h, 16h, 16h, 00h, 10h,
db 10h, 10h, 00h, 00h, 10h, 10h, 10h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 6Dh, 3Dh, 3Dh, 00h, 16h, 16h, 16h, 16h, 00h, 00h, 00h, 00h, 16h, 16h, 16h, 16h, 00h, 10h,
db 10h, 00h, 16h, 16h, 00h, 10h, 10h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 00h, 10h,
db 10h, 00h, 16h, 16h, 00h, 00h, 00h, 00h, 42h, 3Dh, 3Dh, 3Dh, 6Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 00h,
db 10h, 10h, 00h, 16h, 16h, 16h, 16h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 6Dh, 00h, 16h, 16h, 16h, 0Fh, 00h, 16h, 16h, 16h, 16h, 16h, 0Fh, 00h, 16h, 16h, 00h,
db 10h, 10h, 10h, 00h, 00h, 16h, 16h, 00h, 42h, 3Dh, 6Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 16h, 00h, 00h, 16h, 16h, 16h, 00h, 16h, 00h, 00h, 16h, 16h, 00h,
db 10h, 10h, 10h, 10h, 10h, 00h, 00h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 40h, 40h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 40h, 40h, 00h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 6Dh, 3Dh, 3Dh, 00h, 16h, 40h, 40h, 16h, 00h, 16h, 16h, 00h, 16h, 16h, 00h, 16h, 40h, 40h, 00h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 42h, 3Dh, 6Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 16h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 16h, 16h, 00h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 00h, 00h, 42h, 42h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 00h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 00h, 16h, 00h, 00h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 00h, 16h, 16h, 16h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 16h, 00h, 10h, 10h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 00h, 16h, 16h, 00h, 10h, 00h, 16h, 16h, 00h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 16h, 16h, 00h, 10h, 00h, 16h, 16h, 00h, 10h, 10h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 00h, 00h, 00h, 10h, 10h, 00h, 00h, 00h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 00h, 00h, 10h, 10h, 10h, 00h, 00h, 00h, 10h, 10h, 10h, 10h, 10h,


nyanCatFull7Bitmap:
dw 33 ; Width
dw 20 ; height

; Buffer
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 10h, 10h, 10h, 10h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 00h, 10h, 10h, 10h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 42h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 42h, 42h, 42h, 00h, 10h, 10h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 6Dh, 3Dh, 3Dh, 6Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 42h, 42h, 00h, 10h, 10h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 3Dh, 3Dh, 6Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 42h, 00h, 10h, 10h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 00h, 3Dh, 3Dh, 6Dh, 3Dh, 3Dh, 42h, 00h, 10h, 00h, 00h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 00h, 3Dh, 3Dh, 3Dh, 3Dh, 42h, 00h, 00h, 16h, 16h, 00h, 10h,
db 10h, 00h, 00h, 00h, 00h, 10h, 10h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 6Dh, 3Dh, 3Dh, 00h, 16h, 16h, 16h, 00h, 3Dh, 3Dh, 3Dh, 42h, 00h, 16h, 16h, 16h, 00h, 10h,
db 10h, 00h, 16h, 16h, 00h, 00h, 10h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 16h, 16h, 00h, 00h, 00h, 00h, 16h, 16h, 16h, 16h, 00h, 10h,
db 10h, 00h, 00h, 16h, 16h, 00h, 00h, 00h, 42h, 3Dh, 3Dh, 3Dh, 6Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 00h, 10h,
db 10h, 10h, 00h, 00h, 16h, 16h, 00h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 6Dh, 00h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 00h,
db 10h, 10h, 10h, 00h, 00h, 16h, 16h, 00h, 42h, 3Dh, 6Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 16h, 0Fh, 00h, 16h, 16h, 16h, 16h, 16h, 0Fh, 00h, 16h, 16h, 00h,
db 10h, 10h, 10h, 10h, 00h, 00h, 00h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 16h, 00h, 00h, 16h, 16h, 16h, 00h, 16h, 00h, 00h, 16h, 16h, 00h,
db 10h, 10h, 10h, 10h, 10h, 10h, 00h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 6Dh, 3Dh, 3Dh, 00h, 16h, 40h, 40h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 40h, 40h, 00h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 42h, 3Dh, 6Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 40h, 40h, 16h, 00h, 16h, 16h, 00h, 16h, 16h, 00h, 16h, 40h, 40h, 00h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 42h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 16h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 16h, 16h, 00h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 00h, 00h, 00h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 00h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 00h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 00h, 16h, 16h, 16h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 00h, 16h, 16h, 00h, 00h, 10h, 00h, 16h, 16h, 00h, 10h, 10h, 10h, 10h, 10h, 00h, 16h, 16h, 00h, 10h, 00h, 16h, 16h, 00h, 10h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 00h, 00h, 00h, 00h, 10h, 10h, 00h, 00h, 00h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 00h, 00h, 10h, 10h, 00h, 00h, 10h, 10h, 10h, 10h, 10h,


nyanCatFull8Bitmap:
dw 34 ; Width
dw 20 ; height

; Buffer
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 00h, 10h, 10h, 10h, 10h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 42h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 42h, 42h, 42h, 00h, 10h, 10h, 10h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 6Dh, 3Dh, 3Dh, 6Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 42h, 42h, 00h, 10h, 10h, 10h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 3Dh, 3Dh, 6Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 42h, 00h, 10h, 10h, 10h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 00h, 3Dh, 6Dh, 3Dh, 3Dh, 42h, 00h, 10h, 10h, 00h, 00h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 00h, 3Dh, 3Dh, 3Dh, 42h, 00h, 10h, 00h, 16h, 16h, 00h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 6Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 16h, 00h, 3Dh, 3Dh, 42h, 00h, 00h, 16h, 16h, 16h, 00h, 10h,
db 10h, 10h, 00h, 00h, 10h, 10h, 10h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 16h, 16h, 00h, 00h, 00h, 00h, 16h, 16h, 16h, 16h, 00h, 10h,
db 10h, 00h, 16h, 16h, 00h, 10h, 10h, 00h, 42h, 3Dh, 3Dh, 3Dh, 6Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 00h, 10h,
db 10h, 00h, 16h, 16h, 00h, 00h, 00h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 6Dh, 3Dh, 00h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 00h,
db 10h, 10h, 00h, 16h, 16h, 16h, 16h, 00h, 42h, 3Dh, 6Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 16h, 0Fh, 00h, 16h, 16h, 16h, 16h, 16h, 0Fh, 00h, 16h, 16h, 00h,
db 10h, 10h, 10h, 00h, 00h, 16h, 16h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 16h, 00h, 00h, 16h, 16h, 16h, 00h, 16h, 00h, 00h, 16h, 16h, 00h,
db 10h, 10h, 10h, 10h, 10h, 00h, 00h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 6Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 40h, 40h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 40h, 40h, 00h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 42h, 3Dh, 6Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 40h, 40h, 16h, 00h, 16h, 16h, 00h, 16h, 16h, 00h, 16h, 40h, 40h, 00h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 42h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 16h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 16h, 16h, 00h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 00h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 00h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 00h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 00h, 16h, 16h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 00h, 16h, 16h, 00h, 10h, 00h, 16h, 16h, 00h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 16h, 16h, 00h, 10h, 00h, 16h, 16h, 00h, 10h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 00h, 00h, 00h, 10h, 10h, 10h, 00h, 00h, 00h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 00h, 00h, 10h, 10h, 00h, 00h, 00h, 10h, 10h, 10h, 10h,


nyanCatFull9Bitmap:
dw 34 ; Width
dw 21 ; height

; Buffer
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 00h, 10h, 10h, 10h, 10h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 42h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 42h, 42h, 42h, 00h, 10h, 10h, 10h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 6Dh, 3Dh, 3Dh, 6Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 42h, 42h, 00h, 10h, 10h, 10h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 3Dh, 3Dh, 6Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 42h, 00h, 10h, 10h, 10h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 00h, 3Dh, 6Dh, 3Dh, 3Dh, 42h, 00h, 10h, 10h, 00h, 00h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 00h, 3Dh, 3Dh, 3Dh, 42h, 00h, 10h, 00h, 16h, 16h, 00h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 6Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 16h, 00h, 3Dh, 3Dh, 42h, 00h, 00h, 16h, 16h, 16h, 00h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 16h, 16h, 00h, 00h, 00h, 00h, 16h, 16h, 16h, 16h, 00h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 3Dh, 3Dh, 3Dh, 6Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 00h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 00h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 6Dh, 3Dh, 00h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 00h,
db 10h, 10h, 10h, 00h, 00h, 00h, 00h, 00h, 42h, 3Dh, 6Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 16h, 0Fh, 00h, 16h, 16h, 16h, 16h, 16h, 0Fh, 00h, 16h, 16h, 00h,
db 10h, 00h, 00h, 16h, 16h, 16h, 16h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 16h, 00h, 00h, 16h, 16h, 16h, 00h, 16h, 00h, 00h, 16h, 16h, 00h,
db 10h, 00h, 16h, 16h, 16h, 00h, 00h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 6Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 40h, 40h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 40h, 40h, 00h,
db 10h, 10h, 00h, 00h, 00h, 00h, 10h, 00h, 42h, 42h, 3Dh, 6Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 40h, 40h, 16h, 00h, 16h, 16h, 00h, 16h, 16h, 00h, 16h, 40h, 40h, 00h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 42h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 16h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 16h, 16h, 00h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 00h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 00h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 00h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 16h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 16h, 16h, 00h, 10h, 00h, 16h, 16h, 00h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 16h, 16h, 00h, 10h, 00h, 16h, 16h, 00h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 00h, 00h, 10h, 10h, 10h, 00h, 00h, 00h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 00h, 00h, 10h, 10h, 00h, 00h, 00h, 10h, 10h, 10h,


nyanCatFull10Bitmap:
dw 34 ; Width
dw 21 ; height

; Buffer
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 00h, 10h, 10h, 10h, 10h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 42h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 42h, 42h, 42h, 00h, 10h, 10h, 10h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 6Dh, 3Dh, 3Dh, 6Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 42h, 42h, 00h, 10h, 10h, 10h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 3Dh, 3Dh, 6Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 42h, 00h, 10h, 10h, 10h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 00h, 3Dh, 6Dh, 3Dh, 3Dh, 42h, 00h, 10h, 10h, 00h, 00h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 00h, 3Dh, 3Dh, 3Dh, 42h, 00h, 10h, 00h, 16h, 16h, 00h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 6Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 16h, 00h, 3Dh, 3Dh, 42h, 00h, 00h, 16h, 16h, 16h, 00h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 16h, 16h, 00h, 00h, 00h, 00h, 16h, 16h, 16h, 16h, 00h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 3Dh, 3Dh, 3Dh, 6Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 00h, 10h,
db 10h, 10h, 10h, 10h, 10h, 00h, 00h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 6Dh, 3Dh, 00h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 00h,
db 10h, 10h, 10h, 00h, 00h, 16h, 16h, 00h, 42h, 3Dh, 6Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 16h, 0Fh, 00h, 16h, 16h, 16h, 16h, 16h, 0Fh, 00h, 16h, 16h, 00h,
db 10h, 10h, 00h, 16h, 16h, 16h, 16h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 16h, 00h, 00h, 16h, 16h, 16h, 00h, 16h, 00h, 00h, 16h, 16h, 00h,
db 10h, 00h, 16h, 16h, 00h, 00h, 00h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 6Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 40h, 40h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 40h, 40h, 00h,
db 10h, 00h, 16h, 16h, 00h, 10h, 10h, 00h, 42h, 42h, 3Dh, 6Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 40h, 40h, 16h, 00h, 16h, 16h, 00h, 16h, 16h, 00h, 16h, 40h, 40h, 00h,
db 10h, 10h, 00h, 00h, 10h, 10h, 10h, 00h, 42h, 42h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 16h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 16h, 16h, 00h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 00h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 00h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 00h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 00h, 16h, 16h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 00h, 16h, 16h, 00h, 10h, 00h, 16h, 16h, 00h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 16h, 16h, 00h, 10h, 00h, 16h, 16h, 00h, 10h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 00h, 00h, 00h, 10h, 10h, 10h, 00h, 00h, 00h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 00h, 00h, 10h, 10h, 00h, 00h, 00h, 10h, 10h, 10h, 10h,


nyanCatFull11Bitmap:
dw 33 ; Width
dw 21 ; height

; Buffer
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 10h, 10h, 10h, 10h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 00h, 10h, 10h, 10h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 42h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 42h, 42h, 42h, 00h, 10h, 10h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 6Dh, 3Dh, 3Dh, 6Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 42h, 42h, 00h, 10h, 10h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 3Dh, 3Dh, 6Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 42h, 00h, 10h, 10h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 00h, 3Dh, 3Dh, 6Dh, 3Dh, 3Dh, 42h, 00h, 10h, 00h, 00h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 00h, 3Dh, 3Dh, 3Dh, 3Dh, 42h, 00h, 00h, 16h, 16h, 00h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 6Dh, 3Dh, 3Dh, 00h, 16h, 16h, 16h, 00h, 3Dh, 3Dh, 3Dh, 42h, 00h, 16h, 16h, 16h, 00h, 10h,
db 10h, 00h, 00h, 00h, 00h, 10h, 10h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 16h, 16h, 00h, 00h, 00h, 00h, 16h, 16h, 16h, 16h, 00h, 10h,
db 00h, 16h, 16h, 16h, 00h, 00h, 00h, 00h, 42h, 3Dh, 3Dh, 3Dh, 6Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 00h, 10h,
db 00h, 00h, 16h, 16h, 16h, 16h, 00h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 6Dh, 00h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 00h,
db 10h, 10h, 00h, 00h, 00h, 00h, 16h, 00h, 42h, 3Dh, 6Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 16h, 0Fh, 00h, 16h, 16h, 16h, 16h, 16h, 0Fh, 00h, 16h, 16h, 00h,
db 10h, 10h, 10h, 10h, 10h, 00h, 00h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 16h, 00h, 00h, 16h, 16h, 16h, 00h, 16h, 00h, 00h, 16h, 16h, 00h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 6Dh, 3Dh, 3Dh, 00h, 16h, 40h, 40h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 40h, 40h, 00h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 42h, 3Dh, 6Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 40h, 40h, 16h, 00h, 16h, 16h, 00h, 16h, 16h, 00h, 16h, 40h, 40h, 00h,
db 10h, 10h, 10h, 10h, 10h, 10h, 00h, 00h, 42h, 42h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 16h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 16h, 16h, 00h, 10h,
db 10h, 10h, 10h, 10h, 10h, 00h, 00h, 00h, 00h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 00h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 00h, 10h, 10h,
db 10h, 10h, 10h, 10h, 00h, 16h, 16h, 16h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 00h, 16h, 16h, 00h, 10h, 00h, 16h, 16h, 00h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 16h, 16h, 00h, 10h, 00h, 16h, 16h, 00h, 10h, 10h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 00h, 00h, 00h, 10h, 10h, 10h, 00h, 00h, 00h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 00h, 00h, 10h, 10h, 00h, 00h, 00h, 10h, 10h, 10h, 10h, 10h,


nyanCatFull12Bitmap:
dw 33 ; Width
dw 21 ; height

; Buffer
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 10h, 10h, 10h, 10h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 00h, 10h, 10h, 10h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 42h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 42h, 42h, 42h, 00h, 10h, 10h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 6Dh, 3Dh, 3Dh, 6Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 42h, 42h, 00h, 10h, 10h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 3Dh, 3Dh, 6Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 00h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 42h, 00h, 10h, 00h, 00h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 00h, 3Dh, 6Dh, 3Dh, 3Dh, 42h, 00h, 00h, 16h, 16h, 00h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 16h, 00h, 3Dh, 3Dh, 3Dh, 42h, 00h, 16h, 16h, 16h, 00h, 10h,
db 10h, 10h, 00h, 00h, 10h, 10h, 10h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 6Dh, 3Dh, 3Dh, 00h, 16h, 16h, 16h, 16h, 00h, 00h, 00h, 00h, 16h, 16h, 16h, 16h, 00h, 10h,
db 10h, 00h, 16h, 16h, 00h, 10h, 10h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 00h, 10h,
db 10h, 00h, 16h, 16h, 00h, 00h, 00h, 00h, 42h, 3Dh, 3Dh, 3Dh, 6Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 00h,
db 10h, 10h, 00h, 16h, 16h, 16h, 16h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 6Dh, 00h, 16h, 16h, 16h, 0Fh, 00h, 16h, 16h, 16h, 16h, 16h, 0Fh, 00h, 16h, 16h, 00h,
db 10h, 10h, 10h, 00h, 00h, 16h, 16h, 00h, 42h, 3Dh, 6Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 16h, 00h, 00h, 16h, 16h, 16h, 00h, 16h, 00h, 00h, 16h, 16h, 00h,
db 10h, 10h, 10h, 10h, 10h, 00h, 00h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 40h, 40h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 40h, 40h, 00h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 6Dh, 3Dh, 3Dh, 00h, 16h, 40h, 40h, 16h, 00h, 16h, 16h, 00h, 16h, 16h, 00h, 16h, 40h, 40h, 00h,
db 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 42h, 42h, 3Dh, 6Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 16h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 16h, 16h, 00h, 10h,
db 10h, 10h, 10h, 10h, 10h, 10h, 00h, 00h, 42h, 42h, 42h, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 3Dh, 00h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h, 00h, 10h, 10h,
db 10h, 10h, 10h, 10h, 10h, 00h, 16h, 00h, 00h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 42h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 00h, 16h, 16h, 16h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 16h, 00h, 10h, 10h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 00h, 16h, 16h, 00h, 10h, 00h, 16h, 16h, 00h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 16h, 16h, 00h, 10h, 00h, 16h, 16h, 00h, 10h, 10h, 10h, 10h, 10h,
db 10h, 10h, 10h, 10h, 00h, 00h, 00h, 10h, 10h, 00h, 00h, 00h, 10h, 10h, 10h, 10h, 10h, 10h, 10h, 00h, 00h, 00h, 10h, 10h, 10h, 00h, 00h, 00h, 10h, 10h, 10h, 10h, 10h,
