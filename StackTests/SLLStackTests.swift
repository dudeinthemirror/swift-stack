//
//  SLLStackTests.swift
//  SLLStackTests
//
//  Created by dudeinthemirror on 11/5/15.
//  Copyright © 2015 dudeinthemirror. All rights reserved.
//

import XCTest
@testable import Stack

class SLLStackTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testInitEmptyStack() {
        let emptyStack = SLLStack<String>()

        XCTAssertNil(emptyStack.peek())
    }

    func testPeek() {
        let stck = SLLStack<String>()
        stck.push("one")
        stck.push("two")
        stck.push("three")
        stck.push("four")
        let headData: String? = stck.peek()
        XCTAssertEqual(headData, "four", "Expecting \"four\", received \(headData)")
        XCTAssertNotNil(headData, "headData should not be nil")

    }

    func testPop() {
        let stck = SLLStack<String>()
        stck.push("one")
        stck.push("two")
        stck.push("three")
        stck.push("four")
        let popData: String? = stck.pop()
        XCTAssertEqual(popData, "four", "Expecting \"four\", received \(popData)")
        XCTAssertNotNil(popData, "headData should not be nil")

        // Head should now be "three"
        let peekData: String? = stck.peek()
        XCTAssertEqual(peekData, "three", "Expecting \"three\", received \(peekData)")
        XCTAssertNotNil(peekData, "peekData should not be nil")
    }


    func testPushPop() {
        let stck = SLLStack<String>()
        stck.push("one")
        stck.push("two")
        stck.push("three")
        stck.push("four")
        let pop4: String? = stck.pop()
        let pop3: String? = stck.pop()
        let pop2: String? = stck.pop()
        let pop1: String? = stck.pop()

        XCTAssertEqual(pop4, "four", "Expecting \"four\", received \(pop4)")
        XCTAssertEqual(pop3, "three", "Expecting \"three\", received \(pop3)")
        XCTAssertEqual(pop2, "two", "Expecting \"two\", received \(pop2)")
        XCTAssertEqual(pop1, "one", "Expecting \"one\", received \(pop1)")

        XCTAssertTrue(stck.isEmpty(), "Stack should be empty")
    }
    
//    func testPerformanceExample() {
//        self.measureBlock {
//        }
//    }

}
