// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeEgressOnlyInternetGatewaysOutputResponse: Equatable {
    /// <p>Information about the egress-only internet gateways.</p>
    public let egressOnlyInternetGateways: [EgressOnlyInternetGateway]?
    /// <p>The token to use to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>
    public let nextToken: String?

    public init (
        egressOnlyInternetGateways: [EgressOnlyInternetGateway]? = nil,
        nextToken: String? = nil
    )
    {
        self.egressOnlyInternetGateways = egressOnlyInternetGateways
        self.nextToken = nextToken
    }
}

extension DescribeEgressOnlyInternetGatewaysOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeEgressOnlyInternetGatewaysOutputResponse(egressOnlyInternetGateways: \(String(describing: egressOnlyInternetGateways)), nextToken: \(String(describing: nextToken)))"}
}