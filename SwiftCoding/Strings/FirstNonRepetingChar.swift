//
//  FirstNonRepetingChar.swift
//  SwiftCoding
//
//  Created by Hitesh Kumar on 12/05/18.
//  Copyright © 2018 Hitesh Kumar. All rights reserved.
//

class FirstNonRepetingChar {
    
    func firstNonRepetingChar(str: String?) -> Character? {
        guard let str = str else {
            return nil
        }
        var charCount = [Character: Int]()
        
        for char in str {
            if let count = charCount[char] {
                charCount[char] = count + 1
            } else {
                charCount[char] = 1
            }
        }
        for char in str {
            if let count = charCount[char], count == 1 {
                return char
            }
        }
        charCount.removeAll()
        return nil
    }
}
