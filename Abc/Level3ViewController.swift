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
    
    @objc func playSound(_ sender: Any) {
        playAudio(index: nextKey, level: "level2")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        letterView.text = letters[0]
         nextKey = 0
         setImage(index: 0, target: level3Image1, level: "level2")
         setImage(index: 0, target: level3Image2, level: "level3")
         
        playSound((Any).self)
        addTapGestureFor(subview: level3Image1)
        addTapGestureFor(subview: level3Image2)
    }
    
    func addTapGestureFor(subview: UIImageView){
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(playSound(_:)))
        
        subview.isUserInteractionEnabled = true

        subview.addGestureRecognizer(tapGestureRecognizer)
    }
    
}
