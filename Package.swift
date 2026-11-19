// swift-tools-version: 5.9
// 此文件由 AdsEye SPM 发布流程生成，请勿手工修改 URL 和 checksum。
import PackageDescription

let package = Package(
    name: "AdsEyeADXSDK",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "AdsEyeADXSDK", targets: ["AdsEyeADXLinker"])
    ],
    dependencies: [
        .package(url: "https://github.com/AdsEye/AdsEyeSDK.git", exact: "1.4.24")
    ],
    targets: [
        .target(
    name: "AdsEyeADXLinker",
    dependencies: [
        .product(name: "AdsEyeAdSDK", package: "adseyesdk")
    ],
    linkerSettings: [
        .linkedFramework("UIKit"),
              .linkedFramework("Foundation"),
              .linkedFramework("Security"),
              .linkedFramework("StoreKit"),
              .linkedFramework("SystemConfiguration"),
              .linkedFramework("CoreTelephony"),
              .linkedFramework("AVKit"),
              .linkedFramework("AVFoundation"),
              .linkedFramework("CoreMedia"),
              .linkedFramework("DeviceCheck"),
              .linkedFramework("CoreMotion"),
              .linkedFramework("WebKit"),
              .linkedFramework("AdSupport"),
              .linkedLibrary("c++abi"),
              .linkedLibrary("sqlite3"),
              .linkedLibrary("c++"),
              .linkedLibrary("xml2"),
              .linkedLibrary("resolv"),
              .linkedLibrary("bz2"),
              .linkedLibrary("z")
    ]
)
    ]
)
