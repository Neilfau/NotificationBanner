// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "NotificationBannerSwift",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        .library(name: "NotificationBannerSwift", 
                 type: .dynamic,
                 targets: ["NotificationBannerSwift"])
    ],
    dependencies: [
        //.package(url: "https://github.com/SnapKit/SnapKit", from: "5.7.1"),
        .package(url: "https://github.com/close-dev-team/mobile-close-channel-sdk-ios-dependencies", from: "1.7.0"),
        .package(url: "https://github.com/cbpowell/MarqueeLabel", from: "4.0.1")
    ],
    targets: [
        .target(
            name: "NotificationBannerSwift",
            dependencies: [
                .byName(name: "MarqueeLabel"),
                .product(name: "CloseChannelDependencies", package: "mobile-close-channel-sdk-ios-dependencies"),
                //.byName(name: "SnapKit")
            ],
            path: "NotificationBanner/Classes"
        )
    ],
    swiftLanguageVersions: [.v5]
)
