//
//  CommonElementsInSortedArrays.swift
//  SwiftCoding
//
//  Created by Hitesh Kumar on 12/05/18.
//  Copyright © 2018 Hitesh Kumar. All rights reserved.
//

/// Common elements in two sorted arrays
/// Same for three
class CommonElementsInSortedArrays {
    
    func commentElementsFromSortedArrays(arr1: [Int], arr2: [Int]) -> [Int] {
        var i = 0
        var j = 0
        var result = [Int]()
        while (i < arr1.count && j < arr2.count) {
            
            if arr1[i] == arr2[j] {
                result.append(arr1[i])
                i += 1
                j += 1
                
            } else if arr1[i] < arr2[j] {
                i += 1
                
            } else if arr1[i] > arr2[j] {
                j += 1
            }
        }
        return result
    }

}
