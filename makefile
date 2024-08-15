.PHONY: bin

all: bin asm vm

bin:
	mkdir bin/ -p

asm:
	cd ./asm-src/ && $(MAKE)
vm:
	cd ./vm-src/ && $(MAKE)

clean:
	rm -f ./bin/*
