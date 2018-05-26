//
//  ProductDetailsViewController+CollectionView.swift
//  hackaton-leboncoin
//
//  Created by Ysée Monnier on 26/05/2018.
//  Copyright © 2018 Antoine BOISADAM. All rights reserved.
//

import UIKit

extension ProductDetailsViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return suggestionProducts?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SuggestionCollectionViewCell.reuseIdentifier, for: indexPath) as? SuggestionCollectionViewCell,
        let data = suggestionProducts else { return UICollectionViewCell() }
        
        cell.bind(object: data[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = view.bounds.width
        let padding = CGFloat(Stylesheet.Catalog.ProductItem.margin)
        return CGSize(width: width / 2 - padding, height: width / 2 - padding)
    }
}
