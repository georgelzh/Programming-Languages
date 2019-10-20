/*
Name: George Li(zhihongli@bennington.edu)
FileName: hello.c - print hello world. First C program that I made! Yahoo!
*/
#include <stdio.h>

int main(){
    int i = 2992882;
    char str[20];

    sprintf(str, "%d", i);
    printf("%c", str[0]);
    return 0;
}
