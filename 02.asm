section .data:
	input db "Patryk Wojnarowski$"

section .text:
	org 0x100

start:
	mov DL, [input + 5]
	int 0x21

	; newline
	mov AH, 0x02
	mov DL, 0xA
	int 0x21

	; write
	mov DL, [input + 5]
	int 0x21

end:
	mov AH, 0x0
	int 0x21

