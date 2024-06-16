ifndef VERBOSE
.SILENT:
endif

make: 
	nasm -f elf64 -o uppercase.o uppercase.s
	mold -o uppercase uppercase.o

run:
	nasm -f elf64 -o uppercase.o uppercase.s
	mold -o uppercase uppercase.o
	./uppercase