/*
Name: George Li(zhihongli@bennington.edu)
FileName:sum_largest_smallest.c -
give it three integers, it prints the sum, the average, the largest and the smallest number.
*/

#include <stdio.h>
int find_largest_number();
int find_smallest_number();
int main(){
    int a, b, c, sum, largest, smallest, average;
    printf("enter three integers:\n");
    scanf("%i", &a);
    scanf("%i", &b);
    scanf("%i", &c);
    sum = a + b + c;
    average = sum / 3;
    largest = find_largest_number(a,b,c);
    smallest = find_smallest_number(a,b,c);
    printf("The sum is: %i\n", sum);
    printf("The average is: %i\n", average);
    printf("the largest number is: %i\n", largest);
    printf("the smallest number is: %i\n", smallest);
}

int find_largest_number(int a,int b,int c){
    int largest;
    if(a >= b){
        largest = a;
    } else{
        largest = b;
    }
    if(largest >= c){
    } else{
        largest = c;
    }
    return largest;
}

int find_smallest_number(int a, int b, int c){
    int smallest;
    if(a <= b){
        smallest = a;
    } else{
        smallest = b;
    }
    if(smallest <= c){
    } else{
        smallest = c;
    }
    return smallest;
}
