// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ReportGroupTrendStats: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case average
        case max
        case min
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let average = average {
            try encodeContainer.encode(average, forKey: .average)
        }
        if let max = max {
            try encodeContainer.encode(max, forKey: .max)
        }
        if let min = min {
            try encodeContainer.encode(min, forKey: .min)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let averageDecoded = try containerValues.decodeIfPresent(String.self, forKey: .average)
        average = averageDecoded
        let maxDecoded = try containerValues.decodeIfPresent(String.self, forKey: .max)
        max = maxDecoded
        let minDecoded = try containerValues.decodeIfPresent(String.self, forKey: .min)
        min = minDecoded
    }
}