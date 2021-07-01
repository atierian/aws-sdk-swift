// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListTagsForResourceOutputResponse: Equatable {
    /// <p>The token to use to retrieve the next page of results. This value is null when there are no more results to return.</p>
    public let nextToken: String?
    /// <p>A list of tag key value pairs that are associated with the response.</p>
    public let tags: [Tag]?

    public init (
        nextToken: String? = nil,
        tags: [Tag]? = nil
    )
    {
        self.nextToken = nextToken
        self.tags = tags
    }
}

extension ListTagsForResourceOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListTagsForResourceOutputResponse(nextToken: \(String(describing: nextToken)), tags: \(String(describing: tags)))"}
}