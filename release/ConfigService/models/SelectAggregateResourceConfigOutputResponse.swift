// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct SelectAggregateResourceConfigOutputResponse: Equatable {
    /// <p>The nextToken string returned in a previous request that you use to request the next page of results in a paginated response. </p>
    public let nextToken: String?
    /// <p>Details about the query.</p>
    public let queryInfo: QueryInfo?
    /// <p>Returns the results for the SQL query.</p>
    public let results: [String]?

    public init (
        nextToken: String? = nil,
        queryInfo: QueryInfo? = nil,
        results: [String]? = nil
    )
    {
        self.nextToken = nextToken
        self.queryInfo = queryInfo
        self.results = results
    }
}

extension SelectAggregateResourceConfigOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "SelectAggregateResourceConfigOutputResponse(nextToken: \(String(describing: nextToken)), queryInfo: \(String(describing: queryInfo)), results: \(String(describing: results)))"}
}