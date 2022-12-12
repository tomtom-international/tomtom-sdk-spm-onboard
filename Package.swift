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

let sdkVersion = "0.2.2929"

let modules: [Module] = [
    Module("TomTomSDKDataManagementOffline", sha: "8ef0760e33216995bd630840afef459d28b09237bd9783258b98dbb89ef2b2d9", version: "0.2.2929", dependencies: [
        "TomTomSDKBindingNDSStoreAccessInternal",
        "TomTomSDKBindingOnboardMapUpdateInternal",

        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKNetworking", package: "tomtom-sdk-spm-core"),
        // navigation package dependency
        .packageDependency("TomTomSDKDataManagement", package: "tomtom-sdk-spm-navigation"),
    ]),
    Module("TomTomSDKMapDisplayDataProviderOffline", sha: "40007e649baa55dbd1d1049b202e0f61949c294a76046775ad3ac7a1f34f0fd2", version: "0.2.2929", dependencies: [
        "TomTomSDKBindingMapDisplayOnboardDataProviderInternal",

        // core package dependencies
        .packageDependency("TomTomSDKNetworking", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKMapDisplay", package: "tomtom-sdk-spm-core"),
        // navigation package dependency
        .packageDependency("TomTomSDKDataManagement", package: "tomtom-sdk-spm-navigation"),
    ]),

    Module("TomTomSDKReverseGeocoderOffline", sha: "2a040db359bf85b6c5d9889a06652c5787f3444cb6259c3ef640feae520fdeff", version: "0.2.2929", dependencies: [
        "TomTomSDKBindingOnboardReverseGeocoderInternal",

        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKReverseGeocoder", package: "tomtom-sdk-spm-core"),
        // navigation package dependency
        .packageDependency("TomTomSDKDataManagement", package: "tomtom-sdk-spm-navigation"),
    ]),
    Module("TomTomSDKBindingOnboardReverseGeocoderInternal", sha: "2a5fb8be8c933b70d54a61511ee747fd28e46a76dfa4cdea4a85af0777091dde", version: "0.2.2929", isProduct: false, dependencies: [
        "TomTomSDKBindingNDSStoreAccessInternal",
    ]),

    Module("TomTomSDKRoutePlannerOffline", sha: "459dfed1c5a02ffa0272f72de51fc34373f3552e839f7271de5c5281a8ca7464", version: "0.2.2929", dependencies: [
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

    Module("TomTomSDKSearchOffline", sha: "2e0b8b7720c6ee8c9d233f0afe4806d0840e3a3264d0f838d5f89633d7c694a3", version: "0.2.2929", dependencies: [
        "TomTomSDKBindingOnboardSearchInternal",
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKSearch", package: "tomtom-sdk-spm-core"),
        // navigation package dependency
        .packageDependency("TomTomSDKDataManagement", package: "tomtom-sdk-spm-navigation"),
    ]),

    Module("TomTomSDKBindingOnboardSearchInternal", sha: "42635e69e49fdf1dd109e1320dd6c81c2ad40e7038840e4bdfea5527519abdbb", version: "0.2.2929", isProduct: false, dependencies: [
        "TomTomSDKBindingNDSStoreAccessInternal",
    ]),

    Module("TomTomSDKBindingOnboardStructuredSearchInternal", sha: "d6a67b32b3411053e5820f9c9548b099e49c60c4d1071480c72dbbbbdc6eda54", version: "0.2.2929", isProduct: false, dependencies: [
        "TomTomSDKBindingNDSStoreAccessInternal",
    ]),

    Module("TomTomSDKStyleProviderOffline", sha: "4ec69db442833ffbd9f12cbb0ea14ca71c21318ed729d42dfe495a7278f6143e", version: "0.2.2929"),

    Module("TomTomSDKMapMatchingEngineOffline", sha: "723314958c67d69e56ce640342a11a0a05d9ea4bf6baf1871fe27e5cf6b7f573", version: "0.2.2929", dependencies: [
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
    Module("TomTomSDKLocationContextProviderEngineOffline", sha: "47dc03a2486499b916054547c1cfbceda99370055add6ae2cd6c996b2fc76576", version: "0.2.2929", dependencies: [
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
    Module("TomTomSDKBindingNDSSQLiteInternal", sha: "c3f1434e67899eb7282f3585a2810b3411a5fbb4a1635ce17d15fbea3273cd04", version: "0.2.2929", isProduct: false),
    Module("TomTomSDKBindingNDSStoreAccessInternal", sha: "4fc1057be7818a72ff2f8e33049edd7bce50c3dae26acd4a2f100dd52f81ebc7", version: "0.2.2929", isProduct: false, dependencies: [
        "TomTomSDKBindingNDSSQLiteInternal",
    ]),
    Module("TomTomSDKBindingOnboardMapUpdateInternal", sha: "bb7aebd4466cf163f18bac64cf034b63cc5f034cdca4dd960af5ad9dd1607a66", version: "0.2.2929", isProduct: false, dependencies: [
        "TomTomSDKBindingNDSSQLiteInternal",
    ]),
    Module("TomTomSDKBindingMapDisplayOnboardDataProviderInternal", sha: "5e4e9957969cfcde25cdb9c99f120e9befaa7b7b57f7c3ef2eb327517fac789a", version: "0.2.2929", isProduct: false, dependencies: [
        "TomTomSDKBindingNDSStoreAccessInternal",
    ]),
    Module("TomTomSDKTrafficTPEG", sha: "e0e7ada7aac5abdd59c5442599e9ade14f28e5433293f8a85fa65ebdf3e0bc83", version: "0.2.2929", dependencies: [
        "TomTomSDKBindingTPEGTrafficInternal",
        // core package dependency
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKTraffic", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKLocationProvider", package: "tomtom-sdk-spm-core"),
        // navigation package dependency
        .packageDependency("TomTomSDKNavigationEngine", package: "tomtom-sdk-spm-navigation"),
        .packageDependency("TomTomSDKDataManagement", package: "tomtom-sdk-spm-navigation"),
    ]),
    Module("TomTomSDKBindingTrafficTileGeneratorInternal", sha: "945d055cda15fa693ad201ac22f94bf38a0059a0051057e5fde0fd7fd8c11006", version: "0.2.2929", isProduct: false),
    Module("TomTomSDKBindingTPEGTrafficInternal", sha: "855a0211113f35a62d732d10f29f1ad3596c956262c62908f2431fc200d9e7a5", version: "0.2.2929", isProduct: false, dependencies: [
        "TomTomSDKBindingNDSStoreAccessInternal",
        "TomTomSDKBindingNDSSQLiteInternal",
    ]),
    Module("TomTomSDKReverseGeocoderHybrid", sha: "912f3bd174729d29f68f1316f5989894dbba33b69a29b6bb3b8114df49777ff5", version: "0.2.2929", dependencies: [
        "TomTomSDKReverseGeocoderOffline",
        // core package dependency
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKReverseGeocoder", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKReverseGeocoderOnline", package: "tomtom-sdk-spm-core"),
        // navigation package dependency
        .packageDependency("TomTomSDKDataManagement", package: "tomtom-sdk-spm-navigation"),
    ]),
    Module("TomTomSDKRoutePlannerHybrid", sha: "38d8608d5d4c299adeede62f62d472d9e6b4f125d9a7652b5655a3c4f45227ae", version: "0.2.2929", dependencies: [
        // core package dependency
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoutePlanner", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKBindingOnboardDirectionsInternal", sha: "623057ccca4c830dd2cb0cf060af3838ccd65252bd437aba0c0ad178a24655de", version: "0.2.2929", isProduct: false, dependencies: [
        "TomTomSDKBindingNDSStoreAccessInternal",
        "TomTomSDKBindingNDSSQLiteInternal",
    ]),
    Module("TomTomSDKSearchHybrid", sha: "7e3e5d34174afdb6697468bf0789093dd52749934ff1dc90fcfe53a6ffcdfefd", version: "0.2.2929", dependencies: [
        "TomTomSDKSearchOffline",
        // core package dependency
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKSearch", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKSearchOnline", package: "tomtom-sdk-spm-core"),
        // navigation package dependency
        .packageDependency("TomTomSDKDataManagement", package: "tomtom-sdk-spm-navigation"),
    ]),
    Module("TomTomSDKBindingVehicleHorizonInternal", sha: "79a7c2491039df4bdedc8440aa15ebae51e948075813322c94b5cbfa49423442", version: "0.2.2929", isProduct: false, dependencies: [
        "TomTomSDKBindingNDSStoreAccessInternal",
        "TomTomSDKBindingNDSSQLiteInternal",
    ]),
    Module("TomTomSDKStructuredSearchOffline", sha: "a356c170e8faf73769c6fca6aa9c24ede87e01d1d4d5a4682600c482a2aeada0", version: "0.2.2929", dependencies: [
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
