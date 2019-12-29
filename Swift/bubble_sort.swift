/* bubble_sort.swift
This function bubble sort an array of integers.
It takes an array of integer and returns the sorted array.*/

var numArr = [-1, 22, 412, 12312515, -1223, 239, -87]

func bubbleSort(arr: [Int] ) -> [Int] {
    var output: [Int] = arr
    var n = arr.count
    while n > 1 {
        var newN = 0
        for i in 1...(n-1) {
            if output[i-1] > output[i] {
                output.swapAt(i-1, i)
                newN = i
            }
        }
        n = newN
    }
    return output
}

let sortedArr = bubbleSort(arr: numArr)
print(sortedArr)





//https://www.youtube.com/watch?v=xli_FI7CuzA
////https://en.wikipedia.org/wiki/Bubble_sort
//https://developer.apple.com/documentation/swift/array/2943906-count
//https://www.hackingwithswift.com/example-code/language/how-to-swap-two-items-in-an-array-using-swapat