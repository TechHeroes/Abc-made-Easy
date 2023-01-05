//
//  EventHandler.swift
//  Abc
//
//  Created by Mansoor Khan on 05/01/23.
//

import Foundation
import UIKit

class EventHandler: UIViewController {
    
    
    override func willMove(toParent parent: UIViewController?)
    {
        super.willMove(toParent: parent)
        if parent == nil
        {
            stopAudioIfPlaying()
        }
    }
    
    func stopAudioIfPlaying() {
        if (player?.isPlaying) != nil {
            player?.stop()
        }
    }
    
    @objc func nextCard(_ sender: Any) {
        
    }
    
    // Handle tap event
    func addTapEvent(){
        let gesture = UITapGestureRecognizer(target: self, action:  #selector(nextCard))
        view.addGestureRecognizer(gesture)
    }
}
