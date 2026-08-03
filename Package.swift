// swift-tools-version:5.7.0

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
            exact: "1.1.1"
        )
    ],
    targets: [
        .target(
            name: "Algorithms_Aggregation",
            dependencies: [
                "Algorithms",
                .product(
                    name: "RealModule",
                    package: "swift-numerics"
                )
            ]
        ),
        .binaryTarget(
            name: "Algorithms",
            url: "https://github.com/swift-precompiled/swift-algorithms/releases/download/1.2.1/Algorithms-8d49d466a4ff00f994a776635c3d1045cc766b2af13116e9d92d59f6b69ff453.xcframework.zip",
            checksum: "8d49d466a4ff00f994a776635c3d1045cc766b2af13116e9d92d59f6b69ff453"
        )
    ]
)