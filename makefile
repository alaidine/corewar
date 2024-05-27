ASM = asm
VM = vm
ASM_SRC = $(shell find asm-src -name '*.c')
ASM_OBJ = $(ASM_SRC:.c=.o)
VM_SRC = $(shell find vm-src -name '*.c')
VM_OBJ = $(VM_SRC:.c=.o)
CC = gcc
FLAGS = -Wall -Wextra -Werror -g -Iinclude

all: $(ASM) $(VM)

%.o: %.c
	$(CC) $(FLAGS) -c $< -o $@

$(ASM): $(ASM_OBJ)
	$(CC) $(FLAGS) -o $@ $^

$(VM): $(VM_OBJ)
	$(CC) $(FLAGS) -o $@ $^

clean:
	rm -f $(ASM_OBJ) $(VM_OBJ) $(ASM) $(VM)