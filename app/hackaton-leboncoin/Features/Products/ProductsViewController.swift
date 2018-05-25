//
//  ProductsViewController.swift
//  hackaton-leboncoin
//
//  Created by Ysée Monnier on 25/05/2018.
//  Copyright © 2018 Antoine BOISADAM. All rights reserved.
//

import UIKit

import Moya

class ProductsViewController: UIViewController {
    // MARK: - IBOutlet
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Properties
    internal var data: [Ad]?
    
    // MARK: - Setup
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        loadData()
    }
    
    private func setupView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "ProductTableViewCell", bundle: nil), forCellReuseIdentifier: ProductTableViewCell.reuseIdentifier)
        tableView.rowHeight = 100
    }
    
    private func loadData() {
        let data = LeboncoinData.json.data(using: .utf8)!
        let jsonDecoder = JSONDecoder()
        do {
            let leboncoin = try jsonDecoder.decode(Leboncoin.self, from: data)
            print(leboncoin)
            self.data = leboncoin.ads
            
            tableView.reloadData()
        } catch let error {
            print(error)
        }
    }
}

extension ProductsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let data = self.data else { return 0 }
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ProductTableViewCell.reuseIdentifier, for: indexPath) as? ProductTableViewCell,
        let data = self.data else {
            return UITableViewCell()
        }
        
        let ad = data[indexPath.row]
        cell.bind(object: ad)
        return cell
    }
}

extension ProductsViewController: UITableViewDelegate {
    
}
