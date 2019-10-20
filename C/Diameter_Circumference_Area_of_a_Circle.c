/*
Name: George Li(zhihongli@bennington.edu)
FileName: Diameter_Circumference_Area_of_a_Circle.c -
reads in a radius of a circle as a float value and computes and prints the diameter,
circumference, and area of that circle.  Print all floats to 3 decimal positions
*/
#include <stdio.h>
#include <math.h>

int main(){
    float radius, diameter, circumference, area;
    printf("Please enter the radius of a circle: \n");
    scanf("%f", &radius);

    diameter = radius * 2;
    circumference = M_PI * diameter;
    area = M_PI * pow(radius, 2);

    printf("the diameter is %0.3f\n", diameter);
    printf("the circumference is %0.3f\n", circumference);
    printf("the area is %0.3f\n", area);

    return 0;
}


//how to use pi in c:  https://cboard.cprogramming.com/c-programming/136922-what-do-i-use-pi.html
//get exponential of a number https://fresh2refresh.com/c-programming/c-arithmetic-functions/c-pow-function/
//setting decimal precision https://www.geeksforgeeks.org/g-fact-41-setting-decimal-precision-in-c/
