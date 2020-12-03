// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "Segment-AppsFlyer",
    platforms: [
        .iOS(.v10),
        .tvOS(.v10),
        .macOS(.v10_13),
    ],
    products: [
        .library(
            name: "SEGAppsFlyer",
            targets: ["SEGAppsFlyer", "SEGAppsFlyer_ObjC"]),
    ],
    dependencies: [
        .package(name: "AppsFlyerLib", url: "https://github.com/AppsFlyerSDK/AppsFlyerFramework", from: "6.1.1"),
        .package(name: "Segment", url: "https://github.com/segmentio/analytics-ios", from: "4.1.2"),
    ],
    targets: [
        .target(
            name: "SEGAppsFlyer",
            dependencies: ["SEGAppsFlyer_ObjC"]
        ),
        .target(name: "SEGAppsFlyer_ObjC",
                dependencies: [
                    "AppsFlyerLib",
                    "Segment",
                ],
                path: "segment-appsflyer-ios",
                exclude: ["Info.plist"],
                cSettings: [
                    .headerSearchPath("Classes")
                ]
        ),
    ]
)
