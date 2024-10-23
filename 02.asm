org 100h

; print string
mov AH, 0x09
mov DX, input
int 0x21

; newline
mov AH, 0x02
mov DL, 0xA
int 0x21

; $ terminate on 4th character
mov byte [input + 3], '$'

; print again
mov AH, 0x09
mov DX, input
int 0x21

; end
mov AH, 0x0
int 0x21

input db "Patryk Wojnarowski$"
