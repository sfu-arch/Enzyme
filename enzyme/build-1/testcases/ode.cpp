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
extern "C" {
  extern int enzyme_dup;
  extern int enzyme_const;
  extern int enzyme_dupnoneed;
}

float tdiff(struct timeval *start, struct timeval *end) {
  return (end->tv_sec-start->tv_sec) + 1e-6*(end->tv_usec-start->tv_usec);
}

#define BOOST_MATH_NO_LONG_DOUBLE_MATH_FUNCTIONS
#define BOOST_NO_EXCEPTIONS
#include <iostream>
#include <boost/array.hpp>

#include <boost/numeric/odeint.hpp>

#include <boost/throw_exception.hpp>
void boost::throw_exception(std::exception const & e){
    //do nothing
}

using namespace std;
using namespace boost::numeric::odeint;

#define N 8
#define xmin 0.
#define xmax 1.
#define ymin 0.
#define ymax 1.

#include <assert.h>
#define RANGE(min, max, i, N) ((max-min)/(N-1)*i + min)
#define GETnb(x, i, j) (x)[N*i+j]
#define GET(x, i, j) GETnb(x, i, j)
//#define GET(x, i, j) ({ assert(i >=0); assert( j>=0); assert(j<N); assert(j<N); GETnb(x, i, j); })

template <typename T>
T brusselator_f(T x, T y, T t) {
  bool eq1 = ((x-0.3)*(x-0.3) + (y-0.6)*(y-0.6)) <= 0.1*0.1;
  bool eq2 = t >= 1.1;
  if (eq1 && eq2) {
    return T(5);
  } else {
    return T(0);
  }
}

void init_brusselator(double* __restrict u, double* __restrict v) {
  for(int i=0; i<N; i++) {
    for(int j=0; j<N; j++) {

      double x = RANGE(xmin, xmax, i, N);
      double y = RANGE(ymin, ymax, j, N);

      GETnb(u, i, j) = 22*(y*(1-y))*sqrt(y*(1-y));
      GETnb(v, i, j) = 27*(x*(1-x))*sqrt(x*(1-x));
    }
  }
}

__attribute__((noinline))
void brusselator_2d_loop(double* __restrict du, double* __restrict dv, const double* __restrict u, const double* __restrict v, const double* __restrict p, double t) {
  double A = p[0];
  double B = p[1];
  double alpha = p[2];
  double dx = (double)1/(N-1);

  alpha = alpha/(dx*dx);
#ifdef unr
#pragma clang loop unroll (full)
#endif
  for(int i=0; i<N; i++) {
#ifdef unr
#pragma clang loop unroll (full)
#endif
    for(int j=0; j<N; j++) {

      double x = RANGE(xmin, xmax, i, N);
      double y = RANGE(ymin, ymax, j, N);

      unsigned ip1 = (i == N-1) ? i : (i+1);
      unsigned im1 = (i == 0) ? i : (i-1);

      unsigned jp1 = (j == N-1) ? j : (j+1);
      unsigned jm1 = (j == 0) ? j : (j-1);

      double u2v = GET(u, i, j) * GET(u, i, j) * GET(v, i, j);

      GETnb(du, i, j) = alpha*( GET(u, im1, j) + GET(u, ip1, j) + GET(u, i, jp1) + GET(u, i, jm1) - 4 * GET(u, i, j))
                      + B + u2v - (A + 1)*GET(u, i, j) + brusselator_f(x, y, t);

      GETnb(dv, i, j) = alpha*( GET(v, im1, j) + GET(v, ip1, j) + GET(v, i, jp1) + GET(v, i, jm1) - 4 * GET(v, i, j))
                      + A * GET(u, i, j) - u2v;
    }
  }
}

typedef boost::array< double , 2 * N * N > state_type;

double foobar(const double* p, const state_type x, const state_type adjoint, double t) {
    double dp[3] = { 0. };

    state_type dx = { 0. };

    state_type dadjoint_inp = adjoint;

    state_type dxdu;

    __enzyme_autodiff<void>(brusselator_2d_loop,
//                            enzyme_dup, dxdu.c_array(), dadjoint_inp.c_array(),
//                            enzyme_dup, dxdu.c_array() + N * N, dadjoint_inp.c_array() + N * N,
                            enzyme_dupnoneed, nullptr, dadjoint_inp.data(),
                            enzyme_dupnoneed, nullptr, dadjoint_inp.data() + N * N,
                            enzyme_dup, x.data(), dx.data(),
                            enzyme_dup, x.data() + N * N, dx.data() + N * N,
                            enzyme_dup, p, dp,
                            enzyme_const, t);

    return dx[0];
}


//! Main
int main(int argc, char** argv) {
  const double p[3] = { /*A*/ 3.4, /*B*/ 1, /*alpha*/10. };

  state_type x;
  init_brusselator(x.data(), x.data() + N * N);

  state_type adjoint;
  init_brusselator(adjoint.data(), adjoint.data() + N * N);

  double t = 2.1;
  {

  double res;
  for(int i=0; i<1; i++)
  res = foobar(p, x, adjoint, t);

  }
  brusselator_2d_loop(x.data(), x.data() + N * N, x.data() + N * N, x.data() + N * N, p, t);
  //printf("res=%f\n", foobar(1000));
}
