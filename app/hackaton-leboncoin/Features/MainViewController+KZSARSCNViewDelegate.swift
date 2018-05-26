//
//  MainViewController+KZSARSCNViewDelegate.swift
//  hackaton-leboncoin
//
//  Created by Ysée Monnier on 25/05/2018.
//  Copyright © 2018 Antoine BOISADAM. All rights reserved.
//

import KZSLAB_AR_View
import ARKit

extension MainViewController: KZSARSCNViewDelegate {
    func KZSARRenderer(_ renderer: SCNSceneRenderer, updateAtTime time: TimeInterval) {
        
    }
    
    func KZSARRenderer(_ renderer: SCNSceneRenderer, didAdd node: SCNNode, for anchor: ARAnchor) {
        /*
         // Place content only for anchors found by plane detection.
         guard let planeAnchor = anchor as? ARPlaneAnchor else { return }
         
         // Create a SceneKit plane to visualize the plane anchor using its position and extent.
         let plane = SCNPlane(width: CGFloat(planeAnchor.extent.x), height: CGFloat(planeAnchor.extent.z))
         let planeNode = SCNNode(geometry: plane)
         planeNode.geometry?.firstMaterial?.diffuse.contents = UIColor.cyan
         planeNode.simdPosition = float3(planeAnchor.center.x, 0, planeAnchor.center.z)
         
         // `SCNPlane` is vertically oriented in its local coordinate space, so
         // rotate the plane to match the horizontal orientation of `ARPlaneAnchor`.
         planeNode.eulerAngles.x = -.pi / 2
         
         // Make the plane visualization semitransparent to clearly show real-world placement.
         planeNode.opacity = 0.25
         
         // Add the plane visualization to the ARKit-managed node so that it tracks
         // changes in the plane anchor as plane estimation continues.
         node.addChildNode(planeNode)
         */
    }
    
    func KZSARRenderer(_ renderer: SCNSceneRenderer, didUpdate node: SCNNode, for anchor: ARAnchor) {
        // Update content only for plane anchors and nodes matching the setup created in `renderer(_:didAdd:for:)`.
        /*guard let planeAnchor = anchor as?  ARPlaneAnchor,
         let planeNode = node.childNodes.first,
         let plane = planeNode.geometry as? SCNPlane
         else { return }
         
         // Plane estimation may shift the center of a plane relative to its anchor's transform.
         planeNode.simdPosition = float3(planeAnchor.center.x, 0, planeAnchor.center.z)
         
         // Plane estimation may also extend planes, or remove one plane to merge its extent into another.
         plane.width = CGFloat(planeAnchor.extent.x)
         plane.height = CGFloat(planeAnchor.extent.z)*/
    }
    
    func KZSARDetected(_ renderer: SCNSceneRenderer, didAdd node: SCNNode, plane anchor: ARPlaneAnchor) {
        if anchor.alignment == .horizontal {
            guard let ad = adSelected else { return }
            
            if ad.dimension != nil {
                if !modelIsDisplayed {
                    modelIsDisplayed.toggle()
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1) { [unowned self] in
                        if let modelName = ad.model {
                            // Show 3D Model
                            let modelFirst = self.models.first { (vo) -> Bool in
                                vo.modelName == modelName
                            }
                            if let model = modelFirst {
                                self.placeVirtualObject(virtualObject: model)
                            }
                        } else {
                            // Show Bounding Box
                            if let dimension = ad.dimension,
                                let w = dimension.width,
                                let h = dimension.height,
                                let length = dimension.length {
                                let box = self.createBoundingBox(width: CGFloat(w) / 100,
                                                            height: CGFloat(h) / 100,
                                                            length: CGFloat(length) / 100)
                                let vo = KZSVirtualObject()
                                vo.addChildNode(box)
                                
                                //vo.load()
                                //insertVirtalObject(virtualObject: vo)
                                node.addChildNode(box)
                            }
                        }
                    }
                }
            }
        }
    }
    
    func KZSARDetected(_ renderer: SCNSceneRenderer, didAdd node: SCNNode, image anchor: ARImageAnchor) {
        print(#function + ": \(anchor.referenceImage.name ?? "")")
    }
}
