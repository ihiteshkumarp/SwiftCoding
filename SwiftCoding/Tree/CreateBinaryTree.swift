//
//  CreateBinaryTree.swift
//  SwiftCoding
//
//  Created by Hitesh Kumar on 10/05/18.
//  Copyright © 2018 Hitesh Kumar. All rights reserved.
//

class Node<T> {
    var value: T
    var left: Node?
    var right: Node?
    
    init(value: T) {
        self.value = value
    }
}


class CreateBinaryTree {
    
    func createBinarySearchTree(root: Node<Int>, data: Int) {
        if data <= root.value {
            guard let left = root.left else {
                root.left = Node(value: data)
                return
            }
            createBinarySearchTree(root: left, data: data)
        } else {
            guard let right = root.right else {
                root.right = Node(value: data)
                return
            }
            createBinarySearchTree(root: right, data: data)
        }
    }
}
