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
        
        var charSet = Set<Character>()
        
        for char in str {
            
            if charSet.contains(char) {
                return char
            }
            
            charSet.insert(char)
            
//            if let _ = charCount[char] {
//                return char
//            }
//            charCount[char] = 1
        }
        
        return nil
    }
}
