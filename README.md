# AdsEyeADXSDK Swift Package

AdsEye ADX SDK `1.4.23`。

## 通过 Xcode 接入

1. 选择 **File > Add Package Dependencies...**。
2. 输入 `https://github.com/AdsEye/AdsEyeSDK-ADX.git`。
3. Dependency Rule 选择 **Exact Version**，填写 `1.4.23`。
4. 将 product `AdsEyeADXSDK` 添加到媒体 App target。

`AdsEyeAdSDK` Core 和所需基础 SDK 已由本 Package 自动声明，无需手动重复添加。

## 资源自动接入

`AdsEyeADXAdBundle.bundle` 已通过 SwiftPM 自动复制，添加 Product 后无需手动拖入资源。
从旧接入方式升级时，请移除 App target 中手动添加的同名 bundle 及其 Copy Bundle Resources 条目，避免旧资源优先命中。

## Linker setting

媒体 App target 的 **Other Linker Flags** 必须包含：

```text
-ObjC
```
