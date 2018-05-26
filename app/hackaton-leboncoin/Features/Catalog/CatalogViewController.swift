//
//  CatalogViewController.swift
//  hackaton-leboncoin
//
//  Created by Ysée Monnier on 25/05/2018.
//  Copyright © 2018 Antoine BOISADAM. All rights reserved.
//

import UIKit

import KZSLAB_AR_View
import ARKit

public extension Double {
    
    /// Returns a random floating point number between 0.0 and 1.0, inclusive.
    public static var random: Double {
        return Double(arc4random()) / 0xFFFFFFFF
    }
    
    /// Random double between 0 and n-1.
    ///
    /// - Parameter n:  Interval max
    /// - Returns:      Returns a random double point number between 0 and n max
    public static func random(min: Double, max: Double) -> Double {
        return Double.random * (max - min) + min
    }
    
    /// Rounds the double to decimal places value
    func rounded(toPlaces places:Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
}

protocol CatalogViewControllerDelegate: class {
    func catalogView(controller: CatalogViewController, node add: SCNNode?, didSelect product: Product)
}

class CatalogViewController: ModalViewController {
    // MARK: - IBOutlet
    
    @IBOutlet weak var lineView: LineView!
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var collectionView: UICollectionView!
    
    // MARK: - Properties
    /// Products data that describes Schneider products
    public var virtualObjects: [KZSVirtualObject]?
    
    /// Node to add when detecting an image. (Image Recognition)
    public var node: SCNNode?
    
    internal var products: [LeboncoinElement] = []
    
    /// Delegate allowing to send selected item on `UICollectionView`
    weak var delegate: CatalogViewControllerDelegate?
    
    /// Tap Gesture for dismissing keyboard.
    var tapKeyboard: UITapGestureRecognizer = UITapGestureRecognizer(target: self,
                                                                     action: #selector(dismissKeyboard))
    
    // MARK: - Setup
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Catalog View Controller presented")
        setupView()
        loadData()
    }
    
    private func setupView() {
        // CollectionView
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.backgroundColor = .clear
        collectionView.allowsSelection = true
        collectionView.allowsMultipleSelection = false
        
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        layout.minimumInteritemSpacing = 1
        layout.minimumLineSpacing = 10
        layout.itemSize = CGSize(width: 150, height: 150)
        collectionView.collectionViewLayout = layout
        
        collectionView.register(UINib(nibName: CatalogCollectionViewCell.reuseIdentifier, bundle: nil), forCellWithReuseIdentifier: CatalogCollectionViewCell.reuseIdentifier)
        
        // SearchBar
        searchBar.removeBackgroundImageView()
        UIBarButtonItem.appearance(whenContainedInInstancesOf: [UISearchBar.self]).tintColor = Stylesheet.Color.main.value
        searchBar.showsCancelButton = false
        
        lineView.clipsToBounds = true
        lineView.layer.cornerRadius = 5.0
        
        //addTapKeyboard()
    }
    
    private func loadData() {
        guard let models = virtualObjects else { return }
        var index = 1
        /*for model in models {
            let p = Product(name: "Product \(index)",
                description: "Super Description for product \(index)",
                photo: model.modelName,
                price: Double.random(min: 1.99, max: 4.99).rounded(toPlaces: 2))
            
            products.append(p)
            
            index += 1
        }*/
        let data = LeboncoinData.json.data(using: .utf8)!
        let jsonDecoder = JSONDecoder()
        do {
            let leboncoin = try jsonDecoder.decode(Leboncoin.self, from: data)
            print(leboncoin)
            self.products = leboncoin
        } catch let error {
            print(error)
        }
        
        collectionView.reloadData()
    }
    
    // MARK: - Util
    
    /// Dismiss the current keyboard when searching something through
    /// `UISearchBar`
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    internal func addTapKeyboard() {
        guard let gestures = view.gestureRecognizers else {
            view.addGestureRecognizer(tapKeyboard)
            return
        }
        if !gestures.contains(tapKeyboard) {
            view.addGestureRecognizer(tapKeyboard)
        }
    }
    
    internal func removeTapKeyboard() {
        view.removeGestureRecognizer(tapKeyboard)
    }
}
