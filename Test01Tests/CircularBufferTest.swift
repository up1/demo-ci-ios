import XCTest
@testable import Test01

class CircularBufferTest: XCTestCase {

    func testAfter_write_A_should_read_A() {
        let buffer = CircularBuffer()
        buffer.write(input: "A")
        XCTAssertEqual("A", buffer.read(), "Result should be A")
    }

    func testAfter_write_B_should_read_B() {
        let buffer = CircularBuffer()
        buffer.write(input: "B")
        XCTAssertEqual("B", buffer.read(), "Result should be B")
    }

    func testAfter_write_AB_should_read_AB() {
        let buffer = CircularBuffer()
        buffer.write(input: "A")
        buffer.write(input: "B")
        XCTAssertEqual("A", buffer.read(), "Result should be A")
        XCTAssertEqual("B", buffer.read(), "Result should be B")
    }

    func testAfter_write_AB_and_read_AB_should_empty() {
        let buffer = CircularBuffer()
        buffer.write(input: "A")
        buffer.write(input: "B")
        buffer.read()
        buffer.read()
        XCTAssertTrue(buffer.checkEmpty(), "Buffer should be empty")
    }

    func testAfter_write_more_and_read_more_should_empty() {
        let buffer = CircularBuffer()
        buffer.write(input: "A")
        buffer.read()
        buffer.write(input: "B")
        buffer.write(input: "C")
        buffer.read()
        buffer.read()
        XCTAssertTrue(buffer.checkEmpty(), "Buffer should be empty")
    }


    func testAfter_create_buffer_should_empty() {
        let buffer = CircularBuffer()
        XCTAssertTrue(buffer.checkEmpty(), "Buffer should be empty")

    }

    func testAfter_create_buffer_and_write_A_should_not_empty() {
        let buffer = CircularBuffer()
        buffer.write(input: "A")
        XCTAssertFalse(buffer.checkEmpty(), "Buffer should not empty")

    }

}
