// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListBotsInput: Equatable {
    /// <p>The Amazon Chime account ID.</p>
    public let accountId: String?
    /// <p>The maximum number of results to return in a single call. The default is 10.</p>
    public let maxResults: Int?
    /// <p>The token to use to retrieve the next page of results.</p>
    public let nextToken: String?

    public init (
        accountId: String? = nil,
        maxResults: Int? = nil,
        nextToken: String? = nil
    )
    {
        self.accountId = accountId
        self.maxResults = maxResults
        self.nextToken = nextToken
    }
}

extension ListBotsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListBotsInput(accountId: \(String(describing: accountId)), maxResults: \(String(describing: maxResults)), nextToken: \(String(describing: nextToken)))"}
}