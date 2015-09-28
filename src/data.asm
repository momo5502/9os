;-----------------------------------------------------------------------------------------------------
;
;       Pseudo .data segment
;       TODO: Implement real segmentation!
;
;-----------------------------------------------------------------------------------------------------

;msg: db " 9os by Maurice Heumann & Olrik Heuser  ", 0
fore_color: db 7
bg_color: db 0
xPos: dw 0
yPos: dw 0

tone: dw 4A0h

randSeed: dd 346575334

screenWidth: dw 320
screenHeight: dw 200

pitFreq: dd 1193180
freq: dw 0

tonePos: db 0

nyanCatIntro: dw 1918, 1810, 1612, 2, 1209, 2, 1918, 1810, 1612, 1209, 1077, 959, 1077, 1280, 1209, 2, 1612, 2, 1918, 1810, 1612, 2, 1209, 2, 1077, 1280, 1209, 1077, 905, 959, 905, 1077, 0
nyanCatMusic: dw 1612, 2, 1437, 2, 1918, 1918, 1, 2420, 2032, 2154, 2420, 1, 2420, 2, 2154, 2, 2032, 2, 2032, 2154, 2420, 2154, 1918, 1612, 1437, 1918, 1612, 2154, 1918, 2420, 2154, 2420, 1918, 2, 1612, 2, 1437, 1918, 1612, 2154, 1918, 2420, 2032, 1918, 2032, 2154, 2420, 2154, 2032, 2, 2420, 2154, 1918, 1612, 2154, 1918, 2154, 2420, 2154, 2, 2420, 2, 2154, 2, 0
nyanCatMusic2: dw 2420, 2, 3233, 2875, 2420, 2, 3233, 2875, 2420, 2154, 1918, 2420, 1810, 1918, 1810, 1612, 2420, 2, 2420, 2, 3233, 2875, 2420, 3233, 1810, 1918, 2154, 2420, 3233, 1918, 1810, 3233, 2420, 2, 3233, 2875, 2420, 2, 3233, 2875, 2420, 2420, 2154, 1918, 2420, 3233, 2875, 3233, 2420, 2, 2420, 2560, 2420, 3233, 2875, 2420, 1810, 1918, 1810, 1612, 2420, 2, 0

nyanCatBlock2End1: dw 2560, 2, 0
nyanCatBlock2End2: dw 2154, 2, 0

jingleStage: db 0
jingleStages: dw nyanCatIntro, nyanCatMusic, nyanCatMusic, nyanCatMusic2, nyanCatBlock2End1, nyanCatMusic2, nyanCatBlock2End2, 0, 0

; LEL
rainbowTable: db 28h, 2Ah, 2Bh, 2Eh, 36h, 6Bh, 0

GDT: 

dq 00000000000000000h 

dw 0FFFFh 
dw 00000h
db 00h   
db 010011010b
db 011001111b
db 00h   

dw 0FFFFh 
dw 00000h
db 00h   
db 010010010b
db 011001111b
db 00h 

dw 0FFFFh 
dw 00000h
db 00h   
db 010011010b
db 010001111b
db 00h   

dw 0FFFFh 
dw 00000h
db 00h   
db 010010010b
db 010001111b
db 00h 

GDTP:                           
dw GDTP-GDT-1       
dd GDT           