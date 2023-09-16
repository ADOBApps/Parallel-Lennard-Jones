# -*- Makefile -*-
SHELL=/bin/sh
CC=gcc
CFLAGS=-fopenmp -Wall -g -O3 -ffast-math -fomit-frame-pointer
LDLIBS=-lm

# list of source files
SRC=vector-omp.c
VPATH=../src
OBJ=$(SRC:%.c=%.o)

default: ../vector-omp.x

clean:
	rm -f *.mod *.o ../vector-omp.x

# linker rule
../vector-omp.x: $(OBJ)
	$(CC) -o $@ $(CFLAGS) $^ $(LDLIBS)

# compilation pattern rule for objects
%.o: %.c
	$(CC) -c $(CFLAGS) $<

# dependencies
vector-omp.o: vector-omp.c
