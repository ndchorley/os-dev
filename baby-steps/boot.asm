hang:
	mov ah, 0
	mov al, 2
	int 10h

	mov ah, 0ah
	mov al, 41h
	mov cx, 14h
	int 10h

	jmp hang
	times 510-($-$$) db 0
	db 0x55
	db 0xAA
