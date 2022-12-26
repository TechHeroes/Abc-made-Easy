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
        if #available(iOS 15.0, *) {
            letterView.text = letters[nextKey]
            setImage(index: nextKey, target: level3Image1, level: "level2")
            setImage(index: nextKey, target: level3Image2, level: "level3")
        }
        else {
            // Fallback on earlier versions
        }
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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        letterView.text = letters[nextKey]
        setImage(index: nextKey, target: level3Image1, level: "level2")
        setImage(index: nextKey, target: level3Image2, level: "level3")
     
        let gesture = UITapGestureRecognizer(target: self, action:  #selector(self.nextCard(_:)))
        view.addGestureRecognizer(gesture)

        addTapGestureFor(subview: level3Image1, level: "level2", audioType: "mp3")
        addTapGestureFor(subview: level3Image2, level: "level3", audioType: "wav")
        
    }
}
