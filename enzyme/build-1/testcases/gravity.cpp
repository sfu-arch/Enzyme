#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <chrono>
#include <iostream>

extern int enzyme_const;
template<typename Return, typename... T>
Return __enzyme_autodiff(T...);

#define N 20

double dt = 0.0001;

double ComputeU(double *x) {
    double r;
    double u = 1;

#ifdef unr
#pragma clang loop unroll (full)
#endif
    for (int i = 0; i < N; i++) {

#ifdef unr
#pragma clang loop unroll (full)
#endif
        for (int j=i+1; j < N; j++) {
            r = x[i] - x[j];
            u += -1.0 / (r + 0.001);
        }
    }
    return u;
}

void Advance(double *x, double *x_grad, double *v) {
    for (int i = 0; i < N; i++) {
        v[i] += x_grad[i] * dt; // dv/dt = -dU/dx
        x[i] += v[i] * dt; // I'm not sure if this is correct
    } 
}

void substep(double *x, double *v) {
    double *x_grad = new double[N];
    __enzyme_autodiff<double>(ComputeU, x, x_grad) ;
    Advance(x, x_grad, v);

}

int main(int argc, char** argv) {
    double *x = new double[N];
    // double *x = (double *) 0x100200c0;
    double *v = new double[N];
    // double *v =  (double *) 0x10033980;
    double *x_grad = new double[N];
    // double *x_grad = (double *) 0x10033cc0;

    for (int i = 0; i < N; i++) {
        x[i] = 10 * i * i +1;
        v[i] = 0;
    }
    // using std::chrono::high_resolution_clock;
    // using std::chrono::duration_cast;
    // using std::chrono::duration;
    // using std::chrono::milliseconds;

    // clock_t tStart;
    // substep(x, v);
    // printf("Time taken: %.2f\n", (double)(clock() - tStart));
    // substep(x, v);
    // tStart = clock();
    // __enzyme_autodiff<double>(ComputeU, x, x_grad) ;
    // printf("Time taken: %f\n", (double)(clock() - tStart));

    // tStart = clock();
    // ComputeU(x);
    // printf("Time taken: %f\n", (double)(clock() - tStart));

    // auto t1 = high_resolution_clock::now();
    __enzyme_autodiff<double>(ComputeU, x, x_grad) ;
    // auto t2 = high_resolution_clock::now();
    // /* Getting number of milliseconds as a double. */
    // duration<double, std::milli> ms_double = t2 - t1;
    // std::cout << ms_double.count() * 1000  << "us\n";

    // t1 = high_resolution_clock::now();
    // // tStart = clock();
    return ComputeU(x);
    // t2 = high_resolution_clock::now();
    // ms_double = t2 - t1;
    // std::cout << ms_double.count() * 1000 << " us\n";

}