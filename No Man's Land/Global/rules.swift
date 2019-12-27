//
//  rules.swift
//  No Man's Land
//
//  Created by Andrew Sheron on 12/26/19.
//  Copyright © 2019 Andrew Sheron. All rights reserved.
//

import Foundation
import UIKit

struct physicsCategory {
    static let player : UInt32 = 0x1 << 0
    static let human : UInt32 = 0x1 << 1
    static let playerAwareness : UInt32 = 0x1 << 2
    static let humanAwareness : UInt32 = 0x1 << 3
}
