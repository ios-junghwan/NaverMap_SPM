// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NMapsMap_SPM",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "NMapsMap_SPM",
            targets: ["NMapsMap_SPM"]),
        .library(name: "NMapFramework",
            targets: ["NMapFramework"]),
        .library(name: "NMapGeometryFramework",
            targets: ["NMapGeometryFramework"])
    ],
    dependencies: [

    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "NMapsMap_SPM",
            dependencies: ["NMapFramework", "NMapGeometryFramework"]),
        .binaryTarget(name: "NMapFramework", path: "Frameworks/NMapsMap.xcframework"),
        .binaryTarget(name: "NMapGeometryFramework", path: "Frameworks/NMapsGeometry.xcframework"),
        .testTarget(
            name: "NMapsMap_SPMTests",
            dependencies: ["NMapsMap_SPM"]),
    ]
)
