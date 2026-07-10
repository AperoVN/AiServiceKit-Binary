// swift-tools-version: 6.0
import PackageDescription

// Repo phân phối BINARY của AiServiceKit qua SPM.
// File này được sinh tự động bởi scripts/publish-github-spm.sh trong repo source
// mỗi lần release — url + checksum trỏ tới GitHub Release asset của đúng version.
let package = Package(
    name: "AiServiceKit",
    platforms: [
        .iOS(.v15),
        .macOS(.v11)
    ],
    products: [
        .library(name: "AiServiceKit", targets: ["AiServiceKit"])
    ],
    targets: [
        .binaryTarget(
            name: "AiServiceKit",
            url: "https://github.com/AperoVN/AiServiceKit-Binary/releases/download/1.2.4/AiServiceKit.xcframework.zip",
            checksum: "825e857a9bf452f6f462f0825ef8b2ad3da64c51d465a915a25a4e5f9af05b17"
        )
    ]
)
