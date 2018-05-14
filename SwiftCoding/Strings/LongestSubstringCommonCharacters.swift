//
//  LongestSubstringCommonCharacters.swift
//  SwiftCoding
//
//  Created by Hitesh Kumar on 14/05/18.
//  Copyright © 2018 Hitesh Kumar. All rights reserved.
//

/// Find the longest substring with k unique characters in a given string
// Only for small char
class LongestSubstringCommonCharacters {
    let maxChar = 26
    func longestSubstring(_ str: String, k: Int) {
        
//        var count = [Int](repeatElement(0, count: maxChar))
        var countDict = [Character: Int]()
        var u = 0
        for char in str {
            if let count = countDict[char], count > 0 {
                countDict[char] = count + 1
            } else {
                u += 1
                countDict[char] = 1
            }
        }
        
        guard u > k else {
            return
        }
        countDict.removeAll()
        
//        if let char = str.first {
//            countDict[char] = 1
//        }
        
        var start = 0, end = 0
        var maxWindow = 1, maxWindowStart = 0
        var lastChar = str.first!
        
        //aabacbebebe
        for char in str {
            end += 1
            if let count = countDict[char], count > 0 {
                countDict[char] = count + 1
            } else {
                countDict[char] = 1
            }
            while(countDict.count > k) {
                
                if let firstObj = countDict.first {
                    countDict.removeValue(forKey: firstObj.key)
                    start += 1
                }
            }
            if end - start + 1 > maxWindow {
                maxWindow = end - start
                maxWindowStart = start
            }
        }
        
        let startIndex = str.index(str.startIndex, offsetBy: maxWindowStart)
        let endIndex = str.index(str.startIndex, offsetBy: maxWindowStart + maxWindow)
        
        let range = startIndex ..< endIndex
        
        let subStr = str[range]
        
        print(subStr)
        print(maxWindow)
        print(maxWindowStart)
    }
    
//    func isValid(dict: [Character: Int], k: Int) -> Bool {
//
//        var val = 0
////        dict.count
//        for obj in dict {
//            if obj.value > 0 {
//                val += 1
//            }
//        }
//        return k >= val ? true : false
//    }
}
