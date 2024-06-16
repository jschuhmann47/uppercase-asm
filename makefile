make: 
	nasm -f elf64 -o uppercase.o uppercase.s
	ld -o uppercase uppercase.o