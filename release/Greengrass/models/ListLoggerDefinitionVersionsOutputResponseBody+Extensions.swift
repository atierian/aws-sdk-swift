// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListLoggerDefinitionVersionsOutputResponseBody: Equatable {
    public let nextToken: String?
    public let versions: [VersionInformation]?
}

extension ListLoggerDefinitionVersionsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case nextToken = "NextToken"
        case versions = "Versions"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
        let versionsContainer = try containerValues.decodeIfPresent([VersionInformation?].self, forKey: .versions)
        var versionsDecoded0:[VersionInformation]? = nil
        if let versionsContainer = versionsContainer {
            versionsDecoded0 = [VersionInformation]()
            for structure0 in versionsContainer {
                if let structure0 = structure0 {
                    versionsDecoded0?.append(structure0)
                }
            }
        }
        versions = versionsDecoded0
    }
}