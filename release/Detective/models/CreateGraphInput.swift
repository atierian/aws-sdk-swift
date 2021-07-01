// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateGraphInput: Equatable {
    /// <p>The tags to assign to the new behavior graph. You can add up to 50 tags. For each tag,
    ///          you provide the tag key and the tag value. Each tag key can contain up to 128 characters.
    ///          Each tag value can contain up to 256 characters.</p>
    public let tags: [String:String]?

    public init (
        tags: [String:String]? = nil
    )
    {
        self.tags = tags
    }
}

extension CreateGraphInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateGraphInput(tags: \(String(describing: tags)))"}
}