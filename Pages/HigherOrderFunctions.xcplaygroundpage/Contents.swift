//: [Previous](@previous)

import Foundation

// MARK: - MAP

/// Suppose we have given an array name `numberArray`
let numberArray = [1, 2, 3, 4, 5, 6]

/// We want to perform mathematical operation on thisarray of Int
//print(numberArray.map({$0 * $0})) // Square of each number
//print(numberArray.reduce(0) {$0 + $1})

let numbers = [9, 8, 5, 1, 3]
let maxNumber = numbers.reduce(numbers[2]) { max($0, $1) }
print(maxNumber)
numbers.max()

struct Person {
    let name: String
    let age: Int?
}

let person: [Person] = [Person(name: "Atharv", age: 2),
                        Person(name: "Bhavika", age: 1),
                        Person(name: "Shivansh", age: 7),
                        Person(name: "Ved", age: 0),
                        Person(name: "Vikas", age: nil)]

let removePersonWithMissingData: [Person] = person.compactMap { person in
    guard let age = person.age else { return nil }
    return person
}

//removePersonWithMissingData.forEach { person in
//    print(person.name)
//}

let filteredAge = removePersonWithMissingData.filter { $0.age ?? 0 > 1 }



//filteredAge.forEach { person in
//    print(person.name)
//}



//let sum = [1, 2, 3].reduce(0) { $0 + $1 }
//let message = ["Hello", "world"].reduce("", { $0 + " " + $1 })
//
//let names = ["Alice", "Bob", "Charlie"].sorted()
//print(names)
//let numbers = [3, 1, 4].sorted()
//print(numbers)
//
//// Creating an array of number
//
//let intArray = (1...100).map { "song\(String($0))" }
////print(intArray)
//
//let twoDArray = [[1, 3, 4],[7, 6, 5]]
//let flatMapArray = twoDArray.flatMap { $0 }
//print(flatMapArray.filter({ $0 % 2 == 0 }))
//print(flatMapArray.sorted(by: { $0 < $1 }))

// Merge sort

func mergeSort(array: [Int]) -> [Int] {
    guard array.count > 1 else { return array }
    
    let middleIndex = array.count / 2
    
    let leftArray = mergeSort(array: Array(array[0..<middleIndex]))
    let rightArray = mergeSort(array: Array(array[middleIndex..<array.count]))
    
    return merge(left: leftArray, right: rightArray)
}

func merge(left: [Int], right: [Int]) -> [Int] {
    var leftIndex = 0
    var rightIndex = 0
    var sortedArray: [Int] = []
    
    while leftIndex < left.count && rightIndex < right.count {
        if left[leftIndex] < right[rightIndex] {
            sortedArray.append(left[leftIndex])
            leftIndex += 1
        } else {
            sortedArray.append(right[rightIndex])
            rightIndex += 1
        }
    }
    
    // Add the remaining elements from the left array, if any
    while leftIndex < left.count {
        sortedArray.append(left[leftIndex])
        leftIndex += 1
    }
    
    // Add the remaining elements from the right array, if any
    while rightIndex < right.count {
        sortedArray.append(right[rightIndex])
        rightIndex += 1
    }
    
    return sortedArray
}

let array = [7, 2, 6, 3, 9]
let sortedArray = mergeSort(array: array)
print(sortedArray)
