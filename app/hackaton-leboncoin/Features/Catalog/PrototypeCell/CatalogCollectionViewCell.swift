//
//  CatalogCollectionViewCell.swift
//  hackaton-leboncoin
//
//  Created by Ysée Monnier on 25/05/2018.
//  Copyright © 2018 Antoine BOISADAM. All rights reserved.
//

import UIKit.UICollectionViewCell

class CatalogCollectionViewCell: UICollectionViewCell, Bindable {
    typealias T = LeboncoinElement
    
    // MARK: - IBOutlet
    
    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var priceLabel: EdgeInsetLabel!
    
    @IBOutlet weak var badgeImageView: UIImageView!
    // MARK: - Setup
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Content View
        backgroundColor = Stylesheet.Color.productThumbnailBackground.value
        layer.cornerRadius = 10.0
        
        // Price Label
        priceLabel.textColor = Stylesheet.Color.white.value
        priceLabel.backgroundColor =  Stylesheet.Color.main.value
        priceLabel.clipsToBounds = true
        priceLabel.layer.cornerRadius = 9
        priceLabel.adjustsFontSizeToFitWidth = true
        priceLabel.sizeToFit()
        
        let padding = CGFloat(Stylesheet.Catalog.ProductItem.Price.padding)
        priceLabel.leftTextInset = padding
        priceLabel.rightTextInset = padding
        priceLabel.topTextInset = padding / 2
        priceLabel.bottomTextInset = padding
    }
    
    // MARK: - Bindable
    func bind(object obj: LeboncoinElement) {
        badgeImageView.isHidden = obj.dimension == nil
        if let p = obj.price {
            priceLabel.text = String(p) + " €"
        }
        if let imgUrl = obj.images?.urlsThumb?.first {
            productImageView.downloadedFrom(link: imgUrl)
        }
        //priceLabel.text = String(obj.price) + "€"
        //productImageView.image = UIImage(named: obj.photo)
    }
}
