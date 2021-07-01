// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct PutRawMessageContentInput: Equatable {
    /// <p>Describes the raw message content of the updated email message.</p>
    public let content: RawMessageContent?
    /// <p>The identifier of the email message being updated.</p>
    public let messageId: String?

    public init (
        content: RawMessageContent? = nil,
        messageId: String? = nil
    )
    {
        self.content = content
        self.messageId = messageId
    }
}

extension PutRawMessageContentInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "PutRawMessageContentInput(content: \(String(describing: content)), messageId: \(String(describing: messageId)))"}
}