// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.12.1-39-g03310be29"

let package = Package(
    name: "watch",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "watch",
            targets: [
                "watch",
                "watch_sdk_core",
                "watch_effect_player",
                "watch_scripting"
            ]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/sdk-banuba/sdk_core.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/effect_player.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/scripting.git",
            .exact(bnbPackageVersion)
        ),
    ],
    targets: [
        .binaryTarget(
            name: "watch",
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.12.1-39-g03310be29/watch.zip",
            checksum: "fd23b36e44f7da51c243c48750a000b823815f677cef026cb442f3a8e2253986"
        ),
        .target(
            name: "watch_sdk_core",
            dependencies: [
                .product(
                    name: "sdk_core",
                    package: "sdk_core"
                ),
            ]
        ),
        .target(
            name: "watch_effect_player",
            dependencies: [
                .product(
                    name: "effect_player",
                    package: "effect_player"
                ),
            ]
        ),
        .target(
            name: "watch_scripting",
            dependencies: [
                .product(
                    name: "scripting",
                    package: "scripting"
                ),
            ]
        ),
    ]
)
