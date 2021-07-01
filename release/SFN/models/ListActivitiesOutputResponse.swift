// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListActivitiesOutputResponse: Equatable {
    /// <p>The list of activities.</p>
    public let activities: [ActivityListItem]?
    /// <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page.
    ///     Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>
    public let nextToken: String?

    public init (
        activities: [ActivityListItem]? = nil,
        nextToken: String? = nil
    )
    {
        self.activities = activities
        self.nextToken = nextToken
    }
}

extension ListActivitiesOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListActivitiesOutputResponse(activities: \(String(describing: activities)), nextToken: \(String(describing: nextToken)))"}
}