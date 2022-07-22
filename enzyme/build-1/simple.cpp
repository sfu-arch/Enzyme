#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>
#include <math.h>
#include <inttypes.h>
#include <string.h>

#define N 20

extern int enzyme_const;
template<typename Return, typename... T>
Return __enzyme_autodiff(T...);
inline double matvec_real(double* a) {
    
    return a[0] * a[1] + a[2] * a[3];
}
static void enzyme_sincos(double *Min, double *Mout, double *Vin, double *Vout) {
  __enzyme_autodiff<double>(matvec_real, Min, Mout);
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