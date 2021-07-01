// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListConnectionsOutputResponse: Equatable {
    /// <p>A list of connections and the details for each connection, such as status, owner, and
    ///       provider type.</p>
    public let connections: [Connection]?
    /// <p>A token that can be used in the next <code>ListConnections</code> call. To view all
    ///       items in the list, continue to call this operation with each subsequent token until no more
    ///       <code>nextToken</code> values are returned.</p>
    public let nextToken: String?

    public init (
        connections: [Connection]? = nil,
        nextToken: String? = nil
    )
    {
        self.connections = connections
        self.nextToken = nextToken
    }
}

extension ListConnectionsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListConnectionsOutputResponse(connections: \(String(describing: connections)), nextToken: \(String(describing: nextToken)))"}
}