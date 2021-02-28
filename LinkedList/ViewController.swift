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
        
      // setupData()
        // Do any additional setup after loading the view.
 
    }

    func setupData(){
        let list:LinkedList = LinkedList<Any>()
        var data = list.printData
        print("Before adding \(data)")
        list.addNode(data: 2)
        data = list.printData
        print("List arefresh \(data)")
        list.addNode(data: 5)
        data = list.printData
        print("List arefresh \(data)")
        list.addNode(data: "asp")
        data = list.printData
        print("List arefresh \(data)")
        list.addNode(data: 10)
        data = list.printData
        print("final List \(data)")
        
        list.insertNode(data: 7, index: 2)
        data = list.printData
        print("final List after adding \(data)")
        
        print(list.totalData)
        list.removeNode(index: 2)
        data = list.printData
        print("final List after remove \(data)")
        print(list.totalData)
        
        list.reverseUsingRecusion(node: list.first!)
        data = list.printData
        print("reverse data using recursion \(data)")
    }

}

