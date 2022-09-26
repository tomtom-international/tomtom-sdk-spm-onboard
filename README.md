# TomTomSDKOnboard

The TomTomSDKOnboard package provides iOS modules to build "offline" navigation applications requiring no internet connectivity.

> Offline functionality for Maps SDK and Navigation SDK for iOS is only available upon request.[Contact us](https://developer.tomtom.com/tomtom-sdk-for-ios/request-access) to get started.

## Requirements

1. Xcode 13.3+
1. Swift 5.6+
1. Deployment target: iOS 13+

## Installation

1. Set up Artifactory access.   
 * [Contact us](https://developer.tomtom.com/tomtom-sdk-for-ios/request-access) to get access to the SDK. 
 * Sign in to [Artifactory](https://repositories.tomtom.com) 
 * Expand user menu in the top right corner
 * Select "Edit profile" -> "Generate an Identity Token"
 * Copy your token for the next step
 * Create or update the ~/.netrc file in your home directory so that it contains the entry:
```
machine repositories.tomtom.com
login <YOUR_LOGIN>
password <YOUR_TOKEN>
```
2. Integrate the TomTomSDKOnboard package: 
* Add the TomTomSDKOnboard package to your project from Xcode:
 * Select “File” → “Swift Packages” → “Add Package Dependency”.
 * Enter https://github.com/tomtom-international/tomtom-sdk-spm-onboard.
* Or, if you are creating a framework, add the package dependency to your `Package.swift` file:
```swift
dependencies: [
    .package(url: "https://github.com/tomtom-international/tomtom-sdk-spm-onboard", .exact("<SDK_VERSION>"))
]
```

> Please use exact versioning as the semantic versioning is not fully supported yet.  
