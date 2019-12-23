//
//  clothingClasses.swift
//  No Man's Land
//
//  Created by Andrew Sheron on 12/20/19.
//  Copyright © 2019 Andrew Sheron. All rights reserved.
//

import Foundation
import SpriteKit

var allShirts : [Shirt] = [redShirt, darkBrownShirt, ivoryShirt, lightBrownShirt, offBlackShirt, purpleShirt]
var allPants : [Pants] = []
var allHelmets : [Helmet] = []

var allTools : [Tool] = []
var allWeapons : [Weapon] = []

var redShirt = Shirt.init(staticT: staticClothing.shirts.redShirt)
var darkBrownShirt = Shirt.init(staticT: staticClothing.shirts.darkBrownShirt)
var ivoryShirt = Shirt.init(staticT: staticClothing.shirts.ivoryShirt)
var lightBrownShirt = Shirt.init(staticT: staticClothing.shirts.lightBrownShirt)
var offBlackShirt = Shirt.init(staticT: staticClothing.shirts.offBlackShirt)
var purpleShirt = Shirt.init(staticT: staticClothing.shirts.purpleShirt)

var africanAmericanSleeveDarkBrown = Sleeves.init(staticT: staticClothing.AfricanAmericanSleeves.africanAmericanSleeveDarkBrown)
var africanAmericanSleeveIvory = Sleeves.init(staticT: staticClothing.AfricanAmericanSleeves.africanAmericanSleeveIvory)
var africanAmericanSleeveLightBrown = Sleeves.init(staticT: staticClothing.AfricanAmericanSleeves.africanAmericanSleeveLightBrown)
var africanAmericanSleeveLightRed = Sleeves.init(staticT: staticClothing.AfricanAmericanSleeves.africanAmericanSleeveLightRed)
var africanAmericanSleeveMetal = Sleeves.init(staticT: staticClothing.AfricanAmericanSleeves.africanAmericanSleeveMetal)
var africanAmericanSleevePurple = Sleeves.init(staticT: staticClothing.AfricanAmericanSleeves.africanAmericanSleevePurple)

var caucasianSleeveDarkBrown = Sleeves.init(staticT: staticClothing.caucasianSleeves.caucasianSleeveDarkBrown)
var caucasianSleeveIvory = Sleeves.init(staticT: staticClothing.caucasianSleeves.caucasianSleeveIvory)
var caucasianSleeveLightBrown = Sleeves.init(staticT: staticClothing.caucasianSleeves.caucasianSleeveLightBrown)
var caucasianSleeveLightRed = Sleeves.init(staticT: staticClothing.caucasianSleeves.caucasianSleeveLightRed)
var caucasianSleeveMetal = Sleeves.init(staticT: staticClothing.caucasianSleeves.caucasianSleeveMetal)
var caucasianSleevePurple = Sleeves.init(staticT: staticClothing.caucasianSleeves.caucasianSleevePurple)

var africanAmericanPants = Pants.init(staticT: staticClothing.pants.africanAmericanPants)
var caucasianPants = Pants.init(staticT: staticClothing.pants.caucasianPants)
var lightPants = Pants.init(staticT: staticClothing.pants.lightPants)
var darkPants = Pants.init(staticT: staticClothing.pants.darkPants)
var brownPants = Pants.init(staticT: staticClothing.pants.brownPants)

var ironHelmet1 = Helmet.init(staticT: staticClothing.hats.ironHelmet1)
var ironHelmet2 = Helmet.init(staticT: staticClothing.hats.ironHelmet2)
var ironHelmet3 = Helmet.init(staticT: staticClothing.hats.ironHelmet3)
var ironHelmet4 = Helmet.init(staticT: staticClothing.hats.ironHelmet4)
var ironHelmet5 = Helmet.init(staticT: staticClothing.hats.ironHelmet5)
var ironHelmet6 = Helmet.init(staticT: staticClothing.hats.ironHelmet6)
var wizardHat = Helmet.init(staticT: staticClothing.hats.wizardHat)
var leatherHelmet = Helmet.init(staticT: staticClothing.hats.leatherHelmet)

var backPack = BackPack.init(staticT: staticClothing.accessories.backpack)
var ironArmor1 = Armor.init(staticT: staticClothing.armor.ironArmor1)

var redOverCoat = LongCoat.init(staticT: staticClothing.longCoats.redOverCoat)
var greenOverCoat = LongCoat.init(staticT: staticClothing.longCoats.greenOverCoat)
var purpleOverCoat = LongCoat.init(staticT: staticClothing.longCoats.purpleOverCoat)
var brownOverCoat = LongCoat.init(staticT: staticClothing.longCoats.brownOverCoat)
