/*
The program will take two numbers, a and b, then returns the product of a * b
*/

print("Please enter only integer")
print("Enter the first number")
let a: String! = readLine()
var numA: Int! = Int(a)
print("Enter the second number")
let b: String! = readLine()
var numB: Int! = Int(b)


let product: Int = numA * numB

let result = "The product is: \(product)"
print(result)