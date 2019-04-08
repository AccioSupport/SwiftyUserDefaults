// swift-tools-version:4.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftyUserDefaults",
    // platforms: [.iOS("8.0"), .macOS("10.11"), .tvOS("9.0"), .watchOS("2.0")],
    products: [
        .library(
            name: "SwiftyUserDefaults",
            targets: ["SwiftyUserDefaults"]),
    ],
    dependencies: [
        .package(url: "https://github.com/sunshinejr/Quick.git", .revision("abd88afe40a38b7900af02df98417c867bad6671")),
        .package(url: "https://github.com/Quick/Nimble.git", .branch("master"))
    ],
    targets: [
        .target(
            name: "SwiftyUserDefaults",
            dependencies: [],
            path: "Sources"),
        .testTarget(
            name: "SwiftyUserDefaultsTests",
            dependencies: ["SwiftyUserDefaults", "Quick", "Nimble"]),
    ]
)
