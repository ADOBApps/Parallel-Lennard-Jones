#!/bin/bash
echo "";
echo "=============================================";
echo "Test for serial"
./vector-serial.x 100000

{ # try
    echo "";
    echo "=============================================";
    echo "Test for MPI"
    mpirun -np 18 ./vector-mpi.x 100000
} || { # catch
    echo "MPI no ready yet";
}

{ # try
    echo "";
    echo "=============================================";
    echo "Test for OpenMP"
    ./vector-omp.x 100000
} || { # catch
    echo "OpenMP no ready yet";
}
