import XCTest
@testable import Test01

class RangeTest: XCTestCase {


    func testData1() {
        let myRange = MyRange()
        XCTAssertEqual("12345", myRange.showResult("[1,5]"))

    }

    func testStart_with_include() {
        let myRange = MyRange()
        XCTAssertTrue(myRange.startWithInclude("[1,5]"))
    }

    func testStart_with_exclude() {
        let myRange = MyRange()
        XCTAssertFalse(myRange.startWithInclude("(1,5]"))
    }

    func testEnd_with_include() {
        let myRange = MyRange()
        XCTAssertTrue(myRange.endWithInclude("[1,5]"))
    }

    func testEnd_with_exclude() {
        let myRange = MyRange()
        XCTAssertFalse(myRange.endWithInclude("[1,5)"))
    }

    func testStart_with_include_should_1() {
        let myRange = MyRange()
        XCTAssertEqual(1, myRange.startWith("[1,5]"))
    }

    func testStart_with_excludeclude_should_2() {
        let myRange = MyRange()
        XCTAssertEqual(2, myRange.startWith("(1,5]"))
    }












    func testExample() {
        let data = "[1,5]"
        let startNumber = data[data.startIndex.advancedBy(1)]
        let endNumber = data[data.startIndex.advancedBy(3)]

        XCTAssertTrue(data.hasPrefix("["))
        XCTAssertTrue(data.hasSuffix("]"))
        XCTAssertEqual("1", startNumber)
        XCTAssertEqual("5", endNumber)
    }


}
