// swift-tools-version:5.2
import PackageDescription

let package = Package(
    name: "stripe",
    platforms: [
        .macOS(.v10_15)
    ],
    products: [
        .library(name: "Stripe", targets: ["Stripe"])
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", from: "4.0.0"),
        .package(url: "https://github.com/stalkermv/stripe-kit.git", from: "12.0.2"),
    ],
    targets: [
        .target(name: "Stripe", dependencies: [
            .product(name: "StripeKit", package: "stripe-kit"),
            .product(name: "Vapor", package: "vapor"),
        ]),
    ]
)
