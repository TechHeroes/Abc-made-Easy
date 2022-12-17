//
//  ViewController.swift
//  Abc
//
//  Created by Mansoor Khan on 12/12/22.
//

import UIKit

@available(iOS 15.0, *)
@available(iOS 15.0, *)
class ViewController: UIViewController {

    @IBOutlet weak var prevButtonLabel: UIButton!
    
    @IBOutlet weak var nextButtonLabel: UIButton!
    
    @IBOutlet weak var restartButtonLabel: UIButton!
    @IBOutlet weak var letterView: UITextView!
    @IBOutlet weak var letterImageView: UIImageView!
    
    var letters: [String] = Constants.Alphabets.English.letters
    let colors: [UIColor] = Constants.Alphabets.English.colors

    
    @IBAction func prevButton(_ sender: Any) {
        if nextKey < 1 {
            nextKey = 1
        }
        nextKey -= 1
        letterView.text = letters[nextKey]
        letterView.textColor = colors.randomElement()
        playAudio(index: nextKey)
        letterImageView.image = UIImage(named: letterImages[nextKey])
    }
    
    @IBAction func nextButton(_ sender: Any) {
        
        if nextKey > 24 {
            nextKey = 24
        }
        nextKey += 1
        letterView.text = letters[nextKey]
        letterView.textColor = colors.randomElement()
        playAudio(index: nextKey)
        letterImageView.image = UIImage(named: letterImages[nextKey])
  }
    
    @IBAction func resetButton(_ sender: Any) {
       letterView.text = letters[0]
        nextKey = 0
        playAudio(index: 0)
        letterImageView.image = UIImage(named: letterImages[0])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        letterView.backgroundColor = .white
        
        prevButtonLabel.setTitle("Previous", for: .normal)
        nextButtonLabel.setTitle("Next", for: .normal)
        restartButtonLabel.setTitle("Restart", for: .normal)
        resetButton((Any).self)
        view.addSubview(letterImageView)
        
    }

}

