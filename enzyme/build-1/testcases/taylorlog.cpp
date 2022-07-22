#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>
#include <stdlib.h>
#include <math.h>
#include <inttypes.h>
#include <string.h>

template<typename Return, typename... T>
Return __enzyme_autodiff(T...);

#define SINCOSN 10
static 
double sincos_real(double x) {
  double sum = 0;
#ifdef unr
#pragma clang loop unroll (full)
#endif
  for(int i=1; i<=SINCOSN; i++) {
    sum += pow(x, i) / i;
  }
  return sum;
}


static void enzyme_sincos(double inp) {

  auto res2 = __enzyme_autodiff<double>(sincos_real, inp);
}

int main(int argc, char** argv) {

  double inp = atof(argv[1]) ;
  inp = 0.00000000001;
  enzyme_sincos(inp);
  sincos_real(inp);
}
