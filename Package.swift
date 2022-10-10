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

let sdkVersion = "0.2.2314"

let modules: [Module] = [
    Module("TomTomSDKDataManagement", sha: "dd61e8bf0f65d7084a0c32c317fe2e7a1a5fa4a634496362a570d6f9a524904f", version: "0.2.2314", dependencies: [
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
    ]),

    Module("TomTomSDKOnboardDataManagement", sha: "1bf83fae01edc96eaa3d8990c5b420d01bfd1086e0cb36236ee093291a33feef", version: "0.2.2314", dependencies: [
        "TomTomSDKDataManagement",
        "TomTomSDKNDSStoreAccessInternal",
        "TomTomSDKOnboardMapUpdateInternal",

        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKHTTPFramework", package: "tomtom-sdk-spm-core"),
    ]),

    Module("TomTomSDKOnboardMapDisplayDataProvider", sha: "951152bcfd47cbcc6df404cd0ced008583eb5ede7ff78bc96667e7d73234d819", version: "0.2.2314", dependencies: [
        "TomTomSDKDataManagement",
        "TomTomSDKBindingMapDisplayOnboardDataProviderInternal",

        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKHTTPFramework", package: "tomtom-sdk-spm-core"),
    ]),

    Module("TomTomSDKOnboardReverseGeocoder", sha: "6cb83fe98eafc943960e60ea0197409127c7eebbcb5cac742f9133b2f85b5a84", version: "0.2.2314", dependencies: [
        "TomTomSDKDataManagement",
        "TomTomSDKBindingOnboardReverseGeocoderInternal",

        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKReverseGeocoder", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKBindingOnboardReverseGeocoderInternal", sha: "b5ed9b3e1dac01cff7e1be187e03ce2f6936f2b0a4647f3dcf529a235ab72472", version: "0.2.2314", isProduct: false, dependencies: [
        "TomTomSDKNDSStoreAccessInternal",
    ]),

    Module("TomTomSDKOnboardRouting", sha: "256ea67f13dbc3e5c4ab6fdacdd9e997e59e5b84fed5121910b4326e1ad3cd8b", version: "0.2.2314", dependencies: [
        "TomTomSDKDataManagement",
        "TomTomSDKTPEGTraffic",
        "TomTomSDKBindingOnboardDirectionsInternal",

        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKTraffic", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRouting", package: "tomtom-sdk-spm-core"),
    ]),

    Module("TomTomSDKOnboardSearch", sha: "d5c8cc5ae26e25febfd44e91ce6ef0903caa65e46e09868dce6a07df41f3abf8", version: "0.2.2314", dependencies: [
        "TomTomSDKDataManagement",
        "TomTomSDKBindingOnboardSearchInternal",
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKSearch", package: "tomtom-sdk-spm-core"),
    ]),

    Module("TomTomSDKBindingOnboardSearchInternal", sha: "cbe67b1727bf428ede8a65fb107b733530fab8d7d212519f3184a145a5d6625a", version: "0.2.2314", isProduct: false, dependencies: [
        "TomTomSDKNDSStoreAccessInternal",
    ]),

    Module("TomTomSDKOnboardStyleProvider", sha: "9d4c153a50be4c9521ba7a4145cc236ac8178c570e7071c57412f6db0d5d42e5", version: "0.2.2314"),

    Module("TomTomSDKOnboardMapMatchingEngine", sha: "6bbf59a78a8dcf69a0ed0cdd350164b66a6eba2ab7958ceeb831ac010df698c1", version: "0.2.2314", dependencies: [
        "TomTomSDKDataManagement",
        "TomTomSDKNDSStoreAccessInternal",
        "TomTomSDKOnboardMapMatchingInternal",
        // core package dependency
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        // navigation package dependency
        .packageDependency("TomTomSDKNavigationEngine", package: "tomtom-sdk-spm-navigation"),
    ]),
    Module("TomTomSDKOnboardMapMatchingInternal", sha: "dfe7441a0d7449d36d7e4b5bc56ab296ca39943981d7151fd33f557e6cbeeedf", version: "18.20.0", isProduct: false, dependencies: [
        "TomTomSDKNDSStoreAccessInternal",
    ]),
    Module("TomTomSDKOnboardLocationContextProviderEngine", sha: "aecd56583da056639e44e5d576fc136a2651021d993845824e92885fb4f6344c", version: "0.2.2314", dependencies: [
        "TomTomSDKDataManagement",
        "TomTomSDKBindingLocationContextProviderInternal",
        // core package dependency
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRouting", package: "tomtom-sdk-spm-core"),
        // navigation package dependency
        .packageDependency("TomTomSDKNavigationEngine", package: "tomtom-sdk-spm-navigation"),
    ]),
    Module("TomTomSDKBindingLocationContextProviderInternal", sha: "95e928edc428359c1a6bad32c156da73d9f40394a0789d392c1bce4358feee79", version: "0.2.2314", isProduct: false, dependencies: [
        "TomTomSDKNDSStoreAccessInternal",
    ]),
    Module("TomTomSDKNDSSQLiteInternal", sha: "2651ad35396d0f0b65340c75b7a1b9a43ecba8fecbec0a205eaa00a814cf2a52", version: "18.20.0", isProduct: false),
    Module("TomTomSDKNDSStoreAccessInternal", sha: "222872004775640192da0913daefc8c35c3d8fe0b5aa1d1b93b73691b8ff3305", version: "18.20.0", isProduct: false, dependencies: [
        "TomTomSDKNDSSQLiteInternal",
    ]),
    Module("TomTomSDKOnboardMapUpdateInternal", sha: "ad91b68d583ae5f5d4db3cc3a9a57a21709ea353e7bbfe4dde98018cf55fdad6", version: "18.20.0", isProduct: false, dependencies: [
        "TomTomSDKNDSSQLiteInternal",
    ]),
    Module("TomTomSDKBindingMapDisplayOnboardDataProviderInternal", sha: "8b9b1246262e852accf006b323fd4dea6c31503bc7219f6f6958481484bfccf3", version: "0.2.2314", isProduct: false, dependencies: [
        "TomTomSDKNDSStoreAccessInternal",
    ]),
    Module("TomTomSDKOnboardDataStoreUpdateContextEngine", sha: "75669a526fb7df25876e6b55a0a7b10037b48614d2958de5945b3d91f0fd9f92", version: "0.2.2314", dependencies: [
        "TomTomSDKDataManagement",
        // core package dependency
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        // navigation package dependency
        .packageDependency("TomTomSDKNavigationEngine", package: "tomtom-sdk-spm-navigation"),
    ]),
    Module("TomTomSDKTPEGTraffic", sha: "ebcb7a82ff07250129b9529175d7ff2a4db63e45cf85a2f7badb4e5b51370317", version: "0.2.2314", dependencies: [
        "TomTomSDKDataManagement",
        "TomTomSDKBindingTPEGTrafficInternal",
        // core package dependency
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKTraffic", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKLocation", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKBindingTPEGTrafficInternal", sha: "00bc0c3025291526932808a9e65dbe13a59cec67323af6b93ce973884240b960", version: "0.2.2314", isProduct: false, dependencies: [
        "TomTomSDKNDSStoreAccessInternal",
        "TomTomSDKNDSSQLiteInternal",
    ]),
    Module("TomTomSDKHybridReverseGeocoder", sha: "f8f21e8722476bcdc5395248e63c61bf7228a68d5270a3f53590e1450c9b7f91", version: "0.2.2314", dependencies: [
        "TomTomSDKDataManagement",
        "TomTomSDKOnboardReverseGeocoder",
        // core package dependency
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKReverseGeocoder", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKOnlineReverseGeocoder", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKHybridRouting", sha: "60bc9962ae8b75835bebc455794cdf6d30ce3ed28525414e6b268fd80fd7c0c2", version: "0.2.2314", dependencies: [
        // core package dependency
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRouting", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKBindingOnboardDirectionsInternal", sha: "95814362a273e2caad60642f53a99ee612e056a8610dcd607251262f210d8f1a", version: "0.2.2314", isProduct: false, dependencies: [
        "TomTomSDKNDSStoreAccessInternal",
        "TomTomSDKNDSSQLiteInternal",
    ]),

    Module("TomTomSDKHybridSearch", sha: "a9e943e0af6d602c1a498f7d615fd600391bb1f34b9cf8de95d1b0e5bac1795d", version: "0.2.2314", dependencies: [
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
