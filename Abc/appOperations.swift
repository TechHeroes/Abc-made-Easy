//
//  Created by Mansoor Khan on 17/12/22.
//

import Foundation
import AVFoundation
import UIKit

let letters: [String] = Constants.Alphabets.English.letters
let letterImagesAndSounds: [String: [String]] = Constants.Alphabets.English.letterImagesAndSounds

let colors: [UIColor] = Constants.Alphabets.English.colors
var player: AVAudioPlayer!
let letterCount = Constants.Alphabets.English.letters.count

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

func setImage(index: Int, target: UIImageView, level: String = "level2") {
    target.image = UIImage(named: (letterImagesAndSounds[level]?[index])!)
}

func setTextAndColor(index: Int, target: UITextView) {
    target.text = letters[index]
    target.textColor = colors.randomElement()
}

func setTextAndSound(index: Int, target: UITextView) {
    setTextAndColor(index: index, target: target)
    playAudio(index: index)
}

func updateTextFont(textView: UITextView) {
    if (textView.text.isEmpty || textView.bounds.size.equalTo(CGSize.zero)) {
        return;
    }

    let textViewSize = textView.frame.size;
    let fixedWidth = textViewSize.width;
    let expectSize = textView.sizeThatFits(CGSize(width: fixedWidth, height: CGFloat(MAXFLOAT)));

    var expectFont = textView.font;
    if (expectSize.height > textViewSize.height) {
        while (textView.sizeThatFits(CGSize(width: fixedWidth, height: CGFloat(MAXFLOAT))).height > textViewSize.height) {
            expectFont = textView.font!.withSize(textView.font!.pointSize - 1)
            textView.font = expectFont
        }
    }
    else {
        while (textView.sizeThatFits(CGSize(width: fixedWidth, height: CGFloat(MAXFLOAT))).height < textViewSize.height) {
            expectFont = textView.font;
            textView.font = textView.font!.withSize(textView.font!.pointSize + 1)
        }
        textView.font = expectFont;
    }
}

