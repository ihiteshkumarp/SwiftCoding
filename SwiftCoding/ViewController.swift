//
//  ViewController.swift
//  SwiftCoding
//
//  Created by Hitesh Kumar on 07/05/18.
//  Copyright © 2018 Hitesh Kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var inputField: UITextField!
    
    @IBOutlet weak var getOutputButton: UIButton!
    @IBOutlet weak var outputLabel: UILabel!
    
    let helloWord = PrintHelloWord()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    private func getOutputForInput(inputStr: String) -> String {
        
        var genericOutput: String?
        
        let helloWordOutput = helloWord.output(inputStr: inputStr)
        
        
        genericOutput = helloWordOutput
        guard let output = genericOutput else {
            return "Not a valid Output received"
        }
        return output
    }
    
    @IBAction func outputButtonAction(_ sender: Any) {
        
        //bigSorting()
//        largestSumContiguousSubarray()
//        traverseTree()
//        createTree()
//        identicalTree()
//        mirrorTree()
//        printLeafNodes()
//        fibonacciNumbers()
//        longestSubsequence()
//        rotateArray()
        
        return
        
        guard let str = inputField.text, str.count > 0 else {
            outputLabel.text = "Enter a valid input"
            return
        }
        outputLabel.text = getOutputForInput(inputStr: str)
        
    }
    
    // MARK: BigSorting
    private func bigSorting() {
        let bigSort = BigSorting()
        let outputArray = bigSort.bigSorting()
        
        //        for val in outputArray {
        //            outputStr = outputStr + val + "\n"
        //        }
        let outputStr = outputArray.flatMap{ $0 }.joined(separator: "\n")
        outputLabel.text = outputStr
        
    }
    
    // MARK: Largest_Sum_Contiguous_Subarray
    private func largestSumContiguousSubarray() {
        let sum = Largest_Sum_Contiguous_Subarray()
        outputLabel.text = sum.maxSubArraySum()
    }
    
    // MARK: Tree Traversal
    
    private func traverseTree() {
        
        let tree = TreeTraversal()
        let root = CreateTree.sharedInstance.createDummyBinaryTree1()
        print("PreOrder traversal: \n")
        tree.preOrderTraversal(node: root)
        
        print("InOrder traversal: \n")
        tree.inOrderTraversal(node: root)
        
        print("PostOrder traversal: \n")
        tree.postOrderTraversal(node: root)

    }
    
    // MARK: Create Tree
    
    private func createTree() {
        let tree = CreateBinaryTree()
        let root = Node(value: 10)
        
        tree.createBinarySearchTree(root: root, data: 5)
        tree.createBinarySearchTree(root: root, data: 40)
        tree.createBinarySearchTree(root: root, data: 7)
        tree.createBinarySearchTree(root: root, data: 50)
        tree.createBinarySearchTree(root: root, data: 1)
        
        TreeTraversal().inOrderTraversal(node: root)

        //     10
        //    /   \
        //   5     40
        //  /  \      \
        // 1    7      50
    }
    
    // MARK: Tree Identical
    
    private func identicalTree() {
        let root1 = CreateTree.sharedInstance.createDummyBinaryTree1()
//        let root2 = CreateTree.sharedInstance.createDummyBinaryTree1()
        let root2 = CreateTree.sharedInstance.createDummyBinaryTree2()
        
        let identical = TreesIdentical().checkTreesIdentical(root1: root1, root2: root2)
        outputLabel.text = "\(identical)"
        print(identical)
    }
    
    // MARK: Tree Mirror
    private func mirrorTree() {
        let root1 = CreateTree.sharedInstance.createDummyBinaryTree1()
//        let root2 = CreateTree.sharedInstance.createDummyBinaryTree1()
        let root2 = CreateTree.sharedInstance.createDummyBinaryTree2()
        
        let mirror = TreesMirror().checkTreesMirror(root1: root1, root2: root2)
        outputLabel.text = "\(mirror)"
        print(mirror)
    }
    
    // MARK: Leaf nodes
    private func printLeafNodes() {
        let root1 = CreateTree.sharedInstance.createDummyBinaryTree3()
        let root2 = CreateTree.sharedInstance.createDummyBinaryTree4()
        let root3 = CreateTree.sharedInstance.createBST1()
        
        LeafNodes().printLeafNodes(node: root1)
        LeafNodes().printLeafNodes(node: root2)
        print("For Binary Tree: \n")
        LeafNodes().printLeafNodes(node: root3)
    }

    // MARK: Fibonacci Numbers
    private func fibonacciNumbers() {
//        let num = FibonacciNumbers().fib(9)
//        let num = FibonacciNumbers().fibUsingDP1(9)
        let num = FibonacciNumbers().fibUsingDP2(9)

        outputLabel.text = "\(num)"
    }
    
    // MARK: LIS
    
    private func longestSubsequence() {
        let res = LIS().longestIncreasingSubsequence()
        outputLabel.text = "\(res)"
    }
    
    // MARK: Array Rotate
    private func rotateArray() {
        ArrayRotate().rotateArray(2)
    }
}

