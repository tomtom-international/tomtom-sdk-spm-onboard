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

let sdkVersion = "0.2.2581"

let modules: [Module] = [
    Module("TomTomSDKDataManagement", sha: "0ae926933a0bf739653d39cf554b4138a0eba6a2e52afe8a4761baee8e5a4154", version: "0.2.2581", dependencies: [
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
    ]),

    Module("TomTomSDKOnboardDataManagement", sha: "9a24fad379dc63b1d490d1dce35824b2de9955bc9831b785d4319aad1138740f", version: "0.2.2581", dependencies: [
        "TomTomSDKDataManagement",
        "TomTomSDKNDSStoreAccessInternal",
        "TomTomSDKBindingOnboardMapUpdateInternal",

        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKHTTPFramework", package: "tomtom-sdk-spm-core"),
    ]),

    Module("TomTomSDKOnboardMapDisplayDataProvider", sha: "ce1f1e12899d8d1b5d2e087ccd206b47fab7b6cae0e38330fd11bb30b54d8f4d", version: "0.2.2581", dependencies: [
        "TomTomSDKDataManagement",
        "TomTomSDKBindingMapDisplayOnboardDataProviderInternal",

        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKHTTPFramework", package: "tomtom-sdk-spm-core"),
    ]),

    Module("TomTomSDKOnboardReverseGeocoder", sha: "aab10f5b38c9ca92327e017a36f07f32f99ba90bb4ec0eea5fe959c741f4f9da", version: "0.2.2581", dependencies: [
        "TomTomSDKDataManagement",
        "TomTomSDKBindingOnboardReverseGeocoderInternal",

        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKReverseGeocoder", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKBindingOnboardReverseGeocoderInternal", sha: "74021e2311fb25e56c87ab17034e514154623ad1d96524b0e1940044da943899", version: "0.2.2581", isProduct: false, dependencies: [
        "TomTomSDKNDSStoreAccessInternal",
    ]),

    Module("TomTomSDKOnboardRouting", sha: "be2bc0871f3c6c7bb4524162d8d7207653fc2ac2e4557b3c1e871664f79ff9fc", version: "0.2.2581", dependencies: [
        "TomTomSDKDataManagement",
        "TomTomSDKTPEGTraffic",
        "TomTomSDKBindingOnboardDirectionsInternal",

        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKTraffic", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRouting", package: "tomtom-sdk-spm-core"),
    ]),

    Module("TomTomSDKOnboardSearch", sha: "82635d59a79116d25b27341ee841fd6a1604f37638511893a267d89e45332b7a", version: "0.2.2581", dependencies: [
        "TomTomSDKDataManagement",
        "TomTomSDKBindingOnboardSearchInternal",
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKSearch", package: "tomtom-sdk-spm-core"),
    ]),

    Module("TomTomSDKBindingOnboardSearchInternal", sha: "0b6d259f6850c64bcbce572d5c50fbe8fdb34136ffa8dc700b8d3988a2ba7933", version: "0.2.2581", isProduct: false, dependencies: [
        "TomTomSDKNDSStoreAccessInternal",
    ]),

    Module("TomTomSDKBindingOnboardStructuredSearchInternal", sha: "f0b188acf7b717b073dcd60699bf94a4b22a191a32628d83bfb669d3750a58b6", version: "0.2.2581", isProduct: false, dependencies: [
        "TomTomSDKNDSStoreAccessInternal",
    ]),

    Module("TomTomSDKOnboardStyleProvider", sha: "8fd78f8a7b236e2ed497b2a8e9597a9e50572cbcc1e1c234807c2f11e29c6455", version: "0.2.2581"),

    Module("TomTomSDKOnboardMapMatchingEngine", sha: "8c75b7e4e42df0324edb6586568e69c3e4d45693976c9393d0af8cb27113a71d", version: "0.2.2581", dependencies: [
        "TomTomSDKBindingMapMatchingInternal",
        "TomTomSDKDataManagement",
        "TomTomSDKNDSStoreAccessInternal",
        // core package dependency
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        // navigation package dependency
        .packageDependency("TomTomSDKNavigationEngine", package: "tomtom-sdk-spm-navigation"),
    ]),
    Module("TomTomSDKOnboardLocationContextProviderEngine", sha: "26b99d05100be3671b4a58a973be74b4162b241ed770836b1388d06cc18f9146", version: "0.2.2581", dependencies: [
        "TomTomSDKDataManagement",
        "TomTomSDKBindingLocationContextProviderInternal",
        "TomTomSDKNDSStoreAccessInternal",
        // core package dependency
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRouting", package: "tomtom-sdk-spm-core"),
        // navigation package dependency
        .packageDependency("TomTomSDKNavigationEngine", package: "tomtom-sdk-spm-navigation"),
    ]),
    Module("TomTomSDKNDSSQLiteInternal", sha: "a5d7eaf8cbe89fa078671a90051e94deb7076b82564b8bafa05926c6530bcbff", version: "20.7.0", isProduct: false),
    Module("TomTomSDKNDSStoreAccessInternal", sha: "659fee7a9f0070460ca5e4bbef92d75412014d70a102a594a855baf8dfc4f3d3", version: "20.7.0", isProduct: false, dependencies: [
        "TomTomSDKNDSSQLiteInternal",
    ]),
    Module("TomTomSDKBindingOnboardMapUpdateInternal", sha: "522dd86e45d8dab55a3e0f4672735e4b2c0a961f2923a8b3ae6273c98c76fa7a", version: "0.2.2581", isProduct: false, dependencies: [
        "TomTomSDKNDSSQLiteInternal",
    ]),
    Module("TomTomSDKBindingMapMatchingInternal", sha: "d8119f0cdeab7f4c094e6c6c2aea9ada6ed1139b8461a05a11f220ed9206d6c8", version: "0.2.2581", isProduct: false, dependencies: [
        "TomTomSDKNDSStoreAccessInternal",
    ]),
    Module("TomTomSDKBindingLocationContextProviderInternal", sha: "564a92618b13679cea412582b336224f9dfb2b3e3214ccd9a5b8b91f2338b5eb", version: "0.2.2581", isProduct: false, dependencies: [
        "TomTomSDKNDSStoreAccessInternal",
    ]),
    Module("TomTomSDKBindingMapDisplayOnboardDataProviderInternal", sha: "3aa8a76103b97f0fcef694129a889ae4e571d2f63bcae716bd43002b15d764fe", version: "0.2.2581", isProduct: false, dependencies: [
        "TomTomSDKNDSStoreAccessInternal",
    ]),
    Module("TomTomSDKOnboardDataStoreUpdateContextEngine", sha: "e30bce5ea194271724e6999a464f03bb5964dbbcd2059c94b19bd3cdc13b7d5a", version: "0.2.2581", dependencies: [
        "TomTomSDKDataManagement",
        // core package dependency
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        // navigation package dependency
        .packageDependency("TomTomSDKNavigationEngine", package: "tomtom-sdk-spm-navigation"),
    ]),
    Module("TomTomSDKDataStoreUpdater", sha: "2e50e612ed1b90fdad1b7cbb85359b1e4031dd82f474180b6896bd6bf411bf72", version: "0.2.2581", dependencies: [
        "TomTomSDKDataManagement",
        // core package dependency
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKLocation", package: "tomtom-sdk-spm-core"),
        // navigation package dependency
        .packageDependency("TomTomSDKNavigationEngine", package: "tomtom-sdk-spm-navigation"),
    ]),
    Module("TomTomSDKTPEGTraffic", sha: "5b2378c146cc28e828c07d9d1a3f7aab5473993abeb790891f405b2736cc42b0", version: "0.2.2581", dependencies: [
        "TomTomSDKDataManagement",
        "TomTomSDKBindingTPEGTrafficInternal",
        // core package dependency
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKTraffic", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKLocation", package: "tomtom-sdk-spm-core"),
        // navigation package dependency
        .packageDependency("TomTomSDKNavigationEngine", package: "tomtom-sdk-spm-navigation"),
    ]),
    Module("TomTomSDKBindingTPEGTrafficInternal", sha: "16be41a3184eca28fff89765e74a71d66b8c2e125f06e713fcac7caf5c6dc002", version: "0.2.2581", isProduct: false, dependencies: [
        "TomTomSDKNDSStoreAccessInternal",
        "TomTomSDKNDSSQLiteInternal",
    ]),
    Module("TomTomSDKHybridReverseGeocoder", sha: "843557865992bd4d3cee168984d407422cddd31f03bd911f60a18642b072c960", version: "0.2.2581", dependencies: [
        "TomTomSDKDataManagement",
        "TomTomSDKOnboardReverseGeocoder",
        // core package dependency
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKReverseGeocoder", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKOnlineReverseGeocoder", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKHybridRouting", sha: "6b198297ac23acc69f6d6260d61a06f4132f015a333082af1ac7213db2779fa1", version: "0.2.2581", dependencies: [
        // core package dependency
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRouting", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKBindingOnboardDirectionsInternal", sha: "8e16e6cf5f24f6ac19a1cc7b082bf3bb466394496d3953a52ec4e017b6795501", version: "0.2.2581", isProduct: false, dependencies: [
        "TomTomSDKNDSStoreAccessInternal",
        "TomTomSDKNDSSQLiteInternal",
    ]),
    Module("TomTomSDKHybridSearch", sha: "f21aa44ffe5037f0cafaa524ae4a9db5bf608ffa7c50d22c612045198f9cbe25", version: "0.2.2581", dependencies: [
        "TomTomSDKDataManagement",
        "TomTomSDKOnboardSearch",
        // core package dependency
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKSearch", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKOnlineSearch", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKBindingVehicleHorizonInternal", sha: "23e5dbd07705b0043db6e7b1fd8484a592b23ff5b3327cfd7a48d396111a93f7", version: "0.2.2581", isProduct: false, dependencies: [
        "TomTomSDKNDSStoreAccessInternal",
        "TomTomSDKNDSSQLiteInternal",
    ]),
]

let package = Package(
    name: "TomTomSDKOnboard",
    defaultLocalization: "en",
    platforms: [.iOS(.v13)],
    products: modules.products,
    dependencies: [
        .package(url: "https://github.com/tomtom-international/tomtom-sdk-spm-core", exact: Version(stringLiteral: sdkVersion)),
        .package(url: "https://github.com/tomtom-international/tomtom-sdk-spm-navigation", exact: Version(stringLiteral: sdkVersion)),
    ],
    targets: modules.targets,
    swiftLanguageVersions: [.v5]
)

private extension String {
    func artefactUrl(version: String) -> String {
        "https://repositories.tomtom.com/artifactory/spm/TomTomSDK/Onboard/binaries/\(self)/\(version)/\(self).zip"
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

    init(_ frameworkName: String, sha: String, version: String, isProduct: Bool = true, dependencies: [ModuleDependency] = []) {
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
