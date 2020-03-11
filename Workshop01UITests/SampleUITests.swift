import XCTest

class SampleUITests: XCTestCase {

    func testExample() {
        let app = XCUIApplication()
        setupSnapshot(app)
        app.launch()
        snapshot("Step 01")
        
        let inputtfTextField = app.textFields["inputTF"]
        inputtfTextField.tap()
        inputtfTextField.typeText("pakkad")
        snapshot("Step 02")
        
        let xxxbtnButton = app.buttons["xxxBtn"]
        xxxbtnButton.tap()
        
        let resulttlbStaticText = app.staticTexts["resultLB"]
        XCTAssertEqual("Result", resulttlbStaticText.label)
        snapshot("Step 03")
    }

}
