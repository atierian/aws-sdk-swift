// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeFeatureGroupOutputResponseBody: Equatable {
    public let featureGroupArn: String?
    public let featureGroupName: String?
    public let recordIdentifierFeatureName: String?
    public let eventTimeFeatureName: String?
    public let featureDefinitions: [FeatureDefinition]?
    public let creationTime: Date?
    public let onlineStoreConfig: OnlineStoreConfig?
    public let offlineStoreConfig: OfflineStoreConfig?
    public let roleArn: String?
    public let featureGroupStatus: FeatureGroupStatus?
    public let offlineStoreStatus: OfflineStoreStatus?
    public let failureReason: String?
    public let description: String?
    public let nextToken: String?
}

extension DescribeFeatureGroupOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case creationTime = "CreationTime"
        case description = "Description"
        case eventTimeFeatureName = "EventTimeFeatureName"
        case failureReason = "FailureReason"
        case featureDefinitions = "FeatureDefinitions"
        case featureGroupArn = "FeatureGroupArn"
        case featureGroupName = "FeatureGroupName"
        case featureGroupStatus = "FeatureGroupStatus"
        case nextToken = "NextToken"
        case offlineStoreConfig = "OfflineStoreConfig"
        case offlineStoreStatus = "OfflineStoreStatus"
        case onlineStoreConfig = "OnlineStoreConfig"
        case recordIdentifierFeatureName = "RecordIdentifierFeatureName"
        case roleArn = "RoleArn"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let featureGroupArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .featureGroupArn)
        featureGroupArn = featureGroupArnDecoded
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
        let creationTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .creationTime)
        creationTime = creationTimeDecoded
        let onlineStoreConfigDecoded = try containerValues.decodeIfPresent(OnlineStoreConfig.self, forKey: .onlineStoreConfig)
        onlineStoreConfig = onlineStoreConfigDecoded
        let offlineStoreConfigDecoded = try containerValues.decodeIfPresent(OfflineStoreConfig.self, forKey: .offlineStoreConfig)
        offlineStoreConfig = offlineStoreConfigDecoded
        let roleArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .roleArn)
        roleArn = roleArnDecoded
        let featureGroupStatusDecoded = try containerValues.decodeIfPresent(FeatureGroupStatus.self, forKey: .featureGroupStatus)
        featureGroupStatus = featureGroupStatusDecoded
        let offlineStoreStatusDecoded = try containerValues.decodeIfPresent(OfflineStoreStatus.self, forKey: .offlineStoreStatus)
        offlineStoreStatus = offlineStoreStatusDecoded
        let failureReasonDecoded = try containerValues.decodeIfPresent(String.self, forKey: .failureReason)
        failureReason = failureReasonDecoded
        let descriptionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .description)
        description = descriptionDecoded
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}