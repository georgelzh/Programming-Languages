/* 
This program takes a float as radius of a circle and
computes and prints the diameter, circumference, and area
of that circle. The results will be 3 decimal positions.

File name: Diameter_Circumference_n_Area_of_a_Circle.swift
*/

import Foundation

print("Enter the radius of a circle: ")
let stringRadius: String! = readLine()
var radius: Double! = Double(stringRadius)

//calculate the diameter
let diameter = round(radius * 2 * 1000) / 1000
print("The diameter is: \(diameter)")

//calculate the circumference
let circumference = round(Double.pi * diameter * 1000) / 1000
print("The circumference is: \(circumference)")

//calculate the area
let area = round(Double.pi * pow(radius, 2) * 1000) / 1000
print("The area is: \(area)")



//round it up to 3 decimals 
//https://stackoverflow.com/questions/27338573/rounding-a-double-value-to-x-number-of-decimal-places-in-swift
//pi
//https://developer.apple.com/documentation/swift/floatingpoint/1845454-pi
//func pow
//https://stackoverflow.com/questions/24196689/how-to-get-the-power-of-some-integer-in-swift-language
