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
            url: "https://github.com/swift-precompiled/swift-algorithms/releases/download/1.0.0/Algorithms.xcframework.zip",
            checksum: "960b0ec2481272b9b0102e53e075135474d2e2ef2833684cf4c91fbc091fc545"
        )
    ]
)