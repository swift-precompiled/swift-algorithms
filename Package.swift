// swift-tools-version:5.4.0

import PackageDescription
import Foundation

let package = Package(
    name: "swift-algorithms",
    products: [
        .library(
            name: "Algorithms",
            targets: ["Algorithms_Aggregation"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/swift-precompiled/swift-numerics",
            "1.0.0"..<"2.0.0"
        )
    ],
    targets: [
        .target(
            name: "Algorithms_Aggregation",
            dependencies: [
                .target(name: "Algorithms"),
                .product(
                    name: "RealModule",
                    package: "swift-numerics"
                )
            ]
        ),
        .binaryTarget(
            name: "Algorithms",
            url: "https://github.com/swift-precompiled/swift-algorithms/releases/download/1.1.0/Algorithms.xcframework.zip",
            checksum: "f887383711d91f5438a952d3c69e807e7c024775e413419fd19b7d644c4cd638"
        )
    ]
)