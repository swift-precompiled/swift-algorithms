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
            packageAccess: false,
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "Algorithms",
            url: "https://github.com/swift-precompiled/swift-algorithms/releases/download/1.2.1/Algorithms-59b30d463eb0394db9cfb51ea5800d06e152274b4040ac5c1821199706bf5c65.xcframework.zip",
            checksum: "59b30d463eb0394db9cfb51ea5800d06e152274b4040ac5c1821199706bf5c65"
        ),
        .target(
            name: "Algorithms_PrecompiledProduct",
            dependencies: [
                "Algorithms_Aggregation",
                .product(
                    name: "RealModule",
                    package: "swift-numerics"
                )
            ],
            packageAccess: false
        )
    ]
)