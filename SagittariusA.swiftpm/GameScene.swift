//
//  File.swift
//  SagittariusA
//
//  Created by PATRICIA S SIQUEIRA on 22/04/22.
//

import SwiftUI
import SceneKit

struct GameScene: UIViewRepresentable {
    
    let scnView = SCNView(frame: CGRect(origin: .zero, size:.init(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 2)))
    
    func makeUIView(context: Context) -> SCNView {
        let scene = SCNScene()
           scnView.scene = scene
           scene.background.contents = UIImage(named: "back")

           let camNode = SCNNode()
           camNode.camera = SCNCamera()
           scene.rootNode.addChildNode(camNode)
           camNode.position = SCNVector3(0,0,100)

           scene.addParticleSystem(BlackHole.getBlackHole(), transform: SCNMatrix4MakeRotation(0 , 0, 0, 0))
           scene.rootNode.addChildNode(BlackHole.fieldVortex())

           scnView.allowsCameraControl = true

           scnView.autoenablesDefaultLighting = true
        
           scnView.backgroundColor = UIColor.black

        return scnView
    }

    func updateUIView(_ scnView: SCNView, context: Context) {
    }
}

#if DEBUG
struct GameScene_Previews : PreviewProvider {
    static var previews: some View {
        GameScene()
    }
}
#endif

