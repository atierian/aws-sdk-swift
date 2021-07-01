// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeConfigurationAggregatorSourcesStatusOutputResponseBody: Equatable {
    public let aggregatedSourceStatusList: [AggregatedSourceStatus]?
    public let nextToken: String?
}

extension DescribeConfigurationAggregatorSourcesStatusOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case aggregatedSourceStatusList = "AggregatedSourceStatusList"
        case nextToken = "NextToken"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let aggregatedSourceStatusListContainer = try containerValues.decodeIfPresent([AggregatedSourceStatus?].self, forKey: .aggregatedSourceStatusList)
        var aggregatedSourceStatusListDecoded0:[AggregatedSourceStatus]? = nil
        if let aggregatedSourceStatusListContainer = aggregatedSourceStatusListContainer {
            aggregatedSourceStatusListDecoded0 = [AggregatedSourceStatus]()
            for structure0 in aggregatedSourceStatusListContainer {
                if let structure0 = structure0 {
                    aggregatedSourceStatusListDecoded0?.append(structure0)
                }
            }
        }
        aggregatedSourceStatusList = aggregatedSourceStatusListDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}