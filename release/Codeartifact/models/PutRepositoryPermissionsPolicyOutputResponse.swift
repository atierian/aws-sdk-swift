// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct PutRepositoryPermissionsPolicyOutputResponse: Equatable {
    /// <p> The resource policy that was set after processing the request. </p>
    public let policy: ResourcePolicy?

    public init (
        policy: ResourcePolicy? = nil
    )
    {
        self.policy = policy
    }
}

extension PutRepositoryPermissionsPolicyOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "PutRepositoryPermissionsPolicyOutputResponse(policy: \(String(describing: policy)))"}
}