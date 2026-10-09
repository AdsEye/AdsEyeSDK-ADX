# AdsEyeADXSDK Swift Package

AdsEye ADX SDK `1.4.22`。

## 通过 Xcode 接入

1. 选择 **File > Add Package Dependencies...**。
2. 输入 `https://github.com/AdsEye/AdsEyeSDK-ADX.git`。
3. Dependency Rule 选择 **Exact Version**，填写 `1.4.22`。
4. 将 product `AdsEyeADXSDK` 添加到媒体 App target。

`AdsEyeAdSDK` Core 和所需基础 SDK 已由本 Package 自动声明，无需手动重复添加。

## App 根目录资源

SwiftPM 不能把 Package 资源直接复制到宿主 App 根目录。请从本仓库 `RootResources/` 下载并将以下 bundle 添加到 App target 的 **Copy Bundle Resources**：

- `AdsEyeADXAdBundle.bundle`

最终产物必须是 `YourApp.app/<BundleName>.bundle`，不能位于 SwiftPM 自动生成的外层资源 bundle 中。


## Linker setting

媒体 App target 的 **Other Linker Flags** 必须包含：

```text
-ObjC
```
