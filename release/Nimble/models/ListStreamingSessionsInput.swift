// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListStreamingSessionsInput: Equatable {
    /// <p>The user ID.</p>
    public let createdBy: String?
    /// <p>The token for the next set of results, or null if there are no more results.</p>
    public let nextToken: String?
    /// <p>A collection of session IDs.</p>
    public let sessionIds: String?
    /// <p>The studio ID.</p>
    public let studioId: String?

    public init (
        createdBy: String? = nil,
        nextToken: String? = nil,
        sessionIds: String? = nil,
        studioId: String? = nil
    )
    {
        self.createdBy = createdBy
        self.nextToken = nextToken
        self.sessionIds = sessionIds
        self.studioId = studioId
    }
}

extension ListStreamingSessionsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListStreamingSessionsInput(createdBy: \(String(describing: createdBy)), nextToken: \(String(describing: nextToken)), sessionIds: \(String(describing: sessionIds)), studioId: \(String(describing: studioId)))"}
}