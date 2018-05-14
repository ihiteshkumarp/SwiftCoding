//
//  StringExtensions.swift
//  SwiftCoding
//
//  Created by Hitesh Kumar on 14/05/18.
//  Copyright © 2018 Hitesh Kumar. All rights reserved.
//

import Foundation

extension String {
    
    func stringIndex(_ str: String, index: Int) -> String.Index {
        return str.index(str.startIndex, offsetBy: index)
    }
    
    func characterAtIndex(_ str: String, index: Int) -> Character {
        return str[str.stringIndex(str, index: index)]
    }
}
