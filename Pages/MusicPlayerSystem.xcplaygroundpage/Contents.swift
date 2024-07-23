//: [Previous](@previous)

import Foundation

// Problem: Music Player
// Objective: Create a MusicPlayer class in Swift that manages a playlist of songs, ensuring that each song is played exactly once in a random order. The class should also be able to display the history of played songs.

class MusicPlayer {
    var songs: [String]
    var currentSize: Int
    
    init(songs: [String]) {
        self.songs = songs.shuffled()
        self.currentSize = songs.count
    }
    
    func playNextSong() -> String? {
        guard !songs.isEmpty else {
            print("All songs have been played.")
            return nil
        }
        
        let randomIndex = Int.random(in: 0..<currentSize)
        let songToPlay = songs[randomIndex]
        
        // Swap values with last index
        songs.swapAt(randomIndex, currentSize - 1)
        
        currentSize -= 1
        print("Playing: \(songToPlay)")
        return songToPlay
    }
    
    func showHistory() {
        print("Played songs history: \(songs.suffix(songs.count - currentSize))")
    }
}

let numberOfSongs = 1...100
// Creating array of 10 songs
let songs = numberOfSongs.map { "song\($0)" }
let musicPlayer = MusicPlayer(songs: songs)

// Simulating playing songs
for _ in numberOfSongs {
    musicPlayer.playNextSong()
}

musicPlayer.showHistory()

