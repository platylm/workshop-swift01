import Foundation

class MyRandomNumber {
    
    var random: RandomX!
    
    func getNumber() -> Int {
        return random.get() + 1
    }
}

class RandomX {
    func get() -> Int {
        Int.random(in: 1...10)
    }
}
