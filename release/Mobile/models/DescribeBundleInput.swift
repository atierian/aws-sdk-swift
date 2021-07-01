// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>
///             Request structure to request the details of a specific bundle.
///         </p>
public struct DescribeBundleInput: Equatable {
    /// <p>
    ///             Unique bundle identifier.
    ///         </p>
    public let bundleId: String?

    public init (
        bundleId: String? = nil
    )
    {
        self.bundleId = bundleId
    }
}

extension DescribeBundleInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeBundleInput(bundleId: \(String(describing: bundleId)))"}
}