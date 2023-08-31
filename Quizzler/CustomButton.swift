//
//  CustomButton.swift
//  Quizzler
//
//  Created by Jo Michael on 8/29/23.
//

import UIKit

class CustomButton: UIButton {
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        layer.borderColor = UIColor.white.cgColor
//        layer.borderWidth = 2
        layer.cornerRadius = 8
        layer.shadowRadius = 4
        layer.shadowColor = UIColor.gray.cgColor
        layer.shadowOpacity = 4
    }

}
