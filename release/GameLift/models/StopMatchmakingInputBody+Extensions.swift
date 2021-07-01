// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct StopMatchmakingInputBody: Equatable {
    public let ticketId: String?
}

extension StopMatchmakingInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case ticketId = "TicketId"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let ticketIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .ticketId)
        ticketId = ticketIdDecoded
    }
}