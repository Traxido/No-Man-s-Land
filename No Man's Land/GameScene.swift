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
        let shirt = staticClothing.shirts.ivoryShirt
        let pants = staticClothing.pants.darkPants
        let sleeves = staticClothing.caucasianSleeves.caucasianSleeveIvory
        
        
        let player = Human.init(Name: "George", Race: "caucasian", Gender: "Male", pShirt: redShirt, pPants: Pants(), pSleeves: Sleeves(), pAccessory: nil, zPos: 1)
        player.position = CGPoint(x: 0, y: 0)
        self.addChild(player)
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        cameraNode.update()
    }
}
