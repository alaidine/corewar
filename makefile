ASM = asm
VM = vm
ASM_SRC = $(shell find asm-src -name '*.c')
ASM_OBJ = $(ASM_SRC:.c=.o)
CC = clang
FLAGS = -Wall -Wextra -Werror -g -Iinclude

all: $(ASM) $(VM)

%.o: %.c
	$(CC) $(FLAGS) -c $< -o $@

$(ASM): $(ASM_OBJ)
	$(CC) $(FLAGS) -o $@ $^

$(VM):
	cd ./vm-src/ && $(MAKE)

clean:
	rm -f $(ASM_OBJ) $(VM_OBJ) $(ASM) $(VM)
