// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DisassociateLexBotInput: Equatable {
    /// <p>The name of the Amazon Lex bot. Maximum character limit of 50.</p>
    public let botName: String?
    /// <p>The identifier of the Amazon Connect instance.</p>
    public let instanceId: String?
    /// <p>The Region in which the Amazon Lex bot has been created.</p>
    public let lexRegion: String?

    public init (
        botName: String? = nil,
        instanceId: String? = nil,
        lexRegion: String? = nil
    )
    {
        self.botName = botName
        self.instanceId = instanceId
        self.lexRegion = lexRegion
    }
}

extension DisassociateLexBotInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DisassociateLexBotInput(botName: \(String(describing: botName)), instanceId: \(String(describing: instanceId)), lexRegion: \(String(describing: lexRegion)))"}
}