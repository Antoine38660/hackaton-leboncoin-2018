//
//  Navigatable.swift
//  hackaton-leboncoin
//
//  Created by Ysée Monnier on 25/05/2018.
//  Copyright © 2018 Antoine BOISADAM. All rights reserved.
//

import UIKit

protocol Navigatable {
    /// Storyboard name where this view controller exists.
    static var storyboardName: String { get }
    
    
    /// Storyboard Id of this view controller.
    static var storyboardId: String { get }
    
    /// Returns a new instance created from Storyboard identifiers.
    static func instantiateFromStoryboard() -> Self
}

extension Navigatable {
    static func instantiateFromStoryboard() -> Self {
        let storyboard = UIStoryboard(name: self.storyboardName, bundle: nil)
        guard
            let viewController = storyboard
                .instantiateViewController(withIdentifier: self.storyboardId) as? Self else {
                    fatalError("Cannot instantiate the controller.")
        }
        
        return viewController
    }
}

extension CatalogViewController: Navigatable {
    static var storyboardName: String {
        return "Main"
    }
    
    static var storyboardId: String {
        return "CatalogViewController"
    }
}

extension ProductDetailsViewController: Navigatable {
    static var storyboardName: String {
        return "Main"
    }
    
    static var storyboardId: String {
        return "ProductDetailsViewController"
    }
}
