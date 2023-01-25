//
//  Level2ViewController.swift
//  Abc
//
//  Created by Mansoor Khan <thisismansoorkhan@gmail.com> on 12/12/22.
//

import UIKit

class Level2ViewController: EventHandler {
    
    @IBOutlet weak var prevButtonLabel: UIButton!
    @IBOutlet weak var nextButtonLabel: UIButton!
    @IBOutlet weak var restartButtonLabel: UIButton!
    @IBOutlet weak var letterView: UITextView!
    @IBOutlet weak var letterImageView: UIImageView!
    
    var nextKey: Int = 0
    
    override func prevCard(_ sender: Any) {
        if nextKey < 1 {
            nextKey = 1
        }
        nextKey = (nextKey - 1) % letterCount
        setTextImageSound()
   }
    
    func setTextImageSound() {
        setTextAndColor(index: nextKey, target: letterView)
        setImage(index: nextKey, target: letterImageView)
        playAudio(index: nextKey, level: "level2")
    }
    
    override func nextCard(_ sender: Any) {
        nextKey = (nextKey + 1) % letterCount
        setTextImageSound()
    }
    
    @IBAction func resetButton(_ sender: Any) {
       setTextImageSound()
    }
  
    @objc func checkAction(sender : UITapGestureRecognizer) {
        // Do what you want
        playAudio(index: nextKey, level: "level2")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        view.backgroundColor = .white
        letterView.backgroundColor = .white
        updateTextFont(textView: letterView)
        view.addSubview(letterImageView)
        view.addSubview(swipeableView)
        
        // Handle swipe events
        handleSwipeGestures()
        
        setTextImageSound()
        addTapEvent()
    }
}
