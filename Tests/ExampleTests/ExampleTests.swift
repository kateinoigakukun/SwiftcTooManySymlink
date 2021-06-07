import XCTest
@testable import Example
import Foundation

final class ExampleTests: XCTestCase {
    func test01() throws {
        let p = Process()
        p.executableURL = URL(fileURLWithPath: "/usr/bin/env")
        p.arguments = ["swiftc", "-v"]
        try p.run()
        p.waitUntilExit()
    }
}
