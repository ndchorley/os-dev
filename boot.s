	.set MAGIC, 0x1BADB002
	.set FLAGS, 74 // Just to check a value that isn't 0
	.set CHECKSUM, -(MAGIC + FLAGS)

	.section .multiboot
	.align 4
	.long MAGIC
	.long FLAGS
	.long CHECKSUM
