ifndef VERBOSE
.SILENT:
endif

build: 
	nasm -f elf64 -o uppercase.o uppercase.s
	mold -o uppercase uppercase.o

run: build
	./uppercase
