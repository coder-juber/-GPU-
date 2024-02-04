#ifndef _ERROR_CH_
#define _ERROR_CH_

#include<stdio.h>

//检测CUDA API是否发生错误
cudaError_t ErrorCheck(cudaError_t error_code, const char* filename, int lineNum);

//检测GPU可用
void setGPU();

#endif
