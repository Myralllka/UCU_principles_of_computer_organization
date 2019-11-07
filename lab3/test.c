double func(double start, double denum, int num) {
  double res = start;
  for (int i = 0; i < num; i++) {
    start *= denum;
    res += start;
  }
  return res;
}

double main(){
	volatile double a = 24766666;
  volatile double b = 0.1231;
  volatile int c = 10;
  double result = func(a, b, c);
	return result;
}
