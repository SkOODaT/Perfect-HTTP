// swift-tools-version:5.2

import PackageDescription

#if os(Linux)
let package = Package(
	name: "PerfectHTTP",
	products: [
		.library(name: "PerfectHTTP", targets: ["PerfectHTTP"])
	],
	dependencies: [
        .package(name: "PerfectLib", url: "https://github.com/123FLO321/Perfect.git", .branch("swift5")),
        .package(name: "PerfectNet", url: "https://github.com/123FLO321/Perfect-Net.git", .branch("swift5")),
        .package(name: "LinuxBridge", url: "https://github.com/123FLO321/Perfect-LinuxBridge.git", .branch("swift5"))
	],
 	targets: [
		.target(name: "PerfectHTTP", dependencies: ["PerfectLib", "PerfectNet", "LinuxBridge"]),
		.testTarget(name: "PerfectHTTPTests", dependencies: ["PerfectHTTP", "PerfectNet"])
  ]
)
#else
let package = Package(
	name: "PerfectHTTP",
    platforms: [
        .macOS(.v10_15)
    ],
	products: [
		.library(name: "PerfectHTTP", targets: ["PerfectHTTP"])
	],
	dependencies: [
        .package(name: "PerfectLib", url: "https://github.com/123FLO321/Perfect.git", .branch("swift5")),
        .package(name: "PerfectNet", url: "https://github.com/123FLO321/Perfect-Net.git", .branch("swift5"))
	], targets: [
		.target(name: "PerfectHTTP", dependencies: ["PerfectLib", "PerfectNet"]),
		.testTarget(name: "PerfectHTTPTests", dependencies: ["PerfectHTTP", "PerfectNet"])
  ]
)
#endif
