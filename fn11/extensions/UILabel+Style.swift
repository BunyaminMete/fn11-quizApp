//
//  UILabel+Style.swift
//  fn11
//
//  Created by Bünyamin Mete on 18.07.2024.
//

import UIKit

extension UILabel {
    func applyMainScreenLabelStyle(){
        self.layer.cornerRadius = 20
        self.layer.cornerRadius = 20
        self.layer.masksToBounds = true
        
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOffset = CGSize(width: 2, height: 2)
        self.layer.shadowRadius = 4
        self.layer.shadowOpacity = 0.5
        
        // Yazı tipi ve arka plan rengini ayarlama
        self.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        self.backgroundColor = UIColor.white
        self.textColor = UIColor.black
        self.layer.sublayerTransform = CATransform3DMakeTranslation(10, 0, 0)
    }
}
