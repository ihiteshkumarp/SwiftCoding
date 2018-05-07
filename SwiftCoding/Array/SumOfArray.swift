//
//  SumOfArray.swift
//  SwiftCoding
//
//  Created by Hitesh Kumar on 07/05/18.
//  Copyright © 2018 Hitesh Kumar. All rights reserved.
//

import Foundation
class SumOfArray: NSObject {
    
    func output() -> Int {
        let arr = [1, 2, 3, 4, 10, 11]
        let sum = arr.reduce(0, +)
        return sum
    }
}


