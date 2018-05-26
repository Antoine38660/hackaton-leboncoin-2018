//
//  ProductTableViewCell.swift
//  hackaton-leboncoin
//
//  Created by Antoine BOISADAM on 25/05/2018.
//  Copyright © 2018 Antoine BOISADAM. All rights reserved.
//

import UIKit

class ProductTableViewCell: UITableViewCell, Bindable {
    typealias T = LeboncoinElement
    
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
    
    func bind(object obj: LeboncoinElement) {
        titleLabel.text = obj.subject
        if let p = obj.price {
            priceLabel.text = String(p) + " €"
        }
        
        dateLabel.text = obj.indexDate
        if let imgUrl = obj.images?.urlsThumb?.first {
            adImageView.downloadedFrom(link: imgUrl)
        }
        
        // Test
        if let _ = obj.dimension {
            if let badgeAR = UIImage(named: "ARKit-Badge") {
                let sourceSize = adImageView.frame.size
                let factor: CGFloat = 1 / 3
                let width = sourceSize.width * factor
                let height: CGFloat = 20.0
                let view = UIImageView(frame: CGRect(origin: CGPoint(x: 0, y: 0),
                                                     size: CGSize(width: width, height: height)))
                view.image = badgeAR
                adImageView.addSubview(view)
            }
        }
    }
}
