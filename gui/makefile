SRC=$(wildcard *.c)
OBJ=$(SRC:.c=.o)
CFLAGS=-Wall -Wextra
NAME=corewar_gui
LDFLAGS=-lraylib

all: $(OBJ)
	$(CC) -o $(NAME) $(OBJ) $(LDFLAGS)
	mv $(NAME) ../bin/

clean:
	rm -f $(NAME)
	rm -f $(OBJ)
