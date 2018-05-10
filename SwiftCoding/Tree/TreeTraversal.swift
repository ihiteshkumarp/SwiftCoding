//
//  TreeTraversal.swift
//  SwiftCoding
//
//  Created by Hitesh Kumar on 08/05/18.
//  Copyright © 2018 Hitesh Kumar. All rights reserved.
//

class TreeTraversal {
    
    func inOrderTraversal(node: Node<Int>?) {
        
        guard let node = node else {
            return
        }
        
        if let left = node.left {
            inOrderTraversal(node: left)
        }
        print("\(node.value) ")
        if let right = node.right {
            inOrderTraversal(node: right)
        }
    }
    
    func preOrderTraversal(node: Node<Int>?) {
        guard let node = node else {
            return
        }
        
        print("\(node.value) ")
        
        if let left = node.left {
            preOrderTraversal(node: left)
        }
        if let right = node.right {
            preOrderTraversal(node: right)
        }
    }
    
    func postOrderTraversal(node: Node<Int>?) {
        
        guard let node = node else {
            return
        }
        
        if let left = node.left {
            postOrderTraversal(node: left)
        }
        if let right = node.right {
            postOrderTraversal(node: right)
        }
        print("\(node.value) ")

    }
}
