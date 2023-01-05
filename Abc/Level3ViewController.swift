//
//  Level3ViewController.swift
//  Abc
//
//  Created by Mansoor Khan on 24/12/22.
//

import UIKit

class Level3ViewController: EventHandler {

    @IBOutlet weak var letterView: UITextView!
    @IBOutlet weak var level3Image1: UIImageView!
    @IBOutlet weak var level3Image2: UIImageView!
    
    var nextKey: Int = 0

    override func nextCard(_ sender: Any) {
        nextKey = (nextKey + 1) % letterCount
        setTextAndImages()
        stopAudioIfPlaying()
    }
    
    func addTapGestureFor(subview: UIImageView, level: String, audioType: String){
        let gesture = SubclassedTapGestureRecognizer(target: self, action:  #selector(playSound(_:)), level: level, audioType: audioType)
        subview.isUserInteractionEnabled = true
        subview.addGestureRecognizer(gesture)
    }
    
    
    @objc func playSound(_ sender: SubclassedTapGestureRecognizer) {
        let level = sender.level, audioType = sender.audioType
        playAudio(index: nextKey, level: level, audioType: audioType)
    }

    func setTextAndImages() {
        setTextAndColor(index: nextKey, target: letterView)
        setImage(index: nextKey, target: level3Image1, level: "level2")
        setImage(index: nextKey, target: level3Image2, level: "level3")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        letterView.backgroundColor = .white
        setTextAndImages()
        addTapEvent()
        addTapGestureFor(subview: level3Image1, level: "level2", audioType: "mp3")
        addTapGestureFor(subview: level3Image2, level: "level3", audioType: "wav")
    }
}
