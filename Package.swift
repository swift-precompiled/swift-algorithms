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
            revision: "1.1.1-precompiled.1"
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
            url: "https://github.com/swift-precompiled/swift-algorithms/releases/download/1.2.1/Algorithms-ad5340779b9237b5059ccaf22c87470e70fa3d264da8bd27cdc7941e296f3429.xcframework.zip",
            checksum: "ad5340779b9237b5059ccaf22c87470e70fa3d264da8bd27cdc7941e296f3429"
        )
    ]
)