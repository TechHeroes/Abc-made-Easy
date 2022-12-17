//
//  appOperations.swift
//  Abc
//
//  Created by Mansoor Khan on 17/12/22.
//

import Foundation
import AVFoundation

class AppOperations {
    
}

let letterSounds: [String] = Constants.Alphabets.English.letterSounds
let letterImages: [String] = Constants.Alphabets.English.letterImages

let sounds = [
    1016, //tweet
    1009, // SMS received
    1016, // SMS sent
    
]
let systemSoundID: SystemSoundID = 1211
var nextKey = 1
var player: AVAudioPlayer!
// create a sound ID, in this case its the tweet sound.

func playSound() {
    AudioServicesPlaySystemSound(systemSoundID)
}

func playAudio(index: Int){
    let choice = letterSounds[index]
    let audioPath = Bundle.main.path(forResource: choice, ofType: "mp3")
    do {
        try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath!))
        player.play()
    } catch {
        print("Something went wrong!!!")
    }
}
