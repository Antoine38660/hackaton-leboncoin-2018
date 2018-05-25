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
    
    // MARK: - Setup
    override func viewDidLoad() {
        super.viewDidLoad()

        let data = LeboncoinData().getJson().data(using: .utf8)!
        let jsonDecoder = JSONDecoder()
        do {
            let leboncoin = try jsonDecoder.decode(Leboncoin.self, from: data)
            print(leboncoin)
        } catch let error {
            print(error)
        }
        
    }
}
