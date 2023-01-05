//
//  Level2ViewController.swift
//  Abc
//
//  Created by Mansoor Khan <thisismansoorkhan@gmail.com> on 12/12/22.
//

import UIKit

class Level2ViewController: EventHandler {
    
    @IBOutlet weak var prevButtonLabel: UIButton!
    @IBOutlet weak var nextButtonLabel: UIButton!
    @IBOutlet weak var restartButtonLabel: UIButton!
    @IBOutlet weak var letterView: UITextView!
    @IBOutlet weak var letterImageView: UIImageView!
    
    var nextKey: Int = 0
    
    @IBAction func prevCard(_ sender: Any) {
        if nextKey < 1 {
            nextKey = 1
        }
        nextKey = (nextKey - 1) % letterCount
        setTextImageSound()
   }
    
    func setTextImageSound() {
        setTextAndColor(index: nextKey, target: letterView)
        setImage(index: nextKey, target: letterImageView)
        playAudio(index: nextKey, level: "level2")
    }
    
    override func nextCard(_ sender: Any) {
        nextKey = (nextKey + 1) % letterCount
        setTextImageSound()
    }
    
    @IBAction func resetButton(_ sender: Any) {
       setTextImageSound()
    }

    // MARK: - View Life Cycle
    let swipeableView: UIView = {
       // Initialize View
       let view = UIView(frame: CGRect(origin: .zero,
                                       size: CGSize(width: 400, height: 600.0)))

       // Configure View
       view.translatesAutoresizingMaskIntoConstraints = false

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
    
    @objc func checkAction(sender : UITapGestureRecognizer) {
        // Do what you want
        playAudio(index: nextKey, level: "level2")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        view.backgroundColor = .white
        letterView.backgroundColor = .white
        
        view.addSubview(letterImageView)
        view.addSubview(swipeableView)
        
        // Handle swipe events
        handleSwipeGestures()
        
        setTextImageSound()
        addTapEvent()
    }
}
