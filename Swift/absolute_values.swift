/* absolute_values.swift
This program takes an array of numbers and replace 
each of them with the absolute value of that number */

let numArr = [-1, 22, 412, 12312515, -1223, 239, -87]

let absolute_numArr = numArr.map(abs)

print("the array with absolute value is: \(absolute_numArr)")


//https://stackoverflow.com/questions/48877971/getting-absolute-values-of-double-array-in-swift