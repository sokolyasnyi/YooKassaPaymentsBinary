// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "YooKassaPaymentsBinary",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "YooKassaPaymentsBinary",
            type: .static,
            targets: ["YooKassaPaymentsBinary"]),
    ],
    targets: [
        .binaryTarget(name: "YooKassaPayments",
                      url: "https://github.com/sokolyasnyi/YooKassaPaymentsBinary/releases/download/v7.2.0/YooKassaPayments.xcframework.zip",
                      checksum: "f0c89dfa3a6ef5611012767545795d8b9e90f521b00f7057800b41d2dd38d8bf"),
        .target(
            name: "YooKassaPaymentsBinary"),
        .testTarget(
            name: "YooKassaPaymentsBinaryTests",
            dependencies: ["YooKassaPaymentsBinary"]
        ),
    ]
)
