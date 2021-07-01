// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListOperationsOutputResponse: Equatable {
    /// <p>The token that you can pass in a subsequent request to get the next result page. It's returned in a paginated request.</p>
    public let nextToken: String?
    /// <p>A list of operation summary information records. In a paginated request, the request returns up to <code>MaxResults</code> records for each
    ///       call.</p>
    public let operationSummaryList: [OperationSummary]?

    public init (
        nextToken: String? = nil,
        operationSummaryList: [OperationSummary]? = nil
    )
    {
        self.nextToken = nextToken
        self.operationSummaryList = operationSummaryList
    }
}

extension ListOperationsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListOperationsOutputResponse(nextToken: \(String(describing: nextToken)), operationSummaryList: \(String(describing: operationSummaryList)))"}
}