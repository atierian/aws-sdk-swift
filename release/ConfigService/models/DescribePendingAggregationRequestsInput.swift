// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribePendingAggregationRequestsInput: Equatable {
    /// <p>The maximum number of evaluation results returned on each page.
    /// 			The default is maximum. If you specify 0, AWS Config uses the
    /// 			default.</p>
    public let limit: Int
    /// <p>The <code>nextToken</code> string returned on a previous page that you use
    /// 			to get the next page of results in a paginated response.</p>
    public let nextToken: String?

    public init (
        limit: Int = 0,
        nextToken: String? = nil
    )
    {
        self.limit = limit
        self.nextToken = nextToken
    }
}

extension DescribePendingAggregationRequestsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribePendingAggregationRequestsInput(limit: \(String(describing: limit)), nextToken: \(String(describing: nextToken)))"}
}