org 100h

; read
mov AH, 0xA
mov byte [input], 0xA ; limit input to 10 chars
mov DX, input
int 0x21

; print newline
mov AH, 0x02
mov DL, 0xA
int 0x21

; $ terminate
mov AL, [input + 1]
mov AH, 0x0
mov BX, input
add BX, 0x02
add BX, AX
mov byte [BX], '$'

;print
mov AH, 0x09
mov BX, input
add BX, 0x02
mov DX, BX 
int 0x21

; end
mov AH, 0x0
int 0x21

; 1 for size, 1 for size returned
; 10 for input, 1 for $ termination
input db 13
