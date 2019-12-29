//factorial.swift
// This program takes a number and returns its factorial.

var factorial: Int = 1

print("Please enter only integer")
print("Enter the number you want to get factorial")
let a: String! = readLine()
var numA: Int! = Int(a)

for i in 1...numA {
    factorial *= i
}

print("The factorial of \(a!) is: \(factorial)")
