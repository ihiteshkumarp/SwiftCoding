//
//  StringExtensions.swift
//  SwiftCoding
//
//  Created by Hitesh Kumar on 14/05/18.
//  Copyright © 2018 Hitesh Kumar. All rights reserved.
//

import Foundation

extension String {
    
    func stringIndex(_ index: Int) -> String.Index {
        return self.index(self.startIndex, offsetBy: index)
    }
    
    func characterAtIndex(_ index: Int) -> Character {
        return self[self.stringIndex(index)]
    }
    
    subscript (i: Int) -> Character {
        return self[index(startIndex, offsetBy: i)]
    }
}
