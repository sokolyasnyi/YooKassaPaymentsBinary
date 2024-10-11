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
                      checksum: "279ef8b021f6f139e08eef62d40bb76b6882ae2e926880051315384de96837e3"),
        .target(
            name: "YooKassaPaymentsBinary"),
        .testTarget(
            name: "YooKassaPaymentsBinaryTests",
            dependencies: ["YooKassaPaymentsBinary"]
        ),
    ]
)
