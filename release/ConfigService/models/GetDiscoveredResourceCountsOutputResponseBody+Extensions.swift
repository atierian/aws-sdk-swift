// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetDiscoveredResourceCountsOutputResponseBody: Equatable {
    public let totalDiscoveredResources: Int
    public let resourceCounts: [ResourceCount]?
    public let nextToken: String?
}

extension GetDiscoveredResourceCountsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case nextToken
        case resourceCounts
        case totalDiscoveredResources
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let totalDiscoveredResourcesDecoded = try containerValues.decode(Int.self, forKey: .totalDiscoveredResources)
        totalDiscoveredResources = totalDiscoveredResourcesDecoded
        let resourceCountsContainer = try containerValues.decodeIfPresent([ResourceCount?].self, forKey: .resourceCounts)
        var resourceCountsDecoded0:[ResourceCount]? = nil
        if let resourceCountsContainer = resourceCountsContainer {
            resourceCountsDecoded0 = [ResourceCount]()
            for structure0 in resourceCountsContainer {
                if let structure0 = structure0 {
                    resourceCountsDecoded0?.append(structure0)
                }
            }
        }
        resourceCounts = resourceCountsDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}