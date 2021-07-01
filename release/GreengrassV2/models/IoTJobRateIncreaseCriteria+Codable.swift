// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension IoTJobRateIncreaseCriteria: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case numberOfNotifiedThings
        case numberOfSucceededThings
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if numberOfNotifiedThings != 0 {
            try encodeContainer.encode(numberOfNotifiedThings, forKey: .numberOfNotifiedThings)
        }
        if numberOfSucceededThings != 0 {
            try encodeContainer.encode(numberOfSucceededThings, forKey: .numberOfSucceededThings)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let numberOfNotifiedThingsDecoded = try containerValues.decode(Int.self, forKey: .numberOfNotifiedThings)
        numberOfNotifiedThings = numberOfNotifiedThingsDecoded
        let numberOfSucceededThingsDecoded = try containerValues.decode(Int.self, forKey: .numberOfSucceededThings)
        numberOfSucceededThings = numberOfSucceededThingsDecoded
    }
}