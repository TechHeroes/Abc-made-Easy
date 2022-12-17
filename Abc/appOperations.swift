//
//  appOperations.swift
//  Abc
//
//  Created by Mansoor Khan on 17/12/22.
//

import Foundation
import AVFoundation
import UIKit

let letterImagesAndSounds: [String] = Constants.Alphabets.English.letterImagesAndSounds
let letters: [String] = Constants.Alphabets.English.letters
@available(iOS 15.0, *)
let colors: [UIColor] = Constants.Alphabets.English.colors
var player: AVAudioPlayer!

func playAudio(index: Int){
    guard (index >= 0) && (index <= 25) else {
        return;
    }
    
    let choice = letterImagesAndSounds[index]
    let audioPath = Bundle.main.path(forResource: choice, ofType: "mp3")
    do {
        try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath!))
        player.play()
    } catch {
        print("Something went wrong!!!")
    }
}

func setImage(index: Int, target: UIImageView) {
    target.image = UIImage(named: letterImagesAndSounds[index])
}

@available(iOS 15.0, *)
func setTextAndColor(index: Int, target: UITextView) {
    target.text = letters[index]
    target.textColor = colors.randomElement()
}


