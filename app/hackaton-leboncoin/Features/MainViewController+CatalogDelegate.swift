//
//  MainViewController+CatalogDelegate.swift
//  hackaton-leboncoin
//
//  Created by Ysée Monnier on 25/05/2018.
//  Copyright © 2018 Antoine BOISADAM. All rights reserved.
//

import KZSLAB_AR_View
import ARKit


extension MainViewController: CatalogViewControllerDelegate {
    func catalogView(controller: CatalogViewController,
                     node add: SCNNode?,
                     didSelect product: Product) {
        print(#function + ": selected \(product)")
        /*let modelsFiltered = models.filter { (vo) -> Bool in
            return vo.modelName == product.photo
        }
        guard let model = modelsFiltered.first else { return }
        
        if let node = add {
            node.addChildNode(node)
        } else {
            insertVirtalObject(virtualObject: model)
        }*/
    }
    
    func catalogView(controller: CatalogViewController, didSelect product: Product) {
        
    }
}

