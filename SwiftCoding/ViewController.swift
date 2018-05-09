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
        traverseTree()
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
        let root = CreateTree().createBinaryTree()
        print("PreOrder traversal: \n")
        tree.preOrderTraversal(node: root)
        
        print("InOrder traversal: \n")
        tree.inOrderTraversal(node: root)
        
        print("PostOrder traversal: \n")
        tree.postOrderTraversal(node: root)

    }
    
}

