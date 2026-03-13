	.set MAGIC, 0x1BADB002
	.set CHECKSUM, -MAGIC

	.section .multiboot
	.align 4
	.long MAGIC
	.long 74 // Just to check a value that isn't 0.
	.long CHECKSUM
