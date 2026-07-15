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
            url: "https://github.com/AperoVN/AiServiceKit-Binary/releases/download/2.0.2/AiServiceKit.xcframework.zip",
            checksum: "593330e0a789832a0dc8606380137c2512b13c3b48d236490089be7b8560238e"
        )
    ]
)
