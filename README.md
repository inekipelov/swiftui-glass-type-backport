# GlassBackport

`GlassBackport` is a tiny Swift Package that backports only one SwiftUI-related
API surface: `Backported.Glass`.

It builds on top of
[`Backport`](https://github.com/inekipelov/swift-backport-pattern) and keeps the
backport wrapper pattern consistent with the source package.

<p align="center">
  <a href="https://swift.org"><img src="https://img.shields.io/badge/Swift-6.0+-F05138?logo=swift&logoColor=white" alt="Swift 6.0+"></a>
  <a href="https://developer.apple.com/ios/"><img src="https://img.shields.io/badge/iOS-13.0+-CAFC63?logo=apple" alt="iOS 13.0+"></a>
  <a href="https://developer.apple.com/macos/"><img src="https://img.shields.io/badge/macOS-10.15+-CAFC63?logo=apple" alt="macOS 10.15+"></a>
  <a href="https://developer.apple.com/tvos/"><img src="https://img.shields.io/badge/tvOS-13.0+-CAFC63?logo=apple" alt="tvOS 13.0+"></a>
  <a href="https://developer.apple.com/watchos/"><img src="https://img.shields.io/badge/watchOS-6.0+-CAFC63?logo=apple" alt="watchOS 6.0+"></a>
  <a href="https://developer.apple.com/visionos/"><img src="https://img.shields.io/badge/visionOS-1.0+-CAFC63?logo=apple" alt="visionOS 1.0+"></a>
</p>

## Usage

```swift
import Backport
import GlassBackport

let regular = Backported.Glass.regular
let clear = Backported.Glass.clear
let identity = Backported.Glass.identity

let tintedInteractive = Backported.Glass.regular
    .tint(.blue)
    .interactive()
```

## Installation

Add the package to your `Package.swift` dependencies:

```swift
.package(url: "https://github.com/inekipelov/swiftui-glass-type-backport.git", from: "0.0.1")
```

## Dependency

This package depends on:

- [Backport](https://github.com/inekipelov/swift-backport-pattern)
