SRC = $(shell find . -name "*.c")
OBJ = $(.)
VM = vm
CC = gcc
CFLAGS = -Wall -Werror -Wpedantic -I../include

all: $(VM)

$(VM):
	$(CC) -o $(VM) $(SRC) $(CFLAGS)
	mv $(VM) ../bin
