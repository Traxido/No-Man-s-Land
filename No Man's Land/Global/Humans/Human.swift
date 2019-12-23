//
//  Human.swift
//  No Man's Land
//
//  Created by Andrew Sheron on 12/19/19.
//  Copyright © 2019 Andrew Sheron. All rights reserved.
//

import UIKit
import SpriteKit

class Human: SKSpriteNode {
    
    let originalSize = CGSize(width: 32, height: 32)
    var startingZPos: CGFloat?
    
    var localHead = Head()
    var localSleeves = Sleeves()
    var localShirt = Shirt()
    var localPants = Pants()
    var localAccessory = Clothing()
    var tool = SKSpriteNode()
    var job = String()
    
    var nickName : String?
    var health : Int?
    var inventory : [Item] = []
    var race : String?
    var gender : String?
    var willPickUp: [Item] = []
    
    convenience init(Name: String, Race: String, Gender: String, pShirt: Shirt, pPants: Pants, pSleeves: Sleeves, zPos: CGFloat) {
        self.init()
        
        self.zPosition = zPos
        self.nickName = Name
        self.race = Race
        self.gender = Gender
        
        localHead = Head.init(staticT: SKTexture.init(imageNamed: "\(Race)\(Gender)Head"))
        localHead.size = originalSize
        localHead.position = CGPoint(x: 0, y: 0)
        localHead.zPosition = zPos + 5
        self.addChild(localHead)
        
        localSleeves = pSleeves.copy() as! Sleeves
        localSleeves.size = originalSize
        localSleeves.position = CGPoint(x: 0, y: 0)
        localSleeves.zPosition = zPos + 4
        self.addChild(localSleeves)
        
        localShirt = pShirt.copy() as! Shirt
        localShirt.size = originalSize
        localShirt.position = CGPoint(x: 0, y: 0)
        localShirt.zPosition = zPos + 2
        self.addChild(localShirt)
        
        localPants = pPants.copy() as! Pants
        localPants.size = originalSize
        localPants.position = CGPoint(x: 0, y: 0)
        localPants.zPosition = zPos + 1
        self.addChild(localPants)
        
    }
    
    func assignJob(tool: Tool) {
        if tool.type == "hammer" {
        } else if tool.type == "axe" {
            
        } else if tool.type == "scythe" {
            
        }
        update()
    }
    
    func pickUp(_ item: Item) {
        inventory.append(item)
        item.removeAllActions()
        item.removeFromParent()
    }
    
    func update() {
        
    }
    
    func move(_ point: CGPoint) {
        localHead.animate(animation: "run")
        localShirt.animate(animation: "run")
        localSleeves.animate(animation: "run")
        localPants.animate(animation: "run")
        
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
        localHead.removeAllActions()
        localShirt.removeAllActions()
        localSleeves.removeAllActions()
        localPants.removeAllActions()
    }
}
