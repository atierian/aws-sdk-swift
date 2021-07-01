// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListMetricSetsInputBody: Equatable {
    public let anomalyDetectorArn: String?
    public let maxResults: Int
    public let nextToken: String?
}

extension ListMetricSetsInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case anomalyDetectorArn = "AnomalyDetectorArn"
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let anomalyDetectorArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .anomalyDetectorArn)
        anomalyDetectorArn = anomalyDetectorArnDecoded
        let maxResultsDecoded = try containerValues.decode(Int.self, forKey: .maxResults)
        maxResults = maxResultsDecoded
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}