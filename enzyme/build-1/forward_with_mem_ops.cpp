#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>
#include <stdlib.h>
#include <math.h>
#include <inttypes.h>
#include <string.h>

#define N 15
#define M 15

extern int enzyme_const;
template<typename Return, typename... T>
Return __enzyme_autodiff(T...);
inline double matvec_real(double* mat, double* vec) {
    double *out = (double*)malloc(sizeof(double)*N);
    out[0] = mat[0] * vec[0];
    out[0] *= mat[1] * vec[1];
    out[0] *= mat[2] * vec[2];
    out[0] *= mat[3] * vec[3];
    out[0] *= mat[4] * vec[4];
    out[0] *= mat[5] * vec[5];
    out[0] *= mat[6] * vec[6];
    out[0] *= mat[7] * vec[7];

    out[0] *= mat[8] * vec[8];
    out[0] *= mat[9] * vec[9];
    out[0] *= mat[10] * vec[10];
    out[0] *= mat[11] * vec[11];
    out[0] *= mat[12] * vec[12];
    out[0] *= mat[13] * vec[13];
    out[0] *= mat[14] * vec[14];


    free(out);
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