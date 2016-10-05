import Foundation

class CircularBuffer {
    var writePointer: Int = 0
    var readPointer: Int = 0
    var inputs = [String](count:5, repeatedValue: "")
    func checkEmpty() -> Bool {
        return self.readPointer ==  self.writePointer
    }

    func write(input input: String) {
        self.inputs[self.writePointer] = input
        self.writePointer += 1
    }

    func read() -> String {
        let current = self.readPointer
        self.readPointer += 1
        return self.inputs[current]
    }

}
