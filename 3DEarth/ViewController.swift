//
//  ViewController.swift
//  3DEarth
//
//  Created by Игорь Талов on 10/12/2017.
//  Copyright © 2017 IgorTalov. All rights reserved.
//

import UIKit
import SceneKit

class ViewController: UIViewController {

    @IBOutlet weak var sceneKitView: SCNView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let scene = SCNScene()
        
        let cameraNode = SCNNode()
        cameraNode.camera = SCNCamera()
        scene.rootNode.addChildNode(cameraNode)
        
        let stars = SCNParticleSystem(named: "StarsParticle.scnp", inDirectory: nil)!
        scene.rootNode.addParticleSystem(stars)
        
        let sceneView = self.sceneKitView
        
        sceneView?.scene = scene
        sceneView?.showsStatistics = true
        sceneView?.backgroundColor = UIColor.black
        sceneView?.allowsCameraControl = true
        
    }

}

