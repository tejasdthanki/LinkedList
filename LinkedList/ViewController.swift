//
//  ViewController.swift
//  LinkedList
//
//  Created by Tejas Thanki on 24/02/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let list:LinkedList = LinkedList<Any>()
        var data = list.printData
        print("Before adding \(data)")
        list.addNode(data: 2)
        data = list.printData
        print("List arefresh \(data)")
        list.addNode(data: 5)
        data = list.printData
        print("List arefresh \(data)")
        list.addNode(data: 8)
        data = list.printData
        print("List arefresh \(data)")
        list.addNode(data: 10)
        data = list.printData
        print("final List \(data)")
        
        list.insertNode(data: 7, index: 2)
        data = list.printData
        print("final List after adding \(data)")
        
        list.removeNode(index: 2)
        data = list.printData
        print("final List after remove \(data)")
        
//        list.reverseList()
//        data = list.printData
//        print("reverse data \(data)")
        
        list.reverseUsingRecusion(node: list.first!)
        data = list.printData
        print("reverse data using recursion \(data)")
        // Do any additional setup after loading the view.
    }


}

