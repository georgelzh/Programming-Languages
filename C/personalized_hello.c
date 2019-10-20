/*
Name: George Li(zhihongli@bennington.edu)
File: personalized_hello.c // get the name that the user put and print it.
*/

#include <stdio.h>
int main(){
	char name[20];
	printf("What's your name?\n");
	scanf("%19s", name);

	printf("Thank you! ");
	printf("%s\n",name);
	return 0;
}
