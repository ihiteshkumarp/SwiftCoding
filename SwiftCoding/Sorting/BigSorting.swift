//
//  BigSorting.swift
//  SwiftCoding
//
//  Created by Hitesh Kumar on 07/05/18.
//  Copyright © 2018 Hitesh Kumar. All rights reserved.
//

import Foundation

class BigSorting: NSObject {
    
    func bigSorting() -> [String] {
        let unsorted = ["6","31415926535897932384626433832795","1","3","10","3","5"]
        var arr = [UInt64]()
        
//        for val in unsorted {
//            let val: UInt64?  = UInt64(val)
//            if let val = val {
//                arr.append(val)
//            }
//        }
        
        arr = unsorted.map{ UInt64($0) ?? 0 }
        
        // arr.sort()
        arr.sort(){$0 < $1}
        
        var strOutput = [String]()
//        for val in arr {
//            strOutput.append("\(val)")
//        }
        strOutput = arr.map{ String($0) }
        
        
        // MARK: Perfect and correct answer
        let values = ["6","31415926535897932384626433832795","1","3","10","3","5"]
        
        let sortedValues = values.sorted { (value1, value2) in
            let order = value1.compare(value2, options: .numeric)
            return order == .orderedAscending
        }
        print(sortedValues)
        return sortedValues
    }
}
