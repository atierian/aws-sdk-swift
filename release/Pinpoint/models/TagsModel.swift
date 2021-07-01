// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Specifies the tags (keys and values) for an application, campaign, message template, or segment.</p>
public struct TagsModel: Equatable {
    /// <p>A string-to-string map of key-value pairs that defines the tags for an application, campaign, message template, or segment. Each of these resources can have a maximum of 50 tags.</p> <p>Each tag consists of a required tag key and an associated tag value. The maximum length of a tag key is 128 characters. The maximum length of a tag value is 256 characters.</p>
    public let tags: [String:String]?

    public init (
        tags: [String:String]? = nil
    )
    {
        self.tags = tags
    }
}

extension TagsModel: CustomDebugStringConvertible {
    public var debugDescription: String {
        "TagsModel(tags: \(String(describing: tags)))"}
}