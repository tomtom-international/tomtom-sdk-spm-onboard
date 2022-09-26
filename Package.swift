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

let sdkVersion = "0.2.2163"

let modules: [Module] = [
    Module("TomTomSDKDataManagement", sha: "f883287c654f22294517f01422a4e8ac7e89a6cc9219b9622fa91212d225bb17", dependencies: [
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
    ]),

    Module("TomTomSDKOnboardDataManagement", sha: "7731033b5b0a20bdb38ba23dc75739c2dda707896746103263bc09e68d786360", dependencies: [
        "TomTomSDKNDSSQLiteInternal",
        "TomTomSDKNDSStoreAccessInternal",
        "TomTomSDKOnboardMapUpdateInternal",

        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKHTTPFramework", package: "tomtom-sdk-spm-core"),
    ]),

    Module("TomTomSDKOnboardMapDisplayDataProvider", sha: "e4463819154ab791b4903c02f920e4ee4da48485b3a523bf4773d4e63a4bf87a", dependencies: [
        "TomTomSDKDataManagement",
        "TomTomSDKBindingMapDisplayOnboardDataProviderInternal",

        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKHTTPFramework", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKFrameworkHTTPInternal", package: "tomtom-sdk-spm-core"),

    ]),

    Module("TomTomSDKOnboardReverseGeocoder", sha: "4b9de0f3894fe61882b57e8e5c9363bfa25296773b63642bf92f3f5c4613d2c1", dependencies: [
        "TomTomSDKDataManagement",
        "TomTomSDKOnboardReverseGeocoderInternal",

        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKReverseGeocoder", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKOnboardReverseGeocoderInternal", sha: "4b0b5ed0acbf1281613a1d6b4fa6d9d62ca57153aeb35aa2b46e35d488b34795", version: "17.74.0", isProduct: false, dependencies: [
        "TomTomSDKNDSStoreAccessInternal",
    ]),

    Module("TomTomSDKOnboardRouting", sha: "b05ff807d4769b871474815edac345121daecf56e52c5fdd441ed7337819914a", dependencies: [
        "TomTomSDKDataManagement",
        "TomTomSDKOnboardDirectionsInternal",
        "TomTomSDKTraffic",
        "TomTomSDKTPEGTraffic",
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRouting", package: "tomtom-sdk-spm-core"),
    ]),

    Module("TomTomSDKOnboardSearch", sha: "b78fc0263aa084f05a9e54b37bc1e440e48c72ee468c3d0afb149a086433b002", dependencies: [
        "TomTomSDKDataManagement",
        "TomTomSDKOnboardSearchInternal",
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKSearch", package: "tomtom-sdk-spm-core"),
    ]),

    Module("TomTomSDKOnboardSearchInternal", sha: "9c8343462a8ccc789c847f533995ae389f1ac7abba108d170c3f9712ee09b300", version: "17.74.0", isProduct: false, dependencies: [
        "TomTomSDKNDSStoreAccessInternal",
    ]),

    Module("TomTomSDKOnboardStyleProvider", sha: "9fc66247dabc7e0d1f34fb628a7c6903835d00914c3817d6e06eed5f79645d36"),

    Module("TomTomSDKOnboardMapMatchingEngine", sha: "74e6180d2424de043ae1422ad3d88126fa3054149f757a968ebf5071a2628a80", dependencies: [
        "TomTomSDKDataManagement",
        "TomTomSDKOnboardMapMatchingInternal",
        // core package dependency
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        // navigation package dependency
        .packageDependency("TomTomSDKNavigationEngine", package: "tomtom-sdk-spm-navigation"),
    ]),
    Module("TomTomSDKOnboardMapMatchingInternal", sha: "591f6f4696e6f0d9a06fbeeda684907fc0306fff92ac97ffe99e66b2225fa3b4", version: "17.74.0", isProduct: false, dependencies: [
        "TomTomSDKNDSStoreAccessInternal",
    ]),
    Module("TomTomSDKOnboardLocationContextProviderEngine", sha: "705e4121be26f00d87492a389b393b9f8aec1aec96be599e1b6de210893f3cd7", dependencies: [
        "TomTomSDKDataManagement",
        "TomTomSDKLocationContextProviderInternal",
        // core package dependency
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRouting", package: "tomtom-sdk-spm-core"),
        // navigation package dependency
        .packageDependency("TomTomSDKNavigationEngine", package: "tomtom-sdk-spm-navigation"),
    ]),
    Module("TomTomSDKLocationContextProviderInternal", sha: "cb3d93cfe239822e7bc5efaa65faf306598dc033347c388afa285019073bf177", version: "17.74.0", isProduct: false, dependencies: [
        "TomTomSDKNDSStoreAccessInternal",
    ]),
    Module("TomTomSDKNDSSQLiteInternal", sha: "67491694d4e33a2c3d99d4297af0b68ff260117ab0652106802f2f9bf3053b40", version: "17.74.0", isProduct: false),
    Module("TomTomSDKNDSStoreAccessInternal", sha: "4d1152b8100d5b0c360e1866ebd8395b6a8350ea1c0e473e738194413c93e039", version: "17.74.0", isProduct: false, dependencies: [
        "TomTomSDKNDSSQLiteInternal",
    ]),
    Module("TomTomSDKOnboardMapUpdateInternal", sha: "363c33a22eff708e94938c476ab0203e826cb53ec34accd7bcb65c05ee6c74bb", version: "17.74.0", isProduct: false, dependencies: [
        "TomTomSDKNDSSQLiteInternal",
    ]),
    Module("TomTomSDKBindingMapDisplayOnboardDataProviderInternal", sha: "ccc8206896844a11499fdae28bbd51314332960b7652640845201dd94c4686f8", isProduct: false, dependencies: [
        "TomTomSDKNDSStoreAccessInternal",
    ]),
    Module("TomTomSDKOnboardDirectionsInternal", sha: "_SHA_", version: "_VERSION_", isProduct: false, dependencies: [
        "TomTomSDKNDSStoreAccessInternal",
    ]),
    Module("TomTomSDKOnboardDataStoreUpdateContextEngine", sha: "a72e853797f0ed47f190a709eed15fd4e8a1c4d866ac562f172607f073cb4cee", dependencies: [
        "TomTomSDKDataManagement",
        // core package dependency
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        // navigation package dependency
        .packageDependency("TomTomSDKNavigationEngine", package: "tomtom-sdk-spm-navigation"),
    ]),
    Module("TomTomSDKTPEGTraffic", sha: "f148f328e9ad6a8d8e386f9bcf8f0fd33164b0e54c70f0ba803d4e94e2c5f482", dependencies: [
        "TomTomSDKDataManagement",
        "TomTomSDKOnboardRouting",
        "TomTomSDKOnboardDataManagement",
        // core package dependency
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKTraffic", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKLocation", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKMapsDisplay", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKHybridReverseGeocoder", sha: "493e0395eb6df16d5f2378d40ef837aa6306354a8ded0ecdfc30f85303a976ba", dependencies: [
        "TomTomSDKDataManagement",
        "TomTomSDKOnboardReverseGeocoder",
        // core package dependency
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKReverseGeocoder", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKOnlineReverseGeocoder", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKHybridRouting", sha: "_SHA_", dependencies: [
        // core package dependency
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRouting", package: "tomtom-sdk-spm-core"),
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
