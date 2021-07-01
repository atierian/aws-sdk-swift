// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct SetRepositoryPolicyOutputResponse: Equatable {
    /// <p>The JSON repository policy text applied to the repository.</p>
    public let policyText: String?
    /// <p>The registry ID associated with the request.</p>
    public let registryId: String?
    /// <p>The repository name associated with the request.</p>
    public let repositoryName: String?

    public init (
        policyText: String? = nil,
        registryId: String? = nil,
        repositoryName: String? = nil
    )
    {
        self.policyText = policyText
        self.registryId = registryId
        self.repositoryName = repositoryName
    }
}

extension SetRepositoryPolicyOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "SetRepositoryPolicyOutputResponse(policyText: \(String(describing: policyText)), registryId: \(String(describing: registryId)), repositoryName: \(String(describing: repositoryName)))"}
}