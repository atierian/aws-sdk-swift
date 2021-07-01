// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListEngineVersionsOutputResponseBody: Equatable {
    public let engineVersions: [EngineVersion]?
    public let nextToken: String?
}

extension ListEngineVersionsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case engineVersions = "EngineVersions"
        case nextToken = "NextToken"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let engineVersionsContainer = try containerValues.decodeIfPresent([EngineVersion?].self, forKey: .engineVersions)
        var engineVersionsDecoded0:[EngineVersion]? = nil
        if let engineVersionsContainer = engineVersionsContainer {
            engineVersionsDecoded0 = [EngineVersion]()
            for structure0 in engineVersionsContainer {
                if let structure0 = structure0 {
                    engineVersionsDecoded0?.append(structure0)
                }
            }
        }
        engineVersions = engineVersionsDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}