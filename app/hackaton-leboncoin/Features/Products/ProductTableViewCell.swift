//
//  ProductTableViewCell.swift
//  hackaton-leboncoin
//
//  Created by Antoine BOISADAM on 25/05/2018.
//  Copyright © 2018 Antoine BOISADAM. All rights reserved.
//

import UIKit

class ProductTableViewCell: UITableViewCell, Bindable {
    typealias T = Ad
    
    // MARK: - IBOutlet
    @IBOutlet weak var adImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    // MARK: - Properties
    static let reuseIdentifier = "ProductTableViewCell"
    
    // MARK: - Setup
    override func awakeFromNib() {
        super.awakeFromNib()
        print(#function)
    }
    
    func bind(object obj: Ad) {
        titleLabel.text = obj.subject
        if let p = obj.price.first {
            priceLabel.text = String(p)
        }
        
        dateLabel.text = obj.indexDate
        if let imgUrl = obj.images.urls.first {
            adImageView.downloadedFrom(link: imgUrl)
        }
    }
}
