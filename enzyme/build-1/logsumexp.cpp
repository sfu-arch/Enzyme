#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>
#include <stdlib.h>
#include <math.h>
#include <inttypes.h>
#include <string.h>

extern int enzyme_const;
template<typename Return, typename... T>
Return __enzyme_autodiff(T...);


static double sum(const double *x, size_t n) {
    double res = 0;
  // #pragma clang loop unroll(full)
    for(int i=0; i<n; i++) {
        res+=x[i];
    }
    return res;
}

static double max(double x, double y) {
    return (x > y) ? x : y;
}

static double logsumexp(const double *__restrict x, size_t n) {
  double A = x[0];
  // #pragma clang loop unroll(full)
  for(int i=0; i<n; i++) {
    A = max(A, x[i]);
  }
  double sema = 0;
  // #pragma clang loop unroll(full)
  for(int i=0; i<n; i++) {
    sema += exp(x[i] - A);
  }
  return log(sema) + A;
}

static void enzyme_sincos(double *input, double *inputp, unsigned long n, unsigned long repeat) {
   
  for(int i=0; i<repeat; i++) {
    __enzyme_autodiff<void>(logsumexp, input, inputp, n);
  }

}

int main(int argc, char** argv) {
    if (argc < 2) {
        printf("usage %s n repeat\n", argv[0]);
        return 1;
    }
  unsigned long n = 10000;

  double *input = new double[n];
  double *inputp = new double[n];
  for(int i=0; i<n; i++) {
    input[i] = 3.1415926535 / (i+1);
  }
  enzyme_sincos(input, inputp, n, 1);
  return logsumexp(input, n);
}

