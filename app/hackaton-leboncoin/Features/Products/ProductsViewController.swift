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
    
    /// PNPC Webservice
    private var webService = MoyaProvider<LBCService>()
    
    // MARK: - Setup
    override func viewDidLoad() {
        super.viewDidLoad()
        webService.request(.search(filters: ["location": ["region": 22, "department": 38]], limit: nil, sort_by: nil, sort_order: nil, owner_type: nil),
                           completion: { (result) in
                            switch result {
                            case .success(let response):
                                print(response.debugDescription)
                                break
                            case .failure(let error): print(error.localizedDescription)
                                break
                            }
        })
    }
    
}
