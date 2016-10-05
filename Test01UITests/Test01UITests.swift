import XCTest

class Test01UITests: XCTestCase {

    override func setUp() {
        super.setUp()

        continueAfterFailure = false
        let app = XCUIApplication()
        setupSnapshot(app)
        app.launch()

    }

    override func tearDown() {
        super.tearDown()
    }

    func testExample() {
        let app = XCUIApplication()
        snapshot("step_01")
        let username = app.textFields["username"]
        username.tap()
        username.typeText("")
        snapshot("step_02")
        let password = app.textFields["password"]
        password.tap()
        password.typeText("password")
        snapshot("step_03")
        app.buttons["loginButton"].tap()
        snapshot("step_04")

        XCTAssertEqual("Login fail", app.staticTexts["result"].label)



    }

}
