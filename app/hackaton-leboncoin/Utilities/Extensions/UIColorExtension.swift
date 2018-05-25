//
//  UIColorExtension.swift
//  hackaton-leboncoin
//
//  Created by Ysée Monnier on 25/05/2018.
//  Copyright © 2018 Antoine BOISADAM. All rights reserved.
//

import UIKit.UIColor

extension UIColor {
    /// Create UIColor with hex code.
    ///
    /// - Parameter hex: Hexa decimal.
    public convenience init(hex: Int) {
        self.init(r:(hex >> 16) & 0xff, g:(hex >> 8) & 0xff, b:hex & 0xff)
    }
    
    /// Create UIColor with RGBA.
    ///
    /// - Parameter r: Red color.
    /// - Parameter g: Green color.
    /// - Parameter b: Blue color.
    /// - Parameter alpha: Alpha.
    public convenience init(r red: Int, g green: Int, b blue: Int, a alpha: CGFloat = 1.0) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        assert(alpha >= 0 && alpha <= 1.0, "Invalid alpha component")
        
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: alpha)
    }
}
