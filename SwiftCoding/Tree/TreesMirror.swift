//
//  TreesMirror.swift
//  SwiftCoding
//
//  Created by Hitesh Kumar on 10/05/18.
//  Copyright © 2018 Hitesh Kumar. All rights reserved.
//

import UIKit

class TreesMirror {
    
    func checkTreesMirror(root1: Node<Int>?, root2: Node<Int>?) -> Bool {
        if root1 == nil && root2 == nil {
            return true
        }
        
        guard let root1 = root1, let root2 = root2 else {
            return false
        }
        
        guard root1.value == root2.value,
            checkTreesMirror(root1: root1.left, root2: root2.right),
            checkTreesMirror(root1: root1.right, root2: root2.left) else {
                return false
        }
        
        return true
    }
}
