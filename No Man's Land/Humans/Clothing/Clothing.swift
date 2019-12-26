//
//  Pants.swift
//  No Man's Land
//
//  Created by Andrew Sheron on 12/19/19.
//  Copyright © 2019 Andrew Sheron. All rights reserved.
//

import UIKit
import SpriteKit

class Clothing: SKSpriteNode {
    
    var imageName = String()
    var staticImage = SKTexture()
    
    var runningAnimation : [SKTexture] = []
    var attackingAnimation : [SKTexture] = []
    var idleAnimation : [SKTexture] = []
    var deathAnimation : [SKTexture] = []
    
    convenience init(image: String) {
        self.init()
        imageName = image
        staticImage = SKTexture.init(imageNamed: image)
        
        for i in 0...3 {
            runningAnimation.append(SKTexture.init(imageNamed: "\(image)Running\(i)"))
            attackingAnimation.append(SKTexture.init(imageNamed: "\(image)attack\(i)"))
            //            idleAnimation.append(SKTexture.init(imageNamed: "\(image)idle\(i)"))
            //            deathAnimation.append(SKTexture.init(imageNamed: "\(image)dying\(i)"))
        }
        self.texture = staticImage
    }
    
    func animate(animation: String) {
        var animate = SKAction()
        
        if animation == "run" && runningAnimation != [] {
            animate = SKAction.animate(with: runningAnimation, timePerFrame: 0.15)
            self.run(.repeatForever(animate))
        } else if animation == "attack" && attackingAnimation != [] {
            animate = SKAction.animate(with: attackingAnimation, timePerFrame: 0.15)
            self.run(.repeatForever(animate))
        } else if animation == "death" && deathAnimation != [] {
            animate = SKAction.animate(with: deathAnimation, timePerFrame: 0.15)
            self.run(.repeatForever(animate))
        } else if animation == "idle" {
            self.removeAllActions()
            self.texture = staticImage
        }
    }
}

