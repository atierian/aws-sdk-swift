// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListMetricsOutputResponse: Equatable {
    /// <p>The metrics that match your request. </p>
    public let metrics: [Metric]?
    /// <p>The token that marks the start of the next batch of returned results. </p>
    public let nextToken: String?

    public init (
        metrics: [Metric]? = nil,
        nextToken: String? = nil
    )
    {
        self.metrics = metrics
        self.nextToken = nextToken
    }
}

extension ListMetricsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListMetricsOutputResponse(metrics: \(String(describing: metrics)), nextToken: \(String(describing: nextToken)))"}
}