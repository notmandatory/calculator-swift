// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "calculator-swift",
    platforms: [
        .macOS(.v12),
        .iOS(.v15)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Calculator",
            targets: ["calculatorFFI", "Calculator"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "calculatorFFI",
            url: "https://github.com/notmandatory/calculator-swift/releases/download/0.1.0/calculatorFFI.xcframework.zip",
            checksum: "36be707d7b5f300cac8b9843c280770a1d9c985694ace92cc1c3dca261875da4"),
        .target(
            name: "Calculator",
            dependencies: ["calculator"]),
        .testTarget(
            name: "CalculatorTests",
            dependencies: ["Calculator"]),
    ]
)
