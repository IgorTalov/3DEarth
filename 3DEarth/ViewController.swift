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
        cameraNode.position = SCNVector3(x:0, y:0, z: 5)
        scene.rootNode.addChildNode(cameraNode)
        
        let lightNode = SCNNode()
        lightNode.light = SCNLight()
        lightNode.light?.type = .omni
        lightNode.position = SCNVector3(x:0, y:10, z: 2)
        
        scene.rootNode.addChildNode(lightNode)
        
        let stars = SCNParticleSystem(named: "StarsParticle.scnp", inDirectory: nil)!
        scene.rootNode.addParticleSystem(stars)
        
        let earthNode = EarthNode()
        scene.rootNode.addChildNode(earthNode)
        
        let sceneView = self.sceneKitView
        
        sceneView?.scene = scene
        sceneView?.showsStatistics = true
        sceneView?.backgroundColor = UIColor.black
        sceneView?.allowsCameraControl = true
        
    }

}

