// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct UntagResourceInput: Equatable {
    /// <p>The Amazon Resource Number (ARN) of an X-Ray group or sampling rule.</p>
    public let resourceARN: String?
    /// <p>Keys for one or more tags that you want to remove from an X-Ray group or sampling rule.</p>
    public let tagKeys: [String]?

    public init (
        resourceARN: String? = nil,
        tagKeys: [String]? = nil
    )
    {
        self.resourceARN = resourceARN
        self.tagKeys = tagKeys
    }
}

extension UntagResourceInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UntagResourceInput(resourceARN: \(String(describing: resourceARN)), tagKeys: \(String(describing: tagKeys)))"}
}