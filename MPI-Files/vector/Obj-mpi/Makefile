# -*- Makefile -*-
SHELL=/bin/sh
CC=mpicc
CFLAGS=-Wall -g -O3 -ffast-math -fomit-frame-pointer
LDLIBS=-lm

# list of source files
SRC=vector-mpi.c
VPATH=../src
OBJ=$(SRC:%.c=%.o)

default: ../vector-mpi.x

clean:
	rm -f *.mod *.o ../vector-mpi.x

# linker rule
../vector-mpi.x: $(OBJ)
	$(CC) -o $@ $(CFLAGS) $^ $(LDLIBS)

# compilation pattern rule for objects
%.o: %.c
	$(CC) -c $(CFLAGS) $<

# dependencies
vector-mpi.o: vector-mpi.c
