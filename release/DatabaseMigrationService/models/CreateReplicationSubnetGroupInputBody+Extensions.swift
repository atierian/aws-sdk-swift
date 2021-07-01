// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateReplicationSubnetGroupInputBody: Equatable {
    public let replicationSubnetGroupIdentifier: String?
    public let replicationSubnetGroupDescription: String?
    public let subnetIds: [String]?
    public let tags: [Tag]?
}

extension CreateReplicationSubnetGroupInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case replicationSubnetGroupDescription = "ReplicationSubnetGroupDescription"
        case replicationSubnetGroupIdentifier = "ReplicationSubnetGroupIdentifier"
        case subnetIds = "SubnetIds"
        case tags = "Tags"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let replicationSubnetGroupIdentifierDecoded = try containerValues.decodeIfPresent(String.self, forKey: .replicationSubnetGroupIdentifier)
        replicationSubnetGroupIdentifier = replicationSubnetGroupIdentifierDecoded
        let replicationSubnetGroupDescriptionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .replicationSubnetGroupDescription)
        replicationSubnetGroupDescription = replicationSubnetGroupDescriptionDecoded
        let subnetIdsContainer = try containerValues.decodeIfPresent([String?].self, forKey: .subnetIds)
        var subnetIdsDecoded0:[String]? = nil
        if let subnetIdsContainer = subnetIdsContainer {
            subnetIdsDecoded0 = [String]()
            for string0 in subnetIdsContainer {
                if let string0 = string0 {
                    subnetIdsDecoded0?.append(string0)
                }
            }
        }
        subnetIds = subnetIdsDecoded0
        let tagsContainer = try containerValues.decodeIfPresent([Tag?].self, forKey: .tags)
        var tagsDecoded0:[Tag]? = nil
        if let tagsContainer = tagsContainer {
            tagsDecoded0 = [Tag]()
            for structure0 in tagsContainer {
                if let structure0 = structure0 {
                    tagsDecoded0?.append(structure0)
                }
            }
        }
        tags = tagsDecoded0
    }
}