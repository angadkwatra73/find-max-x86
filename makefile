# Makefile to build x86 assembly + C project


CC = gcc
ASM = nasm 
CFLAGS = -m32
ASFLAGS = -f elf32

all : find_max

find_max : main.c max.o
	$(CC) $(CFLAGS) main.c max.o -o find_max

max.o : max.asm
	$(ASM) $(ASFLAGS) max.asm -o max.o

clean:
	rm -f *.o find_max
