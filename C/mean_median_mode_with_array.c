/*
Name: George Li(zhihongli@bennington.edu)
FileName:mean_median_mode_with_array.c -
give an array of integers and it will get the mean, median, mode of the array.
*/
#include <stdio.h>
int bubble_sort();
float getMean();
float getMedian();
int getMode();

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
    getMean(value, n);      //get mean
    getMedian(value, n);    //get median
    getMode(value, n); //get mode number
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

float getMean(int *array, int n){
    int sum =  0;
    float mean = 0;
    for(int i = 0; i < n; i++){
        sum = sum + array[i];
    }
    mean = sum / n;
    printf("The mean is %f\n", mean);
}

float getMedian(int *array, int n){
    float median;
    int position;
    if(n % 2 == 0){
        position = n/2;
        median = (array[position-1] + array[position])/2;
        printf("The median is %f\n", median);
    } else{
        position = (n/2)+1;
        median = array[position];
        printf("The median is %f\n", median);
    }
}


int getMode(int *array, int n){
    int maxValue = 0, maxCount = 0;
    int i, j;

    for(i = 0; i < n; i++){
        int count = 0;

        for(j = 0; j < n; j++){
            if(array[j] == array[i])
                count++;
        }

        if(count > maxCount){
            maxCount = count;
            maxValue = array[i];
        }
    }
    printf("The mode number is: %d", maxValue);
    return maxValue;
}
//reference:
//https://www.programiz.com/c-programming/c-arrays
//https://www.youtube.com/watch?v=Jdtq5uKz-w4
//https://stackoverflow.com/questions/6567742/passing-an-array-as-an-argument-to-a-function-in-c
//https://stackoverflow.com/questions/24723180/c-convert-floating-point-to-int
//https://www.youtube.com/watch?v=o1Nr_KaIuGA
//https://www.tutorialspoint.com/learn_c_by_examples/mode_program_in_c.htm
