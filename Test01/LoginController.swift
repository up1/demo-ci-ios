import Foundation

class LoginController: NSObject {

    var loginProtocol: LoginProtocol!

    func login(username: String, password: String) {
        if false {
            loginProtocol.success()
        }
        loginProtocol.fail()
    }

}
