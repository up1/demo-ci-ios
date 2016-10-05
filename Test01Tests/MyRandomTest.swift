import XCTest
@testable import Test01

class MyRandomTest: XCTestCase {

    func testProcess_should_true() {
        let myRandom = StubRandom5()
        let process = MyProcess()
        process.myRandom = myRandom
        XCTAssertTrue(process.start())
    }

    func testProcess_should_false() {
        let myRandom = StubRandom6()
        let process = MyProcess()
        process.myRandom = myRandom
        XCTAssertFalse(process.start())
    }
    
    func testProcess_should_false2() {
        let myRandom = StubRandom6()
        let process = MyProcess()
        process.myRandom = myRandom
        XCTAssertTrue(process.start())
    }

    func testProcess_should_call_exec_1_time() {
        let myRandom = MockRandom()
        let process = MyProcess()
        process.myRandom = myRandom
        process.start()
        XCTAssertTrue(myRandom.called)
    }

}

class MockRandom: MyRandom {
    var called: Bool = false
    override func exec() -> Int {
        self.called = true
        return 0
    }
}

class StubRandom5: MyRandom {
    override func exec() -> Int {
        return 5
    }
}

class StubRandom6: MyRandom {
    override func exec() -> Int {
        return 6
    }
}
