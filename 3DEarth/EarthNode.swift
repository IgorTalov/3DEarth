//
//  EarthNode.swift
//  3DEarth
//
//  Created by Игорь Талов on 10/12/2017.
//  Copyright © 2017 IgorTalov. All rights reserved.
//

import UIKit
import SceneKit

class EarthNode: SCNNode {

    override init() {
        super.init()
        self.geometry = SCNSphere(radius: 1)
        self.geometry?.firstMaterial?.diffuse.contents = UIImage(named: "Diffuse")
        self.geometry?.firstMaterial?.specular.contents = UIImage(named: "Specular")
        self.geometry?.firstMaterial?.normal.contents = UIImage(named: "Normal")
        self.geometry?.firstMaterial?.emission.contents = UIImage(named: "Emission")
        
        self.geometry?.firstMaterial?.shininess = 50
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
