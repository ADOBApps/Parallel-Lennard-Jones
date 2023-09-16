#!/bin/bash
#SBATCH -A ICT23_SMR3872
#SBATCH -p boost_usr_prod
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=32
#SBATCH --cpus-per-task=1
#SBATCH --time 00:10:00
#SBATCH --gres=gpu:1
#SBATCH --mem=490000MB

# Remove output files
# rm slurm*.out;

# modulefiles to be loaded to have MPI on Leonardo
# module load cineca-hpyc;
echo "";
echo "=============================================";
echo "Test for serial"
./vector-serial.x 100000

{ # try
    echo "";
    echo "=============================================";
    echo "Test for MPI"
    mpirun -np 32 ./vector-mpi.x 100000
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

{ # try
    echo "";
    echo "=============================================";
    echo "Test for Hybrid"
    mpirun -np 32 ./vector-omp.x 100000
} || { # catch
    echo "Hybrid no ready yet";
}

