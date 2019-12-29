/* sum_largest_smallest.swift
This program takes 3 integers from user and prints the sum,
average and largest of these numbers */


print("Please enter only integer")
print("Enter the first number")
let a: String! = readLine()
var numA: Int! = Int(a)

print("Enter the second number")
let b: String! = readLine()
var numB: Int! = Int(b)

print("Enter the third number")
let c: String! = readLine()
var numC: Int! = Int(c)

let numArr: [Int] = [numA, numB, numC]


var sum:Int = 0
for num in numArr {
    sum += num
}

let max = numArr.max()
let min = numArr.min()

print("The sum of \(numArr) is: \(sum)")
print("The largest number of \(numArr) is: \(max!)")
print("The smallest number of \(numArr) is: \(min!)")
