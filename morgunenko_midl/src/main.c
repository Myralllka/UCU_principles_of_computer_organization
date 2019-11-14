#include <stdio.h>
#include "function.h"

int main() {
    unsigned int num1 = 123123;
    unsigned int num2 = 12112178;
    unsigned int num3 = 11111;
    int one = first_three_equal_to_second_three(num1);
    int two = first_three_equal_to_second_three(num2);
    int three = first_three_equal_to_second_three(num3);
    printf("%d, %d, %d", one, two, three);
    return 0;
}


