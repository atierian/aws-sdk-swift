// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Container for parameters to <code>DescribeReservedElasticsearchInstances</code></p>
public struct DescribeReservedElasticsearchInstancesInput: Equatable {
    /// <p>Set this value to limit the number of results returned. If not specified, defaults to 100.</p>
    public let maxResults: Int
    /// <p>NextToken should be sent in case if earlier API call produced result
    /// 		containing NextToken. It is used for pagination.</p>
    public let nextToken: String?
    /// <p>The reserved instance identifier filter value. Use this parameter to show only the reservation that matches the specified reserved Elasticsearch instance ID.</p>
    public let reservedElasticsearchInstanceId: String?

    public init (
        maxResults: Int = 0,
        nextToken: String? = nil,
        reservedElasticsearchInstanceId: String? = nil
    )
    {
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.reservedElasticsearchInstanceId = reservedElasticsearchInstanceId
    }
}

extension DescribeReservedElasticsearchInstancesInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeReservedElasticsearchInstancesInput(maxResults: \(String(describing: maxResults)), nextToken: \(String(describing: nextToken)), reservedElasticsearchInstanceId: \(String(describing: reservedElasticsearchInstanceId)))"}
}