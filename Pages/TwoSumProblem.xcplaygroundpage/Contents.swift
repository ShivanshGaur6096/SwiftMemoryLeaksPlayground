//: [Previous](@previous)

import Foundation

func twoSumBruteForce(_ nums: [Int], _ target: Int) -> [Int] {
    for i in 0..<nums.count {
        for j in i + 1..<nums.count {
            if nums[i] + nums[j] == target {
                return [i, j]
            }
        }
    }
    return []
}

let bruteForceResult = twoSumBruteForce([1,2,3,4,5,6,7], 12)
print(bruteForceResult)

func twoSumHashTable(_ nums: [Int], _ target: Int) -> [Int] {
    var seen: [Int: Int] = [:]
    for (i, num) in nums.enumerated() {
        let complement = target - num
        if let index = seen[complement] {
            return [nums[index], nums[i]] // Return value instead of index
        }
        seen[num] = i
    }
    return []
}

let hashTableResult = twoSumHashTable([1,2,3,4,5,6,7], 12)
print(hashTableResult)




