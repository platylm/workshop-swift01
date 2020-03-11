import XCTest
@testable import Workshop01

class Workshop01Tests: XCTestCase {
    
    func testHello_with_pakkad_should_sayHi_Hi_pakkad() {
        let hello = Hello(name: "pakkad")
        let acutalResult = hello.sayHi()
        XCTAssertEqual("Hi, pakkad", acutalResult)
    }
}
