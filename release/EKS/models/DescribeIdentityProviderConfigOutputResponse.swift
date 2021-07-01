// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeIdentityProviderConfigOutputResponse: Equatable {
    /// <p>The object that represents an OpenID Connect (OIDC) identity provider
    ///             configuration.</p>
    public let identityProviderConfig: IdentityProviderConfigResponse?

    public init (
        identityProviderConfig: IdentityProviderConfigResponse? = nil
    )
    {
        self.identityProviderConfig = identityProviderConfig
    }
}

extension DescribeIdentityProviderConfigOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeIdentityProviderConfigOutputResponse(identityProviderConfig: \(String(describing: identityProviderConfig)))"}
}