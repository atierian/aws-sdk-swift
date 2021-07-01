// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension StoppingCondition: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case maxRuntimeInSeconds = "MaxRuntimeInSeconds"
        case maxWaitTimeInSeconds = "MaxWaitTimeInSeconds"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if maxRuntimeInSeconds != 0 {
            try encodeContainer.encode(maxRuntimeInSeconds, forKey: .maxRuntimeInSeconds)
        }
        if let maxWaitTimeInSeconds = maxWaitTimeInSeconds {
            try encodeContainer.encode(maxWaitTimeInSeconds, forKey: .maxWaitTimeInSeconds)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let maxRuntimeInSecondsDecoded = try containerValues.decode(Int.self, forKey: .maxRuntimeInSeconds)
        maxRuntimeInSeconds = maxRuntimeInSecondsDecoded
        let maxWaitTimeInSecondsDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .maxWaitTimeInSeconds)
        maxWaitTimeInSeconds = maxWaitTimeInSecondsDecoded
    }
}