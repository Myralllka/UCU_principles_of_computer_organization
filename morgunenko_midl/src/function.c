#include "function.h"

int first_three_equal_to_second_three(unsigned int number) {
    unsigned int sum_first_part = 0;
    unsigned int sum_second_part = 0;

    if (number_of_digits(number) < 6) {
        return 0;
    }
    while (number_of_digits(number) > 6) {
        number = number / 10;
    }
    sum_first_part = sum_of_three(number / 1000);
    sum_second_part = sum_of_three(number % 1000);
    return sum_first_part == sum_second_part;
}

int sum_of_three(unsigned int val) {
    unsigned int sum = 0;
    while (number_of_digits(val) > 0) {
        sum += val % 10;
        val /= 10;
    }
    return (int)sum;
}

int number_of_digits(unsigned int n) {
    int counter = 0;
    while (n != 0) {
        n /= 10;
        counter++;
    }
    return (int) counter;
}
