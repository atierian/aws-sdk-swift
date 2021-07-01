// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListReplaysInput: Equatable {
    /// <p>The ARN of the event source associated with the replay.</p>
    public let eventSourceArn: String?
    /// <p>The maximum number of replays to retrieve.</p>
    public let limit: Int?
    /// <p>A name prefix to filter the replays returned. Only replays with name that match the prefix
    ///       are returned.</p>
    public let namePrefix: String?
    /// <p>The token returned by a previous call to retrieve the next set of results.</p>
    public let nextToken: String?
    /// <p>The state of the replay.</p>
    public let state: ReplayState?

    public init (
        eventSourceArn: String? = nil,
        limit: Int? = nil,
        namePrefix: String? = nil,
        nextToken: String? = nil,
        state: ReplayState? = nil
    )
    {
        self.eventSourceArn = eventSourceArn
        self.limit = limit
        self.namePrefix = namePrefix
        self.nextToken = nextToken
        self.state = state
    }
}

extension ListReplaysInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListReplaysInput(eventSourceArn: \(String(describing: eventSourceArn)), limit: \(String(describing: limit)), namePrefix: \(String(describing: namePrefix)), nextToken: \(String(describing: nextToken)), state: \(String(describing: state)))"}
}