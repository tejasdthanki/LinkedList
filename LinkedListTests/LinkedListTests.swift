//
//  LinkedListTests.swift
//  LinkedListTests
//
//  Created by Tejas Thanki on 24/02/21.
//

import XCTest
@testable import LinkedList


class LinkedListTests: XCTestCase {
    

    func testAddNode(){
        let list:LinkedList = LinkedList<Int>()
        list.addNode(data: 2)
        list.addNode(data: 4)
        list.addNode(data: 8)
        XCTAssertEqual(list.printData, "[ 2, 4, 8 ]")
    }
    
    func testFirstElement(){
        let list:LinkedList = LinkedList<Int>()
        list.addNode(data: 2)
        XCTAssertEqual(list.first?.data, 2)
        
    }
    

    func testDataAtIndex(){
        let list:LinkedList = LinkedList<Int>()
        list.addNode(data: 2)
        list.addNode(data: 4)
        list.addNode(data: 8)
        let prevNode = list.getRecord(index: 1)
        let node = list.getRecord(index: 2)
        XCTAssertEqual(node?.data, 8)
        XCTAssertTrue(prevNode === node?.prev)
    }
    
    func testDelete(){
        let list:LinkedList = LinkedList<Int>()
        list.addNode(data: 2)
        list.addNode(data: 4)
        var node = list.getRecord(index: 1)
        XCTAssertEqual(node?.data, 4)
        list.removeNode(index: 1)
        node = list.getRecord(index: 1)
        XCTAssertNil(node)
        XCTAssertFalse(node?.data == 4)
        
    }
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

}
