import XCTest
@testable import Test01

class FizzBuzzTest: XCTestCase {

    func test1_should_say_1() {
        let fizzBuzz = FizzBuzz()
        XCTAssertEqual("1", fizzBuzz.say(1))
    }

    func test2_should_say_2() {
        let fizzBuzz = FizzBuzz()
        XCTAssertEqual("2", fizzBuzz.say(2))
    }

    func test3_should_say_FIZZ() {
        let fizzBuzz = FizzBuzz()
        XCTAssertEqual("FIZZ", fizzBuzz.say(3))
    }

    func test4_should_say_4() {
        let fizzBuzz = FizzBuzz()
        XCTAssertEqual("4", fizzBuzz.say(4))
    }

    func test5_should_say_BUZZ() {
        let fizzBuzz = FizzBuzz()
        XCTAssertEqual("BUZZ", fizzBuzz.say(5))
    }

    func test6_should_say_FIZZ() {
        let fizzBuzz = FizzBuzz()
        XCTAssertEqual("FIZZ", fizzBuzz.say(6))
    }

    func test9_should_say_FIZZ() {
        let fizzBuzz = FizzBuzz()
        XCTAssertEqual("FIZZ", fizzBuzz.say(9))
    }

    func test10_should_say_BUZZ() {
        let fizzBuzz = FizzBuzz()
        XCTAssertEqual("BUZZ", fizzBuzz.say(10))
    }

    func test15_should_say_FIZZBUZZ() {
        let fizzBuzz = FizzBuzz()
        XCTAssertEqual("FIZZBUZZ", fizzBuzz.say(15))
    }

    func test30_should_say_FIZZBUZZ() {
        let fizzBuzz = FizzBuzz()
        XCTAssertEqual("FIZZBUZZ", fizzBuzz.say(30))
    }

    func test7_should_say_XXX() {
        let fizzBuzz = FizzBuzz()
        XCTAssertEqual("XXX", fizzBuzz.say(7))
    }



}
