#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <chrono>
#include <iostream>
#include <sys/time.h>
#include <stdlib.h>
#include <math.h>
#include <inttypes.h>
#include <string.h>

#define MNIST_LABEL_MAGIC 0x00000801
#define MNIST_IMAGE_MAGIC 0x00000803
#define MNIST_IMAGE_WIDTH 10
#define MNIST_IMAGE_HEIGHT 10
#define MNIST_IMAGE_SIZE MNIST_IMAGE_WIDTH * MNIST_IMAGE_HEIGHT
#define MNIST_LABELS 5
#define PIXEL_SCALE(x) (((float) (x)) / 255.0f)

extern int enzyme_const;
template<typename Return, typename... T>
Return __enzyme_autodiff(T...);

typedef struct mnist_image_t_ {
    uint8_t pixels[MNIST_IMAGE_SIZE];
} __attribute__((packed)) mnist_image_t;

typedef struct neural_network_t_ {
    float b[MNIST_LABELS];
    float W[MNIST_LABELS][MNIST_IMAGE_SIZE];
} neural_network_t;


static void neural_network_softmax_v2(const float * activations, float* outp, int length)
{
    int i;
    float sum, max;
#ifdef unr
#pragma clang loop unroll (full)
#endif
    for (i = 1, max = activations[0]; i < length; i++) {
        if (activations[i] > max) {
            max = activations[i];
        }
    }
#ifdef unr
#pragma clang loop unroll (full)
#endif
    for (i = 0, sum = 0; i < length; i++) {
        sum += exp(activations[i] - max);
    }

#ifdef unr
#pragma clang loop unroll (full)
#endif
    for (i = 0; i < length; i++) {
        outp[i] = exp(activations[i] - max) / sum;
    }
}

static float neural_network_hypothesis_v2(const mnist_image_t * image, const neural_network_t * network, uint8_t label)
{
    float activations[MNIST_LABELS] = {0};
    int i, j;
#ifdef unr
#pragma clang loop unroll (full)
#endif
    for (i = 0; i < MNIST_LABELS; i++) {
        activations[i] = network->b[i];
#ifdef unr
#pragma clang loop unroll (full)
#endif
        for (j = 0; j < MNIST_IMAGE_SIZE; j++) {
            activations[i] += network->W[i][j] * PIXEL_SCALE(image->pixels[j]);
        }
    }

    float activations2[MNIST_LABELS] = { 0 };
    neural_network_softmax_v2(activations, activations2, MNIST_LABELS);
    return -log(activations2[label]);
}


int main(int argc, char** argv) {
    // double *x = new double[N];
    // mnist_image_t *x = (mnist_image_t *) 0x100200c0;
    mnist_image_t x[MNIST_LABELS];
    // double *v = new double[N];
    // neural_network_t *v =  (neural_network_t *) 0x10033980;
    neural_network_t v[MNIST_LABELS];

    // double *x_grad = new double[N];
    // mnist_image_t *x_grad = (mnist_image_t *) 0x10033cc0;
    mnist_image_t x_grad[MNIST_LABELS];

    uint8_t label = 1;
    // for (int i = 0; i < N; i++) {
    //     x[i] = 10 * i * i +1;
    //     v[i] = 0;
    // }
    __enzyme_autodiff<void>(neural_network_hypothesis_v2, enzyme_const, &x, &v, &x_grad, label);
    neural_network_hypothesis_v2(x, v, label);

}