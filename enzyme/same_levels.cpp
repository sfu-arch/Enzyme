#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>
#include <stdlib.h>
#include <math.h>
#include <inttypes.h>
#include <string.h>

#define N 2
#define M 2

extern int enzyme_const;
template<typename Return, typename... T>
Return __enzyme_autodiff(T...);
inline double matvec_real(double* mat, double* vec) { // These two operations have the same level but different number of nodes
    double a = vec[0] + mat[0];
    double b = vec[1] + mat[1];
    return a + b;
    // div
    // double a = vec[0] / mat[0];
    // return a;
}
static void enzyme_sincos(double *Min, double *Mout, double *Vin, double *Vout) {
  __enzyme_autodiff<double>(matvec_real, Min, Mout, enzyme_const, Vin);
}

int main(int argc, char** argv) {

  double *Min = new double[N*M];
  double *Mout = new double[N*M];
  double *Vin = new double[M];
  double *Vout = new double[M];

  memset(Mout, 0, sizeof(double)*N*M);
  memset(Vout, 0, sizeof(double)*M);
  enzyme_sincos(Min, Mout, Vin, Vout);
}