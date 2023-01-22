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
            static let colors: [UIColor] = [
                .systemPink,
                .systemRed,
                .systemBlue,
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
                    "ant","balloon","car","duck","egg","flower","giraffe","hen","icecream","jellyfish","key","lemon","mango","nose","onion","pen","quiet","rat","spoon","train","unicorn","violin","watch","xmastree",
                    "yoyo","zoo"
                ],
                "level4": [
                    "aaapple", "bababall", "cacacat","dadadog","ehehelephant","fafafish",
                    "gagagoat","hahahorse","aaice","jajajuice","kakakite","lalalion","mamamonkey",
                    "nananest","ooorange","papaparrot","kakaqueen","rararabbit","sasasun","tatatiger",
                    "uhuhumbrella","vavavan","wawawater","zazaxylophone","yayayak","zazazebra"
                ],
                "level5": [
                    "aaant","bababalloon","cacacar","dadaduck","ahahegg","fafaflowers","jajagiraffe","hahahen","ahahicecream","jajajellyfish","kakakey","lalalemon","mamamango","nananose","ooonion","papapen","kakaquiet","rararat","esesspoon","tatatrain","uuunicorn","vavaviolin","wawawatch","exexxmastree",
                    "yayayoyo","zazazoo"
                ]
            ]
        }
    }
}
