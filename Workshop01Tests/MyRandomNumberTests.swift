import XCTest
@testable import Workshop01

class MyRandomNumberTests: XCTestCase {

    func test_random_number_should_be_5() {
        let stub = StubRandom5()
        
//        let number = MyRandomNumber(stub) // Constructor injection
//        number.random = stub // Property injection
//        number.getNumber(stub) // Method injection
        
        let number = MyRandomNumber()
        number.random = stub
        XCTAssertEqual(6, number.getNumber())
    }
    
    func test_should_be_one_time() {
        let spy = SpyRandom()
        let number = MyRandomNumber()
        number.random = spy
        _ = number.getNumber()
        XCTAssertTrue(spy.verify(expected: 1))
    }

}

class SpyRandom: RandomX {
    var counter = 0
    func verify(expected: Int) -> Bool {
        return self.counter == expected
    }
    
    override func get() -> Int {
        self.counter += 1
        return 90000
    }
    
}

class StubRandom5: RandomX {
    override func get() -> Int {
        return 5
    }
}
