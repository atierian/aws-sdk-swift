// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension CoversBodyPart: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case confidence = "Confidence"
        case value = "Value"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let confidence = confidence {
            try encodeContainer.encode(confidence, forKey: .confidence)
        }
        if value != false {
            try encodeContainer.encode(value, forKey: .value)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let confidenceDecoded = try containerValues.decodeIfPresent(Float.self, forKey: .confidence)
        confidence = confidenceDecoded
        let valueDecoded = try containerValues.decode(Bool.self, forKey: .value)
        value = valueDecoded
    }
}