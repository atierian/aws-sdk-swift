// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeTagsOutputResponse: Equatable {
    /// <p>The tags.</p>
    public let tagList: [Tag]?

    public init (
        tagList: [Tag]? = nil
    )
    {
        self.tagList = tagList
    }
}

extension DescribeTagsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeTagsOutputResponse(tagList: \(String(describing: tagList)))"}
}