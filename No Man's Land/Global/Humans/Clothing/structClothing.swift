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

var allHelmets : [String] = []

struct staticClothing {
    struct hats {
        static let wizardHat: SKTexture = SKTexture.init(imageNamed: "")
        static let helmet0: SKTexture = SKTexture.init(imageNamed: "")
        static let helmet1: SKTexture = SKTexture.init(imageNamed: "")
        static let helmet2: SKTexture = SKTexture.init(imageNamed: "")
        static let helmet3: SKTexture = SKTexture.init(imageNamed: "")
        static let helmet4: SKTexture = SKTexture.init(imageNamed: "")
        static let helmet5: SKTexture = SKTexture.init(imageNamed: "")
        static let helmet6: SKTexture = SKTexture.init(imageNamed: "")
    }
    
    struct heads {
        static let maleCaucasian: SKTexture = SKTexture.init(imageNamed: "")
        static let femaleCaucasian: SKTexture = SKTexture.init(imageNamed: "")
        static let maleAfricanAmerican: SKTexture = SKTexture.init(imageNamed: "")
        static let femaleAfricanAmerican: SKTexture = SKTexture.init(imageNamed: "")
    }
    
    struct AfricanAmericanSleeves {
        static let africanAmericanSleeveDarkBrown: SKTexture = SKTexture.init(imageNamed: "")
        static let africanAmericanSleeveIvory: SKTexture = SKTexture.init(imageNamed: "")
        static let africanAmericanSleeveLightBrown: SKTexture = SKTexture.init(imageNamed: "")
        static let africanAmericanSleeveLightRed: SKTexture = SKTexture.init(imageNamed: "")
        static let africanAmericanSleeveMetal: SKTexture = SKTexture.init(imageNamed: "")
        static let africanAmericanSleevePurple: SKTexture = SKTexture.init(imageNamed: "")
    }
    
    struct caucasianSleeves {
        static let caucasianSleeveDarkBrown: SKTexture = SKTexture.init(imageNamed: "")
        static let caucasianSleeveIvory: SKTexture = SKTexture.init(imageNamed: "")
        static let caucasianSleeveLightBrown: SKTexture = SKTexture.init(imageNamed: "")
        static let caucasianSleeveLightRed: SKTexture = SKTexture.init(imageNamed: "")
        static let caucasianSleeveMetal: SKTexture = SKTexture.init(imageNamed: "")
        static let caucasianSleevePurple: SKTexture = SKTexture.init(imageNamed: "")
    }
    
    struct accessories {
        static let backpack: SKTexture = SKTexture.init(imageNamed: "")
    }
    
    struct armor {
        static let armor0: SKTexture = SKTexture.init(imageNamed: "")
    }
    
    struct longCoats {
        static let redOverCoat: SKTexture = SKTexture.init(imageNamed: "")
    }
    
    struct shirts {
        static let ivoryShirt: SKTexture = SKTexture.init(imageNamed: "")
        static let darkBrownShirt: SKTexture = SKTexture.init(imageNamed: "")
        static let lightBrownShirt: SKTexture = SKTexture.init(imageNamed: "")
        static let offBlackShirt: SKTexture = SKTexture.init(imageNamed: "")
        static let purpleShirt: SKTexture = SKTexture.init(imageNamed: "")
        static let redShirt: SKTexture = SKTexture.init(imageNamed: "redShirt")
    }
    
    struct pants {
        static let brownPants: SKTexture = SKTexture.init(imageNamed: "")
        static let darkPants: SKTexture = SKTexture.init(imageNamed: "")
        static let lightPants: SKTexture = SKTexture.init(imageNamed: "")
        static let africanAmericanPants: SKTexture = SKTexture.init(imageNamed: "")
        static let caucasianPants: SKTexture = SKTexture.init(imageNamed: "")
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


