//: [Previous](@previous)

import Foundation

func printPyramid(lines: Int) {
    
    let star = "*"
    
    //    if lines == 1 {
    //        print(star)
    //    } else {
    var i = 1
    while (i <= lines) {
        var j = 1
        while (j <= lines) {
            for positions in 1...i {
                print(positions, terminator: "")
            }
//            print (lines - j + 1, terminator: "")
            j += 1
        }
        print("")
        i += 1
    }
    //    }
}

//printPyramid(lines: 4)

//: [Next](@next)
