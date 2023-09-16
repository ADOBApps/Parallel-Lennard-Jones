#!/bin/bash
    echo "";
    echo "=============================================";
    echo "Test for serial"
    ./vector-serial.x 100000

{ # try
    echo "";
    echo "=============================================";
    echo "Test for MPI"
    mpirun -np 2 ./vector-mpi.x 100000
} || { # catch
    echo "MPI no ready yet";
}

