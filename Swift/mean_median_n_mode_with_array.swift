/* mean_median_n_mode_with_array.swift
This program calculate the mean, median and mode of up to 99 integers.
There are 3 parts:

mean - takes an array of integers and returns the average 
(sum/number of entries)

median - takes an array of integers and returns the median (you 
will want to sort the array first, then pick the integer in the middle)

mode - takes an array of integers and returns the mode (the integer
that appears the most in the array) */

import Foundation
var numArr = [-1, 22, 22, 22, 412, 12312515, -1223, 239, -123, -87]

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


func getMean(arr:[Int]) -> Int {
    var total: Int = 0
    for num in sortedArr {
        total+=num
    }

    let mean = total / sortedArr.count
    return mean
}


func getMedian(arr:[Int]) -> Double? {
    let length: Int = arr.count
    if (length % 2) == 1 {
        let halfLength = length / 2
        let position = Int(floor(Double(halfLength)))
        let median = Double(arr[position])
        return median
    } else if (length % 2) == 0 {
        let halfLength = length / 2
        let position = halfLength - 1
        let sumOfMedian = arr[position] + arr[position + 1]
        let median = Double( sumOfMedian / 2)
        return median
    } else {
        return nil
    }
}


func getMode(arr:[Int]) -> Int? {
    let mappedItems = arr.map { ($0, 1) }
    let counts = Dictionary(mappedItems, uniquingKeysWith: +)
    if let (value, count) = counts.max(by: {$0.1 < $1.1}) {
        return value
    } else {
        return nil
    }
}


let sortedArr = bubbleSort(arr: numArr)
let meanNum = getMean(arr: numArr)
let medianNum = getMedian(arr: numArr)
let modeNum = getMode(arr: numArr)
print(meanNum)
print(medianNum)
print(modeNum)



//count frequency of an array https://www.hackingwithswift.com/example-code/language/how-to-count-element-frequencies-in-an-array
//https://stackoverflow.com/questions/38416347/getting-the-most-frequent-value-of-an-array
//https://stackoverflow.com/questions/31225408/swift-rounding-up-double?rq=1
//to return nil in a function https://stackoverflow.com/questions/45229524/return-nil-in-swift-function