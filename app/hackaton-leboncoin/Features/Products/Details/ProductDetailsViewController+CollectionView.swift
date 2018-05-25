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
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return UICollectionViewCell()
    }
}
