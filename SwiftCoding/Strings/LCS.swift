//
//  LCS.swift
//  SwiftCoding
//
//  Created by Hitesh Kumar on 14/05/18.
//  Copyright © 2018 Hitesh Kumar. All rights reserved.
//

class LCS {
    
    func getLCS( str1: String, str2: String, m: Int, n: Int) -> Int {
        
        if m == 0 || n == 0 {
            return 0
        }
//        var mm = str1[1]
        if characterIndex(str1, index: m - 1) == characterIndex(str2, index: n - 1) {
            return 1 + getLCS(str1: str1, str2: str2, m: m - 1, n: n-1)
        } else {
            return max(getLCS(str1: str1, str2: str2, m: m, n: n - 1), getLCS(str1: str1, str2: str2, m: m - 1, n: n))
        }
    }
    func characterIndex(_ str: String, index: Int) -> Character {
        return str[str.index(str.startIndex, offsetBy: index)]
    }
    
    func lcsDP(str1: String, str2: String) -> Int {
        
        let m = str1.count + 1
        let n = str2.count + 1
        var arr = Array(repeatElement(Array(repeatElement(0, count: n)), count: m))
        
        for i in 0 ..< m {
            for j in 0 ..< n {
                
                if i == 0 || j == 0 {
                    arr[i][j] = 0
                    
                } else if str1[i - 1] == str2[j - 1] {
                    
                    arr[i][j] = arr[i - 1][j - 1] + 1
                } else {
                    arr[i][j] = max(arr[i][j - 1], arr[i - 1][j])
                }
            }
        }
        return arr[m][n]
    }

        
}

