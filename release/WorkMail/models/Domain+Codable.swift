// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension Domain: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case domainName = "DomainName"
        case hostedZoneId = "HostedZoneId"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let domainName = domainName {
            try encodeContainer.encode(domainName, forKey: .domainName)
        }
        if let hostedZoneId = hostedZoneId {
            try encodeContainer.encode(hostedZoneId, forKey: .hostedZoneId)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let domainNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .domainName)
        domainName = domainNameDecoded
        let hostedZoneIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .hostedZoneId)
        hostedZoneId = hostedZoneIdDecoded
    }
}