// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension AttackVectorDescription: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case vectorType = "VectorType"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let vectorType = vectorType {
            try encodeContainer.encode(vectorType, forKey: .vectorType)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let vectorTypeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .vectorType)
        vectorType = vectorTypeDecoded
    }
}