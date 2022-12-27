//
//  Level3ViewController.swift
//  Abc
//
//  Created by Mansoor Khan on 24/12/22.
//

import UIKit

class Level3ViewController: UIViewController {

    @IBOutlet weak var letterView: UITextView!
    @IBOutlet weak var level3Image1: UIImageView!
    @IBOutlet weak var level3Image2: UIImageView!
    
    var nextKey: Int = 0

    
    @objc func nextCard(_ sender: Any) {
        if nextKey > 24 {
            nextKey = 24
        }
        nextKey += 1
        setTextAndImages()
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
    
    func addTapEvent() {
        let gesture = UITapGestureRecognizer(target: self, action:  #selector(nextCard))
        view.addGestureRecognizer(gesture)
    }
    
    func setTextAndImages() {
        setTextAndColor(index: nextKey, target: letterView)
        setImage(index: nextKey, target: level3Image1, level: "level2")
        setImage(index: nextKey, target: level3Image2, level: "level3")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setTextAndImages()
        addTapEvent()
        addTapGestureFor(subview: level3Image1, level: "level2", audioType: "mp3")
        addTapGestureFor(subview: level3Image2, level: "level3", audioType: "wav")
    }
}
