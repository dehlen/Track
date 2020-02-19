import XCTest
import Foundation

func XCTAssertDumpsEqual<T>(_ lhs: @autoclosure () -> T,
                                   _ rhs: @autoclosure () -> T,
                                   message: @autoclosure () -> String = "Expected dumps to be equal.",
                                   file: StaticString = #file,
                                   line: UInt = #line) {
    XCTAssertEqual(String(dumping: lhs()), String(dumping: rhs()), message(), file: file, line: line)
}
