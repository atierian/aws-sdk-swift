// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension Endpoint: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case address = "Address"
        case hostedZoneId = "HostedZoneId"
        case port = "Port"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let address = address {
            try container.encode(address, forKey: Key("Address"))
        }
        if let hostedZoneId = hostedZoneId {
            try container.encode(hostedZoneId, forKey: Key("HostedZoneId"))
        }
        if port != 0 {
            try container.encode(port, forKey: Key("Port"))
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let addressDecoded = try containerValues.decodeIfPresent(String.self, forKey: .address)
        address = addressDecoded
        let portDecoded = try containerValues.decode(Int.self, forKey: .port)
        port = portDecoded
        let hostedZoneIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .hostedZoneId)
        hostedZoneId = hostedZoneIdDecoded
    }
}