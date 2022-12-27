//
//  SubclassedTapGestureRecognizer.swift
//  Abc
//
//  Created by Mansoor Khan on 26/12/22.
//

import UIKit

class SubclassedTapGestureRecognizer: UITapGestureRecognizer {
    let level: String, audioType: String
    
    init(target: AnyObject, action: Selector, level: String, audioType: String) {
        self.level = level
        self.audioType = audioType
        super.init(target: target, action: action)
    }
}
