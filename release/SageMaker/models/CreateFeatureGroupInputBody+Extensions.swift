// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateFeatureGroupInputBody: Equatable {
    public let featureGroupName: String?
    public let recordIdentifierFeatureName: String?
    public let eventTimeFeatureName: String?
    public let featureDefinitions: [FeatureDefinition]?
    public let onlineStoreConfig: OnlineStoreConfig?
    public let offlineStoreConfig: OfflineStoreConfig?
    public let roleArn: String?
    public let description: String?
    public let tags: [Tag]?
}

extension CreateFeatureGroupInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case description = "Description"
        case eventTimeFeatureName = "EventTimeFeatureName"
        case featureDefinitions = "FeatureDefinitions"
        case featureGroupName = "FeatureGroupName"
        case offlineStoreConfig = "OfflineStoreConfig"
        case onlineStoreConfig = "OnlineStoreConfig"
        case recordIdentifierFeatureName = "RecordIdentifierFeatureName"
        case roleArn = "RoleArn"
        case tags = "Tags"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let featureGroupNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .featureGroupName)
        featureGroupName = featureGroupNameDecoded
        let recordIdentifierFeatureNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .recordIdentifierFeatureName)
        recordIdentifierFeatureName = recordIdentifierFeatureNameDecoded
        let eventTimeFeatureNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .eventTimeFeatureName)
        eventTimeFeatureName = eventTimeFeatureNameDecoded
        let featureDefinitionsContainer = try containerValues.decodeIfPresent([FeatureDefinition?].self, forKey: .featureDefinitions)
        var featureDefinitionsDecoded0:[FeatureDefinition]? = nil
        if let featureDefinitionsContainer = featureDefinitionsContainer {
            featureDefinitionsDecoded0 = [FeatureDefinition]()
            for structure0 in featureDefinitionsContainer {
                if let structure0 = structure0 {
                    featureDefinitionsDecoded0?.append(structure0)
                }
            }
        }
        featureDefinitions = featureDefinitionsDecoded0
        let onlineStoreConfigDecoded = try containerValues.decodeIfPresent(OnlineStoreConfig.self, forKey: .onlineStoreConfig)
        onlineStoreConfig = onlineStoreConfigDecoded
        let offlineStoreConfigDecoded = try containerValues.decodeIfPresent(OfflineStoreConfig.self, forKey: .offlineStoreConfig)
        offlineStoreConfig = offlineStoreConfigDecoded
        let roleArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .roleArn)
        roleArn = roleArnDecoded
        let descriptionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .description)
        description = descriptionDecoded
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