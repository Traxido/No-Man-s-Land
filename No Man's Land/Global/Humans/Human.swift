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
    
    let originalSize = CGSize(width: 64, height: 64)
    var startingZPos: CGFloat?
    
    var localHead = Head()
    var localSleeves = Sleeves()
    var localShirt = Shirt()
    var localPants = Pants()
    var localAccessory = Clothing()
    
    convenience init(Name: String, Race: String, Gender: String, pShirt: Shirt, pPants: Pants, pSleeves: Sleeves, pAccessory: Clothing?, zPos: CGFloat) {
        self.init()
        
        self.zPosition = zPos
        self.nickName = Name
        self.race = Race
        self.gender = Gender
        
        localShirt = pShirt.copy() as! Shirt
        localShirt.size = originalSize
        localShirt.position = CGPoint(x: 0, y: 0)
        self.addChild(localShirt)
    }
    
    func analyzeClothing(clothing: Clothing) {
        
    }
    
    var nickName : String?
    var health : Int?
    var inventory : [Item]?
    var race : String?
    var gender : String?
    
    func move(toPoint: CGPoint) {
        
    }
    
}
