// swift-tools-version: 5.9

import PackageDescription

let package = Package(
  name: "apple_maps_flutter",
  platforms: [
    .iOS(.v15),
  ],
  products: [
    .library(name: "apple-maps-flutter", targets: ["apple_maps_flutter"]),
  ],
  targets: [
    .target(
      name: "apple_maps_flutter",
      path: "Sources/apple_maps_flutter"
    ),
  ]
)
