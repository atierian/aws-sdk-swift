// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeClustersOutputResponse: Equatable {
    /// <p>A list of clusters.</p>
    public let clusters: [Cluster]?
    /// <p>An opaque string that indicates that the response contains only a subset of clusters.
    ///       Use this value in a subsequent <code>DescribeClusters</code> request to get more
    ///       clusters.</p>
    public let nextToken: String?

    public init (
        clusters: [Cluster]? = nil,
        nextToken: String? = nil
    )
    {
        self.clusters = clusters
        self.nextToken = nextToken
    }
}

extension DescribeClustersOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeClustersOutputResponse(clusters: \(String(describing: clusters)), nextToken: \(String(describing: nextToken)))"}
}