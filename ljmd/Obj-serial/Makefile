# -*- Makefile -*-
SHELL=/bin/sh
CC=gcc
# CFLAGS=-Wall -g -O3 -ffast-math -fomit-frame-pointer -DLJMD_VERSION=1.0
CFLAGS=-Wall -g -O3 -ffast-math -fexpensive-optimizations -msse3 -DLJMD_VERSION=1.0
LDLIBS=-lm

# list of source files
SRC=ljmd.c
VPATH=../src
OBJ=$(SRC:%.c=%.o)

default: ../ljmd-serial.x

clean:
	rm -f *.mod *.o ../ljmd-serial.x

# linker rule
../ljmd-serial.x: $(OBJ)
	$(CC) -o $@ $(CFLAGS) $^ $(LDLIBS)

# compilation pattern rule for objects
%.o: %.c
	$(CC) -c $(CFLAGS) $<

# dependencies
ljmd.o: ljmd.c
