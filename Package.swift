// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "Sample",
  platforms: [.iOS(.v16)],
  products: [
    // Products define the executables and libraries a package produces, making them visible to other packages.
    .library(name: "Sample", targets: ["Sample"]),
    .library(name: "HelloWorld", targets: ["HelloWorld"]),
    .library(name: "Models", targets: ["Models"]),
  ],
  dependencies: [
    .package(url: "https://github.com/krzysztofzablocki/Sourcery.git", from: "2.2.5"),
  ],
  targets: [
    // Targets are the basic building blocks of a package, defining a module or a test suite.
    // Targets can depend on other targets in this package and products from dependencies.
    .target(name: "Sample"),
    .testTarget(name: "SampleTests", dependencies: ["Sample"]),

    .target(name: "HelloWorld"),
    .target(
      name: "Models"),
  ]
)
