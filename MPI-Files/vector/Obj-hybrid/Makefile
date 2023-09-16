# -*- Makefile -*-
SHELL=/bin/sh
CC=mpicc
CFLAGS=-fopenmp -Wall -g -O3 -ffast-math -fomit-frame-pointer
LDLIBS=-lm

# list of source files
SRC=vector-hybrid.c
VPATH=../src
OBJ=$(SRC:%.c=%.o)

default: ../vector-hybrid.x

clean:
	rm -f *.mod *.o ../vector-hybrid.x

# linker rule
../vector-hybrid.x: $(OBJ)
	$(CC) -o $@ $(CFLAGS) $^ $(LDLIBS)

# compilation pattern rule for objects
%.o: %.c
	$(CC) -c $(CFLAGS) $<

# dependencies
vector-hybrid.o: vector-hybrid.c
