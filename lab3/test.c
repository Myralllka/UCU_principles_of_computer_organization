#include <stdio.h>

float func_c(float start, float denum, int num) {
  float current = start;
  float res = start;
  for (int i = 0; i < num; i++) {
    current *= denum;
    res += current;
  }
  return res;
}

float func(float start, float denum, int num);

float main(void){
	volatile float a = 2048;
  volatile float b = 0.5;
  volatile int c = 70;
  float result_c = func_c(a, b, c);
  printf("%f, %f, %d \n", a, b, c);
  printf("ccc %f, %f, %f, %d \n", result_c, a, b, c);
  float result_asm = func(a, b, c);
  printf("asm %f, %f, %f, %d \n", result_asm, a, b, c);
	return 0;
}
