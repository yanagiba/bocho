# Bocho

![GitHub Actions Status](https://github.com/yanagiba/bocho/actions/workflows/tests.yaml/badge.svg)
[![codecov](https://codecov.io/gh/yanagiba/bocho/branch/master/graph/badge.svg)](https://codecov.io/gh/yanagiba/bocho)
![Swift 5.5](https://img.shields.io/badge/swift-5.5-brightgreen.svg)
![Swift Package Manager](https://img.shields.io/badge/SPM-ready-orange.svg)
![Platforms](https://img.shields.io/badge/platform-%20Linux%20|%20macOS%20-red.svg)
![License](https://img.shields.io/github/license/yanagiba/bocho.svg)


Bocho is a set of utility libraries with common code that supports Yanagiba modules.

Bocho is part of [Yanagiba Project](https://github.com/yanagiba).
Yanagiba umbrella project is a toolchain of compiler modules,
libraries, and utilities, written in Swift and for Swift.

* * *

## Requirements

- [Swift 5.5](https://swift.org/download/)

## Usage

### Embed Into Your Project

Add the bocho dependency to `Package.swift`:

```swift
// swift-tools-version:5.5

import PackageDescription

let package = Package(
  name: "MyPackage",
  dependencies: [
    .package(url: "https://github.com/yanagiba/bocho.git", from: "0.18.10")
  ],
  targets: [
    .target(name: "MyTarget", dependencies: ["Bocho"]),
  ],
  swiftLanguageVersions: [.v5]
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

## License

Bocho is available under the Apache License 2.0.
See the [LICENSE](LICENSE) file for more info.
