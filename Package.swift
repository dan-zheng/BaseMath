// swift-tools-version:4.2

import PackageDescription

let package = Package(
    name: "BaseMath",
    products: [
      .library( name: "BaseMath", type: .dynamic, targets: ["BaseMath"]),
    ],
    targets: [
        .target( name: "CBaseMath"),
        .target( name: "BaseMath", dependencies: ["CBaseMath"]),
        .testTarget( name: "BaseMathTests", dependencies: ["BaseMath"]),
        .target( name: "bench", dependencies: ["BaseMath"]),
    ]
)

