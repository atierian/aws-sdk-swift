// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p></p>
public struct DescribeEventSubscriptionsInput: Equatable {
    /// <p>Filters applied to event subscriptions.</p>
    public let filters: [Filter]?
    /// <p> An optional pagination token provided by a previous request. If this parameter is
    ///          specified, the response includes only records beyond the marker, up to the value specified
    ///          by <code>MaxRecords</code>. </p>
    public let marker: String?
    /// <p> The maximum number of records to include in the response. If more records exist than
    ///          the specified <code>MaxRecords</code> value, a pagination token called a marker is included
    ///          in the response so that the remaining results can be retrieved. </p>
    ///          <p>Default: 100</p>
    ///          <p>Constraints: Minimum 20, maximum 100.</p>
    public let maxRecords: Int?
    /// <p>The name of the AWS DMS event subscription to be described.</p>
    public let subscriptionName: String?

    public init (
        filters: [Filter]? = nil,
        marker: String? = nil,
        maxRecords: Int? = nil,
        subscriptionName: String? = nil
    )
    {
        self.filters = filters
        self.marker = marker
        self.maxRecords = maxRecords
        self.subscriptionName = subscriptionName
    }
}

extension DescribeEventSubscriptionsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeEventSubscriptionsInput(filters: \(String(describing: filters)), marker: \(String(describing: marker)), maxRecords: \(String(describing: maxRecords)), subscriptionName: \(String(describing: subscriptionName)))"}
}