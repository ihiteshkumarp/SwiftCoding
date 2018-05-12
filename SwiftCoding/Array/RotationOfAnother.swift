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
}

