//
//  ViewController.swift
//  Abc
//
//  Created by Mansoor Khan on 12/12/22.
//

import UIKit
import AVFoundation

@available(iOS 15.0, *)
@available(iOS 15.0, *)
class ViewController: UIViewController {

    var letters: [String] = [
        "A","B","C","D","E", "F", "G", "H", "I", "J", "K", "L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"
    ]
    var nextKey = 1
    
    let colors: [UIColor] = [
        .systemPink,
        .systemRed,
        .systemBlue,
        .systemCyan,
        .systemMint,
        .systemTeal,
        .systemOrange,
        .systemBrown,
        .systemIndigo,
        .systemPurple,
        .systemYellow
    ]
    
    var player: AVAudioPlayer!
    // create a sound ID, in this case its the tweet sound.
    let sounds = [
        1016, //tweet
        1009, // SMS received
        1016, // SMS sent
        
    ]
    let systemSoundID: SystemSoundID = 1211
    func playSound() {
        AudioServicesPlaySystemSound(systemSoundID)
    }

    @IBOutlet weak var letterView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        resetButton((Any).self)
    }

    @IBAction func prevButton(_ sender: Any) {
        if nextKey < 1 {
            nextKey = 1
        }
        nextKey -= 1
        letterView.text = letters[nextKey]
        letterView.textColor = colors.randomElement()
        playSound()
    }
    
    @IBAction func nextButton(_ sender: Any) {
        
        if nextKey > 24 {
            nextKey = 24
        }
        nextKey += 1
        letterView.text = letters[nextKey]
        letterView.textColor = colors.randomElement()
        playSound()
  }
    
    @IBAction func resetButton(_ sender: Any) {
       letterView.text = letters[0]
        nextKey = 0
    }
}

