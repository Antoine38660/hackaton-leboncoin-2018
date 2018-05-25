//
//  ModalPresentationController.swift
//  hackaton-leboncoin
//
//  Created by Ysée Monnier on 25/05/2018.
//  Copyright © 2018 Antoine BOISADAM. All rights reserved.
//

import UIKit

protocol ModalPresentationControllerDelegate: class {
    func modalPresented(controller: ModalPresentationController)
    func modalDismissed(controller: ModalPresentationController)
}

class ModalPresentationController: UIPresentationController {
    var isMaximized: Bool = false
    var factorHeight: Double = 0.0
    var blurredView = false
    var _dimmingView: UIView?
    weak var customDelegate: ModalPresentationControllerDelegate?
    var dimmingView: UIView {
        if let dimmedView = _dimmingView {
            return dimmedView
        }
        
        let view = UIView(frame: CGRect(x: 0, y: 0, width: containerView!.bounds.width, height: containerView!.bounds.height))
        if blurredView {
            // Blur Effect
            let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.dark)
            let blurEffectView = UIVisualEffectView(effect: blurEffect)
            blurEffectView.frame = view.bounds
            view.addSubview(blurEffectView)
            
            // Vibrancy Effect
            let vibrancyEffect = UIVibrancyEffect(blurEffect: blurEffect)
            let vibrancyEffectView = UIVisualEffectView(effect: vibrancyEffect)
            vibrancyEffectView.frame = view.bounds
            
            // Add the vibrancy view to the blur view
            blurEffectView.contentView.addSubview(vibrancyEffectView)
            
            _dimmingView = view
        }
        // Gesture to dismiss presented view controller
        let tap = UITapGestureRecognizer(target: self, action: #selector(dismissPresentedView))
        view.addGestureRecognizer(tap)
        
        return view
    }
    
    @objc func dismissPresentedView() {
        self.presentedViewController.dismiss(animated: true, completion: nil)
    }
    
    func adjustToFullScreen() {
        if let presentedView = presentedView, let containerView = self.containerView {
            UIView.animate(withDuration: 0.8, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: .curveEaseInOut, animations: { () -> Void in
                presentedView.frame = containerView.frame
                
                if let navController = self.presentedViewController as? UINavigationController {
                    self.isMaximized = true
                    
                    navController.setNeedsStatusBarAppearanceUpdate()
                    
                    // Force the navigation bar to update its size
                    navController.isNavigationBarHidden = true
                    navController.isNavigationBarHidden = false
                }
            }, completion: nil)
        }
    }
    
    override var frameOfPresentedViewInContainerView: CGRect {
        let diff = CGFloat(1 - factorHeight)
        return CGRect(x: 0, y: containerView!.bounds.height * diff, width: containerView!.bounds.width, height: containerView!.bounds.height * CGFloat(factorHeight))
    }
    
    override func presentationTransitionWillBegin() {
        let dimmedView = dimmingView
        customDelegate?.modalPresented(controller: self)
        if let containerView = self.containerView, let coordinator = presentingViewController.transitionCoordinator {
            
            dimmedView.alpha = 0
            containerView.addSubview(dimmedView)
            dimmedView.addSubview(presentedViewController.view)
            
            coordinator.animate(alongsideTransition: { (context) -> Void in
                dimmedView.alpha = 1
                if self.blurredView {
                    self.presentingViewController.view.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
                }
            }, completion: nil)
        }
    }
    
    override func dismissalTransitionWillBegin() {
        if let coordinator = presentingViewController.transitionCoordinator {
            coordinator.animate(alongsideTransition: { (context) -> Void in
                self.dimmingView.alpha = 0
                self.presentingViewController.view.transform = CGAffineTransform.identity
            }, completion: { [unowned self] (completed) -> Void in
                self.customDelegate?.modalDismissed(controller: self)
            })
            
        }
    }
    
    override func dismissalTransitionDidEnd(_ completed: Bool) {
        print("dismissal did end: \(completed)")
        
        if completed {
            dimmingView.removeFromSuperview()
            _dimmingView = nil
            
            isMaximized = false
        }
    }
}

protocol ModalPresentable { }

extension ModalPresentable where Self: UIViewController {
    func maximizeToFullScreen() -> Void {
        if let presetation = navigationController?.presentationController as? ModalPresentationController {
            presetation.adjustToFullScreen()
        }
    }
}

extension ModalPresentable where Self: UINavigationController {
    func isHalfModalMaximized() -> Bool {
        if let presentationController = presentationController as? ModalPresentationController {
            return presentationController.isMaximized
        }
        
        return false
    }
}
