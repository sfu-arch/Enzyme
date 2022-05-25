#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>
#include <math.h>
#include <inttypes.h>
#include <string.h>
#include <iostream>
#define N 50

extern int enzyme_const;
template<typename Return, typename... T>
Return __enzyme_autodiff(T...);
inline double matvec_real(double* mat, double* vec) {
    double *out = (double*)malloc(sizeof(double)*N);
#pragma clang loop unroll(full)
    for(int i=1; i<N; i++) {
        double s = 1;
        s += mat[i] * vec[i];
        s += vec[i+1];
        s += vec[i+2];
        s += vec[i+3];
        s += vec[i+4];
        s += vec[i+5];
        s += vec[i+6];
        s += vec[i+10];
        s += vec[i+12];
        s += vec[i+11];
        s += vec[i+2];
        s += vec[i+8];
        s += vec[i+99];
        s += vec[i+55];
        s += vec[i];

        out[i] *= s;
        out[i] *= s;
        out[i] *= s;

    }
    double sum = out[0] * out[N];
    // for (int i=0; i<N; i++)
    //   sum += out[i] * out[i];
    // free(out);

    return sum;
}
static void enzyme_sincos(double *Min, double *Mout, double *Vin, double *Vout) {
  __enzyme_autodiff<double>(matvec_real, Min, Mout, enzyme_const, Vin);
}

int main(int argc, char** argv) {

  double *Min = new double[N];
  double *Mout = new double[N];
  double *Vin = new double[N];
  double *Vout = new double[N];

  memset(Mout, 0, sizeof(double)*N);
  memset(Vout, 0, sizeof(double)*N);

  for (int i=0; i<N; i++) {
    Min[i] = 1.0;
    Vin[i] = 1;
  }
  enzyme_sincos(Min, Mout, Vin, Vout);
  // std::cout << matvec_real(Min, Vout) << std::endl;
}