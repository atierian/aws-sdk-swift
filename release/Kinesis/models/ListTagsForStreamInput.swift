// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Represents the input for <code>ListTagsForStream</code>.</p>
public struct ListTagsForStreamInput: Equatable {
    /// <p>The key to use as the starting point for the list of tags. If this parameter is
    ///             set, <code>ListTagsForStream</code> gets all tags that occur after
    ///                 <code>ExclusiveStartTagKey</code>. </p>
    public let exclusiveStartTagKey: String?
    /// <p>The number of tags to return. If this number is less than the total number of tags
    ///             associated with the stream, <code>HasMoreTags</code> is set to <code>true</code>. To
    ///             list additional tags, set <code>ExclusiveStartTagKey</code> to the last key in the
    ///             response.</p>
    public let limit: Int?
    /// <p>The name of the stream.</p>
    public let streamName: String?

    public init (
        exclusiveStartTagKey: String? = nil,
        limit: Int? = nil,
        streamName: String? = nil
    )
    {
        self.exclusiveStartTagKey = exclusiveStartTagKey
        self.limit = limit
        self.streamName = streamName
    }
}

extension ListTagsForStreamInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListTagsForStreamInput(exclusiveStartTagKey: \(String(describing: exclusiveStartTagKey)), limit: \(String(describing: limit)), streamName: \(String(describing: streamName)))"}
}