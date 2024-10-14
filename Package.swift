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
                      checksum: "66e43b0bb9faf158be28478571e8c31913294b2b7560902bbe51ebd583bcb200"),
        .target(
            name: "YooKassaPaymentsBinary"),
        .testTarget(
            name: "YooKassaPaymentsBinaryTests",
            dependencies: ["YooKassaPaymentsBinary"]
        ),
    ]
)
