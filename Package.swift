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
            url: "https://github.com/swift-precompiled/swift-algorithms/releases/download/1.2.1/Algorithms-85a921afa657232c966bb355c6468b1e8cc873d416c4e2de1c0ce64414b5981d.xcframework.zip",
            checksum: "85a921afa657232c966bb355c6468b1e8cc873d416c4e2de1c0ce64414b5981d"
        )
    ]
)