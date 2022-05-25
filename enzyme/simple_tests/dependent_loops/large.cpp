#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>
#include <math.h>
#include <inttypes.h>
#include <string.h>

#define N 140

extern int enzyme_const;
template<typename Return, typename... T>
Return __enzyme_autodiff(T...);
inline double matvec_real(double* mat, double* vec) {
    double *out = (double*)malloc(sizeof(double)*N);
    for(int i=1; i<N/2; i++) {
        double s = out[i-1];
        s *= mat[2*i] * vec[2*i];
        s *= vec[2*i];
        s *= vec[2*i];
        s += vec[2*i];
        s += vec[2*i];
        s += vec[2*i];
        s += vec[2*i];
        s += vec[2*i];
        s += vec[2*i];
        s *= vec[2*i];
        s *= vec[2*i];
        s += vec[2*i];
        s += vec[2*i];
        s += vec[2*i];
        s += vec[2*i];
        s += vec[2*i];
        s += vec[2*i];
        out[i] = s;
    }
    double sum = 0;
    for (int i=0; i<N; i++)
      sum += out[i] * out[i];
    free(out);

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
  enzyme_sincos(Min, Mout, Vin, Vout);
}