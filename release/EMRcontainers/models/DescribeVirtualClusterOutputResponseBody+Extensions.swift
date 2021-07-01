// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeVirtualClusterOutputResponseBody: Equatable {
    public let virtualCluster: VirtualCluster?
}

extension DescribeVirtualClusterOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case virtualCluster
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let virtualClusterDecoded = try containerValues.decodeIfPresent(VirtualCluster.self, forKey: .virtualCluster)
        virtualCluster = virtualClusterDecoded
    }
}