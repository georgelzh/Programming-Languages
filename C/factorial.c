/*
Name: George Li(zhihongli@bennington.edu)
FileName: factorial.c - Given a number, calculate the factorial of that number.
*/
#include <stdio.h>

int main(){

    int a, b = 1;   // two integers
    printf("Please enter a number to calculate the factorial: \n");
    scanf("%d", &a);

    if(a == 0) printf("The factorial of 0 is 1"); // if a is zero, then just print the result as 1.

    else{       //else do the multiplication from a to 1 and store the value in b.
        int temp = a;
        for(a; a >0; a--){
            b = b * a;
        }
        printf("The factorial of %d is %d\n", temp, b); //print the result
    }
    return 0;
}
