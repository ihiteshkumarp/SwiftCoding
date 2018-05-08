//
//  Largest Sum Contiguous Subarray.swift
//  SwiftCoding
//
//  Created by Hitesh Kumar on 08/05/18.
//  Copyright © 2018 Hitesh Kumar. All rights reserved.
//

import UIKit

// Kadane's algorithm

class Largest_Sum_Contiguous_Subarray: NSObject {
    
    let arr = [-2, -3, 4, -1, -2, 1, 5, -3, 4]

    func largestSum() {
        let output = maxSubArraySum()
        print(output)
    }
    
    func maxSubArraySum() -> String {
        var max_ending_here = 0
        var max_so_far = -999 // INT_MIN
        
        var startIndex = 0
        var finalStart = 0
        var endIndex = 0
        
        for i in 0 ..< arr.count {
            
            max_ending_here += arr[i]
            if (max_so_far < max_ending_here) {
                max_so_far = max_ending_here
                endIndex = i
                finalStart = startIndex
            }
            
            if max_ending_here < 0 {
                max_ending_here = 0
                startIndex = i + 1
            }
        }
        
        return " Sum: \(max_so_far) \n Start index: \(finalStart) \n End index: \(endIndex)"
    }
}
