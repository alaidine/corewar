SRC=$(wildcard *.c)
SRC+=../op/op.c
OBJ=$(SRC:.c=.o)
CFLAGS=-Wall -Wextra -I../op/
NAME=corewar_asm

all: $(OBJ)
	$(CC) -o $(NAME) $(OBJ)
	mv $(NAME) ../bin/

clean:
	rm -f $(NAME)
	rm -f $(OBJ)
