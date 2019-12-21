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
    
    var iName = String()
    
    convenience init(imageName: String) {
        self.init()
        iName = imageName
    }
        
        var runningAnimation : [SKTexture] = []
        var attackingAnimation : [SKTexture] = []
        var idleAnimation : [SKTexture] = []
        var deathAnimation : [SKTexture] = []
        
        func animate(animation: String) {
            
            var animate = SKAction()
            
            switch animation {
            case "run":
                animate = SKAction.animate(with: runningAnimation, timePerFrame: 0.15)
            default:
                self.removeAllActions()
                self.texture = SKTexture.init(imageNamed: iName)
            }
            self.run(.repeatForever(animate))
        }
}

class Helmet: Clothing {
    
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
    
}

class Shirt: Clothing {
    
}

class Pants: Clothing {
    
}
