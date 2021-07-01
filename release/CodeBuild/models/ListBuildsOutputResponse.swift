// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListBuildsOutputResponse: Equatable {
    /// <p>A list of build IDs, with each build ID representing a single build.</p>
    public let ids: [String]?
    /// <p>If there are more than 100 items in the list, only the first 100 items are returned,
    ///             along with a unique string called a <i>nextToken</i>. To get the next
    ///             batch of items in the list, call this operation again, adding the next token to the
    ///             call.</p>
    public let nextToken: String?

    public init (
        ids: [String]? = nil,
        nextToken: String? = nil
    )
    {
        self.ids = ids
        self.nextToken = nextToken
    }
}

extension ListBuildsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListBuildsOutputResponse(ids: \(String(describing: ids)), nextToken: \(String(describing: nextToken)))"}
}