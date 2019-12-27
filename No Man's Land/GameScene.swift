//
//  GameScene.swift
//  No Man's Land
//
//  Created by Andrew Sheron on 12/18/19.
//  Copyright © 2019 Andrew Sheron. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene, SKPhysicsContactDelegate {
    
    let cameraNode: Camera!
    let gameLayer: SKNode!
    
    var player = Human()
    
    override init(size: CGSize) {
        gameLayer = SKNode()
        gameLayer.position = CGPoint(x: 0, y: 0)
        cameraNode = Camera()
        cameraNode.showScale()
        cameraNode.showPosition()
        cameraNode.showViewport()
        super.init(size: size)
        
        addChild(cameraNode)
        camera = cameraNode
        
        addChild(gameLayer)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("Coder not used in this app")
    }
    
    override func didMove(to view: SKView) {
        self.physicsWorld.contactDelegate = self
        player = Human.init(Name: "Andrew", Race: "caucasian", Gender: "Male", pShirt: darkBrownShirt, pPants: darkPants, pSleeves: caucasianSleeveLightRed, zPos: 1, player: true)
        player.knightHuman(random: false, Weapon: ironSword, Shield: ironShield, OverCoat: redOverCoat, Armor: ironArmor2, Helmet: ironHelmet5)
        player.physicsBody = SKPhysicsBody(circleOfRadius: 12)
        player.physicsBody?.affectedByGravity = false
        player.physicsBody?.allowsRotation = false
        player.physicsBody?.categoryBitMask = physicsCategory.player
        player.physicsBody?.collisionBitMask = physicsCategory.human
        player.physicsBody?.contactTestBitMask = physicsCategory.human
        
        self.addChild(player)
        
        for _ in 0...1 {
            createRandomPerson()
        }
    }
    
    func createRandomPerson() {
        var race = String()
        let r = Int(arc4random_uniform(UInt32(2)))
        
        if r == 0 {
            race = "caucasian"
        } else {
            race = "africanAmerican"
        }
        
        var gender = String()
        let g = Int(arc4random_uniform(UInt32(2)))
        
        if g == 0 {
            gender = "Male"
        } else {
            gender = "Female"
        }
        
        var human = Human()
        let rShirt = getRandomShirt()
        let rSleeves = getRandomSleeves(race: race)
        let rPants = getRandomPants()
        
        human = Human.init(Name: "George", Race: race, Gender: gender, pShirt: rShirt, pPants: rPants, pSleeves: rSleeves, zPos: 1, player: false)
        human.knightHuman(random: false, Weapon: getRandomWeapon(), Shield: nil, OverCoat: greenOverCoat, Armor: ironArmor1, Helmet: ironHelmet6)
        human.position = cameraNode.position
        
        human.physicsBody = SKPhysicsBody(circleOfRadius: 8)
        human.physicsBody?.affectedByGravity = false
        human.physicsBody?.allowsRotation = false
        human.physicsBody?.categoryBitMask = physicsCategory.human
        human.physicsBody?.collisionBitMask = physicsCategory.player | physicsCategory.human
        human.physicsBody?.contactTestBitMask = physicsCategory.player
        
        self.addChild(human)
    }
    
    
    func touchDown(atPoint pos : CGPoint) {
        
    }
    
    func touchMoved(toPoint pos : CGPoint) {
        
    }
    
    func touchUp(atPoint pos : CGPoint) {
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in (touches) {
            let location = touch.location(in: self)
            //let targetNode = atPoint(location)
            print("touch")
            player.move(location)
        }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    func getRandomTool() {
        
    }
    
    func getRandomWeapon() {
        
    }
    
    func getRandomShirt() -> Shirt {
        let i = Int(arc4random_uniform(UInt32(villagerShirts.count)))
        let shirt = villagerShirts[i]
        return shirt
    }
    
    func getRandomSleeves(race: String) -> Sleeves {
        if race == "caucasian" {
            let i = Int(arc4random_uniform(UInt32(caucasianVillagerSleeves.count)))
            let sleeves = caucasianVillagerSleeves[i]
            return sleeves
        } else if race == "africanAmerican" {
            let i = Int(arc4random_uniform(UInt32(africanAmericanVillagerSleeves.count)))
            let sleeves = africanAmericanVillagerSleeves[i]
            return sleeves
        } else {
            return Sleeves()
        }
    }
    
    func getRandomPants() -> Pants {
        let i = Int(arc4random_uniform(UInt32(allPants.count)))
        let pants = allPants[i]
        return pants
    }
    
    func getRandomWeapon() -> Weapon {
        let i = Int(arc4random_uniform(UInt32(allWeapons.count)))
        let weapon = allWeapons[i]
        return weapon
    }
    
    override func update(_ currentTime: TimeInterval) {
        cameraNode.update()
    }
    
    func didBegin(_ contact: SKPhysicsContact) {
        let firstBody = contact.bodyA.node!
        let secondBody = contact.bodyB.node!
        
        
        
//        if (firstBody.name == "humanAwareness") && (secondBody.name == "player") {
//            player.move(firstBody.parent!.position)
//        } else if (firstBody.name == "player") && (secondBody.name == "humanAwareness") {
//            player.move(secondBody.parent!.position)
//        }
//
//        if (firstBody.name == "playerAwareness") && (secondBody.name == "human") {
//            print("Hit3")
//        } else if (firstBody.name == "human") && (secondBody.name == "playerAwareness") {
//            print("Hit4")
//        }
    }
}
