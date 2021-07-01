// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribePolicyOutputResponse: Equatable {
    /// <p>A structure that contains details about the specified policy.</p>
    public let policy: Policy?

    public init (
        policy: Policy? = nil
    )
    {
        self.policy = policy
    }
}

extension DescribePolicyOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribePolicyOutputResponse(policy: \(String(describing: policy)))"}
}