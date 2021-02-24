//
//  Node.swift
//  LinkedList
//
//  Created by Tejas Thanki on 24/02/21.
//

import UIKit

public class Node<T> {
    var data: T
    var next:Node?
    weak var prev:Node?
    
    init(data:T) {
        self.data = data
    }
    
}

