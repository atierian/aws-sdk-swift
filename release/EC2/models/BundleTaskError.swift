// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Describes an error for <a>BundleInstance</a>.</p>
public struct BundleTaskError: Equatable {
    /// <p>The error code.</p>
    public let code: String?
    /// <p>The error message.</p>
    public let message: String?

    public init (
        code: String? = nil,
        message: String? = nil
    )
    {
        self.code = code
        self.message = message
    }
}

extension BundleTaskError: CustomDebugStringConvertible {
    public var debugDescription: String {
        "BundleTaskError(code: \(String(describing: code)), message: \(String(describing: message)))"}
}