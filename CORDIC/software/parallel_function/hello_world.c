#include <stdlib.h>
#include <sys/alt_stdio.h>
#include <sys/alt_alarm.h>
#include <sys/times.h>
#include <alt_types.h>
#include <system.h>
#include <stdio.h>
#include <unistd.h>
#include <math.h>


#define ALT_CI_FP_ADD(A,B) __builtin_custom_fnff(ALT_CI_FP_ADD_N,(A),(B))
#define ALT_CI_FP_ADD_N 0x1
#define ALT_CI_FUNCTION_PARALLEL_0(A,B) __builtin_custom_fnff(ALT_CI_FUNCTION_PARALLEL_0_N,(A),(B))
#define ALT_CI_FUNCTION_PARALLEL_0_N 0x0


// Test case 1
//#define test 1
//#define step 5
//#define N 52

// Test case 2
//#define test 2
//#define step 1/8.0
//#define N 2041

//Test case 3
#define test 3
#define step 1/1024.0
#define N 261121

// Test Case 4
//#define test 4
//#define N 2323
//#define RANDSEED 334
//void generateRandomVector(float x[N]){
//	int i; srand(RANDSEED);
//	for (i=0; i<N; i++) { x[i] = ((float) rand()/ (float) RAND_MAX) * MAXVAL; }
//}


// Generates the vector x and stores it in the memory
void generateVector(float x[N])
//void generateVector(double x[N])
{
	int i;
	x[0] = 0;
	for (i=1; i<N; i++)
		x[i] = x[i-1] + step;
}

float sumVector(float x[], int M)
{
	float result=0;

	for(int i=0; i<M; i+=2){

		float temp = ALT_CI_FUNCTION_PARALLEL_0(x[i],x[i+1]);
		result = ALT_CI_FP_ADD(temp,result);

	}
	return result;
}

int main()
{
	printf("Test %d!\n",test);

	// Define input vector
	float x[N];
	//double x[N];

	// Returned result
	float y;
	//double y;

	generateVector(x);

	// The following is used for timing
	char buf[50];
	clock_t exec_t1, exec_t2;

	exec_t1 = times(NULL); // get system time before starting the process

	//The code that you want to time goes here
	y = sumVector(x, N);

	// till here
	exec_t2 = times(NULL); // get system time after finishing the process


	printf(" exec 1 = %d \n",exec_t1);
	printf(" exec 2 = %d \n",exec_t2);
	alt_printf(" proc time = 0x%x ticks \n", (int) ((exec_t2-exec_t1)/1));

	//printf("done \n");
	for (int i=0; i<10; i++)
		y = y/2.0;

	printf("result: %f \n", y);
	return 0;
}
