// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListBotVersionsInput: Equatable {
    /// <p>The identifier of the bot to list versions for.</p>
    public let botId: String?
    /// <p>The maximum number of versions to return in each page of results. If
    ///          there are fewer results than the max page size, only the actual number
    ///          of results are returned.</p>
    public let maxResults: Int?
    /// <p>If the response to the <code>ListBotVersion</code> operation
    ///          contains more results than specified in the <code>maxResults</code>
    ///          parameter, a token is returned in the response. Use that token in the
    ///             <code>nextToken</code> parameter to return the next page of
    ///          results.</p>
    public let nextToken: String?
    /// <p>Specifies sorting parameters for the list of versions. You can
    ///          specify that the list be sorted by version name in either ascending or
    ///          descending order.</p>
    public let sortBy: BotVersionSortBy?

    public init (
        botId: String? = nil,
        maxResults: Int? = nil,
        nextToken: String? = nil,
        sortBy: BotVersionSortBy? = nil
    )
    {
        self.botId = botId
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.sortBy = sortBy
    }
}

extension ListBotVersionsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListBotVersionsInput(botId: \(String(describing: botId)), maxResults: \(String(describing: maxResults)), nextToken: \(String(describing: nextToken)), sortBy: \(String(describing: sortBy)))"}
}