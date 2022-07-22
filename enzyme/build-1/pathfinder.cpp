//#include <stdio.h>
//#include <stdlib.h>
#include <time.h>
#include <sys/time.h>
#include <assert.h>
#include <string.h>
#include <iostream>
#include <fstream>
#include <string>

using namespace std;

/*************************************************************************
* RISC-V Vectorized Version
* Author: Cristóbal Ramírez Lazo
* email: cristobal.ramirez@bsc.es
* Barcelona Supercomputing Center (2020)
*************************************************************************/

#define NUM_RUNS 10
#define ROWS 10
#define COLS 10

void run(double *src, double *wall, double *dst);

#define MIN(a, b) ((a)<=(b) ? (a) : (b))

extern int enzyme_const;
template<typename Return, typename... T>
Return __enzyme_autodiff(T...);

int main(int argc, char** argv)
{
    double *src = (double *) malloc(sizeof(double) * ROWS * COLS);
    double *src_grad = (double *) malloc(sizeof(double) * ROWS * COLS);
    double *wall = (double *) malloc(sizeof(double) * ROWS * COLS);
    double *wall_grad = (double *) malloc(sizeof(double) * ROWS * COLS);
    double *dst = (double *) malloc(sizeof(double) * ROWS * COLS);
    double *dst_grad = (double *) malloc(sizeof(double) * ROWS * COLS);
       
    __enzyme_autodiff<void>(run, src, src_grad, wall, wall_grad, dst, dst_grad);
}


void run(double *src, double *wall, double *dst)
{
    double min;
    double *temp;
    for (int j=0; j<NUM_RUNS; j++) {
        for (int t = 0; t < ROWS-1; t++) {
            temp = src;
            src = dst;
            dst = temp;
            //#pragma omp parallel for private(min)
            for(int n = 0; n < COLS; n++){
              min = src[n];
              if (n > 0)
                min = MIN(min, src[n-1]);
              if (n < COLS-1)
                min = MIN(min, src[n+1]);
              dst[n] = wall[(t+1)*COLS + n]+min;
            }
        }   
        //delete src;
    }
}
