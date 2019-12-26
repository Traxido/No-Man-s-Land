//
//  Sword.swift
//  No Man's Land
//
//  Created by Andrew Sheron on 12/22/19.
//  Copyright © 2019 Andrew Sheron. All rights reserved.
//

import UIKit
import SpriteKit

class Weapon: SKSpriteNode {
    var imageName = String()
    var weaponDamage = Int()
    var swingAnimation : [SKTexture] = []
    var runningAnimation : [SKTexture] = []
    var staticImage : SKTexture = SKTexture()
    
    convenience init(image: String, damage: Int) {
        self.init()
        staticImage = SKTexture.init(imageNamed: image)
        self.texture = staticImage
        weaponDamage = damage
        imageName = image
        
        for i in 0...3 {
            runningAnimation.append(SKTexture.init(imageNamed: "\(image)Running\(i)"))
            swingAnimation.append(SKTexture.init(imageNamed: "\(image)Attack\(i)"))
        }
    }
    
    func animate(animation: String) {
        
        var animate = SKAction()
        
        if animation == "attack" && swingAnimation != [] {
            animate = SKAction.animate(with: swingAnimation, timePerFrame: 0.15)
            self.run(animate)
        } else if animation == "run" && runningAnimation != []  {
            animate = SKAction.animate(with: runningAnimation, timePerFrame: 0.15)
            self.run(.repeatForever(animate))
        } else if animation == "idle" {
            self.removeAllActions()
            self.texture = staticImage
        }
        
    }
    
    override func copy(with zone: NSZone? = nil) -> Any {
        let copy = Weapon.init(image: imageName, damage: weaponDamage)
        return copy
    }
}

var sword = Weapon.init(image: "ironSword", damage: 10)
