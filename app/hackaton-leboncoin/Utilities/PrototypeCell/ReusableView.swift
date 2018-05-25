//
//  ReusableView.swift
//  Schneider-Demo
//
//  Created by Ysée Monnier on 23/03/2018.
//  Copyright © 2018 Ysée Monnier. All rights reserved.
//

import UIKit

public protocol ReusableView: class {}

public extension ReusableView where Self: UIView {
    static var reuseIdentifier: String {
        return String(describing: self)
    }
    
}

extension UITableViewCell: ReusableView { }
extension UICollectionReusableView: ReusableView { }

