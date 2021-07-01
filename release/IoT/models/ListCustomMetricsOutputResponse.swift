// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListCustomMetricsOutputResponse: Equatable {
    /// <p>
    ///       The name of the custom metric.
    ///     </p>
    public let metricNames: [String]?
    /// <p>
    ///       A token that can be used to retrieve the next set of results,
    ///       or <code>null</code> if there are no additional results.
    ///     </p>
    public let nextToken: String?

    public init (
        metricNames: [String]? = nil,
        nextToken: String? = nil
    )
    {
        self.metricNames = metricNames
        self.nextToken = nextToken
    }
}

extension ListCustomMetricsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListCustomMetricsOutputResponse(metricNames: \(String(describing: metricNames)), nextToken: \(String(describing: nextToken)))"}
}