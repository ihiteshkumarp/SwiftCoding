//
//  TreeTraversal.swift
//  SwiftCoding
//
//  Created by Hitesh Kumar on 08/05/18.
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

enum BinaryTree<T> {
    case empty
    indirect case node(BinaryTree, T, BinaryTree)
}


class CreateTree {
    
    func createBinaryTree() -> Node<String> {
//        let rootNode = BinaryTree.node(.empty, "1", .empty)
//        let secondNode = BinaryTree.node(.empty, "1", .empty)
        
        let myNode = Node(value: "1")
        myNode.left = Node(value: "2")
        myNode.right = Node(value: "3")
        myNode.left?.left = Node(value: "4")
        myNode.left?.right = Node(value: "5")

        return myNode
    }
}

class TreeTraversal {
    
    func inOrderTraversal(node: Node<String>?) {
        
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
    
    func preOrderTraversal(node: Node<String>?) {
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
    
    func postOrderTraversal(node: Node<String>?) {
        
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
