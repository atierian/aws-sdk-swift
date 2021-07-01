// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListTagsForResourceInput: Equatable {
    /// <p>The ARN that specifies the assessment template whose tags you want to list.</p>
    public let resourceArn: String?

    public init (
        resourceArn: String? = nil
    )
    {
        self.resourceArn = resourceArn
    }
}

extension ListTagsForResourceInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListTagsForResourceInput(resourceArn: \(String(describing: resourceArn)))"}
}