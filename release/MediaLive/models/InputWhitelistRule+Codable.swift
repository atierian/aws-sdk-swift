// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension InputWhitelistRule: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case cidr = "cidr"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let cidr = cidr {
            try encodeContainer.encode(cidr, forKey: .cidr)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let cidrDecoded = try containerValues.decodeIfPresent(String.self, forKey: .cidr)
        cidr = cidrDecoded
    }
}