/*
Name: George Li(zhihongli@bennington.edu)
FileName: Separating_digits_in_an_integer.c -
*/
#include <stdio.h>
void seperateTheDigits();
int countSize();

int main(){
    //get input
    int number, size;
    printf("Please enter a number.\n");
    scanf("%d", &number);

    //get size of the string(number);
    size = countSize(number);
    seperateTheDigits(number, size);

    printf("finished\n");
    return 0;
}

void seperateTheDigits(int digits, int size){
    char str[size];
    sprintf(str, "%d", digits);
    printf("Here is the result below\n");
    for(int i = 0; i < size; i++){
        printf("%c ", str[i]);
    }
    printf("\n");
    }

int countSize(int number){
    int counter = 0;
    int factor = 1;

    while((number / factor) > 0){
        factor = factor * 10;
        counter = counter + 1;
    }
    return counter;
}

//https://www.youtube.com/watch?v=El_R4IjpyWQ
//https://stackoverflow.com/questions/2279379/how-to-convert-integer-to-char-in-c
//https://cs.nyu.edu/courses/spring05/V22.0201-001/c_tutorial/classes/String.html
