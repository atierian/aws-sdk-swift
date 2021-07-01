// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListDistributionsByCachePolicyIdOutputResponseBody: Equatable {
    public let distributionIdList: DistributionIdList?
}

extension ListDistributionsByCachePolicyIdOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case distributionIdList = "DistributionIdList"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let distributionIdListDecoded = try containerValues.decodeIfPresent(DistributionIdList.self, forKey: .distributionIdList)
        distributionIdList = distributionIdListDecoded
    }
}