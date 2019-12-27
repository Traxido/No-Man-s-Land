//
//  Human.swift
//  No Man's Land
//
//  Created by Andrew Sheron on 12/19/19.
//  Copyright © 2019 Andrew Sheron. All rights reserved.
//

import UIKit
import SpriteKit

class Human: SKSpriteNode, SKPhysicsContactDelegate {
    
    var moveRandom: Timer? = nil
    var lookAround: Timer? = nil
    var reverseLookAround: Timer? = nil
    var attackTimer: Timer? = nil
    
    let originalSize = CGSize(width: 32, height: 32)
    var startingZPos = CGFloat()
    
    var metabolism = TimeInterval()
    var awarenessCircle = SKShapeNode()
    var awareness = 160
    
    var localHead = Head()
    var localHelmet = Helmet()
    var localSleeves = Sleeves()
    var localShirt = Shirt()
    var localPants = Pants()
    var localAccessory = Accessory()
    var localBag = BackPack()
    var localArmor = Armor()
    var tool = SKSpriteNode()
    var job = String()
    
    var localWeapon = Weapon()
    var localShield = Shield()
    
    var nickName = String()
    var totalHealth = Int()
    var health = Int()
    var inventory : [Item] = []
    var inventoryCount = 10
    var race = String()
    var gender = String()
    var willPickUp: [Item] = []
    
    var isMoving = false
    
    convenience init(Name: String, Race: String, Gender: String, pShirt: Shirt, pPants: Pants, pSleeves: Sleeves, zPos: CGFloat, player: Bool) {
        self.init()
        
        let randM = TimeInterval(arc4random_uniform(500))/100
        metabolism = TimeInterval(3 + randM)
        self.moveRandom = Timer.scheduledTimer(timeInterval: metabolism, target: self, selector: #selector(moveRandomly), userInfo: nil, repeats: true)
        
        self.zPosition = zPos
        self.nickName = Name
        self.race = Race
        self.gender = Gender
        
        localHead = Head.init(image: "\(Race)\(Gender)Head")
        createLayer(layer: localHead, zPos: zpos.Head)
        
        localSleeves = pSleeves.copy() as! Sleeves
        localSleeves.runningAnimation = pSleeves.runningAnimation
        localSleeves.staticImage = pSleeves.staticImage
        createLayer(layer: localSleeves, zPos: zpos.Sleeves)
        
        localShirt = pShirt.copy() as! Shirt
        localShirt.staticImage = pShirt.staticImage
        createLayer(layer: localShirt, zPos: zpos.Shirt)
        
        localPants = pPants.copy() as! Pants
        localPants.runningAnimation = pPants.runningAnimation
        localPants.staticImage = pPants.staticImage
        createLayer(layer: localPants, zPos: zpos.Pants)
        
//        awarenessCircle = SKShapeNode.init(circleOfRadius: CGFloat(awareness))
//        awarenessCircle.position = CGPoint(x: 0, y: 0)
//        awarenessCircle.zPosition = 0
//        awarenessCircle.physicsBody = SKPhysicsBody(circleOfRadius: CGFloat(awareness))
//        awarenessCircle.physicsBody?.affectedByGravity = false
//        awarenessCircle.physicsBody?.allowsRotation = false
//
//        if player == false {
//            awarenessCircle.physicsBody?.categoryBitMask = physicsCategory.humanAwareness
//            awarenessCircle.physicsBody?.collisionBitMask = 0
//            awarenessCircle.physicsBody?.contactTestBitMask = physicsCategory.player
//            awarenessCircle.name = "humanAwareness"
//            self.name = "human"
//        } else if player == true {
//            awarenessCircle.physicsBody?.categoryBitMask = physicsCategory.playerAwareness
//            awarenessCircle.physicsBody?.collisionBitMask = 0
//            awarenessCircle.physicsBody?.contactTestBitMask = physicsCategory.human
//            awarenessCircle.name = "playerAwareness"
//            self.name = "player"
//        }
//    addChild(awarenessCircle)
}

    func knightHuman(random: Bool, Weapon: Weapon?, Shield: Shield?, OverCoat: Accessory?, Armor: Armor?, Helmet: Helmet?) {
        if let Weapon = Weapon {
            localWeapon = Weapon.copy() as! Weapon
            createLayer(layer: localWeapon, zPos: zpos.Weapon)
        }
        if let Shield = Shield {
            localShield = Shield.copy() as! Shield
            createLayer(layer: localShield, zPos: zpos.Shield)
        }
        
        if let OverCoat = OverCoat {
            localAccessory = OverCoat.copy() as! Accessory
            createLayer(layer: localAccessory, zPos: zpos.Accessory)
        }
        
        if let Armor = Armor {
            localArmor = Armor.copy() as! Armor
            createLayer(layer: localArmor, zPos: zpos.Armor)
        }
        
        if let Helmet = Helmet {
            localHelmet = Helmet.copy() as! Helmet
            createLayer(layer: localHelmet, zPos: startingZPos + zpos.Hat)
        }
        update()
    }
    
    func createLayer(layer: SKSpriteNode, zPos: CGFloat) {
        layer.size = originalSize
        layer.position = CGPoint(x: 0, y: 0)
        layer.zPosition = startingZPos + zPos
        self.addChild(layer)
    }
    
    func equipWeapon(weapon: Weapon) {
        
    }
    
    func assignJob(tool: Tool) {
        if tool.toolType == "hammer" {
        } else if tool.toolType == "axe" {
            
        } else if tool.toolType == "scythe" {
            
        }
        update()
    }
    
    func pickUp(_ item: Item) {
        inventory.append(item)
        item.removeAllActions()
        item.removeFromParent()
    }
    
    func checkDistances() {
        
    }
    
    func update() {
        totalHealth = (localArmor.health + localHelmet.health + 100)
        inventoryCount = (localBag.capacity + 10)
        if localArmor.imageName == ironArmor2.imageName {
            localSleeves.removeFromParent()
            localSleeves = armoredSleeves.copy() as! Sleeves
            createLayer(layer: localSleeves, zPos: zpos.Sleeves)
        }
    }
    
    @objc func moveRandomly() {
        if isMoving == false {
            let moveYN = Int(arc4random_uniform(1))
            
            if moveYN == 0 {
            
            var randX = Int(arc4random_uniform(100))
            var randY = Int(arc4random_uniform(100))
            
            let randNegX = Int(arc4random_uniform(2))
            let randNegY = Int(arc4random_uniform(2))
            
            if randNegX == 0 {
                //Negative X
                randX *= -1
            }
            if randNegY == 0 {
                //Negative Y
                randY *= -1
            }
            self.move(CGPoint(x: (self.position.x + CGFloat(randX)), y: (self.position.y + CGFloat(randY))))
        }
        }
    }
    
    @objc func headLookAround() {
        if isMoving == false {
            let rand = Int(arc4random_uniform(3))
            if rand == 0 {
                localHead.xScale = abs(self.xScale) * -1
                localHelmet.xScale = abs(self.xScale) * -1
                self.reverseLookAround = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(headNormal), userInfo: nil, repeats: false)
            }
        }
    }
    
    @objc func headNormal() {
        localHead.xScale = abs(self.xScale) * 1
        localHelmet.xScale = abs(self.xScale) * 1
    }
    
    func move(_ point: CGPoint) {
        self.removeAllActions()
        awarenessCircle.position = CGPoint(x: 0, y: 0)
        headNormal()
        isMoving = true
        
        localHelmet.animate(animation: "run")
        localHead.animate(animation: "run")
        localSleeves.animate(animation: "run")
        localPants.animate(animation: "run")
        localShield.animate(animation: "run")
        localWeapon.animate(animation: "run")
        
        var multiplierForDirection = CGFloat()
        let manSpeed = 128
        let moveDifference = CGPoint(x: point.x - self.position.x, y: point.y - self.position.y)
        let distanceToMove = sqrt(moveDifference.x * moveDifference.x + moveDifference.y * moveDifference.y)
        let moveDuration = distanceToMove / CGFloat(manSpeed)
        if moveDifference.x < 0 {
            multiplierForDirection = 1.0
        } else {
            multiplierForDirection = -1.0
        }
        
        self.xScale = abs(self.xScale) * multiplierForDirection
        self.run(.sequence([.move(to: point, duration: TimeInterval(moveDuration))]), completion: idle)
    }
    
    func idle() {
        self.removeAllActions()
        isMoving = false
        localHelmet.animate(animation: "idle")
        localHead.animate(animation: "idle")
        localSleeves.animate(animation: "idle")
        localPants.animate(animation: "idle")
        localShirt.animate(animation: "idle")
        localShield.animate(animation: "idle")
        localWeapon.animate(animation: "idle")
        
        self.lookAround = Timer.scheduledTimer(timeInterval: metabolism/2, target: self, selector: #selector(headLookAround), userInfo: nil, repeats: false)
    }
}
