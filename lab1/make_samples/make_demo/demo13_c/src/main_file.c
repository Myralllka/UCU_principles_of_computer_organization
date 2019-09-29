#include <stdio.h>

#include "file1.h"
#include "file2.h"

int main()
{
	printf("Hello world from main!\n");
	
	struct X y;
	function_from_file1(y);

	function_from_file2();

	return 0;
}
