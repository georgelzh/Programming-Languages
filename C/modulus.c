/*
Name: George Li(zhihongli@bennington.edu)
FileName:modulus.c - take two numbers, a and b, and calculate the remainder that is left over after you try to divide b into a.
*/
#include <stdio.h>

int main(){
        int a, b, c;

        printf("Enter your dividend:\n");
        scanf("%d", &a);

        printf("Enter your divisor:\n");
        scanf("%d", &b);

        c = b % a;
        printf("Here is your result: %d", c);
		return 0;
}
