// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListIpRoutesInput: Equatable {
    /// <p>Identifier (ID) of the directory for which you want to retrieve the IP addresses.</p>
    public let directoryId: String?
    /// <p>Maximum number of items to return. If this value is zero, the maximum number of items is specified by the limitations of the operation.</p>
    public let limit: Int?
    /// <p>The <i>ListIpRoutes.NextToken</i> value from a previous call to
    ///          <a>ListIpRoutes</a>. Pass null if this is the first call.</p>
    public let nextToken: String?

    public init (
        directoryId: String? = nil,
        limit: Int? = nil,
        nextToken: String? = nil
    )
    {
        self.directoryId = directoryId
        self.limit = limit
        self.nextToken = nextToken
    }
}

extension ListIpRoutesInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListIpRoutesInput(directoryId: \(String(describing: directoryId)), limit: \(String(describing: limit)), nextToken: \(String(describing: nextToken)))"}
}