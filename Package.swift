// swift-tools-version:5.9.0

import PackageDescription
import Foundation

let package = Package(
    name: "swift-algorithms",
    products: [
        .library(
            name: "Algorithms",
            targets: ["Algorithms", "Algorithms_PrecompiledProduct"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/swift-precompiled/swift-numerics",
            exact: "1.1.1"
        )
    ],
    targets: [
        .target(
            name: "Algorithms_Aggregation",
            dependencies: ["Algorithms"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "Algorithms",
            url: "https://github.com/swift-precompiled/swift-algorithms/releases/download/1.2.1/Algorithms-88fe355b485f2a5ff8a4583c37f96e153d9d9e4b74da2abd6404dfc8e510f376.xcframework.zip",
            checksum: "88fe355b485f2a5ff8a4583c37f96e153d9d9e4b74da2abd6404dfc8e510f376"
        ),
        .target(
            name: "Algorithms_PrecompiledProduct",
            dependencies: [
                "Algorithms_Aggregation",
                .product(
                    name: "RealModule",
                    package: "swift-numerics"
                )
            ]
        )
    ]
)