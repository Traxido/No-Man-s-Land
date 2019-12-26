//
//  GameScene.swift
//  No Man's Land
//
//  Created by Andrew Sheron on 12/18/19.
//  Copyright © 2019 Andrew Sheron. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
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
        
        player = Human.init(Name: "Andrew", Race: "caucasian", Gender: "Male", pShirt: getRandomShirt(), pPants: getRandomPants(), pSleeves: getRandomSleeves(race: "caucasian"), zPos: 1)
        player.knightHuman(random: false, Weapon: nil, Shield: nil, OverCoat: redOverCoat, Armor: ironArmor1, Helmet: ironHelmet6)
        self.addChild(player)
        
        for _ in 0...100 {
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
        
        human = Human.init(Name: "George", Race: race, Gender: gender, pShirt: rShirt, pPants: rPants, pSleeves: rSleeves, zPos: 1)
        human.knightHuman(random: false, Weapon: nil, Shield: nil, OverCoat: redOverCoat, Armor: ironArmor1, Helmet: ironHelmet6)
        human.position = cameraNode.position
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
        let shirtt = villagerShirts[i]
        let localShirt = shirtt.copy() as! Shirt
        localShirt.staticImage = shirtt.staticImage
        return localShirt
    }
    
    func getRandomSleeves(race: String) -> Sleeves {
        if race == "caucasian" {
            let i = Int(arc4random_uniform(UInt32(caucasianVillagerSleeves.count)))
            let sleevest = caucasianVillagerSleeves[i]
            let localSleeves = sleevest.copy() as! Sleeves
            return localSleeves
        } else if race == "africanAmerican" {
            let i = Int(arc4random_uniform(UInt32(africanAmericanVillagerSleeves.count)))
            let sleevest = africanAmericanVillagerSleeves[i]
            let localSleeves = sleevest.copy() as! Sleeves
            return localSleeves
        } else {
            return Sleeves()
        }
    }
    
    func getRandomPants() -> Pants {
        let i = Int(arc4random_uniform(UInt32(allPants.count)))
        let pantst = allPants[i]
        let localPants = pantst.copy() as! Pants
        return localPants
    }
    
    
    
    override func update(_ currentTime: TimeInterval) {
        cameraNode.update()
    }
}
