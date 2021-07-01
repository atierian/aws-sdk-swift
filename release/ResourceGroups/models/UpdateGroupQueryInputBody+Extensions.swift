// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct UpdateGroupQueryInputBody: Equatable {
    public let groupName: String?
    public let group: String?
    public let resourceQuery: ResourceQuery?
}

extension UpdateGroupQueryInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case group = "Group"
        case groupName = "GroupName"
        case resourceQuery = "ResourceQuery"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let groupNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .groupName)
        groupName = groupNameDecoded
        let groupDecoded = try containerValues.decodeIfPresent(String.self, forKey: .group)
        group = groupDecoded
        let resourceQueryDecoded = try containerValues.decodeIfPresent(ResourceQuery.self, forKey: .resourceQuery)
        resourceQuery = resourceQueryDecoded
    }
}