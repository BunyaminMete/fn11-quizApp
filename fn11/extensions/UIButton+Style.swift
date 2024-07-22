//
//  UIButton+Style.swift
//  fn11
//
//  Created by Bünyamin Mete on 18.07.2024.
//

import UIKit

extension UIButton {
    func applyButtonStyle() {
        // Background color
        self.backgroundColor = UIColor.white
        
        // Text color
        self.setTitleColor(UIColor.black, for: .normal)
        
        // Corner radius
        self.layer.cornerRadius = 10
        
        // Border
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.white.cgColor
        
        // Shadow
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOpacity = 0.8
        self.layer.shadowRadius = 5
        self.layer.shadowOffset = CGSize(width: 0, height: 2)
        
        // Adjust font
        self.titleLabel?.font = UIFont.systemFont(ofSize: 22, weight: .bold)
    }
}
