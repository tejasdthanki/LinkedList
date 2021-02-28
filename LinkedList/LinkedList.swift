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
    // MARK: - get first node
    public var first:Node<T>?{
        return head
    }
    
    // MARK: - get last node
    public var last:Node<T>?{
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
    
    // MARK: - addNode
    public func addNode(data: T){
        let newNode:Node = Node(data: data)
        if let lastNode = last{
            lastNode.next = newNode
            newNode.prev = lastNode
        }else{
            head = newNode
        }
 
    }
    
    // MARK: - totalData
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
    
    // MARK: - print records
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
    
    // MARK: - get records from given index
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
    
    // MARK: - insert record at given index
    public func insertNode(data:T,index:Int){
        let newNode:Node = Node.init(data: data)
        if(index == 0){
            newNode.next = head?.next
            head?.prev = newNode
            head = newNode
        }else{
            let currentNode = getRecord(index: index)
            let prevNode = currentNode?.prev
            newNode.prev = prevNode
            newNode.next = currentNode
            prevNode?.next = newNode
            currentNode?.prev = newNode
        }
    }
    
    // MARK: - remove node at given index
    public func removeNode(index:Int){
        var nodeToRemove = getRecord(index: index)
        let nextNode = nodeToRemove?.next
        let prevNode = nodeToRemove?.prev
        prevNode?.next = nextNode
        nodeToRemove?.next = nil
        nodeToRemove = nil
    }
    
    // MARK: - reverse list
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
    
    // MARK: - reverse using recursion
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
