# -*- Makefile -*-
SHELL=/bin/sh
############################################
# derived makefile variables
OBJ_SERIAL=$(SRC:src/%.f90=Obj-serial/%.o)
############################################

default: serial mpi omp hybrid

serial mpi omp hybrid:
	$(MAKE) $(MFLAGS) -C Obj-$@

clean:
	$(MAKE) $(MFLAGS) -C Obj-serial clean
	$(MAKE) $(MFLAGS) -C Obj-mpi clean
	$(MAKE) $(MFLAGS) -C Obj-omp clean
	$(MAKE) $(MFLAGS) -C Obj-hybrid clean
