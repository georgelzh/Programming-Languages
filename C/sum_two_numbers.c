/*
Name: George Li(zhihongli@bennington.edu)
FileName:sum_two_number.c - it sums two numbers and print the result.
*/

#include <stdio.h>

int main(){
    int a, b, sum;
    printf("enter the first integer:\n");
    scanf("%i", &a);
    printf("enter the second integer:\n");
    scanf("%i", &b);
    sum = a + b;
    printf("The sum is: %i\n", sum);
}
