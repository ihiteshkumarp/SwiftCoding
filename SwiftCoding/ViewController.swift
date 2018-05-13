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
//        firstRepetingChar()
//        frequentlyOccurringItem()
//        commonElementsInSortedArrays()
//        rotationOfAnother()
        binarySearch()
        
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
    
    // MARK: First Repeting Char
    private func firstRepetingChar() {
        let obj = FirstRepetingChar()
        guard let output = obj.firstRepetingChar(str: "DBCABA") else {
            outputLabel.text = "No char"
            return
        }
        
//        let nonObj = FirstNonRepetingChar()
//        guard let output = nonObj.firstNonRepetingChar(str: "geeksforgeeks") else {
//            outputLabel.text = "No char"
//            return
//        }
        
        outputLabel.text = "\(output)"
    }
    
    // MARK: FrequentlyOccurringItem
    private func frequentlyOccurringItem() {
        let obj = FrequentlyOccurringItem()
//        let output = obj.mostFrequestItem([10, 20, 10, 20, 30, 20, 20])
        let output = obj.mostFrequestItemUsingDict([10, 20, 10, 20, 30, 20, 20])
        
        guard output > 0 else {
            outputLabel.text = "No output"
            return
        }
       outputLabel.text = "\(output)"
    }
    
    //MARK: CommonElementsInSortedArrays
    private func commonElementsInSortedArrays() {
        let obj = CommonElementsInSortedArrays()
        let arr1 = [1, 4, 5, 8, 9, 11]
        let arr2 = [2, 5, 8, 10, 11, 15]
        let output = obj.commentElementsFromSortedArrays(arr1: arr1, arr2: arr2)
        print(output)
    }
    
    // MARK: RotationOfAnother
    private func rotationOfAnother() {
        let obj = RotationOfAnother()
        let arr1 = [0, 1, 2, 3, 0]
        let arr2 = [0, 1, 1, 2, 3 ]
//        let arr1 = [1, 4, 5, 8, 9, 11]
//        let arr2 = [9, 11, 1, 4, 5, 8]
//        let isRorated = obj.isRotationOfAnother(arr1: arr1, arr2: arr2)
        
        let isRorated = obj.isRotationOfAnotherString(arr1: "ABACD", arr2: "CDABA")
        
        guard isRorated else {
            outputLabel.text = "No"
            return
        }
        outputLabel.text = "Yes"
    }
    
    // MARK: Binary search in array
    
    private func binarySearch() {
        let obj = BinarySearch()
        let arr = [1, 2, 3, 4, 5, 6, 7, 8]
        var input = 0
        if let text = inputField.text, let data = Int(text) {
            input = data
        }
        let sear = obj.searchElement(arr: arr, data: input, l: 0, r: arr.count - 1)
        
        outputLabel.text = "\(sear)"
    }
}

