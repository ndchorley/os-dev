	; Sources:
	; https://grandidierite.github.io/bios-interrupts/
	; https://en.wikipedia.org/wiki/INT_10H
	
	mov ah, 0 ; Set video mode	
	mov al, 2 ; Mode 2: 80x25
	int 10h

	mov ah, 0ah ; Service 10: write text at cursor
	mov al, 41h ; Character to write
	mov cx, 14h ; Number of times to write
	int 10h
hang:
	jmp hang
	times 510-($-$$) db 0
	db 0x55
	db 0xAA
