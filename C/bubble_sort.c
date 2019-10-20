/*
Name: George Li(zhihongli@bennington.edu)
FileName:bubble_sort.c -
Get an array of integers and it will sort it from small number to big number.
*/
#include <stdio.h>
int bubble_sort();
int main(){
    int n; // set the size of the array.
    printf("How many integers do you want to give?(write it down)\n");
    scanf("%d", &n);
    printf("%d\n", n);
    int value[n];
    printf("Enter the integers: \n");


    for(int i = 0; i < n; i++){ // put input inside the array
        scanf("%d", &value[i]);
    }


    bubble_sort(value, n);      //sort the array

    printf("Display the sorted array.\n"); // print out the sorted array
    for(int i =0; i < n; i++){
        printf("%d\n", value[i]);
    }

    return 0;
}

int bubble_sort(int *array, int n){
    int temp;
    for(int k = 0; k < n-1; k++){
        for(int i = 0; i < n-1; i++){
            if(array[i] > array[i+1]){
                temp = array[i];
                array[i] = array[i+1];
                array[i+1] = temp;
            }
        }
    }
    return 0;
}

//reference:
//https://www.programiz.com/c-programming/c-arrays
//https://www.youtube.com/watch?v=Jdtq5uKz-w4
//https://stackoverflow.com/questions/6567742/passing-an-array-as-an-argument-to-a-function-in-c

