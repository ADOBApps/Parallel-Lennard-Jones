/* 
  TASK: Calculate a * X + Y using OpenMP offloading
*/

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <time.h>
#include <sys/time.h>
//OpenMP
#include <omp.h>

double seconds(){
	struct timeval tmp;
	double sec;
	gettimeofday( &tmp, (struct timezone *) 0 );
	sec = tmp.tv_sec + ( (double) tmp.tv_usec ) / 1000000.0;
	return sec;
}

int main (int argc, char *argv[]){
    // Your code goes here!
    int N = 100000;
    int my_threads = 0;
    float * A;
    float * B; 
    float * C;
    double t1 = 0.0, t2 = 0.0;
    //system("clear");
    if( argc == 2 ) {
        printf("The argument supplied is %s\n", argv[1]);
        N = atoi(argv[1]);
    } else if( argc > 2 ) {
        printf("Too many arguments supplied.\n");
    } else {
		printf("One argument expected.\n");
    }

    A = (float*)malloc(sizeof(float)*N);
    B = (float*)malloc(sizeof(float)*N);
    C = (float*)malloc(sizeof(float)*N);

    #pragma omp parallel for
    for(int i = 0; i < N; ++i){
      A[i] = rand() % (5 * N + 1);
      B[i] = rand() % (7 * N + 1);
    }

    #pragma omp parallel
    {
        my_threads = omp_get_max_threads();
    }
    
    printf("%i", my_threads);
    omp_set_num_threads(my_threads);

    t1 = seconds();
    #pragma omp parallel for
    for(int i = 0; i < N; ++i){
      C[i] = M_PI * (A[i] + B[i]);
    }
    t2 = seconds();
    fprintf(stdout, "\nTotal serial execution time: %.6g\n", (t2-t1));
    free(A);
    free(B);
    free(C);
    return 0;
}