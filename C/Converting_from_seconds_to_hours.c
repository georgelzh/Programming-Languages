/*
Name: George Li(zhihongli@bennington.edu)
FileName: Converting_from_seconds_to_hours.c - convert a number of seconds into a string of hours, minutes, and seconds,
with the format 'hour:minute:second'.
*/
#include <stdio.h>
void secondsToHours();

int main(){
    secondsToHours(8000);
    return 0;
}

void secondsToHours(int seconds){
    int hours, minutes, rest_seconds;

    //get hours and convert the value into integer.
    hours = (int)seconds / 3600;
    seconds = seconds - (hours * 3600);

    minutes = (int) seconds / 60;
    seconds = seconds - (minutes * 60);

    printf("%02d:%02d:%02d", hours, minutes, seconds);
}

// get numbers to display as two digits in c: https://stackoverflow.com/questions/14617865/how-do-get-numbers-to-display-as-two-digits-in-c
