// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListOperationsInputBody: Equatable {
    public let serviceArn: String?
    public let nextToken: String?
    public let maxResults: Int?
}

extension ListOperationsInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
        case serviceArn = "ServiceArn"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let serviceArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .serviceArn)
        serviceArn = serviceArnDecoded
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
        let maxResultsDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .maxResults)
        maxResults = maxResultsDecoded
    }
}