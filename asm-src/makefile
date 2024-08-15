SRC = $(shell find . -name "*.c")
OBJ = $(.)
ASM = asm
CC = gcc
CFLAGS = -Wall -Werror -Wpedantic -I../include

all: $(ASM)

$(ASM):
	$(CC) -o $(ASM) $(SRC) $(CFLAGS)
	mv $(ASM) ../bin
