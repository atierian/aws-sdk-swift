// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetQueryResultsInputBody: Equatable {
    public let queryExecutionId: String?
    public let nextToken: String?
    public let maxResults: Int?
}

extension GetQueryResultsInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
        case queryExecutionId = "QueryExecutionId"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let queryExecutionIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .queryExecutionId)
        queryExecutionId = queryExecutionIdDecoded
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
        let maxResultsDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .maxResults)
        maxResults = maxResultsDecoded
    }
}