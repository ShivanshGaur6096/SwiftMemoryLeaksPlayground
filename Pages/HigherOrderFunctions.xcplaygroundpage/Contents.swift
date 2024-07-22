//: [Previous](@previous)

import Foundation

let sum = [1, 2, 3].reduce(0) { $0 + $1 }
let message = ["Hello", "world"].reduce("", { $0 + " " + $1 })

let names = ["Alice", "Bob", "Charlie"].sorted()
print(names)
let numbers = [3, 1, 4].sorted()
print(numbers)

//: [Next](@next)
