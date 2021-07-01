// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DeleteBotLocaleOutputResponseBody: Equatable {
    public let botId: String?
    public let botVersion: String?
    public let localeId: String?
    public let botLocaleStatus: BotLocaleStatus?
}

extension DeleteBotLocaleOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case botId
        case botLocaleStatus
        case botVersion
        case localeId
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let botIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .botId)
        botId = botIdDecoded
        let botVersionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .botVersion)
        botVersion = botVersionDecoded
        let localeIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .localeId)
        localeId = localeIdDecoded
        let botLocaleStatusDecoded = try containerValues.decodeIfPresent(BotLocaleStatus.self, forKey: .botLocaleStatus)
        botLocaleStatus = botLocaleStatusDecoded
    }
}