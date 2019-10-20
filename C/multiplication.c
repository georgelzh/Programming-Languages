/*
Name: George Li(zhihongli@bennington.edu)
FileName: multiplication.c - take two numbers and multiply them.
*/
#include <stdio.h>

int main(){
        int a, b, c;

        printf("Enter your factor a:\n");
        scanf("%d", &a);

        printf("Enter your factor b:\n");
        scanf("%d", &b);

        c = b * a;
        printf("Here is your result after multiplication: %d\n", c);
		return 0;
}
