// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListTagsForResourceOutputResponse: Equatable {
    /// <p>A token to be used by the next request if this request is truncated.</p>
    public let nextToken: String?
    /// <p>The list of tags associated with the specified resource.</p>
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