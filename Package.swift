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

let sdkVersion = "0.2.2436"

let modules: [Module] = [
    Module("TomTomSDKDataManagement", sha: "e6c64bd80f82feebe763f6d4b345665e7ddb7ded0afad19f05f5966ef07fbb03", version: "0.2.2436", dependencies: [
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
    ]),

    Module("TomTomSDKOnboardDataManagement", sha: "80122612c45d5b807c9ddf3298ed2d258638f9888ccd0e8bfe71b3cfab06d108", version: "0.2.2436", dependencies: [
        "TomTomSDKDataManagement",
        "TomTomSDKNDSStoreAccessInternal",
        "TomTomSDKBindingOnboardMapUpdateInternal",

        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKHTTPFramework", package: "tomtom-sdk-spm-core"),
    ]),

    Module("TomTomSDKOnboardMapDisplayDataProvider", sha: "6ea05345d0b7e8b89c40803635ded4dc4754f90164a961f0128f26d832d44a03", version: "0.2.2436", dependencies: [
        "TomTomSDKDataManagement",
        "TomTomSDKBindingMapDisplayOnboardDataProviderInternal",

        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKHTTPFramework", package: "tomtom-sdk-spm-core"),
    ]),

    Module("TomTomSDKOnboardReverseGeocoder", sha: "61c82f3bdea616d14348540a13d1023e09a53e639a1231b5d375a89cdb1d709b", version: "0.2.2436", dependencies: [
        "TomTomSDKDataManagement",
        "TomTomSDKBindingOnboardReverseGeocoderInternal",

        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKReverseGeocoder", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKBindingOnboardReverseGeocoderInternal", sha: "d7b38c8238c51129bfa3f2232e1a097d528181ef506adda78cb6a3e1c8b4444a", version: "0.2.2436", isProduct: false, dependencies: [
        "TomTomSDKNDSStoreAccessInternal",
    ]),

    Module("TomTomSDKOnboardRouting", sha: "21bd0dc74c8c8a60762c0ad4a2714befdc50c475c1e4d84c90da8cd1702f758c", version: "0.2.2436", dependencies: [
        "TomTomSDKDataManagement",
        "TomTomSDKTPEGTraffic",
        "TomTomSDKBindingOnboardDirectionsInternal",

        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKTraffic", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRouting", package: "tomtom-sdk-spm-core"),
    ]),

    Module("TomTomSDKOnboardSearch", sha: "65d9be3fe61cf9f72cd8d9cfbabdea81d93dffdd6ee313329d64647c468d03a7", version: "0.2.2436", dependencies: [
        "TomTomSDKDataManagement",
        "TomTomSDKBindingOnboardSearchInternal",
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKSearch", package: "tomtom-sdk-spm-core"),
    ]),

    Module("TomTomSDKBindingOnboardSearchInternal", sha: "44deab9063114e65627323f57329dcb49cfbb4d09dd72e1575b0849515586e6b", version: "0.2.2436", isProduct: false, dependencies: [
        "TomTomSDKNDSStoreAccessInternal",
    ]),

    Module("TomTomSDKBindingOnboardStructuredSearchInternal", sha: "37a76c7d36e67475b4e3ba1e0a5e221d2d1866c6a0d3d254a8c18249247f5bb6", version: "0.2.2436", isProduct: false, dependencies: [
        "TomTomSDKNDSStoreAccessInternal",
    ]),

    Module("TomTomSDKOnboardStyleProvider", sha: "5de8d6361ff01ddd1fa2ad01709a7cbaafcf1c2b5e41ca92c9fba929179acee8", version: "0.2.2436"),

    Module("TomTomSDKOnboardMapMatchingEngine", sha: "c2a1f9d580a9335f87121f86647b86048ea4b39a3889c5916bc5750e15e81779", version: "0.2.2436", dependencies: [
        "TomTomSDKBindingMapMatchingInternal",
        "TomTomSDKDataManagement",
        "TomTomSDKNDSStoreAccessInternal",
        // core package dependency
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        // navigation package dependency
        .packageDependency("TomTomSDKNavigationEngine", package: "tomtom-sdk-spm-navigation"),
    ]),
    Module("TomTomSDKOnboardLocationContextProviderEngine", sha: "1e7ef5fa93ebdc6bc8b6c96b1a4ee9ba5873ef0633ad2cc1507234c9f4f6adc9", version: "0.2.2436", dependencies: [
        "TomTomSDKDataManagement",
        "TomTomSDKBindingLocationContextProviderInternal",
        // core package dependency
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRouting", package: "tomtom-sdk-spm-core"),
        // navigation package dependency
        .packageDependency("TomTomSDKNavigationEngine", package: "tomtom-sdk-spm-navigation"),
    ]),
    Module("TomTomSDKNDSSQLiteInternal", sha: "865acfb38dd217e14e2cc3edcd63cabdcad01b4f7defb421673a3c0197e875f0", version: "18.83.0", isProduct: false),
    Module("TomTomSDKNDSStoreAccessInternal", sha: "c599b986b14568d9c2008b74cee2d3f4738d3cadc4261d927989d7181fd03b42", version: "18.83.0", isProduct: false, dependencies: [
        "TomTomSDKNDSSQLiteInternal",
    ]),
    Module("TomTomSDKBindingOnboardMapUpdateInternal", sha: "98c0ab493917e4ae4655aa8d95bd40879da911eb0da8b469ace9ef9a93496b4f", version: "0.2.2436", isProduct: false, dependencies: [
        "TomTomSDKNDSSQLiteInternal",
    ]),
    Module("TomTomSDKBindingMapMatchingInternal", sha: "100eab09e190ac3bb3bdd9b0c6ef00ca9fd0aa9ac05b38609fefd6ae024bc915", version: "0.2.2436", isProduct: false, dependencies: [
        "TomTomSDKNDSStoreAccessInternal",
    ]),
    Module("TomTomSDKBindingLocationContextProviderInternal", sha: "39b9766c7d00793d31144c45042769123b607c374ac297b349eafc63541ebcf3", version: "0.2.2436", isProduct: false, dependencies: [
        "TomTomSDKNDSStoreAccessInternal",
    ]),
    Module("TomTomSDKBindingMapDisplayOnboardDataProviderInternal", sha: "0adc457c55e7035a27da630cef11c2214228055b33e4ebdab1bde5df35681a00", version: "0.2.2436", isProduct: false, dependencies: [
        "TomTomSDKNDSStoreAccessInternal",
    ]),
    Module("TomTomSDKOnboardDataStoreUpdateContextEngine", sha: "0bb4e796ae2b516c000e444a7fcb2c50f7d6ddc8b9ddf26b71e2e589acb924b4", version: "0.2.2436", dependencies: [
        "TomTomSDKDataManagement",
        // core package dependency
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        // navigation package dependency
        .packageDependency("TomTomSDKNavigationEngine", package: "tomtom-sdk-spm-navigation"),
    ]),
    Module("TomTomSDKDataStoreUpdater", sha: "781125fe1059f03ece4f3af88c4969e4c1e4e7698d140229b474402f80a0d8a9", version: "0.2.2436", dependencies: [
        "TomTomSDKDataManagement",
        // core package dependency
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKLocation", package: "tomtom-sdk-spm-core"),
        // navigation package dependency
        .packageDependency("TomTomSDKNavigationEngine", package: "tomtom-sdk-spm-navigation"),
    ]),
    Module("TomTomSDKTPEGTraffic", sha: "dbd1ba3d90bd09f5d0dec5015d63bd0764dd29f036e97f7f986bd861767a4b83", version: "0.2.2436", dependencies: [
        "TomTomSDKDataManagement",
        "TomTomSDKBindingTPEGTrafficInternal",
        // core package dependency
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKTraffic", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKLocation", package: "tomtom-sdk-spm-core"),
        // navigation package dependency
        .packageDependency("TomTomSDKNavigationEngine", package: "tomtom-sdk-spm-navigation"),
    ]),
    Module("TomTomSDKBindingTPEGTrafficInternal", sha: "ca4c87cd9756a7f5f738c821684599cb86f490aff2f68d3f8f219bf588d23eef", version: "0.2.2436", isProduct: false, dependencies: [
        "TomTomSDKNDSStoreAccessInternal",
        "TomTomSDKNDSSQLiteInternal",
    ]),
    Module("TomTomSDKHybridReverseGeocoder", sha: "0e02520e45380b5c146d2cc0b449bb170002f3006a1ddafc42b1c8509f286054", version: "0.2.2436", dependencies: [
        "TomTomSDKDataManagement",
        "TomTomSDKOnboardReverseGeocoder",
        // core package dependency
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKReverseGeocoder", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKOnlineReverseGeocoder", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKHybridRouting", sha: "c97b9424e483867aeaeccb74e5479df824ef3bb94934fcee438f520a293f7164", version: "0.2.2436", dependencies: [
        // core package dependency
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRouting", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKBindingOnboardDirectionsInternal", sha: "73054169c3e44247deafd555080bceffc91ea45ec6fee108a47cfb069d574fbd", version: "0.2.2436", isProduct: false, dependencies: [
        "TomTomSDKNDSStoreAccessInternal",
        "TomTomSDKNDSSQLiteInternal",
    ]),

    Module("TomTomSDKHybridSearch", sha: "ed53b96c1c75770ea04e87b671c43e62db01f52ac7f3bdeff5fe8eef900b603f", version: "0.2.2436", dependencies: [
        "TomTomSDKDataManagement",
        "TomTomSDKOnboardSearch",
        // core package dependency
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKSearch", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKOnlineSearch", package: "tomtom-sdk-spm-core"),
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
