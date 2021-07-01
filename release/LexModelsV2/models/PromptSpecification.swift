// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Specifies a list of message groups that Amazon Lex sends to a user to
///          elicit a response.</p>
public struct PromptSpecification: Equatable {
    /// <p>Indicates whether the user can interrupt a speech prompt from the
    ///          bot.</p>
    public let allowInterrupt: Bool?
    /// <p>The maximum number of times the bot tries to elicit a resonse from
    ///          the user using this prompt.</p>
    public let maxRetries: Int?
    /// <p>A collection of messages that Amazon Lex can send to the user. Amazon Lex
    ///          chooses the actual message to send at runtime.</p>
    public let messageGroups: [MessageGroup]?

    public init (
        allowInterrupt: Bool? = nil,
        maxRetries: Int? = nil,
        messageGroups: [MessageGroup]? = nil
    )
    {
        self.allowInterrupt = allowInterrupt
        self.maxRetries = maxRetries
        self.messageGroups = messageGroups
    }
}

extension PromptSpecification: CustomDebugStringConvertible {
    public var debugDescription: String {
        "PromptSpecification(allowInterrupt: \(String(describing: allowInterrupt)), maxRetries: \(String(describing: maxRetries)), messageGroups: \(String(describing: messageGroups)))"}
}