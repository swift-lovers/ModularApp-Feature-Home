// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "FeatureHome",
    platforms: [.iOS(.v16)],
    products: [
        .library(
            name: "FeatureHome",
            targets: ["FeatureHome"]
        ),
    ],
    targets: [
        .target(
            name: "FeatureHome",
            path: ".",
            exclude: [
                "ModularApp-Feature-Home.xcodeproj",
                "project.yml",
                "README.md",
            ],
            sources: [
                "ModularApp-Feature-Home-Api",
                "ModularApp-Feature-Home-Domain",
                "ModularApp-Feature-Home-Data",
                "ModularApp-Feature-Home-Presentation",
            ]
        ),
    ]
)
