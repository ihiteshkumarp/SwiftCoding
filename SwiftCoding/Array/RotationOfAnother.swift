//
//  RotationOfAnother.swift
//  SwiftCoding
//
//  Created by Hitesh Kumar on 12/05/18.
//  Copyright © 2018 Hitesh Kumar. All rights reserved.
//

class RotationOfAnother {
    func isRotationOfAnother(arr1: [Int], arr2: [Int]) -> Bool {
        
        guard arr1.count == arr2.count else {
            return false
        }
        let size = arr1.count
        
        var startIndex = 0
        for i in 0 ..< size {
            if arr1[0] == arr2[i] {
                startIndex = i
                break
            }
        }
        
        for i in startIndex  ..< size {
            if arr1[i - startIndex] != arr2[i] {
                return false
            }
        }
        for i in 0 ..< startIndex {
            if arr2[i] != arr1[size - startIndex + i]{
                return false
            }
        }
        return true
    }
    
    /// This is same as array
    /// Other sulution using merge first string two times and check if second is substring of merged string
    /// https://www.geeksforgeeks.org/a-program-to-check-if-strings-are-rotations-of-each-other/
    func isRotationOfAnotherString(arr1: String, arr2: String) -> Bool {
        
        guard arr1.count == arr2.count else {
            return false
        }
        let size = arr1.count
        
        var startIndex = 0
        for i in 0 ..< size {
            // Using extension "stringIndex"
            if arr1[arr1.stringIndex(i)] == arr2[arr2.stringIndex(i)] {
                startIndex = i
                break
            }
        }
        
        for i in startIndex  ..< size {
            // Using extension "characterAtIndex"
            if arr1.characterAtIndex(i - startIndex) != arr2.characterAtIndex(i) {
                return false
            }
        }
        for i in 0 ..< startIndex {
            if arr2[arr2.index(arr2.startIndex, offsetBy: i)] != arr1[arr1.index(arr1.startIndex, offsetBy: size - startIndex + i)] {
                return false
            }
        }
        return true
    }
}

