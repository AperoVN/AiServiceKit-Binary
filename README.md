# AiServiceKit (binary, SPM)

Phân phối **binary** của `AiServiceKit.xcframework` qua Swift Package Manager. Không có source ở đây — mỗi tag là một version binary, file `.xcframework.zip` nằm trong GitHub Release tương ứng, `Package.swift` trỏ `binaryTarget(url:checksum:)` vào asset đó.

Repo này là **public** nên SPM/Xcode tải asset ẩn danh được — consumer **không cần token, không cần script fetch**.

## Cách dùng (consumer)

Trong Xcode: **File → Add Package Dependencies…** rồi dán URL repo, hoặc thêm vào `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/AperoVN/AiServiceKit-Binary.git", from: "1.2.4")
],
targets: [
    .target(
        name: "YourApp",
        dependencies: [
            .product(name: "AiServiceKit", package: "AiServiceKit-Binary")
        ]
    )
]
```

`import AiServiceKit` và dùng. SPM tự tải xcframework từ Release và verify checksum.

## Version

Version theo git tag (SemVer). Xem các bản đã phát hành ở tab **Releases**. Pin `from: "x.y.z"` để tự nhận minor/patch mới trong cùng major.

## Phát hành (maintainer)

Không sửa `Package.swift` bằng tay — nó được sinh tự động. Từ repo **source** (`AperoVN/AiServiceKit`):

```bash
./scripts/build-xcframework.sh
./scripts/build-aiservicekit-release.sh
./scripts/publish-github-spm.sh 1.2.5      # tạo release + upload asset + cập nhật Package.swift + tag
```
