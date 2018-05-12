//
//  FrequentlyOccurringItem.swift
//  SwiftCoding
//
//  Created by Hitesh Kumar on 12/05/18.
//  Copyright © 2018 Hitesh Kumar. All rights reserved.
//

class FrequentlyOccurringItem {
    
    /// If array elements are only 0 to n
    
    func mostFrequestItem(_ arr: [Int]) -> Int {
        var arr = arr
        let n = arr.count
        for i in 0 ..< n {
            arr[arr[i]%n] = arr[i] + n
        }
        var max = 0
        var element = -1
        for val in arr {
            if val/n > max {
                max = val/n
                element = val%n
            }
        }
        return element
    }
    
    /// Store the frequency of the item as key value pair
    /// Time Complexity : O(n)
    /// Auxiliary Space : O(n)
    func mostFrequestItemUsingDict(_ arr: [Int]) -> Int {
        var elementsCount = [Int: Int]()
        
        for obj in arr {
            if let count = elementsCount[obj] {
                elementsCount[obj] = count + 1
            } else {
                elementsCount[obj] = 1
            }
        }
        var max = 0
        var element = -1
        
        for obj in arr {
            if let count = elementsCount[obj], count > max {
                max = count
                element = obj
            }
        }
        return element
    }
}

