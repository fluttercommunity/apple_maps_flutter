// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "apple_maps_flutter",
    platforms: [
        .iOS("13.0")
    ],
    products: [
        .library(name: "apple-maps-flutter", targets: ["apple_maps_flutter"])
    ],
    dependencies: [
        .package(name: "FlutterFramework", path: "../FlutterFramework")
    ],
    targets: [
        .target(
            name: "apple_maps_flutter",
            dependencies: [
                .product(name: "FlutterFramework", package: "FlutterFramework")
            ]
        )
    ]
)
