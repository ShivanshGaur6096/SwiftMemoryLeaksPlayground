//: [Previous](@previous)

import Foundation

/*
 Problem Statement: Convert Words to Digits Using Phone Keypad Mapping
 Scenario: You have a word and you want to convert each letter to the corresponding digit as found on a traditional phone keypad. This is commonly used in various applications, such as text-to-speech systems, phone number mnemonics, and input methods for devices.

 Task: Implement a function that converts a given word to its digit representation using the standard phone keypad mapping. Each letter in the word should be replaced by the digit it corresponds to on a phone keypad. Spaces should remain as spaces, and any characters not found on the keypad should be replaced with a question mark (?).

 Mapping:
1. 'a', 'b', 'c' -> '2'
2. 'd', 'e', 'f' -> '3'
3. 'g', 'h', 'i' -> '4'
4.  'j', 'k', 'l' -> '5'
5. 'm', 'n', 'o' -> '6'
6. 'p', 'q', 'r', 's' -> '7'
7. 't', 'u', 'v' -> '8'
8. 'w', 'x', 'y', 'z' -> '9'

 Function Specification: Implement the function convertWordToDigit(word: String) -> String that takes a word as input and returns a string where each letter is replaced by its corresponding digit according to the phone keypad mapping.
 */

func covertWordToDigit(word: String) -> String {
    
    let wordMapping: [Character: String] = [
        "a": "2", "b": "2", "c": "2",
        "d": "3", "e": "3", "f": "3",
        "g": "4", "h": "4", "i": "4",
        "j": "5", "k": "5", "l": "5",
        "m": "6", "n": "6", "o": "6",
        "p": "7", "q": "7", "r": "7", "s": "7",
        "t": "8", "u": "8", "v": "8",
        "w": "9", "x": "9", "y": "9", "z": "9"
    ]
    
    var result = ""
    
    for char in word.lowercased() {
        if let digit = wordMapping[char] {
            result.append(digit)
        } else if char.isWhitespace {
            result.append(" ")
        } else {
            result.append("?")
        }
    }
    
    return result
}

let stringProvided = "Shivansh"
print("Converted Characters \(stringProvided) to Numbers", covertWordToDigit(word: stringProvided))

//: [Next](@next)
