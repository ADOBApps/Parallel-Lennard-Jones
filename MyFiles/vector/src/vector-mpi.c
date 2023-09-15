/* 
  TASK: Calculate a * X + Y using OpenMP offloading
*/

#include <stdio.h>
#include <stdlib.h>
#include <mpi.h>
#include <math.h>
#include <time.h>
#include <sys/time.h>

double seconds(){
	struct timeval tmp;
	double sec;
	gettimeofday( &tmp, (struct timezone *) 0 );
	sec = tmp.tv_sec + ( (double) tmp.tv_usec ) / 1000000.0;
	return sec;
}

int main (int argc, char *argv[]){
	int num_proc; //num_processes
	int id_proc; //current_proces

	MPI_Init(&argc, &argv);
	MPI_Comm_size(MPI_COMM_WORLD, &num_proc);
	MPI_Comm_rank(MPI_COMM_WORLD, &id_proc);
    // Your code goes here!
    int N = 100000;
    float * A;
    float * B; 
    float * C;
	float * Aux1;
    double t1 = 0.0, t2 = 0.0;

    if( argc == 2 ) {
    	printf("The argument supplied is %s\n", argv[1]);
    	N = atoi(argv[1]);
    } else if( argc > 2 ) {
      printf("Too many arguments supplied.\n");
    } else {
		printf("One argument expected.\n");
    }

    A = (float*)malloc(sizeof(float) * N);
    B = (float*)malloc(sizeof(float) * N);
    C = (float*)malloc(sizeof(float) * N);

	Aux1 = (float*)malloc(sizeof(float) * N);

    for(int i = 0; i < N; ++i){
    	A[i] = rand() % (5 * N + 1);
    	B[i] = rand() % (7 * N + 1);
    }

    system("clear");
	t1 = seconds();
	/**
     * int MPI_Bcast(void* buffer,
              int count,
              MPI_Datatype datatype,
              int emitter_rank,
              MPI_Comm communicator);
    */
	MPI_Barrier(MPI_COMM_WORLD);
	MPI_Bcast(&A, N-1, MPI_FLOAT, 0, MPI_COMM_WORLD);
	MPI_Bcast(&B, N-1, MPI_FLOAT, 0, MPI_COMM_WORLD);
	MPI_Bcast(&Aux1, N-1, MPI_FLOAT, 0, MPI_COMM_WORLD);
    for(int i = 0; i < N; ++i){
    	Aux1[i] = M_PI * (A[i] + B[i]);
    }
	/*
    * MPI_Reduce(const void* send_buffer,
               void* receive_buffer,
               int count,
               MPI_Datatype datatype,
               MPI_Op operation,
               int root,
               MPI_Comm communicator);
    */
	MPI_Reduce(&Aux1, &C, N, MPI_FLOAT, MPI_SUM, 0, MPI_COMM_WORLD);
    t2 = seconds();
	if(id_proc == 0){
	    fprintf(stdout, "\nTotal time: %.6g\n", (t2-t1));
	}
    free(A);
    free(B);
    free(C);

	MPI_Finalize();	
    return 0;
}