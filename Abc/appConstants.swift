//
//  appConstants.swift
//  FirstLearning
//
//  Created by Mansoor Khan on 14/12/22.
//

import Foundation
import UIKit

struct Constants{
    struct Alphabets {
        struct English {
            static let letters: [String] = [
                "A","B","C","D","E", "F", "G", "H",
                "I", "J", "K", "L","M","N","O","P",
                "Q","R","S","T","U","V",
                "W","X","Y","Z"
            ]
            @available(iOS 15.0, *)
            static let colors: [UIColor] = [
                .systemPink,
                .systemRed,
                .systemBlue,
                .systemCyan,
                .systemOrange,
                .systemIndigo,
                .systemPurple,
                .systemYellow,
                .systemGreen
                
            ]
            static var letterImagesAndSounds = [
                "level1": [
                    "A","B","C","D","E", "F", "G", "H",
                    "I", "J", "K", "L","M","N","O","P",
                    "Q","R","S","T","U","V",
                    "W","X","Y","Z"
                ],
                "level2": [
                    "apple", "ball", "cat","dog","elephant","fish",
                    "goat","horse","ice","juice","kite","lion","monkey",
                    "nest","orange","parrot","queen","rabbit","sun","tiger",
                    "umbrella","van","water","xylophone","yak","zebra"
                ],
                "level3": [
                    "ant","balloon","car","duck","egg","flower","giraffe","hen","icecream","jellyfish","key","lemon","mango","nest","onion","pen","quiet","rat","spoon","train","unicorn","violin","watch","xmastree",
                    "yoyo","zoo"
                ]
            ]
        }
    }
}
