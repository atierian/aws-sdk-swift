// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListCreatedArtifactsOutputResponseBody: Equatable {
    public let nextToken: String?
    public let createdArtifactList: [CreatedArtifact]?
}

extension ListCreatedArtifactsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case createdArtifactList = "CreatedArtifactList"
        case nextToken = "NextToken"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
        let createdArtifactListContainer = try containerValues.decodeIfPresent([CreatedArtifact?].self, forKey: .createdArtifactList)
        var createdArtifactListDecoded0:[CreatedArtifact]? = nil
        if let createdArtifactListContainer = createdArtifactListContainer {
            createdArtifactListDecoded0 = [CreatedArtifact]()
            for structure0 in createdArtifactListContainer {
                if let structure0 = structure0 {
                    createdArtifactListDecoded0?.append(structure0)
                }
            }
        }
        createdArtifactList = createdArtifactListDecoded0
    }
}