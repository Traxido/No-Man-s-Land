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
    
    var moveRandom: Timer? = nil
    var lookAround: Timer? = nil
    var reverseLookAround: Timer? = nil
    
    let originalSize = CGSize(width: 32, height: 32)
    var startingZPos: CGFloat?
    
    var metabolism = TimeInterval()
    
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
    
    var isMoving = false
    
    convenience init(Name: String, Race: String, Gender: String, pShirt: Shirt, pPants: Pants, pSleeves: Sleeves, zPos: CGFloat) {
        self.init()
        
        let randM = TimeInterval(arc4random_uniform(500))/100
        print("Metabolism Rate: \(randM)")
        metabolism = TimeInterval(3 + randM)
        
        self.moveRandom = Timer.scheduledTimer(timeInterval: metabolism, target: self, selector: #selector(moveRandomly), userInfo: nil, repeats: true)
        
        self.zPosition = zPos
        self.nickName = Name
        self.race = Race
        self.gender = Gender
        
        localHead = Head.init(image: "\(Race)\(Gender)Head")
        localHead.size = originalSize
        localHead.position = CGPoint(x: 0, y: 0)
        localHead.zPosition = zPos + 5
        self.addChild(localHead)
        
        localSleeves = pSleeves.copy() as! Sleeves
        localSleeves.runningAnimation = pSleeves.runningAnimation
        localSleeves.staticImage = pSleeves.staticImage
        localSleeves.size = originalSize
        localSleeves.position = CGPoint(x: 0, y: 0)
        localSleeves.zPosition = zPos + 4
        self.addChild(localSleeves)
        
        localShirt = pShirt.copy() as! Shirt
        localShirt.staticImage = pShirt.staticImage
        localShirt.size = originalSize
        localShirt.position = CGPoint(x: 0, y: 0)
        localShirt.zPosition = zPos + 2
        self.addChild(localShirt)
        
        localPants = pPants.copy() as! Pants
        localPants.runningAnimation = pPants.runningAnimation
        localPants.staticImage = pPants.staticImage
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
    
    @objc func moveRandomly() {
        if isMoving == false {
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
    
    @objc func headLookAround() {
        if isMoving == false {
            let rand = Int(arc4random_uniform(3))
            if rand == 0 {
                localHead.xScale = abs(self.xScale) * -1
                self.reverseLookAround = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(headNormal), userInfo: nil, repeats: false)
            }
        }
    }
    
    @objc func headNormal() {
        localHead.xScale = abs(self.xScale) * 1
    }
    
    func move(_ point: CGPoint) {
        self.removeAllActions()
        headNormal()
        isMoving = true
        localHead.animate(animation: "run")
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
        isMoving = false
        localHead.animate(animation: "idle")
        localSleeves.animate(animation: "idle")
        localPants.animate(animation: "idle")
        localShirt.animate(animation: "idle")
        self.lookAround = Timer.scheduledTimer(timeInterval: metabolism/2, target: self, selector: #selector(headLookAround), userInfo: nil, repeats: false)
    }
}
