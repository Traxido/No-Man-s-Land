//
//  Clothing.swift
//  No Man's Land
//
//  Created by Andrew Sheron on 12/19/19.
//  Copyright © 2019 Andrew Sheron. All rights reserved.
//

import Foundation
import UIKit
import SpriteKit

struct staticClothing {
    struct hats {
        static let wizardHat: SKTexture = SKTexture.init(imageNamed: "wizardHat")
        static let leatherHelmet: SKTexture = SKTexture.init(imageNamed: "leatherHelmet")
        static let ironHelmet1: SKTexture = SKTexture.init(imageNamed: "ironHelmet1")
        static let ironHelmet2: SKTexture = SKTexture.init(imageNamed: "ironHelmet2")
        static let ironHelmet3: SKTexture = SKTexture.init(imageNamed: "ironHelmet3")
        static let ironHelmet4: SKTexture = SKTexture.init(imageNamed: "ironHelmet4")
        static let ironHelmet5: SKTexture = SKTexture.init(imageNamed: "ironHelmet5")
        static let ironHelmet6: SKTexture = SKTexture.init(imageNamed: "ironHelmet6")
    }
    
    struct heads {
        static let maleCaucasian: SKTexture = SKTexture.init(imageNamed: "caucasianMaleHead")
        static let femaleCaucasian: SKTexture = SKTexture.init(imageNamed: "caucasianFemaleHead")
        static let maleAfricanAmerican: SKTexture = SKTexture.init(imageNamed: "africanAmericanMaleHead")
        static let femaleAfricanAmerican: SKTexture = SKTexture.init(imageNamed: "africanAmericanFemaleHead")
    }
    
    struct AfricanAmericanSleeves {
        static let africanAmericanSleeveDarkBrown: SKTexture = SKTexture.init(imageNamed: "africanAmericanSleeveDarkBrown")
        static let africanAmericanSleeveIvory: SKTexture = SKTexture.init(imageNamed: "affricanAmericanSleeveIvory")
        static let africanAmericanSleeveLightBrown: SKTexture = SKTexture.init(imageNamed: "africanAmericanSleeveLightBrown")
        static let africanAmericanSleeveLightRed: SKTexture = SKTexture.init(imageNamed: "africanAmericanSleeveLightRed")
        static let africanAmericanSleeveMetal: SKTexture = SKTexture.init(imageNamed: "africanAmericanSleeveMetal")
        static let africanAmericanSleevePurple: SKTexture = SKTexture.init(imageNamed: "africanAmericanSleevePurple")
    }
    
    struct caucasianSleeves {
        static let caucasianSleeveDarkBrown: SKTexture = SKTexture.init(imageNamed: "caucasianSleeveDarkBrown")
        static let caucasianSleeveIvory: SKTexture = SKTexture.init(imageNamed: "caucasianSleeveIvory")
        static let caucasianSleeveLightBrown: SKTexture = SKTexture.init(imageNamed: "caucasianSleeveLightBrown")
        static let caucasianSleeveLightRed: SKTexture = SKTexture.init(imageNamed: "caucasianSleeveLightRed")
        static let caucasianSleeveMetal: SKTexture = SKTexture.init(imageNamed: "caucasianSleeveMetal")
        static let caucasianSleevePurple: SKTexture = SKTexture.init(imageNamed: "caucasianSleevePurple")
    }
    
    struct accessories {
        static let backpack: SKTexture = SKTexture.init(imageNamed: "backPack")
    }
    
    struct armor {
        static let ironArmor1: SKTexture = SKTexture.init(imageNamed: "ironArmor1")
    }
    
    struct longCoats {
        static let redOverCoat: SKTexture = SKTexture.init(imageNamed: "redOverCoat")
        static let greenOverCoat: SKTexture = SKTexture.init(imageNamed: "greenOverCoat")
        static let brownOverCoat: SKTexture = SKTexture.init(imageNamed: "brownOverCoat")
        static let purpleOverCoat: SKTexture = SKTexture.init(imageNamed: "purpleOverCoat")
    }
    
    struct shirts {
        static let ivoryShirt: SKTexture = SKTexture.init(imageNamed: "ivoryShirt")
        static let darkBrownShirt: SKTexture = SKTexture.init(imageNamed: "darkBrownShirt")
        static let lightBrownShirt: SKTexture = SKTexture.init(imageNamed: "lightBrownShirt")
        static let offBlackShirt: SKTexture = SKTexture.init(imageNamed: "offBlackShirt")
        static let purpleShirt: SKTexture = SKTexture.init(imageNamed: "purpleShirt")
        static let redShirt: SKTexture = SKTexture.init(imageNamed: "redShirt")
    }
    
    struct pants {
        static let brownPants: SKTexture = SKTexture.init(imageNamed: "brownPants")
        static let darkPants: SKTexture = SKTexture.init(imageNamed: "darkPants")
        static let lightPants: SKTexture = SKTexture.init(imageNamed: "lightPants")
        static let africanAmericanPants: SKTexture = SKTexture.init(imageNamed: "africanAmericanPants")
        static let caucasianPants: SKTexture = SKTexture.init(imageNamed: "caucasianPants")
    }
}

struct runningAnimations {
    
    struct hats {
        static let wizardHat: [SKTexture] = []
        static let helmet0: [SKTexture] = []
        static let helmet1: [SKTexture] = []
        static let helmet2: [SKTexture] = []
        static let helmet3: [SKTexture] = []
        static let helmet4: [SKTexture] = []
        static let helmet5: [SKTexture] = []
        static let helmet6: [SKTexture] = []
    }
    
    struct heads {
        static let maleCaucasian: [SKTexture] = []
        static let femaleCaucasian: [SKTexture] = []
        static let maleAfricanAmerican: [SKTexture] = []
        static let femaleAfricanAmerican: [SKTexture] = []
    }
    
    struct AfricanAmericanSleeves {
        static let africanAmericanSleeveDarkBrown: [SKTexture] = []
        static let africanAmericanSleeveIvory: [SKTexture] = []
        static let africanAmericanSleeveLightBrown: [SKTexture] = []
        static let africanAmericanSleeveLightRed: [SKTexture] = []
        static let africanAmericanSleeveMetal: [SKTexture] = []
        static let africanAmericanSleevePurple: [SKTexture] = []
    }
    
    struct caucasianSleeves {
        static let caucasianSleeveDarkBrown: [SKTexture] = []
        static let caucasianSleeveIvory: [SKTexture] = []
        static let caucasianSleeveLightBrown: [SKTexture] = []
        static let caucasianSleeveLightRed: [SKTexture] = []
        static let caucasianSleeveMetal: [SKTexture] = []
        static let caucasianSleevePurple: [SKTexture] = []
    }
    
    struct accessories {
        static let backpack: [SKTexture] = []
    }
    
    struct armor {
        static let armor0: [SKTexture] = []
    }
    
    struct longCoats {
        static let redOverCoat: [SKTexture] = []
    }
    
    struct shirts {
        //There are no running animations for shirts
    }
    
    struct pants {
        static let brownPants: [SKTexture] = []
        static let darkPants: [SKTexture] = []
        static let lightPants: [SKTexture] = []
        static let africanAmericanPants: [SKTexture] = []
        static let caucasianPants: [SKTexture] = []
    }
}


