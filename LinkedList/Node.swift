//
//  Node.swift
//  LinkedList
//
//  Created by Tejas Thanki on 24/02/21.
//

import UIKit

public class Node<T>:Equatable {
    public static func == (lhs: Node<T>, rhs: Node<T>) -> Bool {
        return lhs.next == rhs.next && lhs.prev == rhs.prev
    }
    
    var data: T
    var next:Node?
    weak var prev:Node?
    
    init(data:T) {
        self.data = data
    }
    
}

