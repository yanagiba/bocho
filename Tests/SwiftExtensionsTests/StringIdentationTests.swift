/*
   Copyright 2017 Ryuichi Laboratories and the Yanagiba project contributors

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
*/

import XCTest

@testable import Bocho

class StringIdentationTests : XCTestCase {
  func testIdentationInitializer() {
    XCTAssertEqual(String(indentation: 0), "")
    XCTAssertEqual(String(indentation: 1), "  ")
    XCTAssertEqual(String(indentation: 2), "    ")
    XCTAssertEqual(String(indentation: 5), "          ")
  }

  func testStaticIndent() {
    XCTAssertEqual(String.indent, "  ")
  }

  func testIndented() {
    XCTAssertEqual("single line".indented, "  single line")
    XCTAssertEqual("line 1\n  line 2".indented, "  line 1\n    line 2")
    XCTAssertEqual(
      """
      line1
      line2
      line3
      line4
      """.indented,
      """
        line1
        line2
        line3
        line4
      """
    )
    XCTAssertEqual("\n\n\n".indented, "  \n  \n  \n  ")
  }

  static var allTests = [
    ("testIdentationInitializer", testIdentationInitializer),
    ("testStaticIndent", testStaticIndent),
    ("testIndented", testIndented),
  ]
}
