//
//  LeafNodes.swift
//  SwiftCoding
//
//  Created by Hitesh Kumar on 10/05/18.
//  Copyright © 2018 Hitesh Kumar. All rights reserved.
//

import UIKit

class LeafNodes {
    
    func printLeafNodes(node: Node<Int>?) {
        guard let node = node else {
            return
        }
        
        if let left = node.left {
            printLeafNodes(node: left)
        }
        if (node.left == nil && node.right == nil) {
            print(node.value)
        }
        if let right = node.right {
            printLeafNodes(node: right)
        }
        
    }
}
