//
//  BinarySearch.swift
//  SwiftCoding
//
//  Created by Hitesh Kumar on 13/05/18.
//  Copyright © 2018 Hitesh Kumar. All rights reserved.
//

class BinarySearch {
    
    func searchElement(arr: [Int], data: Int, l: Int, r: Int) -> Int {
        
        guard l <= r else {
            return -1
        }
        let mid =  (l + r)/2 // l + (r - l)/2;
        
        if arr[mid] == data {
            return mid
        }
        if data < arr[mid] {
            return searchElement(arr: arr, data: data, l: l, r: mid - 1)
        } else {
            return searchElement(arr: arr, data: data, l: mid + 1, r: r)
        }
    }
    
}
