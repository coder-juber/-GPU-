#include<stdio.h>
#include<stdlib.h>

cudaError_t ErrorCheck(cudaError_t error_code, const char* filename, int lineNum){
    if(error_code != cudaSuccess){
        printf("CUDA Error happen, Error code = %d, name = %s, description = %s\r\nfile = %s, line = %d\r\n",
        error_code, cudaGetErrorName(error_code), cudaGetErrorString(error_code), filename, lineNum);
        return error_code;
    }
    return error_code;
}

void setGPU(){

    //检测
    int deviceCount = 0;
    cudaError_t error = ErrorCheck(cudaGetDeviceCount(&deviceCount), __FILE__, __LINE__);

    if(error != cudaSuccess || deviceCount == 0){
        printf("no CUDA GPU found\n");
        exit(-1);
    }
    else{
        printf("The count of GPU is %d\n", deviceCount);
    }

    //设置
    int Dev = 0;//默认使用0号GPU
    error = ErrorCheck(cudaSetDevice(Dev), __FILE__, __LINE__);
    if(error != cudaSuccess){
        printf("set fail\n");
        exit(-1);
    }
    else{
        printf("set success\n");
    }

}

