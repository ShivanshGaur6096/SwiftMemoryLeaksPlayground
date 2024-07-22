//: [Previous](@previous)

import Foundation

// Music Player
/// Suppose an array of n number of songs is given
/// Play songs as per provided reuirement
/// 1. Songs should not repeat
/// 2. Songs should be played at random
/// 3. We should be able to view the history of song played

class MusicPlayer {
    var songList: [String] = ["Bohemian Rhapsody",
                              "Imagine",
                              "Hallelujah",
                              "Hotel California",
                              "Hey Jude",
                              "Like a Rolling Stone",
                              "Respect",
                              "A Whiter Shade of Pale",
                              "Yesterday",
                              "Blowin in the Wind"]
    
//    func playSong() {
//        var songCount = 0
//
//        while songCount != songList.count {
//
//            let randomIndex = Int.random(in: 0..<songList.count)
//            print("Song: \"\(songList[randomIndex])\" played at Index \(randomIndex)")
//            songList.swapAt(randomIndex, songList.count - 1)
//
//            print("Updated list: \(songList)")
//
//            songCount += 1
//        }
//    }
    
    func playSong() {
        print(songList.sorted())
        for i in 0..<songList.count {
            print("Song: \"\(songList[i])\" played at Index \(i)")
            songList.swapAt(i, songList.count - i - 1)
            print("Updated List:", songList[songList.count - i - 1])
        }
    }
}

let musicPlayer = MusicPlayer()
//musicPlayer.playSong()
//            playList.swapAt(index, playList.count - 1)

