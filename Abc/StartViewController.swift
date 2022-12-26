//
//  StartViewController.swift
//  Abc
//
//  Created by Mansoor Khan on 20/12/22.
//

import UIKit

class StartViewController: UIViewController {

    @IBOutlet weak var lev1Button: UIButton!
    
    @IBOutlet weak var lev2Button: UIButton!
    
    func setFontProperties(btn: UIButton) {
        btn.titleLabel?.minimumScaleFactor = 0.5
        btn.titleLabel!.textAlignment = .left
        btn.titleLabel?.adjustsFontSizeToFitWidth = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func level1Button(_ sender: UIButton) {
        if #available(iOS 15.0, *) {
            let storyboard = self.storyboard?.instantiateViewController(withIdentifier: "Level1ViewController") as! Level1ViewController
            self.navigationController?.pushViewController(storyboard, animated: true)
            
        } else {
            // Fallback on earlier versions
        }
    }
    
    @IBAction func level2Button(_ sender: UIButton) {
        if #available(iOS 15.0, *) {
            let storyboard = self.storyboard?.instantiateViewController(withIdentifier: "Level2ViewController") as! Level2ViewController
            self.navigationController?.pushViewController(storyboard, animated: true)
            
        } else {
            // Fallback on earlier versions
        }
    }
    
    @IBAction func level3Button(_ sender: UIButton) {
        if #available(iOS 15.0, *) {
            let storyboard = self.storyboard?.instantiateViewController(withIdentifier: "Level3ViewController") as! Level3ViewController
            self.navigationController?.pushViewController(storyboard, animated: true)
            
        } else {
            // Fallback on earlier versions
        }
    }


}
