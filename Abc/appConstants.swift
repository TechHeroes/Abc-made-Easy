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
            static let letterImagesAndSounds: [String] = [
                "aforapple", "bforball", "cforcat","dfordog","eforelephant","fforfish",
                "gforgoat","hforhorse","iforice","jforjuice","kforkite","lforlion","mformonkey",
                "nfornest","ofororange","pforparrot","qforqueen","rforrabbit","sforsun","tfortiger",
                "uforumbrella","vforvan","wforwater","xforxylophone","yforyak","zforzebra"
            ]
        }
    }
}
