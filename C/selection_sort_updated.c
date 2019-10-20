/*
Name: George Li(zhihongli@bennington.edu)
FileName: selection_sort.c
*/
#include <stdio.h>
void selection_sort();

int main(){
    //user input - array - integers
    int number_of_numbers;
    printf("How many numbers do you want to give us?\n");
    scanf("%d", &number_of_numbers);
    int array[number_of_numbers];

    for(int i = 0; i < number_of_numbers; i++){ //save enter number as an array
        printf("Please enter a number: ");
        scanf("%d", &array[i]);
    }

    selection_sort(array, number_of_numbers);


    printf("Here is your array: \n");       // print array
    for(int i = 0; i < number_of_numbers; i ++){
        printf("%d ", array[i]);
    }

    return 0;
}

void selection_sort(int *array, int length_of_array){
    int i, smallest, position, smallest_position, temp;
    for(i = 0; i < length_of_array - 1; i++){       // we need to swap at least n times
        // to find the smallest value in the array
        // assume the first one is the smallest value
        smallest = array[i];
        smallest_position = i;

        // loop through the rest of the array and do comparison
        for(position = i + 1; position < length_of_array; position++){
            if(smallest < array[position]){
            } else{
                smallest = array[position];
                smallest_position = position;
            }
        }
        //now we have smallest value, swap the smallest value to the first one
        temp = array[i];
        array[i] = smallest;
        array[smallest_position] = temp;
    }
}

// reference:
// https://www.youtube.com/watch?v=xWBP4lzkoyM
// https://en.wikipedia.org/wiki/Selection_sort
