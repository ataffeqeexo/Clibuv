// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Clibuv",
    products: [
        .library(name: "Clibuv", targets: ["Clibuv"])
    ],
    targets: [
        .systemLibrary(
            name: "Clibuv",
            pkgConfig: "libuv",
            providers: [.brew(["libuv"]), .apt(["libuv-dev"])]
        )
    ]
)
