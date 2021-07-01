// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct UpdateJourneyStateOutputResponseBody: Equatable {
    public let journeyResponse: JourneyResponse?
}

extension UpdateJourneyStateOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case journeyResponse = "JourneyResponse"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let journeyResponseDecoded = try containerValues.decodeIfPresent(JourneyResponse.self, forKey: .journeyResponse)
        journeyResponse = journeyResponseDecoded
    }
}