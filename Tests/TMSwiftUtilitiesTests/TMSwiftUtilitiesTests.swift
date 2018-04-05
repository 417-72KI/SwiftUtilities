import XCTest
@testable import TMSwiftUtilities

class TMSwiftUtilitiesTests: XCTestCase {

    func test_StringExtension() {
        XCTAssertEqual("/var/lib/www".lastPathComponent, "www")
        XCTAssertEqual("~/Documents/hoge.txt".pathExtension, "txt")
    }

    func test_ArrayExtension() {
        XCTAssertEqual(["a", "b", "c", "b"].unique(), ["a", "b", "c"])
    }
    
    func test_ColorExtension() {
        XCTAssertEqual(["a", "b", "c", "b"].unique(), ["a", "b", "c"])
    }
    
    static var allTests = [
        ("StringExtension", test_StringExtension),
        ("ArrayExtension", test_ArrayExtension),
        ("ColorExtension", test_ColorExtension)
    ]
}
