//: [Previous](@previous)

import Foundation
/*
//var greeting = "Hello, playground"

var numberArray = [1,3,4,5,6,7]
//var nestedArray = [1,3,4,5,[1,3,4,5,6,7],6,[1,3,4,5,6,7],7]

// .map
let mapResult = numberArray.map({ $0*$0 })
print(mapResult)

// .filter
let filterResult = numberArray.filter({ $0 % 2 == 0 })
print(filterResult)

// .compactMap
*/

/*
Find a peak element which is not smaller than its neighbours

Input: array[] = {10, 20, 15, 2, 23, 90, 67}
Output: 20 or 90
Explanation: The element 20 has neighbors 10 and 15, both of them are less than 20, similarly 90 has neighbors 23 and 67.
*/

func findPeakElement(_ array: [Int]) -> [Int] {
    var peak = [Int]()
    var n = array.count
    
    guard !array.isEmpty else { return peak }
    
    if n == 1 || array[0] >= array[1] {
        peak.append(array[0])
    }
    
    for i in 1..<n-1 {
        if array[i] >= array[i - 1] &&  array[i] >= array[i + 1] {
            peak.append(array[i])
        }
    }
    
    return peak
}

var array = [10, 20, 15, 2, 23, 90, 67]

//let peak = findPeakElement(array)
//print(peak)

/*
 Hourglass Pattern is a combination of the inverted full pyramid and full pyramid patterns but in the opposite sense to that of diamond pattern.
 * * * * * * * * *
   * * * * * * *
     * * * * *
       * * *
         *
       * * *
     * * * * *
   * * * * * * *
 * * * * * * * * *
 */

func printHourglass(height: Int) {
    guard height % 2 != 0 else {
        return
    }
    
    let halfHeight = height / 2
}
