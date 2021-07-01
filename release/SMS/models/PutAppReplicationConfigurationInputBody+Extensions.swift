// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct PutAppReplicationConfigurationInputBody: Equatable {
    public let appId: String?
    public let serverGroupReplicationConfigurations: [ServerGroupReplicationConfiguration]?
}

extension PutAppReplicationConfigurationInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case appId
        case serverGroupReplicationConfigurations
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let appIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .appId)
        appId = appIdDecoded
        let serverGroupReplicationConfigurationsContainer = try containerValues.decodeIfPresent([ServerGroupReplicationConfiguration?].self, forKey: .serverGroupReplicationConfigurations)
        var serverGroupReplicationConfigurationsDecoded0:[ServerGroupReplicationConfiguration]? = nil
        if let serverGroupReplicationConfigurationsContainer = serverGroupReplicationConfigurationsContainer {
            serverGroupReplicationConfigurationsDecoded0 = [ServerGroupReplicationConfiguration]()
            for structure0 in serverGroupReplicationConfigurationsContainer {
                if let structure0 = structure0 {
                    serverGroupReplicationConfigurationsDecoded0?.append(structure0)
                }
            }
        }
        serverGroupReplicationConfigurations = serverGroupReplicationConfigurationsDecoded0
    }
}