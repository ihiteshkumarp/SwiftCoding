//
//  FirstRepetingChar.swift
//  SwiftCoding
//
//  Created by Hitesh Kumar on 12/05/18.
//  Copyright © 2018 Hitesh Kumar. All rights reserved.
//

class FirstRepetingChar {
    
    func firstRepetingChar(str: String?) -> Character? {
        guard let str = str else {
            return nil
        }
        var charCount = [Character: Int]()
        
        for char in str {
            
            if let _ = charCount[char] {
                return char
            }
            charCount[char] = 1
        }
        
        return nil
    }
}
