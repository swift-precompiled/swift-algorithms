// swift-tools-version:5.9.0

import PackageDescription
import Foundation

let package = Package(
    name: "swift-algorithms",
    products: [
        .library(
            name: "Algorithms",
            targets: ["Algorithms_PrecompiledProduct"]
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
            url: "https://github.com/swift-precompiled/swift-algorithms/releases/download/1.2.1/Algorithms-1e8654223253e3f0c95361ab9ab3f426afd16bd498ed3cd7ae0b31605b6c721c.xcframework.zip",
            checksum: "1e8654223253e3f0c95361ab9ab3f426afd16bd498ed3cd7ae0b31605b6c721c"
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