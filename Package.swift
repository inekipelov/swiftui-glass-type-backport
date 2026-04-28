// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "swiftui-glass-type-backport",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
        .tvOS(.v13),
        .watchOS(.v6),
        .visionOS(.v1)
    ],
    products: [
        .library(
            name: "GlassBackport",
            targets: ["GlassBackport"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/inekipelov/swift-backport-pattern", from: "0.0.1")
    ],
    targets: [
        .target(
            name: "GlassBackport",
            dependencies: [
                .product(name: "Backport", package: "swift-backport-pattern")
            ]
        ),
        .testTarget(
            name: "GlassBackportTests",
            dependencies: ["GlassBackport"]
        )
    ]
)
