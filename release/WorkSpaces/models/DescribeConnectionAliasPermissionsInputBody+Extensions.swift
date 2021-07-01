// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeConnectionAliasPermissionsInputBody: Equatable {
    public let aliasId: String?
    public let nextToken: String?
    public let maxResults: Int?
}

extension DescribeConnectionAliasPermissionsInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case aliasId = "AliasId"
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let aliasIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .aliasId)
        aliasId = aliasIdDecoded
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
        let maxResultsDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .maxResults)
        maxResults = maxResultsDecoded
    }
}