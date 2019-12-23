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
    
    var staticImage = SKTexture()
    
    var runningAnimation : [SKTexture] = []
    var attackingAnimation : [SKTexture] = []
    var idleAnimation : [SKTexture] = []
    var deathAnimation : [SKTexture] = []
    
    convenience init(staticT: SKTexture) {
        self.init()
        staticImage = staticT
        
        
        for i in 0...4 {
            runningAnimation.append(SKTexture.init(imageNamed: "\(staticT)Running\(i)"))
            attackingAnimation.append(SKTexture.init(imageNamed: "\(staticT)attack\(i)"))
            idleAnimation.append(SKTexture.init(imageNamed: "\(staticT)idle\(i)"))
            deathAnimation.append(SKTexture.init(imageNamed: "\(staticT)dying\(i)"))
            print("Setting Up Animations for \(staticT)")
        }
        print(runningAnimation)
        
        self.texture = staticT
    }
        
        func animate(animation: String) {
            
            var animate = SKAction()
            
            switch animation {
            case "run":
                animate = SKAction.animate(with: runningAnimation, timePerFrame: 0.15)
            case "attack":
                animate = SKAction.animate(with: attackingAnimation, timePerFrame: 0.15)
            case "idle":
                animate = SKAction.animate(with: idleAnimation, timePerFrame: 0.15)
            case "die":
                animate = SKAction.animate(with: deathAnimation, timePerFrame: 0.15)
            default:
                self.removeAllActions()
                self.texture = staticImage
            }
            self.run(.repeatForever(animate))
        }
}

class Helmet: Clothing {
    var blockPercentage: CGFloat = 1
}

class Head: Clothing {
    
}

class Sleeves: Clothing {
    
}

class Armor: Clothing {
    var blockPercentage: CGFloat = 1
}

class LongCoat: Clothing {
    
}

class BackPack: Clothing {
    var capacity = 10
}

class Shirt: Clothing {
    
}

class Pants: Clothing {
    
}
