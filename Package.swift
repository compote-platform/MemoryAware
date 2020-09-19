// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MemoryAware",
    products: [
        .library(name: "MemoryAware", targets: ["MemoryAware"]),
    ],
    dependencies: [
        .package(url: "https://github.com/JohnSundell/Files", .upToNextMajor(from: "4.1.1")),
    ],
    targets: [
        .target(name: "MemoryAware", dependencies: [
            .byName(name: "Files"),
        ]),
    ]
)
