//
//  Mini-Max Sum.swift
//  SwiftCoding
//
//  Created by Hitesh Kumar on 07/05/18.
//  Copyright © 2018 Hitesh Kumar. All rights reserved.
//

import Foundation

class Mini_Max_Sum: NSObject {
    
    func mini_Max_Sum() {
        
        let arr:[Int64] = [1, 2, 3, 4, 5]
        
        var min = INT64_MAX
        var max:Int64 = -1
        var sum:Int64 = 0
        
        for i in 0 ..< arr.count {
            let temp:Int64 = arr[i]
            if temp < min {
                min = temp
            }
            if temp > max {
                max = temp
            }
            sum += temp
        }
        let minSum = sum - max
        let maxSum = sum - min
        print("\(minSum) \(maxSum)")
    }
    
}
