	; Sources:
	; https://grandidierite.github.io/bios-interrupts/
	; https://en.wikipedia.org/wiki/INT_10H
	
	mov ah, 0x0 ; Set video mode
	mov al, 0x2 ; Mode 2: 80x25
	int 0x10

	mov ah, 0xA ; Service 10: write text at cursor
	mov al, 0x41 ; Character to write
	mov cx, 0x14 ; Number of times to write
	int 0x10

	mov ah, 0x2 ; Service 2: set cursor position
	mov bh, 0x0 ; Display page
	mov dh, 0x1 ; Row
	mov dl, 0x0 ; Column
	int 0x10

	mov ah, 0xA
	mov al, 0x2A
	mov cx, 0x3
	int 0x10

	times 510-($-$$) db 0
	db 0x55
	db 0xAA
