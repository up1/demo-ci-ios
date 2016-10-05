//
//  Test01Tests.swift
//  Test01Tests
//
//  Created by somkiat puisungnoen on 10/4/2559 BE.
//  Copyright © 2559 ___UP1___. All rights reserved.
//

import XCTest
@testable import Test01

class Test01Tests: XCTestCase {

    func testValidateName2() {
        let hello = Hello(name: "Up1")
        let actualResult = hello.greeting()
        XCTAssertEqual("Hello Up1", actualResult)
    }

    func testValidateName() {
        let hello = Hello(name: "Somkiat")
        let actualResult = hello.greeting()
        XCTAssertEqual("Hello Somkiat", actualResult)
    }


}
