// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateBotVersionOutputResponse: Equatable {
    /// <p>The bot identifier specified in the request.</p>
    public let botId: String?
    /// <p>When you send a request to create or update a bot, Amazon Lex sets the
    ///          status response element to <code>Creating</code>. After Amazon Lex builds
    ///          the bot, it sets status to <code>Available</code>. If Amazon Lex can't build
    ///          the bot, it sets status to <code>Failed</code>.</p>
    public let botStatus: BotStatus?
    /// <p>The version number assigned to the version.</p>
    public let botVersion: String?
    /// <p>The source versions used for each locale in the new version.</p>
    public let botVersionLocaleSpecification: [String:BotVersionLocaleDetails]?
    /// <p>A timestamp of the date and time that the version was
    ///          created.</p>
    public let creationDateTime: Date?
    /// <p>The description of the version specified in the request.</p>
    public let description: String?

    public init (
        botId: String? = nil,
        botStatus: BotStatus? = nil,
        botVersion: String? = nil,
        botVersionLocaleSpecification: [String:BotVersionLocaleDetails]? = nil,
        creationDateTime: Date? = nil,
        description: String? = nil
    )
    {
        self.botId = botId
        self.botStatus = botStatus
        self.botVersion = botVersion
        self.botVersionLocaleSpecification = botVersionLocaleSpecification
        self.creationDateTime = creationDateTime
        self.description = description
    }
}

extension CreateBotVersionOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateBotVersionOutputResponse(botId: \(String(describing: botId)), botStatus: \(String(describing: botStatus)), botVersion: \(String(describing: botVersion)), botVersionLocaleSpecification: \(String(describing: botVersionLocaleSpecification)), creationDateTime: \(String(describing: creationDateTime)), description: \(String(describing: description)))"}
}