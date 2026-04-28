# GlassBackport

`GlassBackport` is a tiny Swift Package that backports the modern
`SwiftUI.Glass` type through the reusable `Backport` wrapper.

It builds on [`swift-backport-pattern`](https://github.com/inekipelov/swift-backport-pattern)
and focuses on one API surface: `Backported.Glass`.

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
import SwiftUI
import GlassBackport

let regular = Backported.Glass.regular
let clear = Backported.Glass.clear
let identity = Backported.Glass.identity

let custom = Backported.Glass.regular
    .interactive(true)
    .tint(.blue)
```

Available helpers:

| Backport type | Behavior |
| --- | --- |
| `Backported.Glass.regular` | Mirrors `SwiftUI.Glass.regular`. |
| `Backported.Glass.clear` | Mirrors `SwiftUI.Glass.clear`. |
| `Backported.Glass.identity` | Mirrors `SwiftUI.Glass.identity`. |
| `.interactive(_:)` | Stores interactivity intent for native glass bridging where available. |
| `.tint(_:)` | Stores tint intent for native glass bridging where available. |

## Installation

Add the package to your `Package.swift` dependencies:

```swift
.package(url: "https://github.com/inekipelov/swiftui-glass-type-backport.git", from: "1.0.0")
```

Then add `GlassBackport` to your target dependencies:

```swift
.product(name: "GlassBackport", package: "swiftui-glass-type-backport")
```

`GlassBackport` depends on
[`swift-backport-pattern`](https://github.com/inekipelov/swift-backport-pattern)
for the `Backport` wrapper. The package re-exports `Backport`, so importing
`GlassBackport` is enough.
