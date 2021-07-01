// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DimensionKeyDetail: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case dimension = "Dimension"
        case status = "Status"
        case value = "Value"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let dimension = dimension {
            try encodeContainer.encode(dimension, forKey: .dimension)
        }
        if let status = status {
            try encodeContainer.encode(status.rawValue, forKey: .status)
        }
        if let value = value {
            try encodeContainer.encode(value, forKey: .value)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let valueDecoded = try containerValues.decodeIfPresent(String.self, forKey: .value)
        value = valueDecoded
        let dimensionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .dimension)
        dimension = dimensionDecoded
        let statusDecoded = try containerValues.decodeIfPresent(DetailStatus.self, forKey: .status)
        status = statusDecoded
    }
}