/**
 * This version is stamped on May 10, 2016
 *
 * Contact:
 *   Louis-Noel Pouchet <pouchet.ohio-state.edu>
 *   Tomofumi Yuki <tomofumi.yuki.fr>
 *
 * Web address: http://polybench.sourceforge.net
 */
/* jacobi-2d.c: this file is part of PolyBench/C */

/*************************************************************************
* RISC-V Vectorized Version
* Author: Cristóbal Ramírez Lazo
* email: cristobal.ramirez@bsc.es
* Barcelona Supercomputing Center (2020)
*************************************************************************/

#include <time.h>
#include <sys/time.h>
#include <assert.h>
#include <string.h>
#include <iostream>
#include <fstream>
#include <string>
#include <iomanip>


using namespace std;
#define DATA_TYPE double
#define N 100

extern int enzyme_const;
template<typename Return, typename... T>
Return __enzyme_autodiff(T...);

/* Main computational kernel. The whole function will be timed,
   including the call and return. */
static
void kernel_jacobi_2d(int tsteps,int n, DATA_TYPE **A,DATA_TYPE **B)
{
  int t, i, j;
  for (t = 0; t < tsteps; t++)
    {
      for (i = 1; i < n - 1; i++)
       for (j = 1; j < n - 1; j++)
         B[i][j] = (0.2) * (A[i][j] + A[i][j-1] + A[i][1+j] + A[1+i][j] + A[i-1][j]);
      for (i = 1; i < n - 1; i++)
       for (j = 1; j < n - 1; j++)
         A[i][j] = (0.2) * (B[i][j] + B[i][j-1] + B[i][1+j] + B[1+i][j] + B[i-1][j]);
    }

}


int main(int argc, char** argv)
{
  int n = N;

  DATA_TYPE** A;
  DATA_TYPE** A_grad;

  DATA_TYPE** B;
  DATA_TYPE** B_grad;
  
  /* Variable declaration/allocation. */
  A = (DATA_TYPE **)malloc(n * sizeof(DATA_TYPE *));
  A_grad = (DATA_TYPE **)malloc(n * sizeof(DATA_TYPE *));
  B = (DATA_TYPE **)malloc(n * sizeof(DATA_TYPE *));
  B_grad = (DATA_TYPE **)malloc(n * sizeof(DATA_TYPE *));
  for (int i = 0; i < n; i++) {
    A[i] = (DATA_TYPE *)malloc(n * sizeof(DATA_TYPE));
    B[i] = (DATA_TYPE *)malloc(n * sizeof(DATA_TYPE));
    A_grad[i] = (DATA_TYPE *)malloc(n * sizeof(DATA_TYPE));
    B_grad[i] = (DATA_TYPE *)malloc(n * sizeof(DATA_TYPE));
  }

  /* Run kernel. */
  // kernel_jacobi_2d(1, n, A, B);
  __enzyme_autodiff<void>(kernel_jacobi_2d, 1, n, A, A_grad, B, B_grad);
  /* Be clean. */
  free(A[0]); free(A);
  free(B[0]); free(B);

  return 0;
}