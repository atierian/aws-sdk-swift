// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct PutResourcePolicyOutputResponse: Equatable {
    /// <p>A hash of the policy that has just been set. This must
    ///       be included in a subsequent call that overwrites or updates
    ///       this policy.</p>
    public let policyHash: String?

    public init (
        policyHash: String? = nil
    )
    {
        self.policyHash = policyHash
    }
}

extension PutResourcePolicyOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "PutResourcePolicyOutputResponse(policyHash: \(String(describing: policyHash)))"}
}