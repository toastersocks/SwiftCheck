// swift-tools-version:5.9

import PackageDescription

let package = Package(
	name: "SwiftCheck",
	products: [
		.library(
			name: "SwiftCheck",
			targets: ["SwiftCheck"]),
	],
	dependencies: [
		.package(url: "https://github.com/llvm-swift/FileCheck.git", from: "0.1.0"),
        .package(url: "https://github.com/swiftlang/swift-testing", from: "0.12.0"),
	],
	targets: [
		.target(
			name: "SwiftCheck"),
		.testTarget(
			name: "SwiftCheckTests",
            dependencies: ["SwiftCheck", "FileCheck", .product(name: "Testing", package: "swift-testing")]),
	]
)

