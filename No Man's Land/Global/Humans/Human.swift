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
    
    var head = Head()
    var sleeves = Sleeves()
    var shirt = Shirt()
    var pants = Pants()
    var accessory = Clothing()
    
    convenience init(Name: String, Race: String, Gender: String, Shirt: Shirt, Pants: Pants, Sleeves: Sleeves, Accessory: Clothing?, zPos: CGFloat) {
        self.init()
        
        self.zPosition = zPos
        self.nickName = Name
        self.race = Race
        self.gender = Gender
        
    }
    
    var nickName : String?
    var health : Int?
    var inventory : [Item]?
    var race : String?
    var gender : String?
    
    func move(toPoint: CGPoint) {
        
    }
    
}
