# Bocho

[![Travis CI Status](https://api.travis-ci.org/yanagiba/bocho.svg?branch=master)](https://travis-ci.org/yanagiba/bocho)
[![codecov](https://codecov.io/gh/yanagiba/bocho/branch/master/graph/badge.svg)](https://codecov.io/gh/yanagiba/bocho)
![Swift 4.0-beta](https://img.shields.io/badge/swift-4.0‐beta-brightgreen.svg)
![Swift Package Manager](https://img.shields.io/badge/SPM-ready-orange.svg)
![Platforms](https://img.shields.io/badge/platform-%20Linux%20|%20macOS%20-red.svg)
![License](https://img.shields.io/github/license/yanagiba/bocho.svg)


Bocho is a set of utility libraries with common code that supports Yanagiba modules.

Bocho is part of [Yanagiba Project](http://yanagiba.org).
Yanagiba umbrella project is a toolchain of compiler modules,
libraries, and utilities, written in Swift and for Swift.

* * *

## Requirements

- [Swift 4.0](https://swift.org/download/)

## Usage

### Embed Into Your Project

Add the bocho dependency to `Package.swift`:

```swift
// swift-tools-version:4.0

import PackageDescription

let package = Package(
  name: "MyPackage",
  dependencies: [
    .package(url: "https://github.com/yanagiba/bocho.git", from: "0.1.0")
  ],
  targets: [
    .target(name: "MyTarget", dependencies: ["Bocho"]),
  ],
  swiftLanguageVersions: [4]
)
```

### Use Bocho in Your Code

```swift
import Bocho

let ttyColoredString = "foobar".colored(with: .red)
```

Browse source code for other applications.

## Development

### Build & Run

Building the entire project can be done by simply calling:

```bash
make
```

This is equivalent to

```bash
swift build
```

### Running Tests

Compile and run the entire tests by:

```bash
make test
```

## Contact

Ryuichi Sai

- http://github.com/ryuichis
- ryuichi@yanagiba.org

## License

Bocho is available under the Apache License 2.0.
See the [LICENSE](LICENSE) file for more info.
