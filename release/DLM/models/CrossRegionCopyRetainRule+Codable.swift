// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension CrossRegionCopyRetainRule: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case interval = "Interval"
        case intervalUnit = "IntervalUnit"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if interval != 0 {
            try encodeContainer.encode(interval, forKey: .interval)
        }
        if let intervalUnit = intervalUnit {
            try encodeContainer.encode(intervalUnit.rawValue, forKey: .intervalUnit)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let intervalDecoded = try containerValues.decode(Int.self, forKey: .interval)
        interval = intervalDecoded
        let intervalUnitDecoded = try containerValues.decodeIfPresent(RetentionIntervalUnitValues.self, forKey: .intervalUnit)
        intervalUnit = intervalUnitDecoded
    }
}