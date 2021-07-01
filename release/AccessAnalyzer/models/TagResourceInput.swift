// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Adds a tag to the specified resource.</p>
public struct TagResourceInput: Equatable {
    /// <p>The ARN of the resource to add the tag to.</p>
    public let resourceArn: String?
    /// <p>The tags to add to the resource.</p>
    public let tags: [String:String]?

    public init (
        resourceArn: String? = nil,
        tags: [String:String]? = nil
    )
    {
        self.resourceArn = resourceArn
        self.tags = tags
    }
}

extension TagResourceInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "TagResourceInput(resourceArn: \(String(describing: resourceArn)), tags: \(String(describing: tags)))"}
}