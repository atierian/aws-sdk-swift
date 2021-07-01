// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetOriginRequestPolicyConfigOutputResponse: Equatable {
    /// <p>The current version of the origin request policy.</p>
    public let eTag: String?
    /// <p>The origin request policy configuration.</p>
    public let originRequestPolicyConfig: OriginRequestPolicyConfig?

    public init (
        eTag: String? = nil,
        originRequestPolicyConfig: OriginRequestPolicyConfig? = nil
    )
    {
        self.eTag = eTag
        self.originRequestPolicyConfig = originRequestPolicyConfig
    }
}

extension GetOriginRequestPolicyConfigOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetOriginRequestPolicyConfigOutputResponse(eTag: \(String(describing: eTag)), originRequestPolicyConfig: \(String(describing: originRequestPolicyConfig)))"}
}