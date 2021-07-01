// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListRoomsInput: Equatable {
    /// <p>The Amazon Chime account ID.</p>
    public let accountId: String?
    /// <p>The maximum number of results to return in a single call.</p>
    public let maxResults: Int?
    /// <p>The member ID (user ID or bot ID).</p>
    public let memberId: String?
    /// <p>The token to use to retrieve the next page of results.</p>
    public let nextToken: String?

    public init (
        accountId: String? = nil,
        maxResults: Int? = nil,
        memberId: String? = nil,
        nextToken: String? = nil
    )
    {
        self.accountId = accountId
        self.maxResults = maxResults
        self.memberId = memberId
        self.nextToken = nextToken
    }
}

extension ListRoomsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListRoomsInput(accountId: \(String(describing: accountId)), maxResults: \(String(describing: maxResults)), memberId: \(String(describing: memberId)), nextToken: \(String(describing: nextToken)))"}
}