// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListPartnerAccountsInput: Equatable {
    /// <p>The maximum number of results to return in this operation.</p>
    public let maxResults: Int
    /// <p>To retrieve the next set of results, the <code>nextToken</code> value from a previous response; otherwise <b>null</b> to receive the first set of results.</p>
    public let nextToken: String?

    public init (
        maxResults: Int = 0,
        nextToken: String? = nil
    )
    {
        self.maxResults = maxResults
        self.nextToken = nextToken
    }
}

extension ListPartnerAccountsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListPartnerAccountsInput(maxResults: \(String(describing: maxResults)), nextToken: \(String(describing: nextToken)))"}
}