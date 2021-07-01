// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension BatchListObjectParentPathsResponse: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case nextToken = "NextToken"
        case pathToObjectIdentifiersList = "PathToObjectIdentifiersList"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let nextToken = nextToken {
            try encodeContainer.encode(nextToken, forKey: .nextToken)
        }
        if let pathToObjectIdentifiersList = pathToObjectIdentifiersList {
            var pathToObjectIdentifiersListContainer = encodeContainer.nestedUnkeyedContainer(forKey: .pathToObjectIdentifiersList)
            for pathtoobjectidentifierslist0 in pathToObjectIdentifiersList {
                try pathToObjectIdentifiersListContainer.encode(pathtoobjectidentifierslist0)
            }
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let pathToObjectIdentifiersListContainer = try containerValues.decodeIfPresent([PathToObjectIdentifiers?].self, forKey: .pathToObjectIdentifiersList)
        var pathToObjectIdentifiersListDecoded0:[PathToObjectIdentifiers]? = nil
        if let pathToObjectIdentifiersListContainer = pathToObjectIdentifiersListContainer {
            pathToObjectIdentifiersListDecoded0 = [PathToObjectIdentifiers]()
            for structure0 in pathToObjectIdentifiersListContainer {
                if let structure0 = structure0 {
                    pathToObjectIdentifiersListDecoded0?.append(structure0)
                }
            }
        }
        pathToObjectIdentifiersList = pathToObjectIdentifiersListDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}