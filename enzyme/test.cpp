#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>
#include <stdlib.h>
#include <math.h>
#include <inttypes.h>
#include <string.h>

#define N 10
#define M 10

extern int enzyme_const;
template<typename Return, typename... T>
Return __enzyme_autodiff(T...);
inline double matvec_real(double* mat, double* vec) {
  double *out = (double*)malloc(sizeof(double)*N);
  //double *out = new double[N];
// #pragma clang loop unroll(full)
out[0] = 1;
  for(int i=0; i<N-4; i++) {
    double a1 = mat[i] * vec[i];
    double a2 = mat[i] * vec[i];
    if (a1)
      out[0] += a1 + a2;
// #pragma clang loop unroll(full)
    // for(int j=0; j<M; j++) {
    //     out[i] *= mat[i*M+j] * vec[j];
    // }
  }
  // double sum = 0;
  // for(int i=0; i<N; i++) {
  //   sum += out[i] * out[i];
  // }
  free(out);
  //delete[] out;
  return out[0];
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