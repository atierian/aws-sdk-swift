// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension AnomalyDetectorConfigSummary: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case anomalyDetectorFrequency = "AnomalyDetectorFrequency"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let anomalyDetectorFrequency = anomalyDetectorFrequency {
            try encodeContainer.encode(anomalyDetectorFrequency.rawValue, forKey: .anomalyDetectorFrequency)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let anomalyDetectorFrequencyDecoded = try containerValues.decodeIfPresent(Frequency.self, forKey: .anomalyDetectorFrequency)
        anomalyDetectorFrequency = anomalyDetectorFrequencyDecoded
    }
}