#ifndef CUDA_H
#define CUDA_H

#include <stdio.h>
#include <iostream>
using namespace std;

class CUDA{
public:
	CUDA(int s){
		size = s;
	}
	virtual ~CUDA(){
	}
	void multiplication(double** sa1, double** sa2, double** da);
private:
	int size;
};


void CUDA::multiplication(double** sa1, double** sa2, double** da){
	for(int i = 0; i < size; i++){
		for(int j = 0; j < size; j++){
			da[i][j] = 0;			
			for(int k=0; k<size; k++){
				da[i][j] += sa1[i][k] * sa2[k][j];
			}
		}
	}
}


#endif
