// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension SensitiveDataDetections: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case count = "Count"
        case occurrences = "Occurrences"
        case type = "Type"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if count != 0 {
            try encodeContainer.encode(count, forKey: .count)
        }
        if let occurrences = occurrences {
            try encodeContainer.encode(occurrences, forKey: .occurrences)
        }
        if let type = type {
            try encodeContainer.encode(type, forKey: .type)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let countDecoded = try containerValues.decode(Int.self, forKey: .count)
        count = countDecoded
        let typeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .type)
        type = typeDecoded
        let occurrencesDecoded = try containerValues.decodeIfPresent(Occurrences.self, forKey: .occurrences)
        occurrences = occurrencesDecoded
    }
}