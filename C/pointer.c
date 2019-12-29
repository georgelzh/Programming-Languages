/*
Name: George Li(zhihongli@bennington.edu)
FileName: pointer.c - print hello world. First C program that I made! Yahoo!
*/
#include <stdio.h>

int main(){
    int x = 2;

    int *numPointer;
    numPointer = &x;


    printf("Address of x: %d\n", numPointer); //print the address of x
    printf("\nThe value the pointer is pointing to: %d\n", *numPointer); //print the value that the pointer is pointing.

    printf("now change the value of x to 10 using pointer.\n");
    *numPointer = 100;
    printf("Address of x: %d\n", numPointer); //print the address of x
    printf("\nThe value the pointer is pointing to: %d\n", *numPointer); //print the value that the pointer is pointing.
    return 0;
}
