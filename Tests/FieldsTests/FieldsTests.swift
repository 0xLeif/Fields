import XCTest
@testable import Fields

final class FieldsTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(Fields().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
