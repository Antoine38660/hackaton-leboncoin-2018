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
        if let _ = navigationController {
            navigationItem.rightBarButtonItem = arButton
        }
        
        collectionView.dataSource = self
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
    }
}
