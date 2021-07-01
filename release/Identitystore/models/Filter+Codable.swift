// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension Filter: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case attributePath = "AttributePath"
        case attributeValue = "AttributeValue"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let attributePath = attributePath {
            try encodeContainer.encode(attributePath, forKey: .attributePath)
        }
        if let attributeValue = attributeValue {
            try encodeContainer.encode(attributeValue, forKey: .attributeValue)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let attributePathDecoded = try containerValues.decodeIfPresent(String.self, forKey: .attributePath)
        attributePath = attributePathDecoded
        let attributeValueDecoded = try containerValues.decodeIfPresent(String.self, forKey: .attributeValue)
        attributeValue = attributeValueDecoded
    }
}