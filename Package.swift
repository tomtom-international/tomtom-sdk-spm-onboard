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

let sdkVersion = "0.2.3070"

let modules: [Module] = [
    Module("TomTomSDKDataManagementOffline", sha: "a87ce82caa140a0db3d909b7ca72693a9c0a83c3a841bbd0509c918f81b281af", version: "0.2.3070", dependencies: [
        "TomTomSDKBindingNDSStoreAccessInternal",
        "TomTomSDKBindingOnboardMapUpdateInternal",

        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKNetworking", package: "tomtom-sdk-spm-core"),
        // navigation package dependency
        .packageDependency("TomTomSDKDataManagement", package: "tomtom-sdk-spm-navigation"),
    ]),
    Module("TomTomSDKMapDisplayDataProviderOffline", sha: "a9e61300ea2147a6e88b37498940b7ed3bc58fad3422468f65e5cbd85c305880", version: "0.2.3070", dependencies: [
        "TomTomSDKBindingMapDisplayOnboardDataProviderInternal",

        // core package dependencies
        .packageDependency("TomTomSDKNetworking", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKMapDisplay", package: "tomtom-sdk-spm-core"),
        // navigation package dependency
        .packageDependency("TomTomSDKDataManagement", package: "tomtom-sdk-spm-navigation"),
    ]),

    Module("TomTomSDKReverseGeocoderOffline", sha: "d82c8444cc1d3fead1ab031fd4ed3ea8542f5b0ae93570ebe8a0ac32f4b22ade", version: "0.2.3070", dependencies: [
        "TomTomSDKBindingOnboardReverseGeocoderInternal",

        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKReverseGeocoder", package: "tomtom-sdk-spm-core"),
        // navigation package dependency
        .packageDependency("TomTomSDKDataManagement", package: "tomtom-sdk-spm-navigation"),
    ]),
    Module("TomTomSDKBindingOnboardReverseGeocoderInternal", sha: "e9bfaa074e4bb0454559301920215a2f3277d32b6583c0a2552b66e2bc9e0c39", version: "0.2.3070", isProduct: false, dependencies: [
        "TomTomSDKBindingNDSStoreAccessInternal",
    ]),

    Module("TomTomSDKRoutePlannerOffline", sha: "453daf1baf9c518685f3a17f7697db7be83ebe44227522b2b1a61b991b3e6a39", version: "0.2.3070", dependencies: [
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

    Module("TomTomSDKSearchOffline", sha: "c8df26d94e68bea51e788f222f6d01e9901cb849bde23caf730dbc2baa589612", version: "0.2.3070", dependencies: [
        "TomTomSDKBindingOnboardSearchInternal",
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKSearch", package: "tomtom-sdk-spm-core"),
        // navigation package dependency
        .packageDependency("TomTomSDKDataManagement", package: "tomtom-sdk-spm-navigation"),
    ]),

    Module("TomTomSDKBindingOnboardSearchInternal", sha: "9165b4784487283ecc44135d8e6c94111b0ef60cef0171689d7c4a159582a10d", version: "0.2.3070", isProduct: false, dependencies: [
        "TomTomSDKBindingNDSStoreAccessInternal",
    ]),

    Module("TomTomSDKBindingOnboardStructuredSearchInternal", sha: "c5c5a25e916a91c16390021e30d9e6e11d1c95f0d0f30bac39ab1dbde9107eee", version: "0.2.3070", isProduct: false, dependencies: [
        "TomTomSDKBindingNDSStoreAccessInternal",
    ]),

    Module("TomTomSDKStyleProviderOffline", sha: "4285ad6ad0706406e91b21547b6684a1a7cc863f6343098b9a9c8c661b72e398", version: "0.2.3070"),

    Module("TomTomSDKMapMatchingEngineOffline", sha: "f42079ec73873c688c43d780cb75658fcd78b1346d5035dff1a11f8a46443292", version: "0.2.3070", dependencies: [
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
    Module("TomTomSDKLocationContextProviderEngineOffline", sha: "ad7bcea715c7120d231b8457879ab1212b554b46e552134589a2855918c6e423", version: "0.2.3070", dependencies: [
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
    Module("TomTomSDKBindingNDSSQLiteInternal", sha: "cfcf003d13178b50693b65054aeefe1d196b8c62c318c43c5477080d88e76c1b", version: "0.2.3070", isProduct: false),
    Module("TomTomSDKBindingNDSStoreAccessInternal", sha: "4a347fd0e01c6ea4f88eff829f4de010bd0a72d024cf2eb089e59df8c884e666", version: "0.2.3070", isProduct: false, dependencies: [
        "TomTomSDKBindingNDSSQLiteInternal",
    ]),
    Module("TomTomSDKBindingOnboardMapUpdateInternal", sha: "ecff729005f6ea7739d0ce5e5caaf3105c6aa5938265c35117848c2122e49429", version: "0.2.3070", isProduct: false, dependencies: [
        "TomTomSDKBindingNDSSQLiteInternal",
    ]),
    Module("TomTomSDKBindingMapDisplayOnboardDataProviderInternal", sha: "cc4710d6b1a319e623679ba46426a7960904ac144ce2dd9cdae2a952c9ea0156", version: "0.2.3070", isProduct: false, dependencies: [
        "TomTomSDKBindingNDSStoreAccessInternal",
    ]),
    Module("TomTomSDKTrafficTPEG", sha: "622be33d8605466e81703b671f864e1ab973397cca57c09050bb1f44548bd039", version: "0.2.3070", dependencies: [
        "TomTomSDKBindingTPEGTrafficInternal",
        // core package dependency
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKTraffic", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKLocationProvider", package: "tomtom-sdk-spm-core"),
        // navigation package dependency
        .packageDependency("TomTomSDKNavigationEngine", package: "tomtom-sdk-spm-navigation"),
        .packageDependency("TomTomSDKDataManagement", package: "tomtom-sdk-spm-navigation"),
    ]),
    Module("TomTomSDKBindingTrafficTileGeneratorInternal", sha: "d9be80628b791bb5cd8b8762857d40915b276b5489b1f94badbb980fe4957084", version: "0.2.3070", isProduct: false),
    Module("TomTomSDKBindingTPEGTrafficInternal", sha: "83ff54bd762ee82a8f7e2a510687a5c5f22a8926b545a8ac79a8337319d4654c", version: "0.2.3070", isProduct: false, dependencies: [
        "TomTomSDKBindingNDSStoreAccessInternal",
        "TomTomSDKBindingNDSSQLiteInternal",
    ]),
    Module("TomTomSDKReverseGeocoderHybrid", sha: "ae3fa952228446cd39725aa95f79c52e660c9068abad50b9012088b637836b88", version: "0.2.3070", dependencies: [
        "TomTomSDKReverseGeocoderOffline",
        // core package dependency
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKReverseGeocoder", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKReverseGeocoderOnline", package: "tomtom-sdk-spm-core"),
        // navigation package dependency
        .packageDependency("TomTomSDKDataManagement", package: "tomtom-sdk-spm-navigation"),
    ]),
    Module("TomTomSDKRoutePlannerHybrid", sha: "491bfc037449777a4819ce05d8d4f6e8ab531584a63c73b4ee6a7ba8914af363", version: "0.2.3070", dependencies: [
        // core package dependency
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoutePlanner", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKBindingOnboardDirectionsInternal", sha: "bc4a71a189270c5792f7ce7257f2719786ff1d43bd93011610c08078192768f8", version: "0.2.3070", isProduct: false, dependencies: [
        "TomTomSDKBindingNDSStoreAccessInternal",
        "TomTomSDKBindingNDSSQLiteInternal",
    ]),
    Module("TomTomSDKSearchHybrid", sha: "27a041bffe4bb2954074f76160520337c96383cb951ddbc5bdf9605155d96534", version: "0.2.3070", dependencies: [
        "TomTomSDKSearchOffline",
        // core package dependency
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKSearch", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKSearchOnline", package: "tomtom-sdk-spm-core"),
        // navigation package dependency
        .packageDependency("TomTomSDKDataManagement", package: "tomtom-sdk-spm-navigation"),
    ]),
    Module("TomTomSDKStructuredSearchOffline", sha: "68cd5fd415ef5bbe3d4afa426a6d39fe4db8b8633a9e657598ed6e05ddadb0c0", version: "0.2.3070", dependencies: [
        "TomTomSDKBindingOnboardStructuredSearchInternal",
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKStructuredSearch", package: "tomtom-sdk-spm-core"),
        // navigation package dependency
        .packageDependency("TomTomSDKDataManagement", package: "tomtom-sdk-spm-navigation"),
    ]),
    Module("TomTomSDKBindingVehicleHorizonInternal", sha: "913f8da15bdbfcadb13c3b1696014dda91c2fa5351dde7bc44dddaea45a9bb30", version: "0.2.3070", isProduct: false, dependencies: [
        "TomTomSDKBindingNDSStoreAccessInternal",
        "TomTomSDKBindingNDSSQLiteInternal",
    ]),
    Module("TomTomSDKBindingVehicleHorizonNDSMapInternal", sha: "e27040e8003d4e830da0746dbc777e295259a37b89ddce943fc39a2d3e128c46", version: "0.2.3070", isProduct: false, dependencies: [
        "TomTomSDKBindingNDSStoreAccessInternal",
        "TomTomSDKBindingNDSSQLiteInternal",
    ]),
    Module("TomTomSDKHorizonEngineOffline", sha: "9c63fcf25f315cd8310081c653e7cd438ba7e8b5339f2a6a84081d887d9c4e02", version: "0.2.3070", dependencies: [
        "TomTomSDKBindingVehicleHorizonInternal",
        "TomTomSDKBindingVehicleHorizonNDSMapInternal",
        "TomTomSDKDataManagementOffline",
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKLocationProvider", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        // navigation package dependency
        .packageDependency("TomTomSDKNavigationEngine", package: "tomtom-sdk-spm-navigation"),
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
