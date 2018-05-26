//
//  MainViewController.swift
//  hackaton-leboncoin
//
//  Created by Ysée Monnier on 25/05/2018.
//  Copyright © 2018 Antoine BOISADAM. All rights reserved.
//

import UIKit
import SceneKit
import ARKit

import FanMenu
import Macaw

import KZSLAB_AR_View
import KZSLAB_AR_Indicator

class MainViewController: KZSARViewController {
    // MARK: - IBOutlets
    @IBOutlet internal weak var fanMenuView: FanMenu!{
        didSet {
            fanMenuView.isHidden = false
        }
    }
    
    // MARK: - Variables
    /// The view controller that displays the status and "restart experience" UI.
    lazy var statusViewController: StatusViewController = {
        return childViewControllers.lazy.flatMap({ $0 as? StatusViewController }).first!
    }()
    
    /// A serial queue for thread safety when modifying the SceneKit node graph.
    let updateQueue = DispatchQueue(label: Bundle.main.bundleIdentifier! +
        ".serialSceneKitQueue")
    
    /// Models from scnassets resources
    let models = KZSVirtualObject.loadFromSceneAssets(groupNamed: "art.scnassets") { (vo) -> [ARPlaneAnchor.Alignment] in
        [.vertical]
    }
    
    /// Action Key
    let highlightActionKey = "HighlightAction"
    
    // True if the action sheet is displayed,
    // Otherwise false.
    internal var actionSheetShowed = false
    
    /// Current selected object position.
    internal var currentVirtalObjectPos: SCNVector3?
    
    /// Modal status.
    /// true if the modal is presented, otherwise false.
    internal var modalIsOpened = false
    
    public var adSelected: LeboncoinElement?
    
    // MARK: - Setup
    override func viewDidLoad() {
        // And feature points.
        sceneView.debugOptions = [ARSCNDebugOptions.showFeaturePoints]
        sceneView.autoenablesDefaultLighting = true
        // Hook up status view controller callback(s).
        statusViewController.restartExperienceHandler = { [unowned self] in
            self.restartExperience()
        }
        
        // Delegates
        delegate = self
        statusDelegate = self
        
        print(models)
        setupView()
        
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        //session.pause()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }
    
    func setupView() {
        // Init settings
        
        // Fan View
        fanMenuView.backgroundColor = .clear
        let mainButton = Menu.Item.main.value
        fanMenuView.button = FanMenuButton(id: mainButton.0,
                                           image: mainButton.1,
                                           color:  Color(val: mainButton.2))
        
        fanMenuView.menuRadius = 90.0
        fanMenuView.duration = 0.2
        fanMenuView.delay = 0.05
        fanMenuView.interval = (Double.pi, 2 * Double.pi)
        
        Menu.items.forEach { [weak self] (item) in
            let value = item.value
            self?.fanMenuView.items.append(FanMenuButton(id: value.0,
                                                         image: value.1,
                                                         color: Color.clear))
        }
        
        fanMenuView.onItemDidClick = { [weak self] button in
            guard let `self` = self else { return }
            print("Item clicked... \(button)")
            if !self.fanMenuView.isOpen {
                switch button.id {
                case Menu.Item.add.value.0:
                    print("Catalog button tapped")
                    self.showsCatalogView(node: nil)
                    break
                case Menu.Item.camera.value.0:
                    print("Camera button tapped")
                    self.takesPicture()
                    break
                case Menu.Item.settings.value.0:
                    print("Settings button tapped")
                    break
                default:
                    print("Default case...")
                }
            }
        }
    }
    // MARK: - Utils
    /// Disable the current Virtual Object selection.
    internal func deselectCurrentObject() {
        virtualObjectInteraction.selectedObject?.removeAction(forKey: highlightActionKey)
        virtualObjectInteraction.selectedObject?.opacity = 1.0
        virtualObjectInteraction.deselectedObject()
        currentVirtalObjectPos = nil
    }
    
    /// Restart the current AR Session.
    func restartExperience() {
        dismiss(animated: true, completion: nil)
    }
    
    /// Insert a Virtual Object to the current center position.
    /// Disable some setting before adding an object.
    /// - Returns: Void.
    internal func insertVirtalObject(virtualObject object: KZSVirtualObject) {
        deselectCurrentObject()
        
        guard let newModel = object.copy(with: nil) as? KZSVirtualObject else {
            fatalError("Cannot copy the object '\(object)'.")
        }
        newModel.position.y -= 0.025
        placeVirtualObject(virtualObject: newModel)
        
        //showsSelectedObjectSettings()
        //newModel.runAction(objectHighlightAction, forKey: highlightActionKey)
    }
    
    // MARK: - Actions
    /// Instantiate `CatalogViewController` to present it.
    /// Setup delegate to the current view controller.
    ///
    /// - Parameter node: A node to add model on img detected.
    internal func showsCatalogView(node: SCNNode?) {
        deselectCurrentObject()
        let vcToPresent = CatalogViewController.instantiateFromStoryboard()
        vcToPresent.delegate = self
        vcToPresent.virtualObjects = models
        //vcToPresent.node = node
        
        let delegate = ModalTransitionDelegate(viewController: self, presentingViewController: vcToPresent, factorHeight: 0.8, blurredView: true)
        delegate.customDelegate = self
        vcToPresent.modalPresentationStyle = .custom
        vcToPresent.transitioningDelegate = delegate
        
        self.present(vcToPresent, animated: true, completion: nil)
    }
    
    /// Get current frame and save it into Images Library
    private func takesPicture() {
        /*guard let _ = session.currentFrame else { return }
        let image = sceneView.snapshot()
        DispatchQueue.main.async {
            UIImageWriteToSavedPhotosAlbum(image, self, #selector(self.image(_:didFinishSavingWithError:contextInfo:)), nil)
        }*/
    }
    
    /// Called as callback when an image is saved into Image Library.
    ///
    /// - Parameter image: image saved.
    /// - Parameter didFinishSavingWithError: error if the saving failed.
    /// - Paramerer contextInfo: A pointer.
    @objc func image(_ image: UIImage, didFinishSavingWithError error: Error?, contextInfo: UnsafeRawPointer) {
        if let err = error {
            print(err.localizedDescription)
            statusViewController.showMessage("Cannot save the photo!", autoHide: true)
        } else {
            statusViewController.showMessage("Image saved!", autoHide: true)
        }
    }
    
    /// Valid action whern user tap on valid button.
    /// Dismiss the button and clear object selected. (deselection)
    @IBAction func validAction(_ sender: UIButton) {
        sender.isHidden = true
        deselectCurrentObject()
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        //print(#function + ": \(sender.value)")
        //guard let position = currentVirtalObjectPos else { return }
        //let tmp = position.y + sender.value
        //virtualObjectInteraction.selectedObject?.position.y += sender.value
    }
    
    func createBoundingBox(width: CGFloat, height: CGFloat, length: CGFloat) -> SCNNode {
        let sm = "float u = _surface.diffuseTexcoord.x; \n" +
            "float v = _surface.diffuseTexcoord.y; \n" +
            "int u100 = int(u * 100); \n" +
            "int v100 = int(v * 100); \n" +
            "if (u100 % 99 == 0 || v100 % 99 == 0) { \n" +
            "  // do nothing \n" +
            "} else { \n" +
            "    discard_fragment(); \n" +
        "} \n"
        
        let box = SCNBox(width: width, height: height, length: length, chamferRadius: 0)
        
        box.firstMaterial?.emission.contents = Stylesheet.Color.main.value
        box.firstMaterial?.shaderModifiers = [SCNShaderModifierEntryPoint.surface: sm]
        box.firstMaterial?.isDoubleSided = true
        return SCNNode(geometry: box)
    }
}
