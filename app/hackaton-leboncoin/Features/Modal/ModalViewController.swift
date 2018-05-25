//
//  ModalViewController.swift
//  hackaton-leboncoin
//
//  Created by Ysée Monnier on 25/05/2018.
//  Copyright © 2018 Antoine BOISADAM. All rights reserved.
//

import UIKit

class ModalViewController: UIViewController, ModalPresentable {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Current View
        view.clipsToBounds = true
        view.layer.cornerRadius = 10
        view.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        view.backgroundColor = Stylesheet.Color.modalBlack.value
    }
}
