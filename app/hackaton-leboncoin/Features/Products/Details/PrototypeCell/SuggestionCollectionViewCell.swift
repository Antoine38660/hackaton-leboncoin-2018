//
//  SuggestionCollectionViewCell.swift
//  hackaton-leboncoin
//
//  Created by Ysée Monnier on 26/05/2018.
//  Copyright © 2018 Antoine BOISADAM. All rights reserved.
//

import UIKit

class SuggestionCollectionViewCell: UICollectionViewCell, Bindable {
    typealias T = LeboncoinElement
    
    // MARK: - IBOutlet
    @IBOutlet weak var suggestionImageView: UIImageView!
    @IBOutlet weak var priceLabel: UILabel!
    
    // MARK: - Properties
    
    // MARK: - Setup
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func bind(object obj: LeboncoinElement) {
        if let p = obj.price {
            priceLabel.text = String(p) + " €"
        }
        
        if let imgUrl = obj.images?.urlsThumb?.first {
            suggestionImageView.downloadedFrom(link: imgUrl)
        }
    }
}
