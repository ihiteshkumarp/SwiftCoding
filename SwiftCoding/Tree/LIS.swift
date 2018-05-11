//
//  LIS.swift
//  SwiftCoding
//
//  Created by Hitesh Kumar on 11/05/18.
//  Copyright © 2018 Hitesh Kumar. All rights reserved.
//

import UIKit

class LIS {
    
    func longestIncreasingSubsequence() -> Int {
        let arr = [10, 22, 9, 33, 21, 50, 41, 60]
        var max = 1
        _ = getLIS(arr: arr, n: arr.count, max_ref: &max)
        return max
        
    }
    
    /// Simple recursive implementation of the LIS problem
    
    func getLIS(arr: [Int], n: Int, max_ref: inout Int) -> Int {

        if n == 1 {
            return 1
        }
        
        var max_ending_here = 1, res = 0
        
        for i in 1 ..< n {
            
            res = getLIS(arr: arr, n: i, max_ref: &max_ref)
            
            if arr[i - 1] < arr[n - 1] && res + 1 > max_ending_here {
                max_ending_here = res + 1
            }
        }
        
        if max_ref < max_ending_here {
            max_ref = max_ending_here
        }
        
        return max_ending_here
    }
}
