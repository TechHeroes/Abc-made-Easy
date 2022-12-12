//
//  ViewController.swift
//  Abc
//
//  Created by Mansoor Khan on 12/12/22.
//

import UIKit

class ViewController: UIViewController {

    var letters: [String] = [
        "A","B","C","D","E", "F", "G", "H", "I", "J", "K", "L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"
    ]
    var nextKey = 1
    
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
        
    }
    
    @IBAction func nextButton(_ sender: Any) {
        
        if nextKey > 24 {
            nextKey = 24
        }
        nextKey += 1
        letterView.text = letters[nextKey]
    }
    
    @IBAction func resetButton(_ sender: Any) {
       letterView.text = letters[0]
        nextKey = 0
    }
}

