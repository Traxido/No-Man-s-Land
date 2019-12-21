//
//  GameViewController.swift
//  No Man's Land
//
//  Created by Andrew Sheron on 12/18/19.
//  Copyright © 2019 Andrew Sheron. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController, UIGestureRecognizerDelegate {
    
        var scene: GameScene!
        let panGesture = UIPanGestureRecognizer()
        let pinchGesture = UIPinchGestureRecognizer()
        
        override func viewDidLoad() {
            // Configure the view.
            let skView = self.view as! SKView
            skView.ignoresSiblingOrder = true
            skView.showsFPS = true
            skView.showsNodeCount = true
            
            // Configure the scene.
            scene = GameScene(size: skView.bounds.size)
            scene.scaleMode = .resizeFill
            scene.backgroundColor = colors.grassGreen
            
            // Configure the pan gesture recognizer
            panGesture.addTarget(self, action: #selector(handlePanGesture(recognizer:)))
            panGesture.delegate = self
            self.view.addGestureRecognizer(panGesture)
            
            // Configure the pinch gesture recognizer
            pinchGesture.addTarget(self, action: #selector(handlePinchGesture(recognizer:)))
            self.view.addGestureRecognizer(pinchGesture)
            
            // Present the scene.
            skView.presentScene(scene)
        }
        override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            // use stop to give the effect of pinning the camera under your finger when touching the screen.
            scene.cameraNode.stop()
        }
        
        @objc func handlePanGesture(recognizer: UIPanGestureRecognizer) {
            // Update the camera's position velocity based on user interaction.
            // The velocity of the recognizer is much larger than what feels comfortable to the user, so it is reduced by a factor of 100.
            // If your game needs a faster or slower camera feel reduce or increase the number that velocity is being divided by.
            let panVelocity = (recognizer.velocity(in: scene.view))
            scene.cameraNode.setCameraPositionVelocity(x: panVelocity.x / 100, y: panVelocity.y / 100)
        }
        
        @objc func handlePinchGesture(recognizer: UIPinchGestureRecognizer) {
            // Update the camera's scale velocity based on user interaction.
            // Recognizer velocity is reduced to provide a more pleasant user experience.
            // Increase or decrease the divisor to create a faster or slower camera.
            let pinchVelocity = recognizer.velocity
            scene.cameraNode.setCameraScaleVelocity(z: pinchVelocity / 100)
        }
        
        func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer,
                               shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool {
            // Since this demo only configures two gesture recognizers and we want them to work simultaneously we only need to return true.
            // If additional gesture recognizers are added there could be a need to add aditional logic here to setup which specific
            // recognizers should be working together.
            return true;
        }
        
        override var prefersStatusBarHidden: Bool {
            return true
        }
    }
