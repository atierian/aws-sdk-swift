// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetResourcePoliciesInputBody: Equatable {
    public let maxResults: Int?
    public let nextToken: String?
}

extension GetResourcePoliciesInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case maxResults
        case nextToken
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let maxResultsDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .maxResults)
        maxResults = maxResultsDecoded
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}