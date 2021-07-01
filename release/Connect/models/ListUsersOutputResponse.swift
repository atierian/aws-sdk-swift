// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListUsersOutputResponse: Equatable {
    /// <p>If there are additional results, this is the token for the next set of results.</p>
    public let nextToken: String?
    /// <p>Information about the users.</p>
    public let userSummaryList: [UserSummary]?

    public init (
        nextToken: String? = nil,
        userSummaryList: [UserSummary]? = nil
    )
    {
        self.nextToken = nextToken
        self.userSummaryList = userSummaryList
    }
}

extension ListUsersOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListUsersOutputResponse(nextToken: \(String(describing: nextToken)), userSummaryList: \(String(describing: userSummaryList)))"}
}