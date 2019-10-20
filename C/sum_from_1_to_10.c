/*
Name: George Li(zhihongli@bennington.edu)
FileName:sum_from_1_to_10.c - print the sum from 1 to 10
*/
#include <stdio.h>

int main(){

    int a = 0;

    for(int i = 1; i < 11; i ++){
        a = i + a;
    }
    printf("Here is the sum from 1 to 10: %d\n", a);
    return 0;

}
