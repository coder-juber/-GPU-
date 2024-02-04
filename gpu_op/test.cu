#include "error.cuh"

int main(){
    setGPU();
    cudaDeviceProp prop;
    ErrorCheck(cudaGetDeviceProperties(&prop, 0), __FILE__, __LINE__);

    printf("Compute Capability = %d.%d\n", prop.major,prop.minor);
    return 0;
}
