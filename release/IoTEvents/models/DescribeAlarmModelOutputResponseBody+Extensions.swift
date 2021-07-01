// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeAlarmModelOutputResponseBody: Equatable {
    public let creationTime: Date?
    public let alarmModelArn: String?
    public let alarmModelVersion: String?
    public let lastUpdateTime: Date?
    public let status: AlarmModelVersionStatus?
    public let statusMessage: String?
    public let alarmModelName: String?
    public let alarmModelDescription: String?
    public let roleArn: String?
    public let key: String?
    public let severity: Int?
    public let alarmRule: AlarmRule?
    public let alarmNotification: AlarmNotification?
    public let alarmEventActions: AlarmEventActions?
    public let alarmCapabilities: AlarmCapabilities?
}

extension DescribeAlarmModelOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case alarmCapabilities
        case alarmEventActions
        case alarmModelArn
        case alarmModelDescription
        case alarmModelName
        case alarmModelVersion
        case alarmNotification
        case alarmRule
        case creationTime
        case key
        case lastUpdateTime
        case roleArn
        case severity
        case status
        case statusMessage
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let creationTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .creationTime)
        creationTime = creationTimeDecoded
        let alarmModelArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .alarmModelArn)
        alarmModelArn = alarmModelArnDecoded
        let alarmModelVersionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .alarmModelVersion)
        alarmModelVersion = alarmModelVersionDecoded
        let lastUpdateTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .lastUpdateTime)
        lastUpdateTime = lastUpdateTimeDecoded
        let statusDecoded = try containerValues.decodeIfPresent(AlarmModelVersionStatus.self, forKey: .status)
        status = statusDecoded
        let statusMessageDecoded = try containerValues.decodeIfPresent(String.self, forKey: .statusMessage)
        statusMessage = statusMessageDecoded
        let alarmModelNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .alarmModelName)
        alarmModelName = alarmModelNameDecoded
        let alarmModelDescriptionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .alarmModelDescription)
        alarmModelDescription = alarmModelDescriptionDecoded
        let roleArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .roleArn)
        roleArn = roleArnDecoded
        let keyDecoded = try containerValues.decodeIfPresent(String.self, forKey: .key)
        key = keyDecoded
        let severityDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .severity)
        severity = severityDecoded
        let alarmRuleDecoded = try containerValues.decodeIfPresent(AlarmRule.self, forKey: .alarmRule)
        alarmRule = alarmRuleDecoded
        let alarmNotificationDecoded = try containerValues.decodeIfPresent(AlarmNotification.self, forKey: .alarmNotification)
        alarmNotification = alarmNotificationDecoded
        let alarmEventActionsDecoded = try containerValues.decodeIfPresent(AlarmEventActions.self, forKey: .alarmEventActions)
        alarmEventActions = alarmEventActionsDecoded
        let alarmCapabilitiesDecoded = try containerValues.decodeIfPresent(AlarmCapabilities.self, forKey: .alarmCapabilities)
        alarmCapabilities = alarmCapabilitiesDecoded
    }
}