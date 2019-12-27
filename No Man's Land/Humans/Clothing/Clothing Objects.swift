//
//  clothingClasses.swift
//  No Man's Land
//
//  Created by Andrew Sheron on 12/20/19.
//  Copyright © 2019 Andrew Sheron. All rights reserved.
//

import Foundation
import SpriteKit

var redShirt = Shirt.init(image: "redShirt")
var darkBrownShirt = Shirt.init(image: "darkBrownShirt")
var ivoryShirt = Shirt.init(image: "ivoryShirt")
var lightBrownShirt = Shirt.init(image: "lightBrownShirt")
var offBlackShirt = Shirt.init(image: "offBlackShirt")
var purpleShirt = Shirt.init(image: "purpleShirt")

var africanAmericanSleeveDarkBrown = Sleeves.init(image: "africanAmericanSleeveDarkBrown")
var africanAmericanSleeveIvory = Sleeves.init(image: "africanAmericanSleeveIvory")
var africanAmericanSleeveLightBrown = Sleeves.init(image: "africanAmericanSleeveLightBrown")
var africanAmericanSleeveLightRed = Sleeves.init(image: "africanAmericanSleeveLightRed")
var africanAmericanSleeveMetal = Sleeves.init(image: "africanAmericanSleeveMetal")
var africanAmericanSleevePurple = Sleeves.init(image: "africanAmericanSleevePurple")
var armoredSleeves = Sleeves.init(image: "armoredSleeve")
var caucasianSleeveDarkBrown = Sleeves.init(image: "caucasianSleeveDarkBrown")
var caucasianSleeveIvory = Sleeves.init(image: "caucasianSleeveIvory")
var caucasianSleeveLightBrown = Sleeves.init(image: "caucasianSleeveLightBrown")
var caucasianSleeveLightRed = Sleeves.init(image: "caucasianSleeveLightRed")
var caucasianSleeveMetal = Sleeves.init(image: "caucasianSleeveMetal")
var caucasianSleevePurple = Sleeves.init(image: "caucasianSleevePurple")

var africanAmericanPants = Pants.init(image: "africanAmericanPants")
var caucasianPants = Pants.init(image: "caucasianPants")
var lightPants = Pants.init(image: "lightPants")
var darkPants = Pants.init(image: "darkPants")
var brownPants = Pants.init(image: "brownPants")

var ironArmor1 = Armor.init(image: "ironArmor1", rating: 25)
var ironArmor2 = Armor.init(image: "ironArmor2", rating: 50)

var leatherHelmet = Helmet.init(image: "leatherHelmet", rating: 10)
var ironHelmet1 = Helmet.init(image: "ironHelmet1", rating: 10)
var ironHelmet2 = Helmet.init(image: "ironHelmet2", rating: 10)
var ironHelmet3 = Helmet.init(image: "ironHelmet3", rating: 10)
var ironHelmet4 = Helmet.init(image: "ironHelmet4", rating: 10)
var ironHelmet5 = Helmet.init(image: "ironHelmet5", rating: 10)
var ironHelmet6 = Helmet.init(image: "ironHelmet6", rating: 10)
var wizardHat = Helmet.init(image: "wizardHat")

var backPack = BackPack.init(image: "backPack", holds: 5)

var redOverCoat = Accessory.init(image: "redOverCoat")
var greenOverCoat = Accessory.init(image: "greenOverCoat")
var purpleOverCoat = Accessory.init(image: "purpleOverCoat")
var brownOverCoat = Accessory.init(image: "brownOverCoat")

var apron = Accessory.init(image: "apron")
var butchersApron = Accessory.init(image: "apron")

class Helmet: Clothing {
    var health: Int = 10
    var wizardAnimation : [SKTexture] = []
    convenience init(image: String, rating: Int) {
        self.init()
        staticImage = SKTexture.init(imageNamed: image)
        imageName = image
        self.texture = staticImage
        for i in 0...3 {
            runningAnimation.append(SKTexture.init(imageNamed: "\(image)Running\(i)"))
            if image == "wizardHat" {
                attackingAnimation.append(SKTexture.init(imageNamed: "\(image)attack\(i)"))
            }
        }
        health = rating
    }
    
    override func copy(with zone: NSZone? = nil) -> Any {
        let copy = Helmet.init(image: imageName, rating: health)
        return copy
    }
}

class Head: Clothing {
    
}

class Sleeves: Clothing {
    var wizardAnimation : [SKTexture] = []
    
    override func copy(with zone: NSZone? = nil) -> Any {
        let copy = Sleeves.init(image: imageName)
        return copy
    }
}

class Armor: Clothing {
    var health: Int = 0
    convenience init(image: String, rating: Int) {
        self.init()
        staticImage = SKTexture.init(imageNamed: image)
        imageName = image
        health = rating
        self.texture = staticImage
    }
    
    override func copy(with zone: NSZone? = nil) -> Any {
        let copy = Armor.init(image: imageName, rating: health)
        return copy
    }
}

class Accessory: Clothing {
    override func copy(with zone: NSZone? = nil) -> Any {
        let copy = Accessory.init(image: imageName)
        return copy
    }
}

class BackPack: Clothing {
    var capacity = 10
    convenience init(image: String, holds: Int) {
        self.init()
        staticImage = SKTexture.init(imageNamed: image)
        imageName = image
        capacity = holds
        self.texture = staticImage
    }
    
    override func copy(with zone: NSZone? = nil) -> Any {
        let copy = BackPack.init(image: imageName, holds: capacity)
        return copy
    }
}

class Shirt: Clothing {
    override func copy(with zone: NSZone? = nil) -> Any {
        let copy = Shirt.init(image: imageName)
        return copy
    }
}

class Pants: Clothing {
    override func copy(with zone: NSZone? = nil) -> Any {
        let copy = Pants.init(image: imageName)
        return copy
    }
}
