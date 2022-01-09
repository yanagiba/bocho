/*
   Copyright 2015-2022 Ryuichi Intellectual Property and the Yanagiba project contributors

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

import Foundation

public extension String {
  var fileHandle: FileHandle {
    let outputPath = absolutePath
    let fileManager = FileManager.default
    if fileManager.fileExists(atPath: outputPath) {
      _ = try? "".write(toFile: outputPath, atomically: true, encoding: .utf8)
    } else {
      if !fileManager.createFile(atPath: outputPath, contents: nil) {
        _ = try? fileManager.createDirectory(atPath: parentPath, withIntermediateDirectories: true)
        _ = fileManager.createFile(atPath: outputPath, contents: nil)
      }
    }
    if let fileHandle = FileHandle(forWritingAtPath: outputPath) {
      return fileHandle
    }
    return .standardOutput
  }
}
