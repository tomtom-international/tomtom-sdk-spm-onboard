// swift-tools-version: 5.6

// © 2022 TomTom N.V. All rights reserved.
//
// This software is the proprietary copyright of TomTom N.V. and its subsidiaries and may be
// used for internal evaluation purposes or commercial use strictly subject to separate
// license agreement between you and TomTom N.V. If you are the licensee, you are only permitted
// to use this software in accordance with the terms of your license agreement. If you are
// not the licensee, you are not authorized to use this software in any manner and should
// immediately return or destroy it.

import PackageDescription

let sdkVersion = "0.2.1869"

let modules: [Module] = [
    Module("TomTomSDKDataManagement", sha: "c1c18cd32b0aa1ce60a2fddb7e537500c79f88b2e63915db7c8f220323b5102b", dependencies: [
        "TomTomSDKNDSSQLiteInternal",
        "TomTomSDKNDSStoreAccessInternal",
        "TomTomSDKOnboardMapUpdateInternal",

        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core-dev"),
        .packageDependency("TomTomSDKHTTPFramework", package: "tomtom-sdk-spm-core-dev"),
    ]),

    Module("TomTomSDKOnboardMapDisplayDataProvider", sha: "9b5a539c2a284d420ae18fc750e5a9694d53c82970a78735267c844c6f156316", dependencies: [
        "TomTomSDKDataManagement",
        "TomTomSDKMapDisplayOnboardDataProviderInternal",

        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core-dev"),
        .packageDependency("TomTomSDKHTTPFramework", package: "tomtom-sdk-spm-core-dev"),
        .packageDependency("TomTomSDKFrameworkHTTPInternal", package: "tomtom-sdk-spm-core-dev"),

    ]),

    Module("TomTomSDKOnboardReverseGeocoder", sha: "b0a97efac5ecfe3241b2160cc480a38d9c1a6c664a793c7510fa553f6e633f5c", dependencies: [
        "TomTomSDKDataManagement",
        "TomTomSDKOnboardReverseGeocoderInternal",

        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core-dev"),
        .packageDependency("TomTomSDKReverseGeocoder", package: "tomtom-sdk-spm-core-dev"),
    ]),
    Module("TomTomSDKOnboardReverseGeocoderInternal", sha: "4b9083220edcb55bd4eb0d5413698c122e161038a9f892154c5c84876e78d2d4", version: "12.10.0", isProduct: false, dependencies: [
        "TomTomSDKNDSStoreAccessInternal",
    ]),

    Module("TomTomSDKOnboardRouting", sha: "5f1f39b20fffca25d67cfcd3ab3d437d028aaa7693d66ebce087095be5521fcc", dependencies: [
        "TomTomSDKDataManagement",
        "TomTomSDKOnboardDirectionsInternal",
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core-dev"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core-dev"),
        .packageDependency("TomTomSDKRouting", package: "tomtom-sdk-spm-core-dev"),
    ]),

    Module("TomTomSDKOnboardSearch", sha: "72636374dfd00e003b0be638f1f92c71c7958b32f921bfccc5e1007ab0908d6e", dependencies: [
        "TomTomSDKDataManagement",
        "TomTomSDKOnboardSearchInternal",
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core-dev"),
        .packageDependency("TomTomSDKSearch", package: "tomtom-sdk-spm-core-dev"),
    ]),

    Module("TomTomSDKOnboardSearchInternal", sha: "35e6b77c702c4a278be9ea39be23ea6c25d0f4d74856c5c9a5f2445c83533395", version: "12.10.0", isProduct: false, dependencies: [
        "TomTomSDKNDSStoreAccessInternal",
    ]),

    Module("TomTomSDKOnboardStyleProvider", sha: "9c88462d3c98a59202022fec12381bda701509cd691db3d2e8701ba754d2f5e2"),

    Module("TomTomSDKOnboardMapMatchingEngine", sha: "ba14f17502829dd8a8f3c3ed82a67fc369fadd11fda6385b55c789a854009630", dependencies: [
        "TomTomSDKDataManagement",
        "TomTomSDKOnboardMapMatchingInternal",
        // core package dependency
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core-dev"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core-dev"),
        // navigation package dependency
        .packageDependency("TomTomSDKNavigationEngine", package: "tomtom-sdk-spm-navigation-dev"),
    ]),
    Module("TomTomSDKOnboardMapMatchingInternal", sha: "510ab720e3d7874034daaf34f07b0be1ea9eb0e69e432cb35d297e5d98a8a355", version: "12.10.0", isProduct: false, dependencies: [
        "TomTomSDKNDSStoreAccessInternal",
    ]),
    Module("TomTomSDKOnboardLocationContextProviderEngine", sha: "90e6db989744238a5daa6172426ae60fbfcb36e7c8d44bd833a708f94a3462f6", dependencies: [
        "TomTomSDKDataManagement",
        "TomTomSDKLocationContextProviderInternal",
        // core package dependency
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core-dev"),
        .packageDependency("TomTomSDKRouting", package: "tomtom-sdk-spm-core-dev"),
        // navigation package dependency
        .packageDependency("TomTomSDKNavigationEngine", package: "tomtom-sdk-spm-navigation-dev"),
    ]),
    Module("TomTomSDKLocationContextProviderInternal", sha: "1e600d48206a96044f6ae686d3f630fa6cec9494927bfad645d268f35cc34977", version: "12.10.0", isProduct: false, dependencies: [
        "TomTomSDKNDSStoreAccessInternal",
    ]),
    Module("TomTomSDKNDSSQLiteInternal", sha: "fdf8e5179ec97ed9828fe47667c1787855bc98aec2a4f1514808475e768704a0", version: "12.10.0", isProduct: false),
    Module("TomTomSDKNDSStoreAccessInternal", sha: "b7144ff506419b02704708064ab3e5cf3ed4ad8aedf22d1e0b7ff86f94d8006f", version: "12.10.0", isProduct: false, dependencies: [
        "TomTomSDKNDSSQLiteInternal",
    ]),
    Module("TomTomSDKOnboardMapUpdateInternal", sha: "2759163ff7f295e16a6add8f6fb914c92b53383a977c36af00bcff819020886e", version: "12.10.0", isProduct: false, dependencies: [
        "TomTomSDKNDSSQLiteInternal",
    ]),
    Module("TomTomSDKMapDisplayOnboardDataProviderInternal", sha: "55cd5110e999732633feef1a284670868071746bbc2c22fc8772b022b2c5d38d", version: "12.10.0", isProduct: false, dependencies: [
        "TomTomSDKNDSStoreAccessInternal",
    ]),
    Module("TomTomSDKOnboardDirectionsInternal", sha: "9b3fc56f493d352bffae522bab509c6f7e62a49f8162da9fca05ae2cee609c14", version: "12.10.0", isProduct: false, dependencies: [
        "TomTomSDKNDSStoreAccessInternal",
    ]),
]

let package = Package(
    name: "TomTomSDKOnboard",
    defaultLocalization: "en",
    platforms: [.iOS(.v13)],
    products: modules.products,
    dependencies: [
        .package(url: "https://github.com/tomtom-internal/tomtom-sdk-spm-core-dev", exact: Version(stringLiteral: sdkVersion)),
        .package(url: "https://github.com/tomtom-internal/tomtom-sdk-spm-navigation-dev", exact: Version(stringLiteral: sdkVersion)),
    ],
    targets: modules.targets,
    swiftLanguageVersions: [.v5]
)

private extension String {
    func artefactUrl(version: String) -> String {
        "https://repositories.tomtom.com/artifactory/sdk-cocoapods/\(self)/\(version)/\(self).zip"
    }

    var wrapperName: String {
        return self + "Wrapper"
    }
}

struct Module {
    let frameworkName: String
    let sha: String
    let dependencies: [ModuleDependency]
    let version: String
    let isProduct: Bool

    init(_ frameworkName: String, sha: String, version: String = sdkVersion, isProduct: Bool = true, dependencies: [ModuleDependency] = []) {
        self.frameworkName = frameworkName
        self.sha = sha
        self.version = version
        self.isProduct = isProduct
        self.dependencies = dependencies
    }

    var product: Product? {
        return isProduct ? .library(name: frameworkName, targets: [wrapperName]) : nil
    }

    var wrapperName: String {
        frameworkName.wrapperName
    }

    var targets: [Target] {
        let binaryTargetDependency: Target.Dependency = .target(name: frameworkName)
        let dependenciesTargets: [Target.Dependency] = dependencies.map { $0.dependency }
        let mainTargetDependencies = [binaryTargetDependency] + dependenciesTargets
        let mainTarget: Target = .target(name: wrapperName, dependencies: mainTargetDependencies)
        let binaryUrl = frameworkName.artefactUrl(version: version)
        let binaryTarget: Target = .binaryTarget(name: frameworkName, url: binaryUrl, checksum: sha)

        return [mainTarget, binaryTarget]
    }
}

struct ModuleDependency {
    let name: String
    let package: String?

    var dependency: Target.Dependency {
        if let package = package {
            return .product(name: name, package: package)
        }

        return .target(name: name.wrapperName)
    }

    static func packageDependency(_ name: String, package: String) -> ModuleDependency {
        return ModuleDependency(name: name, package: package)
    }
}

extension ModuleDependency: ExpressibleByStringLiteral {
    init(stringLiteral value: String) {
        self.init(name: value, package: nil)
    }

    public typealias StringLiteralType = String
}

extension Array where Element == Module {
    var products: [Product] {
        compactMap { $0.product }
    }

    var targets: [Target] {
        flatMap { $0.targets }
    }
}
