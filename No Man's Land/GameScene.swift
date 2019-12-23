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
        
        for _ in 0...22 {
            player = Human.init(Name: "George", Race: "caucasian", Gender: "Male", pShirt: ivoryShirt, pPants: brownPants, pSleeves: caucasianSleeveIvory, zPos: 1)
            player.position = cameraNode.position
            self.addChild(player)
        }
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
            let targetNode = atPoint(location)
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
        let i = Int(arc4random_uniform(UInt32(allShirts.count)))
        let shirt = allShirts[i]
        return shirt.copy() as! Shirt
    }
    
    func getRandomPants() -> Pants {
        let i = Int(arc4random_uniform(UInt32(allPants.count)))
        let pants = allShirts[i]
        return pants.copy() as! Pants
    }
    
    
    
    
    override func update(_ currentTime: TimeInterval) {
        cameraNode.update()
    }
}
