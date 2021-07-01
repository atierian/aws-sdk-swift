// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeAttachmentInput: Equatable {
    /// <p>The ID of the attachment to return. Attachment IDs are returned by the <a>DescribeCommunications</a> operation.</p>
    public let attachmentId: String?

    public init (
        attachmentId: String? = nil
    )
    {
        self.attachmentId = attachmentId
    }
}

extension DescribeAttachmentInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeAttachmentInput(attachmentId: \(String(describing: attachmentId)))"}
}