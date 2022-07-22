/*************************************************************************
* Somier - RISC-V Vectorized version
* Author: Jesus Labarta
* Barcelona Supercomputing Center
*************************************************************************/
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <inttypes.h>

#define N 5
extern int enzyme_const;
template<typename Return, typename... T>
Return __enzyme_autodiff(T...);

void force_contribution(int n, double ****X, double ****F,
                   int i, int j, int k, int neig_i, int neig_j, int neig_k)
{
    double spring_K=10.0;

   double dx, dy, dz, dl, spring_F, FX, FY,FZ;

   dx=X[0][neig_i][neig_j][neig_k]-X[0][i][j][k];
   dy=X[1][neig_i][neig_j][neig_k]-X[1][i][j][k];
   dz=X[2][neig_i][neig_j][neig_k]-X[2][i][j][k];
   dl = sqrt(dx*dx + dy*dy + dz*dz);
   spring_F = 0.25 * spring_K*(dl-1);
   FX = spring_F * dx/dl; 
   FY = spring_F * dy/dl;
   FZ = spring_F * dz/dl; 
   F[0][i][j][k] += FX;
   F[1][i][j][k] += FY;
   F[2][i][j][k] += FZ;
}

void compute_forces(int n, double ****X, double ****F)
{
   for (int i=1; i<N-1; i++) {
      for (int j=1; j<N-1; j++) {
         for (int k=1; k<N-1; k++) {
            force_contribution (n, X, F, i, j, k, i-1, j,   k);
            force_contribution (n, X, F, i, j, k, i+1, j,   k);
            force_contribution (n, X, F, i, j, k, i,   j-1, k);
            force_contribution (n, X, F, i, j, k, i,   j+1, k);
            force_contribution (n, X, F, i, j, k, i,   j,   k-1);
            force_contribution (n, X, F, i, j, k, i,   j,   k+1);
         }
      }
   }
}

int main(int argc, char *argv[])
{
   // double ****X;
   // double ****F;
   // double ****X_grad;
   // double ****F_grad;
   // X = (double ****)malloc(3*(N-1)*(N-1)*(N-1)*sizeof(double));
   // F = (double ****)malloc(3*(N-1)*(N-1)*(N-1)*sizeof(double));
   // X_grad = (double ****)malloc(3*(N-1)*(N-1)*(N-1)*sizeof(double));
   // F_grad = (double ****)malloc(3*(N-1)*(N-1)*(N-1)*sizeof(double));
   
    // X  = malloc(3*sizeof (*X));
    // V      = malloc(3*sizeof (*V));
    // A      = malloc(3*sizeof (*A));
    // F      = malloc(3*sizeof (*F));
    // F_ref  = malloc (3*sizeof (*F_ref));
    
   double *X;
   double *F;
   double *X_grad;
   double *F_grad;
   X = (double *)malloc(3*(N-1)*(N-1)*(N-1)*sizeof(double));
   F = (double *)malloc(3*(N-1)*(N-1)*(N-1)*sizeof(double));
   X_grad = (double *)malloc(3*(N-1)*(N-1)*(N-1)*sizeof(double));
   F_grad = (double *)malloc(3*(N-1)*(N-1)*(N-1)*sizeof(double));

    // compute_forces(N, X, F);
  __enzyme_autodiff<void>(compute_forces, N, X, X_grad, enzyme_const, F);

    return 0;

}
