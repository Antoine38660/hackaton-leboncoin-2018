//
//  ProductTableViewCell.swift
//  hackaton-leboncoin
//
//  Created by Antoine BOISADAM on 25/05/2018.
//  Copyright © 2018 Antoine BOISADAM. All rights reserved.
//

import UIKit

class ProductsTableViewCell: Bindable {
    typealias T = Product
    
    // MARK: - IBOutlet
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    // MARK: - Properties
    
    // MARK: - Setup
    func bind(object obj: Product) {
        
    }
}
