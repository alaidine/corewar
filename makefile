all:
	mkdir -p bin/
	make -C asm
	make -C gui
	make -C vm

clean:
	make clean -C gui
	make clean -C asm
	make clean -C vm
