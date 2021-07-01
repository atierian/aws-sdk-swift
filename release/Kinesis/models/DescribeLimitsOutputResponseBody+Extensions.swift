// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeLimitsOutputResponseBody: Equatable {
    public let shardLimit: Int?
    public let openShardCount: Int?
}

extension DescribeLimitsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case openShardCount = "OpenShardCount"
        case shardLimit = "ShardLimit"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let shardLimitDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .shardLimit)
        shardLimit = shardLimitDecoded
        let openShardCountDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .openShardCount)
        openShardCount = openShardCountDecoded
    }
}