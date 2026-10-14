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
        .package(url: "https://github.com/AdsEye/AdsEyeSDK.git", exact: "1.4.23")
    ],
    targets: [
        .target(
    name: "AdsEyeADXLinker",
    dependencies: [
        .product(name: "AdsEyeAdSDK", package: "adseyesdk"),
              .target(name: "AdsEyeADXSDK"),
              .target(name: "InnoSecureSDK")
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
),
              .binaryTarget(
    name: "AdsEyeADXSDK",
    url: "https://cpc-static-docs.oss-cn-beijing.aliyuncs.com/adseye_sdk_ios/1.4.23/spm/AdsEyeADXSDK-1.4.23-10141536.zip",
    checksum: "e43feb46b410416c90ca6f9735d2443d03db3844d7cefb9159b56abcdd376e4b"
),
              .binaryTarget(
    name: "InnoSecureSDK",
    url: "https://cpc-static-docs.oss-cn-beijing.aliyuncs.com/adseye_sdk_ios/1.4.23/spm/InnoSecureSDK-1.4.23-10141536.zip",
    checksum: "f2067ec3f2e32efc471edd7c0ae38f810cbd59b0f3883c006db0d669df362273"
)
    ]
)
