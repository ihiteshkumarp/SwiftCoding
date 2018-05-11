//
//  FibonacciNumbers.swift
//  SwiftCoding
//
//  Created by Hitesh Kumar on 11/05/18.
//  Copyright © 2018 Hitesh Kumar. All rights reserved.
//

import UIKit

class FibonacciNumbers {
    func fib(_ num: Int) -> Int {
        guard num > 1 else {
            return num;
        }
        return fib(num - 1) + fib(num - 2)
    }
    
    /// Fibonacci using DP
    
    static let MAX = 100
    var lookup = Array(repeating: -1, count: MAX)//: [Int] = {nil}
    
    func fibUsingDP(_ num: Int) -> Int {
        guard lookup[num] <= -1 else {
            return lookup[num]
        }
        
        if num <= 1 {
            lookup[num] = num
        } else {
            lookup[num] = fibUsingDP(num - 1) + fibUsingDP(num - 2)
        }
        
        return lookup[num]
    }
}
