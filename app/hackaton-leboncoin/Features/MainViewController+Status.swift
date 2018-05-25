//
//  MainViewController+Status.swift
//  hackaton-leboncoin
//
//  Created by Ysée Monnier on 25/05/2018.
//  Copyright © 2018 Antoine BOISADAM. All rights reserved.
//

import KZSLAB_AR_View

extension MainViewController: KZSARStatusDelegate {
    func KZSARStatus(didUpdate status: KZSARStatus) {
        DispatchQueue.main.async { [unowned self] in
            self.statusViewController.showMessage(status.message, autoHide: true)
        }
    }
}
