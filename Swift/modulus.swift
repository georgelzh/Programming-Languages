/*
The program will take two numbers, a and b, and calculate the remainder 
that is left over after you try to divide b into a.  
 */


print("please enter only integer")
print("Enter divisor ")
let a: String! = readLine()
var numA: Int! = Int(a)
print("Enter your the mod number")
let b: String! = readLine()
var numB: Int! = Int(b)


let remainder: Int = numA % numB

let result = "the remainder is: \(remainder)"
print(result)