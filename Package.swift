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
        .package(url: "https://github.com/AdsEye/AdsEyeSDK.git", exact: "1.4.22")
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
    url: "https://cpc-static-docs.oss-cn-beijing.aliyuncs.com/adseye_sdk_ios/1.4.22/spm/AdsEyeADXSDK-1.4.22-10091517.zip",
    checksum: "514edfb9b207a4fe5bcf176453705c5a570d835a83725eb37a9a3f56e97e2b7d"
),
              .binaryTarget(
    name: "InnoSecureSDK",
    url: "https://cpc-static-docs.oss-cn-beijing.aliyuncs.com/adseye_sdk_ios/1.4.22/spm/InnoSecureSDK-1.4.22-10091517.zip",
    checksum: "0f2c2d4628aa157702d7f2bef06ae05f68af7bfaf0cae122fcec7745dd6f8b47"
)
    ]
)
