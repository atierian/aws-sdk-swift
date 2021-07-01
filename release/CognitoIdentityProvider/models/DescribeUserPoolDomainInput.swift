// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeUserPoolDomainInput: Equatable {
    /// <p>The domain string.</p>
    public let domain: String?

    public init (
        domain: String? = nil
    )
    {
        self.domain = domain
    }
}

extension DescribeUserPoolDomainInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeUserPoolDomainInput(domain: \(String(describing: domain)))"}
}