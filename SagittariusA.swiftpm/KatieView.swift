//
//  File.swift
//  SagittariusA
//
//  Created by PATRICIA S SIQUEIRA on 23/04/22.
//

import SwiftUI
import SceneKit

struct KatieView: UIViewRepresentable {
    
    let scnView = SCNView(frame: CGRect(origin: .zero, size:.init(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 2)))
    
    func makeUIView(context: Context) -> SCNView {
        
        let scene = SCNScene()
        scnView.scene = scene
        scene.background.contents = UIImage(named: "back")
        
        let camNode = SCNNode()
        camNode.camera = SCNCamera()
        scene.rootNode.addChildNode(camNode)
        camNode.position = SCNVector3(0,0,18)
        scene.rootNode.addChildNode(camNode)

        let lightNode = SCNNode()
        lightNode.light = SCNLight()
        lightNode.light?.type = .probe
        lightNode.position = SCNVector3(x: 0, y: 0, z: 2)
        scene.rootNode.addChildNode(lightNode)
        
        let planetNode = SCNNode()
        planetNode.geometry = SCNSphere(radius: 1.7)
        planetNode.position = SCNVector3(3, 1, 5)
        planetNode.geometry?.firstMaterial?.diffuse.contents = UIImage(named: "mars")
        planetNode.geometry?.firstMaterial?.shininess = 3

        let action = SCNAction.rotate(by: 360 * CGFloat(Double.pi/180), around: SCNVector3(0, 0, 0), duration: 12)
        let repeatAction = SCNAction.repeatForever(action)
        planetNode.runAction(repeatAction)
        scene.rootNode.addChildNode(planetNode)

        let planetNode01 = SCNNode()
        planetNode01.geometry = SCNSphere(radius: 1.2)
        planetNode01.position = SCNVector3(-2, -2, -2)
        planetNode01.geometry?.firstMaterial?.diffuse.contents = UIImage(named: "uran")
        planetNode01.geometry?.firstMaterial?.shininess = 3
        planetNode01.runAction(repeatAction)
        scene.rootNode.addChildNode(planetNode01)

        let planetNode02 = SCNNode()
        planetNode02.geometry = SCNSphere(radius: 0.8)
        planetNode02.position = SCNVector3(-4, 5, -5)
        planetNode02.geometry?.firstMaterial?.diffuse.contents = UIImage(named: "venus")
        planetNode02.geometry?.firstMaterial?.shininess = 3
        planetNode02.runAction(repeatAction)
        scene.rootNode.addChildNode(planetNode02)

        let planetNode03 = SCNNode()
        planetNode03.geometry = SCNSphere(radius: 0.8)
        planetNode03.position = SCNVector3(7, 8, 5)
        planetNode03.geometry?.firstMaterial?.diffuse.contents = UIImage(named: "moon")
        planetNode03.geometry?.firstMaterial?.shininess = 3
        planetNode03.runAction(repeatAction)
        scene.rootNode.addChildNode(planetNode03)

        let planetNode04 = SCNNode()
        planetNode04.geometry = SCNSphere(radius: 0.4)
        planetNode04.position = SCNVector3(-7, -8, -9)
        planetNode04.geometry?.firstMaterial?.diffuse.contents = UIImage(named: "neptun")
        planetNode04.geometry?.firstMaterial?.shininess = 3
        planetNode04.runAction(repeatAction)
        scene.rootNode.addChildNode(planetNode04)

        let planetNode05 = SCNNode()
        planetNode05.geometry = SCNSphere(radius: 1.5)
        planetNode05.position = SCNVector3(10, 8, -9)
        planetNode05.geometry?.firstMaterial?.diffuse.contents = UIImage(named: "saturn")
        planetNode05.geometry?.firstMaterial?.shininess = 3
        planetNode05.runAction(repeatAction)

    let ringPlanet = SCNTorus(ringRadius:2.1 , pipeRadius: 0.03)
        let ringNode = SCNNode(geometry: ringPlanet)
        ringPlanet.firstMaterial?.diffuse.contents = UIImage(named: "saturnringcolor")
        ringPlanet.firstMaterial?.specular.contents = UIImage(named: "saturnringpattern")
        ringNode.runAction(SCNAction.repeatForever(SCNAction.rotate(by: 360 * CGFloat(Double.pi/180), around: SCNVector3(0, 1, 0), duration: 12)))
        planetNode05.addChildNode(ringNode)
        scene.rootNode.addChildNode(planetNode05)


        let particleSystem = SCNParticleSystem()
        particleSystem.particleImage = UIImage(named: "star")
        particleSystem.birthDirection = .random
        particleSystem.birthRate = 200
        particleSystem.particleLifeSpan = 0.8
        particleSystem.particleColor = .white
        particleSystem.particleSize = 0.02
        particleSystem.speedFactor = 0.2
        particleSystem.emittingDirection = SCNVector3(1,1,1)
        particleSystem.emitterShape = .some(SCNSphere(radius: 7))

        let particlesNode = SCNNode()
        particlesNode.scale = SCNVector3(2,2,2)
        particlesNode.addParticleSystem(particleSystem)
        scene.rootNode.addChildNode(particlesNode)

        scnView.allowsCameraControl = true

        scnView.autoenablesDefaultLighting = true

        return scnView
    }

    func updateUIView(_ scnView: SCNView, context: Context) {
    }
}

#if DEBUG
struct KatieView_Previews : PreviewProvider {
    static var previews: some View {
        KatieView()
    }
}
#endif

