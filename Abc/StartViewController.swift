//
//  StartViewController.swift
//  Abc
//
//  Created by Mansoor Khan on 20/12/22.
//

import UIKit

class StartViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func level1Button(_ sender: UIButton) {
        if #available(iOS 15.0, *) {
            let storyboard = self.storyboard?.instantiateViewController(withIdentifier: "Level1ViewController") as! Level1ViewController
            self.navigationController?.pushViewController(storyboard, animated: true)
            
        } else {
            // Fallback on earlier versions
        }
    }
    
    @IBAction func startButton(_ sender: UIButton) {
        if #available(iOS 15.0, *) {
            let storyboard = self.storyboard?.instantiateViewController(withIdentifier: "AbcViewController") as! AbcViewController
            self.navigationController?.pushViewController(storyboard, animated: true)
            
        } else {
            // Fallback on earlier versions
        }
        
        }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
