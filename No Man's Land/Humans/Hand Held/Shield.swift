//
//  Shield.swift
//  No Man's Land
//
//  Created by Andrew Sheron on 12/22/19.
//  Copyright © 2019 Andrew Sheron. All rights reserved.
//

import UIKit
import SpriteKit

class Shield: SKSpriteNode {
    var imageName = String()
    var chanceOfNoHit = 1
    var staticImage = SKTexture()
    var runningAnimation: [SKTexture] = []
    var blockingAnimation: [SKTexture] = []
    
    convenience init(image: String, chance: Int) {
        self.init()
        
        staticImage = SKTexture.init(imageNamed: image)
        imageName = image
        chanceOfNoHit = chance
        
        for i in 0...3 {
            runningAnimation.append(SKTexture.init(imageNamed: "\(image)Running\(i)"))
            blockingAnimation.append(SKTexture.init(imageNamed: "\(image)Block\(i)"))
        }
        
    }
    
    func animate(animation: String) {
        
        var animate = SKAction()
        
        if animation == "run" {
            animate = SKAction.animate(with: runningAnimation, timePerFrame: 0.15)
            self.run(.repeatForever(animate))
        } else if animation == "block" {
            animate = SKAction.animate(with: blockingAnimation, timePerFrame: 0.15)
            self.run(.repeatForever(animate))
        } else if animation == "idle" {
            self.removeAllActions()
            self.texture = staticImage
        }
    }
    
    override func copy(with zone: NSZone? = nil) -> Any {
        let copy = Shield.init(image: imageName, chance: chanceOfNoHit)
        return copy
    }
}
