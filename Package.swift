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

let sdkVersion = "0.2.3010"

let modules: [Module] = [
    Module("TomTomSDKDataManagementOffline", sha: "a2b506978fba48e2d95605bd9f82d3c8d0fda96f9f46c5f9556589f4546e47ee", version: "0.2.3010", dependencies: [
        "TomTomSDKBindingNDSStoreAccessInternal",
        "TomTomSDKBindingOnboardMapUpdateInternal",

        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKNetworking", package: "tomtom-sdk-spm-core"),
        // navigation package dependency
        .packageDependency("TomTomSDKDataManagement", package: "tomtom-sdk-spm-navigation"),
    ]),
    Module("TomTomSDKMapDisplayDataProviderOffline", sha: "842a2ebc6383085bb82b8b96f648678d574a0017ed6707c1abfbe4cf08533189", version: "0.2.3010", dependencies: [
        "TomTomSDKBindingMapDisplayOnboardDataProviderInternal",

        // core package dependencies
        .packageDependency("TomTomSDKNetworking", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKMapDisplay", package: "tomtom-sdk-spm-core"),
        // navigation package dependency
        .packageDependency("TomTomSDKDataManagement", package: "tomtom-sdk-spm-navigation"),
    ]),

    Module("TomTomSDKReverseGeocoderOffline", sha: "6dfb42e77061dd57b34d8a3e9f045f679ae3aa25fa5369b3b8b78b6cb7da37b1", version: "0.2.3010", dependencies: [
        "TomTomSDKBindingOnboardReverseGeocoderInternal",

        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKReverseGeocoder", package: "tomtom-sdk-spm-core"),
        // navigation package dependency
        .packageDependency("TomTomSDKDataManagement", package: "tomtom-sdk-spm-navigation"),
    ]),
    Module("TomTomSDKBindingOnboardReverseGeocoderInternal", sha: "3171aa59c683fb2a1966524b3b48bccdde0d6721a876b16a1fb33627aacc6c20", version: "0.2.3010", isProduct: false, dependencies: [
        "TomTomSDKBindingNDSStoreAccessInternal",
    ]),

    Module("TomTomSDKRoutePlannerOffline", sha: "f4bbe6ab7e2150be14992350f40752c1f82044e6ca0544709af6b3b4e81abd78", version: "0.2.3010", dependencies: [
        "TomTomSDKTrafficTPEG",
        "TomTomSDKBindingOnboardDirectionsInternal",

        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKTraffic", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoutePlanner", package: "tomtom-sdk-spm-core"),
        // navigation package dependency
        .packageDependency("TomTomSDKDataManagement", package: "tomtom-sdk-spm-navigation"),
    ]),

    Module("TomTomSDKSearchOffline", sha: "91a828abe3dd05b0d3f02ca066a42a99a2182401c9140f77708bebe90ac1d37f", version: "0.2.3010", dependencies: [
        "TomTomSDKBindingOnboardSearchInternal",
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKSearch", package: "tomtom-sdk-spm-core"),
        // navigation package dependency
        .packageDependency("TomTomSDKDataManagement", package: "tomtom-sdk-spm-navigation"),
    ]),

    Module("TomTomSDKBindingOnboardSearchInternal", sha: "45a0a958a52abd788f3d5634927fc68ecae54d1d491452a198091e3d55860dba", version: "0.2.3010", isProduct: false, dependencies: [
        "TomTomSDKBindingNDSStoreAccessInternal",
    ]),

    Module("TomTomSDKBindingOnboardStructuredSearchInternal", sha: "d332961d6956478ff9e53bb8907491b1a7ef52ea3c8b444f543c490f88807419", version: "0.2.3010", isProduct: false, dependencies: [
        "TomTomSDKBindingNDSStoreAccessInternal",
    ]),

    Module("TomTomSDKStyleProviderOffline", sha: "fdfa860be594cd9ea815dcad601d36fb45967b9f0059bd7982c9625d1ac78fbb", version: "0.2.3010"),

    Module("TomTomSDKMapMatchingEngineOffline", sha: "cd95043fef4fd7deedfc284a27215546ead7ece98e589f76e611abe090908098", version: "0.2.3010", dependencies: [
        "TomTomSDKBindingNDSStoreAccessInternal",
        // core package dependency
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKLocationProvider", package: "tomtom-sdk-spm-core"),
        // navigation package dependency
        .packageDependency("TomTomSDKBindingMapMatchingInternal", package: "tomtom-sdk-spm-navigation"),
        .packageDependency("TomTomSDKDataManagement", package: "tomtom-sdk-spm-navigation"),
        .packageDependency("TomTomSDKMapMatchingEngineCommon", package: "tomtom-sdk-spm-navigation"),
        .packageDependency("TomTomSDKNavigationEngine", package: "tomtom-sdk-spm-navigation"),
    ]),
    Module("TomTomSDKLocationContextProviderEngineOffline", sha: "7a5342c2bfc7376ad1039961bf77e69637fcb466cc5547887ea56f15cfc6992c", version: "0.2.3010", dependencies: [
        "TomTomSDKBindingNDSStoreAccessInternal",
        // core package dependency
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoutePlanner", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKLocationProvider", package: "tomtom-sdk-spm-core"),
        // navigation package dependency
        .packageDependency("TomTomSDKBindingLocationContextProviderInternal", package: "tomtom-sdk-spm-navigation"),
        .packageDependency("TomTomSDKNavigationEngine", package: "tomtom-sdk-spm-navigation"),
        .packageDependency("TomTomSDKDataManagement", package: "tomtom-sdk-spm-navigation"),
    ]),
    Module("TomTomSDKBindingNDSSQLiteInternal", sha: "2fdd52d73d389d92b4829d8ffd9e91ec9e36caa814b991fa2b566795a5b72a1a", version: "0.2.3010", isProduct: false),
    Module("TomTomSDKBindingNDSStoreAccessInternal", sha: "885f5fb29820e7ee12e40efdc213ffaa746d18569ad066f6c751f51fbb42c3e5", version: "0.2.3010", isProduct: false, dependencies: [
        "TomTomSDKBindingNDSSQLiteInternal",
    ]),
    Module("TomTomSDKBindingOnboardMapUpdateInternal", sha: "aec6c6e3e412546c4504d93be15b689bd81b8cb888dfcc396e2025613c65911d", version: "0.2.3010", isProduct: false, dependencies: [
        "TomTomSDKBindingNDSSQLiteInternal",
    ]),
    Module("TomTomSDKBindingMapDisplayOnboardDataProviderInternal", sha: "39e216ee5973e594a3be060afe482c80fe7cf39208822528815bb2d759c92552", version: "0.2.3010", isProduct: false, dependencies: [
        "TomTomSDKBindingNDSStoreAccessInternal",
    ]),
    Module("TomTomSDKTrafficTPEG", sha: "57762f18e2b132cbc2a098c3f3e2ae20cb991b95c12402694c3632066971d89e", version: "0.2.3010", dependencies: [
        "TomTomSDKBindingTPEGTrafficInternal",
        // core package dependency
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKTraffic", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKLocationProvider", package: "tomtom-sdk-spm-core"),
        // navigation package dependency
        .packageDependency("TomTomSDKNavigationEngine", package: "tomtom-sdk-spm-navigation"),
        .packageDependency("TomTomSDKDataManagement", package: "tomtom-sdk-spm-navigation"),
    ]),
    Module("TomTomSDKBindingTrafficTileGeneratorInternal", sha: "fb92669170b8d1fc10420a1e0097aa5c88d251802b84ecda360acb1329515ad8", version: "0.2.3010", isProduct: false),
    Module("TomTomSDKBindingTPEGTrafficInternal", sha: "e7c35551aed533623d75a7550e882556c8d1066686618e6b1f6c1becb7d31e4a", version: "0.2.3010", isProduct: false, dependencies: [
        "TomTomSDKBindingNDSStoreAccessInternal",
        "TomTomSDKBindingNDSSQLiteInternal",
    ]),
    Module("TomTomSDKReverseGeocoderHybrid", sha: "7c34b1586b220cde522f0162da81f5b6845e1c4cb4ced6be7240bbcd47c8f072", version: "0.2.3010", dependencies: [
        "TomTomSDKReverseGeocoderOffline",
        // core package dependency
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKReverseGeocoder", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKReverseGeocoderOnline", package: "tomtom-sdk-spm-core"),
        // navigation package dependency
        .packageDependency("TomTomSDKDataManagement", package: "tomtom-sdk-spm-navigation"),
    ]),
    Module("TomTomSDKRoutePlannerHybrid", sha: "d42db1e546b91004cb972e89efbb769f8ec4f9d969d1184c7762d9badf50578c", version: "0.2.3010", dependencies: [
        // core package dependency
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoutePlanner", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKBindingOnboardDirectionsInternal", sha: "50faf2d75eaeccd8e4490a3efa3596ebc095f03648a8a5b5cb0ac01aa85c03a1", version: "0.2.3010", isProduct: false, dependencies: [
        "TomTomSDKBindingNDSStoreAccessInternal",
        "TomTomSDKBindingNDSSQLiteInternal",
    ]),
    Module("TomTomSDKSearchHybrid", sha: "44ba5a2ee03634b6a87820ca7b2b14b98d0a53deba630a5274ec51ec54fdb32a", version: "0.2.3010", dependencies: [
        "TomTomSDKSearchOffline",
        // core package dependency
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKSearch", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKSearchOnline", package: "tomtom-sdk-spm-core"),
        // navigation package dependency
        .packageDependency("TomTomSDKDataManagement", package: "tomtom-sdk-spm-navigation"),
    ]),
    Module("TomTomSDKBindingVehicleHorizonInternal", sha: "eb4dc4d48cbdcc065e3d652ed57b4bea0ab42aa82674ca26da2862b3bd56aaa4", version: "0.2.3010", isProduct: false, dependencies: [
        "TomTomSDKBindingNDSStoreAccessInternal",
        "TomTomSDKBindingNDSSQLiteInternal",
    ]),
    Module("TomTomSDKStructuredSearchOffline", sha: "c9b6aa7823a9bdeb6632e0d8fcabe1b92fbe15ee50683eadf16653d31a892aa7", version: "0.2.3010", dependencies: [
        "TomTomSDKBindingOnboardStructuredSearchInternal",
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKStructuredSearch", package: "tomtom-sdk-spm-core"),
        // navigation package dependency
        .packageDependency("TomTomSDKDataManagement", package: "tomtom-sdk-spm-navigation"),
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
