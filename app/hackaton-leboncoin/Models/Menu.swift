//
//  Menu.swift
//  hackaton-leboncoin
//
//  Created by Ysée Monnier on 25/05/2018.
//  Copyright © 2018 Antoine BOISADAM. All rights reserved.
//

struct Menu {
    static let itemColor = 0xA4A4A4
    static let mainColor = 0x00A654
    
    enum Item {
        case main
        case camera
        case add
        case settings
        
        /// Return Menu.Item data structure.
        ///
        /// - Returns a triple (String ID, Image name, HEX Color).
        var value: (String, String, Int) {
            switch self {
            case .main: return ("id_main", "menu_w", Menu.mainColor)
            case .camera: return ("id_camera", "camera_w", Menu.itemColor)
            case .add: return ("id_add", "add", Menu.itemColor)
            case .settings: return ("id_settings", "settings", Menu.itemColor)
            }
        }
    }
    
    static let items = [
        Item.add, Item.settings, Item.camera
    ]
}
