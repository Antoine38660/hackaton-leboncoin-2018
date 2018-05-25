//
//  Stylesheet.swift
//  hackaton-leboncoin
//
//  Created by Ysée Monnier on 25/05/2018.
//  Copyright © 2018 Antoine BOISADAM. All rights reserved.
//

import UIKit.UIColor

struct Stylesheet {
    private init() {}
    enum Color {
        case main
        case modalBlack
        case productThumbnailBackground
        case white
        
        var value: UIColor {
            switch self {
            case .main: return UIColor(hex: 0xE6733D)
            case .white: return .white
            case .modalBlack: return UIColor(hex: 0x4A4A4A)
            case .productThumbnailBackground: return UIColor(hex: 0xD8D8D8)
            }
        }
    }
    
    enum Catalog {
        enum ProductItem {
            static let margin = 15.0
            enum Price {
                static let padding = 6.0
            }
        }
    }
}
