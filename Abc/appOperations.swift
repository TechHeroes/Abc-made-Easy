//
//  appOperations.swift
//  Abc
//
//  Created by Mansoor Khan on 17/12/22.
//

import Foundation
import AVFoundation
import UIKit

let letters: [String] = Constants.Alphabets.English.letters
let letterImagesAndSounds: [String: [String]] = Constants.Alphabets.English.letterImagesAndSounds

@available(iOS 15.0, *)
let colors: [UIColor] = Constants.Alphabets.English.colors
var player: AVAudioPlayer!

func playAudio(index: Int, level: String = "level1", audioType: String = "mp3"){
    guard (index >= 0) && (index <= 25) else {
        return;
    }
    
    let choice = letterImagesAndSounds[level]?[index]
    let audioPath = Bundle.main.path(forResource: choice, ofType: audioType)
    do {
        player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath!))
        player?.play()
    } catch {
        print("Something went wrong!!!")
    }
}

func afterAudioDidFinishPlaying() {
    
}

func setImage(index: Int, target: UIImageView, level: String = "level2") {
    target.image = UIImage(named: (letterImagesAndSounds[level]?[index])!)
}

@available(iOS 15.0, *)
func setTextAndColor(index: Int, target: UITextView) {
    target.text = letters[index]
    target.textColor = colors.randomElement()
}


