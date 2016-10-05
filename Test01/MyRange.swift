import Foundation

class MyRange {
    func showResult(input: String) -> String {
        var result: String = ""
        for number in self.startWith(input)...5 {
            result += "\(number)"
        }
        return result
    }

    func startWith(input: String) -> Int {
        let numStart: String = String(input.startIndex.advancedBy(1))
        if startWithInclude(input) {
            return Int(numStart)!
        }
        return Int(numStart)! + 1
    }

    func startWithInclude(input: String) -> Bool {
        return input.hasPrefix("[")
    }

    func endWithInclude(input: String) -> Bool {
        return input.hasSuffix("]")
    }
}
