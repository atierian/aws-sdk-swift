// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeEcsClustersInputBody: Equatable {
    public let ecsClusterArns: [String]?
    public let stackId: String?
    public let nextToken: String?
    public let maxResults: Int?
}

extension DescribeEcsClustersInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case ecsClusterArns = "EcsClusterArns"
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
        case stackId = "StackId"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let ecsClusterArnsContainer = try containerValues.decodeIfPresent([String?].self, forKey: .ecsClusterArns)
        var ecsClusterArnsDecoded0:[String]? = nil
        if let ecsClusterArnsContainer = ecsClusterArnsContainer {
            ecsClusterArnsDecoded0 = [String]()
            for string0 in ecsClusterArnsContainer {
                if let string0 = string0 {
                    ecsClusterArnsDecoded0?.append(string0)
                }
            }
        }
        ecsClusterArns = ecsClusterArnsDecoded0
        let stackIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .stackId)
        stackId = stackIdDecoded
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
        let maxResultsDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .maxResults)
        maxResults = maxResultsDecoded
    }
}