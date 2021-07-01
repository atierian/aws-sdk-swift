// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListConfigurationRevisionsOutputResponseBody: Equatable {
    public let nextToken: String?
    public let revisions: [ConfigurationRevision]?
}

extension ListConfigurationRevisionsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case nextToken = "nextToken"
        case revisions = "revisions"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
        let revisionsContainer = try containerValues.decodeIfPresent([ConfigurationRevision?].self, forKey: .revisions)
        var revisionsDecoded0:[ConfigurationRevision]? = nil
        if let revisionsContainer = revisionsContainer {
            revisionsDecoded0 = [ConfigurationRevision]()
            for structure0 in revisionsContainer {
                if let structure0 = structure0 {
                    revisionsDecoded0?.append(structure0)
                }
            }
        }
        revisions = revisionsDecoded0
    }
}