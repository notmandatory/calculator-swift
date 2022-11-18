# calculator-swift

This project is only used to publish a [Swift] package manager package called `calculator-swift` with language bindings for the example
`Calculator` framework created by the [uniffi-bindings-template] project. The Swift language bindings are created by the [uniffi-bindings-template] `calculator-ffi` sub-project which are copied into and committed to this repo by the [uniffi-bindings-template] `publish-spm` github actions workflow.

Any changes to the `calculator-swift` Swift package must be made via the [uniffi-bindings-template] repo.

## How to Use

To use the Swift language bindings for `Calculator` in your [Xcode] iOS or MacOS project:

1. Add the "calculator-swift" package from the repo https://github.com/thunderbiscuit/calculator-swift and select one of the latest minor versions. 
2. Add the `Calculator` framework in your Target config.
3. Import and use the `Calculator` library in your Swift code. For example:
   ```swift
   import Calculator
   
   ...
   ```

[Swift]: https://developer.apple.com/swift/
[Xcode]: https://developer.apple.com/documentation/Xcode
[uniffi-bindings-template]: https://github.com/thunderbiscuit/uniffi-bindings-template

