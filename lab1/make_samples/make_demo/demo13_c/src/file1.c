#include <stdio.h>

#include "file1.h"

//volatile static int a;

void function_from_file1(struct X x)
{
	printf("Hello world from __file__ %i!\n", 1);
}
