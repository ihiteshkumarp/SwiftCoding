//
//  PascalTriangle.swift
//  SwiftCoding
//
//  Created by Hitesh Kumar on 14/05/18.
//  Copyright © 2018 Hitesh Kumar. All rights reserved.
//


class Pascal {
    
    func getPascal(){
        let val = calculateValue(row: 2, col: 3)
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

}
