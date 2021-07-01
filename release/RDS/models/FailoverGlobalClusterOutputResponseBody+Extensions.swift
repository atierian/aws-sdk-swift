// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct FailoverGlobalClusterOutputResponseBody: Equatable {
    public let globalCluster: GlobalCluster?
}

extension FailoverGlobalClusterOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case globalCluster = "GlobalCluster"
    }

    public init (from decoder: Decoder) throws {
        let topLevelContainer = try decoder.container(keyedBy: Key.self)
        let containerValues = try topLevelContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: Key("FailoverGlobalClusterResult"))
        let globalClusterDecoded = try containerValues.decodeIfPresent(GlobalCluster.self, forKey: .globalCluster)
        globalCluster = globalClusterDecoded
    }
}