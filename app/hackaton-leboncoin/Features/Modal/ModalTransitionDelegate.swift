//
//  ModalTransitionDelegate.swift
//  hackaton-leboncoin
//
//  Created by Ysée Monnier on 25/05/2018.
//  Copyright © 2018 Antoine BOISADAM. All rights reserved.
//

import UIKit

class ModalTransitionDelegate: NSObject, UIViewControllerTransitioningDelegate {
    var viewController: UIViewController
    var presentingViewController: UIViewController
    var interactionController: ModalInteractiveTransition
    
    var interactiveDismiss = true
    
    var factorHeight: Double
    var blurredView: Bool
    weak var customDelegate: ModalPresentationControllerDelegate?
    
    init(viewController: UIViewController,
         presentingViewController: UIViewController,
         factorHeight: Double,
         blurredView: Bool) {
        self.viewController = viewController
        self.presentingViewController = presentingViewController
        self.interactionController = ModalInteractiveTransition(viewController: self.viewController, withView: self.presentingViewController.view, presentingViewController: self.presentingViewController)
        self.factorHeight = factorHeight
        self.blurredView = blurredView
        super.init()
    }
    
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return ModalTransitionAnimator(type: .Dismiss)
    }
    
    func presentationController(forPresented presented: UIViewController, presenting: UIViewController?, source: UIViewController) -> UIPresentationController? {
        let vp = ModalPresentationController(presentedViewController: presented, presenting: presenting)
        vp.customDelegate = customDelegate
        vp.factorHeight = factorHeight
        vp.blurredView = blurredView
        return vp
    }
    
    func interactionControllerForDismissal(using animator: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning? {
        if interactiveDismiss {
            return self.interactionController
        }
        
        return nil
    }
}
