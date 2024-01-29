#include<stdio.h>

__global__ void hello(){
    printf("123\n");
}

int main() {
    hello<<<2,3>>>();
    cudaDeviceSynchronize();

    return 0;
}