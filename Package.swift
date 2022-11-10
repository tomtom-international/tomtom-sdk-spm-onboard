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

let sdkVersion = "0.2.2702"

let modules: [Module] = [
    Module("TomTomSDKOnboardDataManagement", sha: "ac7830eb30763cec6dc44d5e3f842177ba3cb29bf4ea03b977de4c7b310fd622", version: "0.2.2702", dependencies: [
        "TomTomSDKBindingNDSStoreAccessInternal",
        "TomTomSDKBindingOnboardMapUpdateInternal",

        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKHTTPFramework", package: "tomtom-sdk-spm-core"),
        // navigation package dependency
        .packageDependency("TomTomSDKDataManagement", package: "tomtom-sdk-spm-navigation"),
    ]),
    Module("TomTomSDKOnboardMapDisplayDataProvider", sha: "051f735ef1643c1f716daa44dba17f2bf2b6295cda405741ba139276aca8f146", version: "0.2.2702", dependencies: [
        "TomTomSDKBindingMapDisplayOnboardDataProviderInternal",

        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKHTTPFramework", package: "tomtom-sdk-spm-core"),
        // navigation package dependency
        .packageDependency("TomTomSDKDataManagement", package: "tomtom-sdk-spm-navigation"),
    ]),

    Module("TomTomSDKOnboardReverseGeocoder", sha: "8f264a0bc07463de953d5e4d31f61bde0c164fbd3bb611589f4005628acf7000", version: "0.2.2702", dependencies: [
        "TomTomSDKBindingOnboardReverseGeocoderInternal",

        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKReverseGeocoder", package: "tomtom-sdk-spm-core"),
        // navigation package dependency
        .packageDependency("TomTomSDKDataManagement", package: "tomtom-sdk-spm-navigation"),
    ]),
    Module("TomTomSDKBindingOnboardReverseGeocoderInternal", sha: "dded1da74d20ab1267901e15ede319fb71f6eeaa9bab1a36d9aefeee41e7e3ab", version: "0.2.2702", isProduct: false, dependencies: [
        "TomTomSDKBindingNDSStoreAccessInternal",
    ]),

    Module("TomTomSDKOnboardRouting", sha: "e5c43539d66bbb1d6ea6112a27a6d70c769028e0592002d7009ce4ec5a9503fe", version: "0.2.2702", dependencies: [
        "TomTomSDKTPEGTraffic",
        "TomTomSDKBindingOnboardDirectionsInternal",

        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKTraffic", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRouting", package: "tomtom-sdk-spm-core"),
        // navigation package dependency
        .packageDependency("TomTomSDKDataManagement", package: "tomtom-sdk-spm-navigation"),
    ]),

    Module("TomTomSDKOnboardSearch", sha: "ef700df2af55cc1692a8bf1d2c608222bc3fe8abff15d9f02bc79ee69aac1fd5", version: "0.2.2702", dependencies: [
        "TomTomSDKBindingOnboardSearchInternal",
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKSearch", package: "tomtom-sdk-spm-core"),
        // navigation package dependency
        .packageDependency("TomTomSDKDataManagement", package: "tomtom-sdk-spm-navigation"),
    ]),

    Module("TomTomSDKBindingOnboardSearchInternal", sha: "60652cbf06e119eb8f7aa329ad81deb7a93885a274b1515206769efd4edd49cc", version: "0.2.2702", isProduct: false, dependencies: [
        "TomTomSDKBindingNDSStoreAccessInternal",
    ]),

    Module("TomTomSDKBindingOnboardStructuredSearchInternal", sha: "739b648106f8a996e26ddcfa4f15a09a1cea87aeddbe12657eedc42a1335a12d", version: "0.2.2702", isProduct: false, dependencies: [
        "TomTomSDKBindingNDSStoreAccessInternal",
    ]),

    Module("TomTomSDKOnboardStyleProvider", sha: "948431273ea4ce0400011245a21e5d7b12ad3466fd6d2de27f541429fe48ca9b", version: "0.2.2702"),

    Module("TomTomSDKOnboardMapMatchingEngine", sha: "8ec8ed70582478bb213d2efea183fafa1c5386a47c61b0b22ca3b6b8fdc24d18", version: "0.2.2702", dependencies: [
        "TomTomSDKBindingMapMatchingInternal",
        "TomTomSDKBindingNDSStoreAccessInternal",
        // core package dependency
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        // navigation package dependency
        .packageDependency("TomTomSDKNavigationEngine", package: "tomtom-sdk-spm-navigation"),
        .packageDependency("TomTomSDKDataManagement", package: "tomtom-sdk-spm-navigation"),
    ]),
    Module("TomTomSDKOnboardLocationContextProviderEngine", sha: "a3fad931fd735a38a13bd5c02974e007db326cb77b7e505237ef1b2b9fe302c4", version: "0.2.2702", dependencies: [
        "TomTomSDKBindingNDSStoreAccessInternal",
        // core package dependency
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRouting", package: "tomtom-sdk-spm-core"),
        // navigation package dependency
        .packageDependency("TomTomSDKBindingLocationContextProviderInternal", package: "tomtom-sdk-spm-navigation"),
        .packageDependency("TomTomSDKNavigationEngine", package: "tomtom-sdk-spm-navigation"),
        .packageDependency("TomTomSDKDataManagement", package: "tomtom-sdk-spm-navigation"),
    ]),
    Module("TomTomSDKBindingNDSSQLiteInternal", sha: "9a8618214a6b6c730a5696b9526d8505c885bd4f597a96fc669af92d0be232a4", version: "0.2.2702", isProduct: false),
    Module("TomTomSDKBindingNDSStoreAccessInternal", sha: "8715d26ad38eb38f652edcddda4f8a45c98245ac73aeeae69fdcaf0d37ebd172", version: "0.2.2702", isProduct: false, dependencies: [
        "TomTomSDKBindingNDSSQLiteInternal",
    ]),
    Module("TomTomSDKBindingOnboardMapUpdateInternal", sha: "1fba454fed3a5fb661cc4b5835433e1f2bfe9d982de9b9c4faf9303fc834b110", version: "0.2.2702", isProduct: false, dependencies: [
        "TomTomSDKBindingNDSSQLiteInternal",
    ]),
    Module("TomTomSDKBindingMapMatchingInternal", sha: "2da904e94a2c6e091f91f159c16046a7f6b9ebf15ab4d99e369a1ffb2f516bc2", version: "0.2.2702", isProduct: false, dependencies: [
        "TomTomSDKBindingNDSStoreAccessInternal",
    ]),
    Module("TomTomSDKBindingMapDisplayOnboardDataProviderInternal", sha: "5f3885935fce5615be74cca2b7cb06694fdee5f6ded2ff16c72848209cc842de", version: "0.2.2702", isProduct: false, dependencies: [
        "TomTomSDKBindingNDSStoreAccessInternal",
    ]),
    Module("TomTomSDKTPEGTraffic", sha: "34e33cf48b8595c67b9b93ec2fc3eabc47745510020e9be32f6724d54088897f", version: "0.2.2702", dependencies: [
        "TomTomSDKBindingTPEGTrafficInternal",
        // core package dependency
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKTraffic", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKLocation", package: "tomtom-sdk-spm-core"),
        // navigation package dependency
        .packageDependency("TomTomSDKNavigationEngine", package: "tomtom-sdk-spm-navigation"),
        .packageDependency("TomTomSDKDataManagement", package: "tomtom-sdk-spm-navigation"),
    ]),
    Module("TomTomSDKBindingTPEGTrafficInternal", sha: "c9507077d4c7ca20d4074bae79b487e2d4954e10bc1a11bbd905eb050eb46664", version: "0.2.2702", isProduct: false, dependencies: [
        "TomTomSDKBindingNDSStoreAccessInternal",
        "TomTomSDKBindingNDSSQLiteInternal",
    ]),
    Module("TomTomSDKHybridReverseGeocoder", sha: "bdde3536038a865078ddb8aab34993c8ab956558111f0ab738831fb685f6df5b", version: "0.2.2702", dependencies: [
        "TomTomSDKOnboardReverseGeocoder",
        // core package dependency
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKReverseGeocoder", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKOnlineReverseGeocoder", package: "tomtom-sdk-spm-core"),
        // navigation package dependency
        .packageDependency("TomTomSDKDataManagement", package: "tomtom-sdk-spm-navigation"),
    ]),
    Module("TomTomSDKHybridRouting", sha: "a4cafa3d1fca5cfdd61a0a6c71760d6779584e9b454d1dbc711f56552d5e5f06", version: "0.2.2702", dependencies: [
        // core package dependency
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRouting", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKBindingOnboardDirectionsInternal", sha: "2ed832c047e25220a21a489dc2c933231ab2b1be4b1dbd7cfed93d357e56d66e", version: "0.2.2702", isProduct: false, dependencies: [
        "TomTomSDKBindingNDSStoreAccessInternal",
        "TomTomSDKBindingNDSSQLiteInternal",
    ]),
    Module("TomTomSDKHybridSearch", sha: "c32e3aacae8fc1abbef8d2a9416fe68266c415692a84d172d82e53ce32f8e95e", version: "0.2.2702", dependencies: [
        "TomTomSDKOnboardSearch",
        // core package dependency
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKSearch", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKOnlineSearch", package: "tomtom-sdk-spm-core"),
        // navigation package dependency
        .packageDependency("TomTomSDKDataManagement", package: "tomtom-sdk-spm-navigation"),
    ]),
    Module("TomTomSDKBindingVehicleHorizonInternal", sha: "cc81f1605f8a0af384c1c148ac07d2b99a7201730ebd2a07217fa00ce68366f9", version: "0.2.2702", isProduct: false, dependencies: [
        "TomTomSDKBindingNDSStoreAccessInternal",
        "TomTomSDKBindingNDSSQLiteInternal",
    ]),
    Module("TomTomSDKOnboardStructuredSearch", sha: "a489b93e8f767562fc7c67bb896d85bbfac512ae9de5611e4ceac9c4dedb1b29", version: "0.2.2702", dependencies: [
        "TomTomSDKBindingOnboardStructuredSearchInternal",
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKStructuredSearch", package: "tomtom-sdk-spm-core"),
        // navigation package dependency
        .packageDependency("TomTomSDKDataManagement", package: "tomtom-sdk-spm-navigation"),
    ]),
    Module("TomTomSDKBindingOnboardStructuredSearchInternal", sha: "739b648106f8a996e26ddcfa4f15a09a1cea87aeddbe12657eedc42a1335a12d", version: "0.2.2702", isProduct: false, dependencies: [
        "TomTomSDKBindingNDSStoreAccessInternal",
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
