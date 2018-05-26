//
//  ProductDetailsViewController.swift
//  hackaton-leboncoin
//
//  Created by Ysée Monnier on 25/05/2018.
//  Copyright © 2018 Antoine BOISADAM. All rights reserved.
//

import UIKit

class ProductDetailsViewController: UIViewController {
    // MARK: - IBOutlet
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var adImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var descTextView: UITextView!
    
    // MARK: - Properties
    public var ad: LeboncoinElement?
    internal var suggestionProducts: [LeboncoinElement]?
    
    // MARK: - Setup
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        loadData()
    }
    
    private func setupView() {
        let arButton = UIBarButtonItem(title: "AR",
                                       style: .done,
                                       target: self,
                                       action: #selector(goToARView))
        if let _ = ad?.dimension {
            if let _ = navigationController {
                navigationItem.rightBarButtonItem = arButton
            }
        }
        
        collectionView.dataSource = self
        collectionView.register(UINib(nibName: "SuggestionCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: SuggestionCollectionViewCell.reuseIdentifier)
        
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        layout.minimumInteritemSpacing = 1
        layout.minimumLineSpacing = 10
        layout.itemSize = CGSize(width: 150, height: 150)
        collectionView.collectionViewLayout = layout
    }
    
    @objc
    func goToARView() {
        let vc = MainViewController.instantiateFromStoryboard()
        vc.adSelected = ad
        present(vc, animated: true, completion: nil)
    }
    
    private func loadData() {
        guard let data = ad else { return }
        titleLabel.text = data.subject
        if let p = data.price {
            priceLabel.text = "\(p)€"
        }
        
        if let imgUrl = data.images?.urls?.first {
            adImageView.downloadedFrom(link: imgUrl)
        }
        descTextView.text = data.body
        
        let jsonData = LeboncoinData.json.data(using: .utf8)!
        let jsonDecoder = JSONDecoder()
        do {
            let leboncoin = try jsonDecoder.decode(Leboncoin.self, from: jsonData)
            suggestionProducts = leboncoin
        } catch let error {
            print(error)
        }
    }
}
