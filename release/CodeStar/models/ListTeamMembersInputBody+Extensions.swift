// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListTeamMembersInputBody: Equatable {
    public let projectId: String?
    public let nextToken: String?
    public let maxResults: Int
}

extension ListTeamMembersInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case maxResults
        case nextToken
        case projectId
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let projectIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .projectId)
        projectId = projectIdDecoded
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
        let maxResultsDecoded = try containerValues.decode(Int.self, forKey: .maxResults)
        maxResults = maxResultsDecoded
    }
}