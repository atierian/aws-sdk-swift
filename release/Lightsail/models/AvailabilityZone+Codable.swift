// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension AvailabilityZone: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case state
        case zoneName
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let state = state {
            try encodeContainer.encode(state, forKey: .state)
        }
        if let zoneName = zoneName {
            try encodeContainer.encode(zoneName, forKey: .zoneName)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let zoneNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .zoneName)
        zoneName = zoneNameDecoded
        let stateDecoded = try containerValues.decodeIfPresent(String.self, forKey: .state)
        state = stateDecoded
    }
}