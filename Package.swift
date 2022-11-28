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

let sdkVersion = "0.2.2822"

let modules: [Module] = [
    Module("TomTomSDKDataManagementOffline", sha: "aa981fbed00766ad769200a3f130b739d3260c4291045c59c7386f06e4aeb588", version: "0.2.2822", dependencies: [
        "TomTomSDKBindingNDSStoreAccessInternal",
        "TomTomSDKBindingOnboardMapUpdateInternal",

        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKNetworking", package: "tomtom-sdk-spm-core"),
        // navigation package dependency
        .packageDependency("TomTomSDKDataManagement", package: "tomtom-sdk-spm-navigation"),
    ]),
    Module("TomTomSDKMapDisplayDataProviderOffline", sha: "e5087916491e04a6b475f89105a3c7ef01f14e69dde2406b15a5b38313b68b9d", version: "0.2.2822", dependencies: [
        "TomTomSDKBindingMapDisplayOnboardDataProviderInternal",

        // core package dependencies
        .packageDependency("TomTomSDKNetworking", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKMapDisplay", package: "tomtom-sdk-spm-core"),
        // navigation package dependency
        .packageDependency("TomTomSDKDataManagement", package: "tomtom-sdk-spm-navigation"),
    ]),

    Module("TomTomSDKReverseGeocoderOffline", sha: "f74e6ab7e0f2998f41b592e9102b5437262cd372b618eb7d638745b77d098dcd", version: "0.2.2822", dependencies: [
        "TomTomSDKBindingOnboardReverseGeocoderInternal",

        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKReverseGeocoder", package: "tomtom-sdk-spm-core"),
        // navigation package dependency
        .packageDependency("TomTomSDKDataManagement", package: "tomtom-sdk-spm-navigation"),
    ]),
    Module("TomTomSDKBindingOnboardReverseGeocoderInternal", sha: "aba5516ceb45c2baf49f1011b0f652f4ed5e414dbbdff2fd525d7f4f6a9627e5", version: "0.2.2822", isProduct: false, dependencies: [
        "TomTomSDKBindingNDSStoreAccessInternal",
    ]),

    Module("TomTomSDKRoutePlannerOffline", sha: "fc7e407db9cab570764f0a47fbca81be6b70a336ae247d4ad13940c09160328d", version: "0.2.2822", dependencies: [
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

    Module("TomTomSDKSearchOffline", sha: "21bcb1db6df91f4594f1197ed686c49c8dd65a00fc6f41b0ca73db14f665bbae", version: "0.2.2822", dependencies: [
        "TomTomSDKBindingOnboardSearchInternal",
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKSearch", package: "tomtom-sdk-spm-core"),
        // navigation package dependency
        .packageDependency("TomTomSDKDataManagement", package: "tomtom-sdk-spm-navigation"),
    ]),

    Module("TomTomSDKBindingOnboardSearchInternal", sha: "867fc80de21352e4acfd484bd11987f2a5f113a98a671f57a2c56247a13c7aea", version: "0.2.2822", isProduct: false, dependencies: [
        "TomTomSDKBindingNDSStoreAccessInternal",
    ]),

    Module("TomTomSDKBindingOnboardStructuredSearchInternal", sha: "987de35e317c278cedcb556139194a7f4d91616d4b5ac89d55282c52e50519c4", version: "0.2.2822", isProduct: false, dependencies: [
        "TomTomSDKBindingNDSStoreAccessInternal",
    ]),

    Module("TomTomSDKStyleProviderOffline", sha: "5c52aeefb17e1397393b92fd1809c2afb05d0992e39f45383232c3a2cdb6b46f", version: "0.2.2822"),

    Module("TomTomSDKMapMatchingEngineOffline", sha: "bd2df338539e7c0c3a2f771b451e7581790115a9195829742a7f0eb178b447b5", version: "0.2.2822", dependencies: [
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
    Module("TomTomSDKLocationContextProviderEngineOffline", sha: "f4c10505efb0fb8d6bbb36ee9f3fafa73aa2e7246720bc5ba6f5aa728aa966cf", version: "0.2.2822", dependencies: [
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
    Module("TomTomSDKBindingNDSSQLiteInternal", sha: "bbaa9d044dd6f98c129b8e95acb702e52cf97223aad0a86ebfacf0644837796c", version: "0.2.2822", isProduct: false),
    Module("TomTomSDKBindingNDSStoreAccessInternal", sha: "fc134d59f0e826f6423fcb30d89003422463690d7fdc3ad0aa55fb072956bd6a", version: "0.2.2822", isProduct: false, dependencies: [
        "TomTomSDKBindingNDSSQLiteInternal",
    ]),
    Module("TomTomSDKBindingOnboardMapUpdateInternal", sha: "fe828bee72f9aa38cb89e1fba3ebfa3f01677d63930ecc662ec99bcaffaf6090", version: "0.2.2822", isProduct: false, dependencies: [
        "TomTomSDKBindingNDSSQLiteInternal",
    ]),
    Module("TomTomSDKBindingMapDisplayOnboardDataProviderInternal", sha: "e8c1a0292844955875042a0691e3e2f4f90f36dcf9e71169c9ca8861665a1333", version: "0.2.2822", isProduct: false, dependencies: [
        "TomTomSDKBindingNDSStoreAccessInternal",
    ]),
    Module("TomTomSDKTrafficTPEG", sha: "230e3fc5842c290892d7bca3bcd4a5acf93a3168bf573e74c57578a31494108f", version: "0.2.2822", dependencies: [
        "TomTomSDKBindingTPEGTrafficInternal",
        // core package dependency
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKTraffic", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKLocationProvider", package: "tomtom-sdk-spm-core"),
        // navigation package dependency
        .packageDependency("TomTomSDKNavigationEngine", package: "tomtom-sdk-spm-navigation"),
        .packageDependency("TomTomSDKDataManagement", package: "tomtom-sdk-spm-navigation"),
    ]),
    Module("TomTomSDKBindingTPEGTrafficInternal", sha: "2117c2f50fcfb64c6fc1d9f5b510cf076b810ca1dd163ccaa1f298d515fd125f", version: "0.2.2822", isProduct: false, dependencies: [
        "TomTomSDKBindingNDSStoreAccessInternal",
        "TomTomSDKBindingNDSSQLiteInternal",
    ]),
    Module("TomTomSDKReverseGeocoderHybrid", sha: "f544b28ad4bddd99c427de7f1d5a07ec2dbe1359fe3e039b46eb997c5249a1ac", version: "0.2.2822", dependencies: [
        "TomTomSDKReverseGeocoderOffline",
        // core package dependency
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKReverseGeocoder", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKReverseGeocoderOnline", package: "tomtom-sdk-spm-core"),
        // navigation package dependency
        .packageDependency("TomTomSDKDataManagement", package: "tomtom-sdk-spm-navigation"),
    ]),
    Module("TomTomSDKRoutePlannerHybrid", sha: "4ffc7ec247e215ea5d9eb022bde213cf373e66c0f22133f4af7616fc520c2aee", version: "0.2.2822", dependencies: [
        // core package dependency
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoutePlanner", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKBindingOnboardDirectionsInternal", sha: "3273687cd84ac74a5b08f5171646081dbb1e80f61a31502bdb3ce7ba8343ffab", version: "0.2.2822", isProduct: false, dependencies: [
        "TomTomSDKBindingNDSStoreAccessInternal",
        "TomTomSDKBindingNDSSQLiteInternal",
    ]),
    Module("TomTomSDKSearchHybrid", sha: "82e88d15c2f457e4063ca758f124736eebffcc7d1e38e3a00b382f43f641eb45", version: "0.2.2822", dependencies: [
        "TomTomSDKSearchOffline",
        // core package dependency
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKSearch", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKSearchOnline", package: "tomtom-sdk-spm-core"),
        // navigation package dependency
        .packageDependency("TomTomSDKDataManagement", package: "tomtom-sdk-spm-navigation"),
    ]),
    Module("TomTomSDKBindingVehicleHorizonInternal", sha: "281c338bd5946e709723e3ea5eaa4cf09ee059e074410b1143deafcff64b523d", version: "0.2.2822", isProduct: false, dependencies: [
        "TomTomSDKBindingNDSStoreAccessInternal",
        "TomTomSDKBindingNDSSQLiteInternal",
    ]),
    Module("TomTomSDKStructuredSearchOffline", sha: "1f111962bf9c884be688e38c03b739bf96d6e14e17083cd011cac74faa4edc08", version: "0.2.2822", dependencies: [
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
