#include <stdio.h>

#include "file1_c.h"
#include "file2_c.h"

int main()
{
	printf("Hello world from main!\n");

	function_from_file1();

	function_from_file2();

	return 0;
}
