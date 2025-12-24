// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "apple_maps_flutter",
    platforms: [
        .iOS("9.0"),
    ],
    products: [
        .library(
            name: "apple-maps-flutter",
            targets: ["apple_maps_flutter"]
        )
    ],
    dependencies: [],
    targets: [
        .target(
            name: "apple_maps_flutter"
        )
    ]
)
