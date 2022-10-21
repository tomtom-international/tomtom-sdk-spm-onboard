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

let sdkVersion = "0.2.2481"

let modules: [Module] = [
    Module("TomTomSDKDataManagement", sha: "2ad7a763f75e17f9e90fb097e6ba161a520cfc95fac9d822a7f54dbfbedc7200", version: "0.2.2481", dependencies: [
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
    ]),

    Module("TomTomSDKOnboardDataManagement", sha: "9e871107a344aaca39ec420f32062c563f5279da1c4184453668fc21ba730ad9", version: "0.2.2481", dependencies: [
        "TomTomSDKDataManagement",
        "TomTomSDKNDSStoreAccessInternal",
        "TomTomSDKBindingOnboardMapUpdateInternal",

        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKHTTPFramework", package: "tomtom-sdk-spm-core"),
    ]),

    Module("TomTomSDKOnboardMapDisplayDataProvider", sha: "160655b3164a42ec373a2e9536fcd46edc24fb2e057bd4d3f4c77c7c376deb1a", version: "0.2.2481", dependencies: [
        "TomTomSDKDataManagement",
        "TomTomSDKBindingMapDisplayOnboardDataProviderInternal",

        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKHTTPFramework", package: "tomtom-sdk-spm-core"),
    ]),

    Module("TomTomSDKOnboardReverseGeocoder", sha: "6718dfd70aa99da4fb423a1af7f6cce7a3b6a4e0fcd0715a5a708efaba30c3d3", version: "0.2.2481", dependencies: [
        "TomTomSDKDataManagement",
        "TomTomSDKBindingOnboardReverseGeocoderInternal",

        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKReverseGeocoder", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKBindingOnboardReverseGeocoderInternal", sha: "777297a9b7200c6691af76fb26e4cb562ce0c7c9235147ea0c3b2cf96b4abd52", version: "0.2.2481", isProduct: false, dependencies: [
        "TomTomSDKNDSStoreAccessInternal",
    ]),

    Module("TomTomSDKOnboardRouting", sha: "b3a5f9a01215169ed4482b37ec2e76c5e06393b1a2bdb666b9a9afa008e91831", version: "0.2.2481", dependencies: [
        "TomTomSDKDataManagement",
        "TomTomSDKTPEGTraffic",
        "TomTomSDKBindingOnboardDirectionsInternal",

        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKTraffic", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRouting", package: "tomtom-sdk-spm-core"),
    ]),

    Module("TomTomSDKOnboardSearch", sha: "c186b2a87f039ee356cbd7b73e11afcd041cd7264258515f5b73858369063832", version: "0.2.2481", dependencies: [
        "TomTomSDKDataManagement",
        "TomTomSDKBindingOnboardSearchInternal",
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKSearch", package: "tomtom-sdk-spm-core"),
    ]),

    Module("TomTomSDKBindingOnboardSearchInternal", sha: "05cae5ee0e213b7a5cec3e4e378d28514156de2cef18d46ef619cc557981fceb", version: "0.2.2481", isProduct: false, dependencies: [
        "TomTomSDKNDSStoreAccessInternal",
    ]),

    Module("TomTomSDKBindingOnboardStructuredSearchInternal", sha: "c620e9d98ee6d2c93e15258ac435c82c5c939b5d7367ed0e10350e5750afcc76", version: "0.2.2481", isProduct: false, dependencies: [
        "TomTomSDKNDSStoreAccessInternal",
    ]),

    Module("TomTomSDKOnboardStyleProvider", sha: "08d3f28b8696c226a87939d0c853f76d801ba1714313fb73af3e377f8dee1464", version: "0.2.2481"),

    Module("TomTomSDKOnboardMapMatchingEngine", sha: "0e4c80599eaf707e6d9539ec5a99dc19440f56cbabfa052e029ec982bdf1a926", version: "0.2.2481", dependencies: [
        "TomTomSDKBindingMapMatchingInternal",
        "TomTomSDKDataManagement",
        "TomTomSDKNDSStoreAccessInternal",
        // core package dependency
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        // navigation package dependency
        .packageDependency("TomTomSDKNavigationEngine", package: "tomtom-sdk-spm-navigation"),
    ]),
    Module("TomTomSDKOnboardLocationContextProviderEngine", sha: "b289ca41ed8fd4dfcef91761607b62517501481297039723d9e6e6da3eb80f72", version: "0.2.2481", dependencies: [
        "TomTomSDKDataManagement",
        "TomTomSDKBindingLocationContextProviderInternal",
        // core package dependency
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRouting", package: "tomtom-sdk-spm-core"),
        // navigation package dependency
        .packageDependency("TomTomSDKNavigationEngine", package: "tomtom-sdk-spm-navigation"),
    ]),
    Module("TomTomSDKNDSSQLiteInternal", sha: "4c11f03353af4f5976a8abf681f3e2cb994ce10b135fe9bf68c2ece4805899fe", version: "19.8.0", isProduct: false),
    Module("TomTomSDKNDSStoreAccessInternal", sha: "6e8e5ffc7cf836a33d1a7cbd965cd4a33137bf788b181ac028eb4d6d6c74a2cf", version: "19.8.0", isProduct: false, dependencies: [
        "TomTomSDKNDSSQLiteInternal",
    ]),
    Module("TomTomSDKBindingOnboardMapUpdateInternal", sha: "a8a1ef8423999e874d71dd7b3dd1f44d772f82e36e3f45d4f77c8f8659c7d1af", version: "0.2.2481", isProduct: false, dependencies: [
        "TomTomSDKNDSSQLiteInternal",
    ]),
    Module("TomTomSDKBindingMapMatchingInternal", sha: "4640e2f833c54e5c8dddf162cd05d2d486453483a693f34454ec4ab13594ccd2", version: "0.2.2481", isProduct: false, dependencies: [
        "TomTomSDKNDSStoreAccessInternal",
    ]),
    Module("TomTomSDKBindingLocationContextProviderInternal", sha: "7641dc21f82907c32f13c3387d531fc4f0560ef8dc729512fb8518d939845c71", version: "0.2.2481", isProduct: false, dependencies: [
        "TomTomSDKNDSStoreAccessInternal",
    ]),
    Module("TomTomSDKBindingMapDisplayOnboardDataProviderInternal", sha: "54c497a9c464a318e6f1b114b45c436561a772632df7cde377543c8c78b2cf89", version: "0.2.2481", isProduct: false, dependencies: [
        "TomTomSDKNDSStoreAccessInternal",
    ]),
    Module("TomTomSDKOnboardDataStoreUpdateContextEngine", sha: "d4cc2a71430dc639924129a11f125764021fe673ac883c0b2cff120a55b43399", version: "0.2.2481", dependencies: [
        "TomTomSDKDataManagement",
        // core package dependency
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        // navigation package dependency
        .packageDependency("TomTomSDKNavigationEngine", package: "tomtom-sdk-spm-navigation"),
    ]),
    Module("TomTomSDKDataStoreUpdater", sha: "7e4d57ad78c8f1a3d41905b5817eac8e8875158c0d18b481b2be9d2df9dfd098", version: "0.2.2481", dependencies: [
        "TomTomSDKDataManagement",
        // core package dependency
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKLocation", package: "tomtom-sdk-spm-core"),
        // navigation package dependency
        .packageDependency("TomTomSDKNavigationEngine", package: "tomtom-sdk-spm-navigation"),
    ]),
    Module("TomTomSDKTPEGTraffic", sha: "96a64eeef755c828bff3df5af4c0d52517501df6bfd507ef55916c09bb5630b1", version: "0.2.2481", dependencies: [
        "TomTomSDKDataManagement",
        "TomTomSDKBindingTPEGTrafficInternal",
        // core package dependency
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKTraffic", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKLocation", package: "tomtom-sdk-spm-core"),
        // navigation package dependency
        .packageDependency("TomTomSDKNavigationEngine", package: "tomtom-sdk-spm-navigation"),
    ]),
    Module("TomTomSDKBindingTPEGTrafficInternal", sha: "58f2db7783467ce842a4214f3673f74bc745e686060bfcd0638deb7f034dc887", version: "0.2.2481", isProduct: false, dependencies: [
        "TomTomSDKNDSStoreAccessInternal",
        "TomTomSDKNDSSQLiteInternal",
    ]),
    Module("TomTomSDKHybridReverseGeocoder", sha: "27e9751fe46f4c1c6f6ddacdadc93c63ce9e6f372eae20432a3584368ab2feca", version: "0.2.2481", dependencies: [
        "TomTomSDKDataManagement",
        "TomTomSDKOnboardReverseGeocoder",
        // core package dependency
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKReverseGeocoder", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKOnlineReverseGeocoder", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKHybridRouting", sha: "937ddd14f3b9fce8fa35ea67a2c9f8026bab9cdc7affbc13b872e24874d2969e", version: "0.2.2481", dependencies: [
        // core package dependency
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRouting", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKBindingOnboardDirectionsInternal", sha: "0e5ceab4f001088d8cf7a4e67a28d57482074211bd419c259ac77ba65ef4ad02", version: "0.2.2481", isProduct: false, dependencies: [
        "TomTomSDKNDSStoreAccessInternal",
        "TomTomSDKNDSSQLiteInternal",
    ]),
    Module("TomTomSDKHybridSearch", sha: "353ee073110837236c978c4d9e83278e4ca139eba64f46983387c38ba5ecc57a", version: "0.2.2481", dependencies: [
        "TomTomSDKDataManagement",
        "TomTomSDKOnboardSearch",
        // core package dependency
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKSearch", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKOnlineSearch", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKBindingVehicleHorizonInternal", sha: "1c5d66659a11cb6fa9e53c999d3b441ec1d2500c339200acbdbd2c8eb2a21d92", version: "0.2.2481", isProduct: false, dependencies: [
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
