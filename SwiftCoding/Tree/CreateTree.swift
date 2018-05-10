//
//  CreateTree.swift
//  SwiftCoding
//
//  Created by Hitesh Kumar on 10/05/18.
//  Copyright © 2018 Hitesh Kumar. All rights reserved.
//

enum BinaryTree<T> {
    case empty
    indirect case node(BinaryTree, T, BinaryTree)
}


class CreateTree {
    
    // Change this to string, if want to deal with stringss
    
    func createBinaryTreeWithString() -> Node<String> {
        // let rootNode = BinaryTree.node(.empty, "1", .empty)
        // let secondNode = BinaryTree.node(.empty, "1", .empty)
        
        let root = Node(value: "1")
        root.left = Node(value: "2")
        root.right = Node(value: "3")
        root.left?.left = Node(value: "4")
        root.left?.right = Node(value: "5")
        
        return root
    }
    
    static let sharedInstance = CreateTree()
    
    func createDummyBinaryTree1() -> Node<Int> {
        
        let root = Node(value: 1)
        root.left = Node(value: 2)
        root.right = Node(value: 3)
        root.left?.left = Node(value: 4)
        root.left?.right = Node(value: 5)
        
        return root
    }
    
    func createDummyBinaryTree2() -> Node<Int> {
        
        let root = Node(value: 1)
        root.left = Node(value: 3)
        root.right = Node(value: 2)
        root.right?.left = Node(value: 5)
        root.right?.right = Node(value: 4)
        
        return root
    }
    
    func createBST1() -> Node<Int> {
        let tree = CreateBinaryTree()
        let root = Node(value: 10)
        
        tree.createBinarySearchTree(root: root, data: 5)
        tree.createBinarySearchTree(root: root, data: 40)
        tree.createBinarySearchTree(root: root, data: 7)
        tree.createBinarySearchTree(root: root, data: 50)
        tree.createBinarySearchTree(root: root, data: 1)
        
        return root
        
        //     10
        //    /   \
        //   5     40
        //  /  \      \
        // 1    7      50
    }
}
