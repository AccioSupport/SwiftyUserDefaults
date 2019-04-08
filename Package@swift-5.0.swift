// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftyUserDefaults",
    platforms: [.iOS("8.0"), .macOS("10.11"), .tvOS("9.0"), .watchOS("2.0")],
    products: [
        .library(
            name: "SwiftyUserDefaults",
            targets: ["SwiftyUserDefaults"]),
    ],
    dependencies: [
        .package(url: "https://github.com/sunshinejr/Quick.git", .branch("feature/update_nimble")),
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
