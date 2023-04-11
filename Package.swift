// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "SpecLeaks",    
    platforms: [
        .iOS(.v13)
    ],
    products: [        
        .library(name: "SpecLeaks", targets: ["SpecLeaks"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Quick/Nimble", from: "11.2.2"),
        .package(url: "https://github.com/Quick/Quick", from: "5.0.1"),
    ],
    targets: [     
        .target(name: "SpecLeaks", dependencies: ["Quick", "Nimble"], path: "SpecLeaks/Classes/"),
    ],
    swiftLanguageVersions: [.v5]
)
