//
//  Pants.swift
//  No Man's Land
//
//  Created by Andrew Sheron on 12/19/19.
//  Copyright © 2019 Andrew Sheron. All rights reserved.
//

import UIKit
import SpriteKit

var redShirt = Shirt.init(staticT: staticClothing.shirts.redShirt, run: nil, attack: nil, idle: nil, death: nil)

class Clothing: SKSpriteNode {
    
    var staticImage = SKTexture()
    
    convenience init(staticT: SKTexture, run: [SKTexture]?, attack: [SKTexture]?, idle: [SKTexture]?, death: [SKTexture]?) {
        self.init()
        staticImage = staticT
        runningAnimation = run ?? [staticT]
        attackingAnimation = attack ?? [staticT]
        idleAnimation = idle ?? [staticT]
        deathAnimation = death ?? [staticT]
        
        self.texture = staticT
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
