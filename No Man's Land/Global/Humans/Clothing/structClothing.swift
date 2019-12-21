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
        static let wizardHat: SKTexture = SKTexture.init(imageNamed: <#T##String#>)
        static let helmet0: SKTexture = SKTexture.init(imageNamed: <#T##String#>)
        static let helmet1: SKTexture = SKTexture.init(imageNamed: <#T##String#>)
        static let helmet2: SKTexture = SKTexture.init(imageNamed: <#T##String#>)
        static let helmet3: SKTexture = SKTexture.init(imageNamed: <#T##String#>)
        static let helmet4: SKTexture = SKTexture.init(imageNamed: <#T##String#>)
        static let helmet5: SKTexture = SKTexture.init(imageNamed: <#T##String#>)
        static let helmet6: SKTexture = SKTexture.init(imageNamed: <#T##String#>)
    }
    
    struct heads {
        static let maleCaucasian: SKTexture = SKTexture.init(imageNamed: <#T##String#>)
        static let femaleCaucasian: SKTexture = SKTexture.init(imageNamed: <#T##String#>)
        static let maleAfricanAmerican: SKTexture = SKTexture.init(imageNamed: <#T##String#>)
        static let femaleAfricanAmerican: SKTexture = SKTexture.init(imageNamed: <#T##String#>)
    }
    
    struct AfricanAmericanSleeves {
        static let africanAmericanSleeveDarkBrown: SKTexture = SKTexture.init(imageNamed: <#T##String#>)
        static let africanAmericanSleeveIvory: SKTexture = SKTexture.init(imageNamed: <#T##String#>)
        static let africanAmericanSleeveLightBrown: SKTexture = SKTexture.init(imageNamed: <#T##String#>)
        static let africanAmericanSleeveLightRed: SKTexture = SKTexture.init(imageNamed: <#T##String#>)
        static let africanAmericanSleeveMetal: SKTexture = SKTexture.init(imageNamed: <#T##String#>)
        static let africanAmericanSleevePurple: SKTexture = SKTexture.init(imageNamed: <#T##String#>)
    }
    
    struct caucasianSleeves {
        static let caucasianSleeveDarkBrown: SKTexture = SKTexture.init(imageNamed: <#T##String#>)
        static let caucasianSleeveIvory: SKTexture = SKTexture.init(imageNamed: <#T##String#>)
        static let caucasianSleeveLightBrown: SKTexture = SKTexture.init(imageNamed: <#T##String#>)
        static let caucasianSleeveLightRed: SKTexture = SKTexture.init(imageNamed: <#T##String#>)
        static let caucasianSleeveMetal: SKTexture = SKTexture.init(imageNamed: <#T##String#>)
        static let caucasianSleevePurple: SKTexture = SKTexture.init(imageNamed: <#T##String#>)
    }
    
    struct accessories {
        static let backpack: SKTexture = SKTexture.init(imageNamed: <#T##String#>)
    }
    
    struct armor {
        static let armor0: SKTexture = SKTexture.init(imageNamed: <#T##String#>)
    }
    
    struct longCoats {
        static let redOverCoat: SKTexture = SKTexture.init(imageNamed: <#T##String#>)
    }
    
    struct shirts {
        static let ivoryShirt: SKTexture = SKTexture.init(imageNamed: <#T##String#>)
        static let darkBrownShirt: SKTexture = SKTexture.init(imageNamed: <#T##String#>)
        static let lightBrownShirt: SKTexture = SKTexture.init(imageNamed: <#T##String#>)
        static let offBlackShirt: SKTexture = SKTexture.init(imageNamed: <#T##String#>)
        static let purpleShirt: SKTexture = SKTexture.init(imageNamed: <#T##String#>)
        static let redShirt: SKTexture = SKTexture.init(imageNamed: <#T##String#>)
    }
    
    struct pants {
        static let brownPants: SKTexture = SKTexture.init(imageNamed: <#T##String#>)
        static let darkPants: SKTexture = SKTexture.init(imageNamed: <#T##String#>)
        static let lightPants: SKTexture = SKTexture.init(imageNamed: <#T##String#>)
        static let africanAmericanPants: SKTexture = SKTexture.init(imageNamed: <#T##String#>)
        static let caucasianPants: SKTexture = SKTexture.init(imageNamed: <#T##String#>)
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


