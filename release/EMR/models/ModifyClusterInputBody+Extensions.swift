// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ModifyClusterInputBody: Equatable {
    public let clusterId: String?
    public let stepConcurrencyLevel: Int?
}

extension ModifyClusterInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case clusterId = "ClusterId"
        case stepConcurrencyLevel = "StepConcurrencyLevel"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let clusterIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .clusterId)
        clusterId = clusterIdDecoded
        let stepConcurrencyLevelDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .stepConcurrencyLevel)
        stepConcurrencyLevel = stepConcurrencyLevelDecoded
    }
}