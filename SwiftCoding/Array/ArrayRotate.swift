//
//  ArrayRotate.swift
//  SwiftCoding
//
//  Created by Hitesh Kumar on 11/05/18.
//  Copyright © 2018 Hitesh Kumar. All rights reserved.
//

class ArrayRotate {
    
    // https://www.geeksforgeeks.org/program-for-array-rotation-continued-reversal-algorithm/
    
    func rotateArray(_ n: Int) {
        
        var arr = [1, 2, 3, 4, 5, 6]
        reverseArray(&arr, start: 0, end: n - 1)
        reverseArray(&arr, start: n, end: arr.count - 1)
        reverseArray(&arr, start: 0, end: arr.count - 1)
        print(arr)
    }
    
    private func reverseArray(_ arr: inout [Int], start: Int, end: Int) {
        var i = start
        var j = end
        while (i < j) {
            let temp = arr[i]
            arr[i] = arr[j]
            arr[j] = temp
            i += 1
            j -= 1
        }
    }
}
