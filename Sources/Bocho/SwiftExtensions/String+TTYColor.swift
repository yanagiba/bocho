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

public enum TTYColor : Int {
  case black
  case red
  case green
  case yellow
  case blue
  case magenta
  case cyan
  case white

  case `default`
}

public extension TTYColor {
  var ttyCode: String {
    let offset: Int
    switch self {
    case .default:
      offset = 0
    default:
      offset = 30 + rawValue
    }
    return "\u{001B}[\(offset)m"
  }
}

public extension String {
  func colored(with color: TTYColor = .default) -> String {
    let defaultColor = TTYColor.default.ttyCode
    return "\(color.ttyCode)\(self)\(defaultColor)"
  }
}
