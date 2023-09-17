#!/bin/bash

cd examples;
echo "";
echo "=============================================";
echo "Test for serial"
../ljmd-serial.x < argon_108.inp

{ # try
    echo "";
    echo "=============================================";
    echo "Test for OpenMP"
    ../ljmd-openmp.x < argon_108.inp
} || { # catch
    echo "OpenMP no ready yet";
}

{ # try
    echo "";
    echo "=============================================";
    echo "Test for MPI"
    mpirun -np 18 ../ljmd-mpi.x < argon_108.inp 
} || { # catch
    echo "MPI no ready yet";
}
