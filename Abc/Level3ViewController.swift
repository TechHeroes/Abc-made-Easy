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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        letterView.text = letters[0]
         nextKey = 0
         setImage(index: 0, target: level3Image1, level: "level2")
         setImage(index: 0, target: level3Image2, level: "level3")
         playAudio(index: 0, level: "level2")
        
    }
}
