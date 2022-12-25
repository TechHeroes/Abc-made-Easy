//
//  Level1ViewController.swift
//  Abc
//
//  Created by Mansoor Khan on 23/12/22.
//

import UIKit

class Level1ViewController: UIViewController {
    @IBOutlet weak var L1letterView: UITextView!
    var nextKey = 0
    
    @objc func nextButton(_ sender: Any) {
        
        if nextKey > 24 {
            nextKey = 24
        }
        
        nextKey += 1
        if #available(iOS 15.0, *) {
            setTextAndColor(index: nextKey, target: L1letterView)
        } else {
            // Fallback on earlier versions
        }
        playAudio(index: nextKey, audioType: "wav")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        L1letterView.text = letters[0]
        playAudio(index: nextKey, audioType: "wav")
        // Handle tap event
        let gesture = UITapGestureRecognizer(target: self, action:  #selector(nextButton))
        view.addGestureRecognizer(gesture)
        // Do any additional setup after loading the view.
    }
    

}
