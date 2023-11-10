// swift-tools-version:5.5

import PackageDescription

let package = Package(
	name: "MinimaPublish",
	platforms: [.macOS(.v12)],
	products: [
		.library(
			name: "MinimaPublish",
			targets: ["MinimaPublish"]
		)
	],
	dependencies: [
		.package(
			name: "Publish",
			url: "https://github.com/johnsundell/publish.git",
			from: "0.9.0"
		),
		.package(
			name: "Plot",
			url: "https://github.com/JohnSundell/Plot",
			from: "0.14.0"
		),
		.package(
			name: "SplashPublishPlugin",
			url: "https://github.com/johnsundell/splashpublishplugin",
			from: "0.2.0"
		),
	],
	targets: [
		.target(
			name: "MinimaPublish",
			dependencies: ["Publish", "Plot", "SplashPublishPlugin"],
			path: "Sources",
			resources: [.copy("../Resources")]
		),
		.testTarget(
			name: "MinimaPublishTests",
			dependencies: ["MinimaPublish"],
			path: "Tests"
		),
	]
)
