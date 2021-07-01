// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListBuiltInIntentsInputBody: Equatable {
    public let sortBy: BuiltInIntentSortBy?
    public let maxResults: Int?
    public let nextToken: String?
}

extension ListBuiltInIntentsInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case maxResults
        case nextToken
        case sortBy
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let sortByDecoded = try containerValues.decodeIfPresent(BuiltInIntentSortBy.self, forKey: .sortBy)
        sortBy = sortByDecoded
        let maxResultsDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .maxResults)
        maxResults = maxResultsDecoded
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}