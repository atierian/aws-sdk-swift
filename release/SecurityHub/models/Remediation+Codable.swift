// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension Remediation: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case recommendation = "Recommendation"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let recommendation = recommendation {
            try encodeContainer.encode(recommendation, forKey: .recommendation)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let recommendationDecoded = try containerValues.decodeIfPresent(Recommendation.self, forKey: .recommendation)
        recommendation = recommendationDecoded
    }
}