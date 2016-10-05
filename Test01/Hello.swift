import Foundation

class Hello {

    var name: String

    init(name: String) {
        self.name = name
    }

    func greeting() -> String {
        return "Hello \(self.name)"
    }

    func greeting2() -> String {
        return "Hello \(self.name)"
    }
}
