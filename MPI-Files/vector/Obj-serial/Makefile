# -*- Makefile -*-
SHELL=/bin/sh
CC=gcc
CFLAGS=-Wall -g -O3 -ffast-math -fexpensive-optimizations -msse3
LDLIBS=-lm

# list of source files
SRC=vector.c
VPATH=../src
OBJ=$(SRC:%.c=%.o)

default: ../vector-serial.x

clean:
	rm -f *.mod *.o ../vector-serial.x

# linker rule
../vector-serial.x: $(OBJ)
	$(CC) -o $@ $(CFLAGS) $^ $(LDLIBS)

# compilation pattern rule for objects
%.o: %.c
	$(CC) -c $(CFLAGS) $<

# dependencies
vector.o: vector.c
