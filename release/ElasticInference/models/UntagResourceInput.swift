// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct UntagResourceInput: Equatable {
    /// <p>
    ///             The ARN of the Elastic Inference Accelerator to untag.
    ///         </p>
    public let resourceArn: String?
    /// <p>
    ///             The list of tags to remove from the Elastic Inference Accelerator.
    ///         </p>
    public let tagKeys: [String]?

    public init (
        resourceArn: String? = nil,
        tagKeys: [String]? = nil
    )
    {
        self.resourceArn = resourceArn
        self.tagKeys = tagKeys
    }
}

extension UntagResourceInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UntagResourceInput(resourceArn: \(String(describing: resourceArn)), tagKeys: \(String(describing: tagKeys)))"}
}