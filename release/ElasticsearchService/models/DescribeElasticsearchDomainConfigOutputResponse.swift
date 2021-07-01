// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The result of a <code>DescribeElasticsearchDomainConfig</code> request. Contains the configuration information of the requested domain.</p>
public struct DescribeElasticsearchDomainConfigOutputResponse: Equatable {
    /// <p>The configuration information of the domain requested in the <code>DescribeElasticsearchDomainConfig</code> request.</p>
    public let domainConfig: ElasticsearchDomainConfig?

    public init (
        domainConfig: ElasticsearchDomainConfig? = nil
    )
    {
        self.domainConfig = domainConfig
    }
}

extension DescribeElasticsearchDomainConfigOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeElasticsearchDomainConfigOutputResponse(domainConfig: \(String(describing: domainConfig)))"}
}