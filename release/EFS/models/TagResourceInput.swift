// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct TagResourceInput: Equatable {
    /// <p>The ID specifying the EFS resource that you want to create a tag for.</p>
    public let resourceId: String?
    /// <p>An array of <code>Tag</code> objects to add. Each <code>Tag</code> object is a key-value
    ///       pair.</p>
    public let tags: [Tag]?

    public init (
        resourceId: String? = nil,
        tags: [Tag]? = nil
    )
    {
        self.resourceId = resourceId
        self.tags = tags
    }
}

extension TagResourceInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "TagResourceInput(resourceId: \(String(describing: resourceId)), tags: \(String(describing: tags)))"}
}