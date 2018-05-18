//
//  NextGreaterNumber.swift
//  SwiftCoding
//
//  Created by Hitesh Kumar on 18/05/18.
//  Copyright © 2018 Hitesh Kumar. All rights reserved.
//

class NextGreaterNumber {
    
    func getNextGreaterNumber(_ number: String) -> String {
        
        let numberStr = String(number.reversed())
        var outputStr = ""
        var carry = 0
        var isFirst = true
//        for num in numberStr.utf16 {
        for char in numberStr {
            if var num = Int(String(char)) {
                if isFirst {
                    num = num + 1
                    isFirst = false
                    num = num + carry
                    carry = num / 10
                    num = num % 10
                } else if carry > 0 {
                    num = num + carry
                    carry = num / 10
                    num = num % 10
                }
                outputStr = outputStr + "\(num)"
            }
        }
        if carry > 0 {
            outputStr = outputStr + "\(carry)"
        }
        outputStr = String(outputStr.reversed())
        return outputStr
    }
    
}
