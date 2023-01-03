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
    
    @objc func nextCard(_ sender: Any) {
        if nextKey > 24 {
            nextKey = 24
        }
        nextKey += 1
        setTextAndSound(index: nextKey, target: L1letterView)
    }
    
    // Handle tap event
    func addTapEvent(){
        let gesture = UITapGestureRecognizer(target: self, action:  #selector(nextCard))
        view.addGestureRecognizer(gesture)
    }
    
    override func willMove(toParent parent: UIViewController?)
    {
        super.willMove(toParent: parent)
        if parent == nil
        {
            if let playing = player?.isPlaying {
                player?.stop()
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTextAndSound(index: nextKey, target: L1letterView)
        addTapEvent()
    }
}
