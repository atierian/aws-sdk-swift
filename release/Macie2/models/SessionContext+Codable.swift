// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension SessionContext: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case attributes = "attributes"
        case sessionIssuer = "sessionIssuer"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let attributes = attributes {
            try encodeContainer.encode(attributes, forKey: .attributes)
        }
        if let sessionIssuer = sessionIssuer {
            try encodeContainer.encode(sessionIssuer, forKey: .sessionIssuer)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let attributesDecoded = try containerValues.decodeIfPresent(SessionContextAttributes.self, forKey: .attributes)
        attributes = attributesDecoded
        let sessionIssuerDecoded = try containerValues.decodeIfPresent(SessionIssuer.self, forKey: .sessionIssuer)
        sessionIssuer = sessionIssuerDecoded
    }
}