import UIKit

protocol LoginProtocol {
    func success()
    func fail()
}

class ViewController: UIViewController {

    @IBOutlet var loginControler: LoginController!

    @IBOutlet weak var resultLB: UILabel!

    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var usernameTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func onLogin(sender: UIButton) {
        loginControler.loginProtocol = self
        loginControler.login("", password: "")
    }

}

extension ViewController: LoginProtocol {
    func success() {
        self.resultLB.text = "Login success"
    }
    func fail() {
       self.resultLB.text = "Login fail"
    }
}
