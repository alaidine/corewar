SRC=$(wildcard *.c)
OBJ=$(SRC:.c=.o)
CFLAGS=-Wall -Wextra
NAME=corewar_vm

all: $(OBJ)
	$(CC) -o $(NAME) $(OBJ)
	mv $(NAME) ../bin/

clean:
	rm -f $(NAME)
	rm -f $(OBJ)
