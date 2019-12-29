/* selection_sort.swift
this program sorts an array and return an ordered array*/

import Foundation
var numArr = [-1, 22, 22, 22, 412, 12312515, -1223, 239, -123, -87]

func selectionSort(arr: [Int]) -> [Int] {
    let n = arr.count - 1
    var array = arr
    var trackI = 0

    for i in 0...n {
        var jMin = i
        for j in trackI...n {
            if array[j] < array[jMin] {
                jMin = j
            }
            if jMin != trackI {
                let temp = array[jMin]
                array[jMin] = array [trackI]
                array[trackI] = temp
            }
        }
        trackI+=1
    }

    return array
}

let sortedArray = selectionSort(arr: numArr)
print(sortedArray)



//remove an element from an array
//https://www.tutorialkart.com/swift-tutorial/swift-remove-element-from-array/
//https://en.wikipedia.org/wiki/Selection_sort

//Fatal error: Can't form Range with upperBound < lowerBound: 
//file C:/projects/swift/stdlib/public/core/ClosedRange.swift, line 432