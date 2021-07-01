// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The tags associated with a resource.</p>
public struct TagDescription: Equatable {
    /// <p>The Amazon Resource Name (ARN) of the resource.</p>
    public let resourceArn: String?
    /// <p>Information about the tags.</p>
    public let tags: [Tag]?

    public init (
        resourceArn: String? = nil,
        tags: [Tag]? = nil
    )
    {
        self.resourceArn = resourceArn
        self.tags = tags
    }
}

extension TagDescription: CustomDebugStringConvertible {
    public var debugDescription: String {
        "TagDescription(resourceArn: \(String(describing: resourceArn)), tags: \(String(describing: tags)))"}
}