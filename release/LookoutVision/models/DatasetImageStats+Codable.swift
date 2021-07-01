// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DatasetImageStats: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case anomaly = "Anomaly"
        case labeled = "Labeled"
        case normal = "Normal"
        case total = "Total"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let anomaly = anomaly {
            try encodeContainer.encode(anomaly, forKey: .anomaly)
        }
        if let labeled = labeled {
            try encodeContainer.encode(labeled, forKey: .labeled)
        }
        if let normal = normal {
            try encodeContainer.encode(normal, forKey: .normal)
        }
        if let total = total {
            try encodeContainer.encode(total, forKey: .total)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let totalDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .total)
        total = totalDecoded
        let labeledDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .labeled)
        labeled = labeledDecoded
        let normalDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .normal)
        normal = normalDecoded
        let anomalyDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .anomaly)
        anomaly = anomalyDecoded
    }
}