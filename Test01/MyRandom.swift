import Foundation

class MyRandom {
    func exec() -> Int {
        return Int(arc4random())
    }
}

class MyProcess {

    var myRandom: MyRandom!

    func start() -> Bool {
        let number = myRandom.exec()
        if number == 5 {
            return true
        }
        return false
    }

}
