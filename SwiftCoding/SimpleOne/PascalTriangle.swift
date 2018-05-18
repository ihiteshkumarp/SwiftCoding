//
//  PascalTriangle.swift
//  SwiftCoding
//
//  Created by Hitesh Kumar on 14/05/18.
//  Copyright © 2018 Hitesh Kumar. All rights reserved.
//


class Pascal {
    
    func getPascal(){
//        let val = calculateValue(row: 2, col: 3)
        let val = calculateValueWithoutRecursion(row: 2, col: 1)
        print(val)
    }
    
    func calculateValue(row: Int, col: Int) -> Int {
        if (col > row) {
            return -1
        }
        if col == 0 || col == row {
            return 1;
        }
        return calculateValue(row: row - 1, col: col - 1) + calculateValue(row: row - 1, col: col)
    }
    
    func calculateValueWithoutRecursion(row: Int, col: Int) -> Int {
        
        guard row > col else {
            return -1
        }
        
        var col = col
        var result = 1
        // Purpose of this if is:
        // if you want result for (4, 4), so for this won't have to calculate till 4 becuase
        // result for the (4, 4) and (4, 0) are the same so we can easily replace col with row - col
        // Similar for (4, 3), the result will be same as (4, 1)
        if col > row - col {
            col = row - col
        }
        
        for i in 0 ..< col {
            result = result * (row - i)
            result = result / (i + 1)
            
        }
        return result;
    }
    
    /* Pascan triangle
     
    1
    1 1
    1 2 1
    1 3 3 1
    1 4 6 4 1
     
    */

}
