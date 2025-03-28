//: [Previous](@previous)

import Foundation

/*
 You have a bomb to defuse, and your time is running out! Your informer will provide you with a circular array code of length of n and a key k.
 To decrypt the code, you must replace every number. All the numbers are replaced simultaneously.
  - If k > 0, replace the ith number with the sum of the next k numbers.
  - If k < 0, replace the ith number with the sum of the previous k numbers.
  - If k == 0, replace the ith number with 0.
 
 As code is circular, the next element of code[n-1] is code[0], and the previous element of code[0] is code[n-1].
 Given the circular array code and an integer key k, return the decrypted code to defuse the bomb!
 
 Example 1:
 Input: code = [5,7,1,4,3,2], k = 3
 Output: [12,8,9,10,14,13]
 Example 2:
 Input: code = [2,4,9,3], k = -2
 Output: [12,5,6,13]
 */

func decrypt(_ code: [Int], _ k: Int) -> [Int] {
    let n = code.count
    var result = [Int](repeating: 0, count: n)
    
    if k == 0 {
        return result
    }
    
    for i in 0..<n {
        var sum = 0
        if k > 0 {
            for j in 1...k {
                sum += code[(i + j) % n]
            }
        } else {
            for j in 1...k {
                sum += code[(i - j + n) % n]
            }
        }
        result[i] = sum
    }
    
    return result
}

// Example usage
let code1 = [5, 7, 1, 4, 3, 2]
let k1 = 3
print(decrypt(code1, k1))

//let code2 = [2, 4, 9, 3]
//let k2 = -2
//print(decrypt(code2, k2))


/// In case zero
//let code3 = [2, 4, 9, 3]
//print(decrypt(code3, 0))

