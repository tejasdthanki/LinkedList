//
//  LinkedList.swift
//  LinkedList
//
//  Created by Tejas Thanki on 24/02/21.
//

import UIKit

public class LinkedList<T> {
    private var head:Node<T>?
    public var isEmpty: Bool{
        return head == nil
    }
    public var first:Node<T>?{
        return head
    }
    
    public var last:Node<T>?{
        /*
        guard var node = head else {
            return nil
        }
        while let next = node.next {
            node = next
        }
        return node
         */
        if head == nil{
            return nil
        }else{
            var node = head
            while let next = node?.next {
                node = next
            }
            return node
        }
    }
    
    init() {
        
    }
    
    public func addNode(data: T){
        let newNode:Node = Node(data: data)
        if let lastNode = last{
            lastNode.next = newNode
        }else{
            head = newNode
        }
    }
    
    public var totalData:Int{
        guard var node = head else {
            return 0
        }
        var count:Int = 1
        while let next = node.next {
            node = next
            count = count + 1
        }
        return count
    }
    
    public var printData:String{
        var str:String = "[ "
        var node = head
        while node != nil {
            str = [str,"\(node!.data)"].joined()
            node = node!.next
            if node != nil { str += ", " }
        }
        
        return [str," ]"].joined()
    }
    
    public func getRecord(index:Int) -> Node<T>?{
        if(index == 0){
            return head
        }else{
            var node = head?.next
            for _ in 1 ..< index{
                node = node?.next
                if(node == nil){
                    break
                }
            }
            return node
        }
    }
    
    public func insertNode(data:T,index:Int){
        let newNode:Node = Node.init(data: data)
        if(index == 0){
            newNode.next = head?.next
            head = newNode
        }else{
            // getting index - 1 node
            let currentNode = getRecord(index: index)
            let prevNode = getRecord(index: index - 1)
            newNode.next = currentNode
            prevNode?.next = newNode
        }
    }
    
    public func removeNode(index:Int){
        var nodeToRemove = getRecord(index: index)
        let nextNode = nodeToRemove?.next
        let prevNode = getRecord(index: index - 1)
        prevNode?.next = nextNode
        nodeToRemove?.next = nil
        nodeToRemove = nil
    }
    
    public func reverseList(){
        var current = head
        var next:Node<T>?
        var prev:Node<T>?
        
        while current != nil {
            next = current?.next
            current?.next = prev
            prev = current
            current = next
        }
        head = prev
    }
    
    public func reverseUsingRecusion(node:Node<T>){
        if(node.next == nil){
            head = node
            return
        }
        reverseUsingRecusion(node: node.next!)
        let qNode = node.next
        qNode?.next = node
        node.next = nil
    }
}
