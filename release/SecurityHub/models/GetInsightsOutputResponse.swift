// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetInsightsOutputResponse: Equatable {
    /// <p>The insights returned by the operation.</p>
    public let insights: [Insight]?
    /// <p>The pagination token to use to request the next page of results.</p>
    public let nextToken: String?

    public init (
        insights: [Insight]? = nil,
        nextToken: String? = nil
    )
    {
        self.insights = insights
        self.nextToken = nextToken
    }
}

extension GetInsightsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetInsightsOutputResponse(insights: \(String(describing: insights)), nextToken: \(String(describing: nextToken)))"}
}