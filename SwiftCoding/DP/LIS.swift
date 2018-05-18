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
//        let arr = [2, 5, 3, 7, 11, 8, 10, 13, 9]
//        let arr = [0, 8, 4, 12, 2, 10, 6, 14, 1, 9, 5, 13, 3, 11, 7, 15, 89]
        var max = 1
//        _ = getLIS(arr: arr, n: arr.count, max_ref: &max)
//        max = getLIS_DP(arr: arr)
        
        max = longestSubsequence(arr: arr)
        
        return max
        
    }
    
    /// Simple recursive implementation of the LIS problem
    /// Recursion
    
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
    
    /// Tabluated
    /// DP - O(n^2)
    func getLIS_DP(arr: [Int]) -> Int {
        
        let n = arr.count
        var LIS = Array(repeatElement(1, count: n))
        
        for i in 0 ..< n {
            for j in 0 ..< i {
                if arr[j] < arr[i] {
                    let newCount = LIS[j] + 1
                    if newCount > LIS[i] {
                        LIS[i] = newCount
                    }
                }
            }
        }
        var max = 0
        for obj in LIS {
            if obj > max {
                max = obj
            }
        }
        
        return max
    }
    
    /// Longest Increasing Subsequence (N log N)
    
    func longestSubsequence(arr: [Int]) -> Int {
        guard arr.count > 0 else {
            return 0
        }
        var output = [Int]()
        output.append(arr[0])
        var index = 1
        for i in 1 ..< arr.count {
            if arr[i] < output[0] {
                output[0] = arr[i]
            } else if arr[i] > output[index - 1] {
                output.append(arr[i])
                index += 1
                
            } else {
                let ceil = ceilIndex(output, data: arr[i], low: 0, high: index - 1)
                output[ceil] = arr[i]
            }
        }
        print(output)
        return output.count
    }
    
    // Binary search (note boundaries in the caller)
    
    func ceilIndex(_ arr: [Int], data: Int, low: Int, high: Int) -> Int {
        var high = high
        var low = low
        
        while (high - low > 1) {
            let mid = low + (high - low)/2;
            if (arr[mid] >= data) {
                high = mid
            } else {
                low = mid
            }
        }
        
        return high
    }

}
