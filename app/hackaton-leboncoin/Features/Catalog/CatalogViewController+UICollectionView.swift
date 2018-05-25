//
//  CatalogViewController+UICollectionView.swift
//  hackaton-leboncoin
//
//  Created by Ysée Monnier on 25/05/2018.
//  Copyright © 2018 Antoine BOISADAM. All rights reserved.
//

import UIKit.UICollectionView

extension CatalogViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(#function + ": \(indexPath)")
        searchBar.endEditing(true)
        // Called when user select item into the collection view.
        delegate?.catalogView(controller: self,
                              node: node,
                              didSelect: products[indexPath.row])
        dismiss(animated: true, completion: nil)
    }
}

extension CatalogViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CatalogCollectionViewCell.reuseIdentifier,
                                                            for: indexPath) as? CatalogCollectionViewCell else {
                                                                return UICollectionViewCell()
        }
        let data = products[indexPath.row]
        cell.bind(object: data)
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
