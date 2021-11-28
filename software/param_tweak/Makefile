SRCS=$(wildcard */*.c) $(wildcard *.c)
CC = zcc
CFLAGSOLD = +rc2014 -subtype=none -vn -SO3 -O3 --opt-code-size -clib=sdcc_iy -pragma-define:__CRTCFG=-1
CFLAGS = +cpm -clib=sdcc_iy
all:
	$(CC) $(CFLAGS) --list $(SRCS) -o main -create-app
docker:
	docker run -v ${PWD}:/src/ --rm -it z88dk $(CC) $(CFLAGS) --list $(SRCS) -o main -create-app
.PHONY clean:
	rm -f *.bin *.lst *.ihx *.hex *.obj *.rom *.lis zcc_opt.def $(APP_NAME) *.reloc *.sym *.map disasm.txt