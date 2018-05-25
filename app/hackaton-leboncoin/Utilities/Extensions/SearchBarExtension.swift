//
//  SearchBarExtension.swift
//  hackaton-leboncoin
//
//  Created by Ysée Monnier on 25/05/2018.
//  Copyright © 2018 Antoine BOISADAM. All rights reserved.
//

import UIKit.UISearchBar

extension UISearchBar {
    func removeBackgroundImageView(){
        guard let searchBarBackgroundClass = NSClassFromString("UISearchBarBackground") else {
            return
        }
        
        if let view = self.subviews.first {
            for curr in view.subviews {
                
                if curr.isKind(of: searchBarBackgroundClass){
                    if let imageView = curr as? UIImageView{
                        imageView.removeFromSuperview()
                        break
                    }
                }
            }
        }
    }
}
