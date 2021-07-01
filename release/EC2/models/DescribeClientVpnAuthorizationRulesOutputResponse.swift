// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeClientVpnAuthorizationRulesOutputResponse: Equatable {
    /// <p>Information about the authorization rules.</p>
    public let authorizationRules: [AuthorizationRule]?
    /// <p>The token to use to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>
    public let nextToken: String?

    public init (
        authorizationRules: [AuthorizationRule]? = nil,
        nextToken: String? = nil
    )
    {
        self.authorizationRules = authorizationRules
        self.nextToken = nextToken
    }
}

extension DescribeClientVpnAuthorizationRulesOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeClientVpnAuthorizationRulesOutputResponse(authorizationRules: \(String(describing: authorizationRules)), nextToken: \(String(describing: nextToken)))"}
}