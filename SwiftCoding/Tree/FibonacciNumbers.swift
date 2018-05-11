//
//  FibonacciNumbers.swift
//  SwiftCoding
//
//  Created by Hitesh Kumar on 11/05/18.
//  Copyright © 2018 Hitesh Kumar. All rights reserved.
//

import UIKit

class FibonacciNumbers {
    
    /// 1) Overlapping Subproblems:
    /// Recursion
    func fib(_ num: Int) -> Int {
        guard num > 1 else {
            return num;
        }
        return fib(num - 1) + fib(num - 2)
    }
    
    /// Fibonacci using DP
    /// There are following two different ways to store the values so that these values can be reused:
    /// a) Memoization (Top Down)
    /// b) Tabulation (Bottom Up)
    ///a) Memoization (Top Down):
    static let MAX = 100
    var lookup = Array(repeating: -1, count: MAX)//: [Int] = {nil}
    
    func fibUsingDP1(_ num: Int) -> Int {
        guard lookup[num] <= -1 else {
            return lookup[num]
        }
        
        if num <= 1 {
            lookup[num] = num
        } else {
            lookup[num] = fibUsingDP1(num - 1) + fibUsingDP1(num - 2)
        }
        
        return lookup[num]
    }
    
    /// b) Tabulation (Bottom Up):
    func fibUsingDP2(_ n: Int) -> Int {
        var fib = Array(repeating: -1, count: n + 1)
        
        fib[0] = 0
        fib[1] = 1
        
        for i in 2 ... n {
            fib[i] = fib[i - 1] + fib[i - 2]
        }
        return fib[n]
    }
}
