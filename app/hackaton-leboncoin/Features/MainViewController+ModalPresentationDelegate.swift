//
//  MainViewController+ModalPresentationDelegate.swift
//  hackaton-leboncoin
//
//  Created by Ysée Monnier on 25/05/2018.
//  Copyright © 2018 Antoine BOISADAM. All rights reserved.
//

extension MainViewController: ModalPresentationControllerDelegate {
    func modalPresented(controller: ModalPresentationController) {
        modalIsOpened = true
    }
    
    func modalDismissed(controller: ModalPresentationController) {
        modalIsOpened = false
    }
}
