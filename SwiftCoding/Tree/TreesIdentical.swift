//
//  TreesIdentical.swift
//  SwiftCoding
//
//  Created by Hitesh Kumar on 10/05/18.
//  Copyright © 2018 Hitesh Kumar. All rights reserved.
//

import UIKit

class TreesIdentical {

    func checkTreesIdentical(root1:Node<Int>?, root2:Node<Int>?) -> Bool {
        if root1 == nil && root2 == nil {
            return true
        }
        
        guard let root1 = root1, let root2 = root2 else {
            return false
        }
        
        guard root1.value == root2.value,
            checkTreesIdentical(root1: root1.left, root2: root2.left),
            checkTreesIdentical(root1: root1.right, root2: root2.right) else {
            return false
        }
        
        return true
    }
    
    
}
