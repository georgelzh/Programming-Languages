/*
Name: George Li(zhihongli@bennington.edu)
FileName: absolute_value.c - Write a program that will take an array of numbers, and replace each of them with the absolute value of that number.
*/

#include <stdio.h>
#include <stdlib.h>

int main(){
    int number_of_numbers;
    printf("How many numbers do you want to make absolute value?\n");
    scanf("%d", &number_of_numbers);
    int array[number_of_numbers];

    for(int i = 0; i < number_of_numbers; i++){ //save enter number as an array
        printf("Please enter a number: ");
        scanf("%d", &array[i]);

        if(array[i] < 0){       //absolute the value if the entered value is negative.
            array[i] = abs(array[i]);
        }
    }

    printf("Here is your array: \n");       // print array

    for(int i = 0; i < number_of_numbers; i ++){
        printf("%d ", array[i]);
    }

    return 0;
}

// reference
//https://fresh2refresh.com/c-programming/c-arithmetic-functions/c-abs-function/
