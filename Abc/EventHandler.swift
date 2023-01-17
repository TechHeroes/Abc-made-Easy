//
//  EventHandler.swift
//  Abc
//
//  Created by Mansoor Khan on 05/01/23.
//

import Foundation
import UIKit

class EventHandler: UIViewController {
    

    // handle view change event
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
    
    @objc func nextCard(_ sender: Any) { }
    
    @objc func prevCard(_ sender: Any) { }
    
    // Handle tap event
    func addTapEvent(){
        let gesture = UITapGestureRecognizer(target: self, action:  #selector(nextCard))
        view.addGestureRecognizer(gesture)
    }
    
    // Handle swipe events
    let swipeableView: UIView = {
        let bounds = UIScreen.main.bounds
        let width = bounds.size.width
        let height = bounds.size.height
        // Initialize View
       let view = UIView(frame: CGRect(origin: .zero,
                                       size: CGSize(width: width, height: height)))
//        view.backgroundColor = .systemRed
//        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        // Configure View
//       view.translatesAutoresizingMaskIntoConstraints = false

       return view
   }()
    
    @objc func didSwipe(_ sender: UISwipeGestureRecognizer) {
        // Current Frame
        let frame = swipeableView.frame

        switch sender.direction {
        case .up:
            nextCard((Any).self)
        case .down:
            prevCard((Any).self)
        case .left:
            nextCard((Any).self)
        case .right:
            prevCard((Any).self)
        default:
            break
        }
        UIView.animate(withDuration: 0.25) {
            self.swipeableView.frame = frame
        }
    }
    
    func createSwipeGestureRecognizer(for direction: UISwipeGestureRecognizer.Direction) -> UISwipeGestureRecognizer {
       // Initialize Swipe Gesture Recognizer
       let swipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(didSwipe(_:)))

       // Configure Swipe Gesture Recognizer
       swipeGestureRecognizer.direction = direction

       return swipeGestureRecognizer
   }

    func handleSwipeGestures() -> Void {
       // Create Swipe Gesture Recognizers
       swipeableView.addGestureRecognizer(createSwipeGestureRecognizer(for: .up))
       swipeableView.addGestureRecognizer(createSwipeGestureRecognizer(for: .down))
       swipeableView.addGestureRecognizer(createSwipeGestureRecognizer(for: .left))
       swipeableView.addGestureRecognizer(createSwipeGestureRecognizer(for: .right))
   }
  
}
