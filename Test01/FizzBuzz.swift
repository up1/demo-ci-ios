import Foundation

protocol Rule {
    func say(number: Int) -> String
    func check(number: Int) -> Bool
}

class FizzRule: Rule {
    func say(number: Int) -> String {
        return "FIZZ"
    }
    func check(number: Int) -> Bool {
        return number % 3 == 0
    }
}

class BuzzRule: Rule {
    func say(number: Int) -> String {
        return "BUZZ"
    }
    func check(number: Int) -> Bool {
        return number % 5 == 0
    }
}

class FizzBuzzRule: Rule {
    func say(number: Int) -> String {
        return "FIZZBUZZ"
    }
    func check(number: Int) -> Bool {
        return number % 15 == 0
    }
}

class XXXRule: Rule {
    func say(number: Int) -> String {
        return "XXX"
    }
    func check(number: Int) -> Bool {
        return number % 7 == 0
    }
}

class DefaultRule: Rule {
    func say(number: Int) -> String {
        return "\(number)"
    }
    func check(number: Int) -> Bool {
        return true
    }
}

class FizzBuzz {
    func say(number: Int) -> String {
        var myTargetRule: Rule = DefaultRule()
        let rules: [Rule] = [FizzBuzzRule(), FizzRule(), BuzzRule(), XXXRule()]
        for rule in rules {
            if rule.check(number) {
                myTargetRule = rule
                break
            }
        }

        return myTargetRule.say(number)
    }
}
