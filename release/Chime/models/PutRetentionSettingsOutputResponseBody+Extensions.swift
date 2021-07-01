// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct PutRetentionSettingsOutputResponseBody: Equatable {
    public let retentionSettings: RetentionSettings?
    public let initiateDeletionTimestamp: Date?
}

extension PutRetentionSettingsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case initiateDeletionTimestamp = "InitiateDeletionTimestamp"
        case retentionSettings = "RetentionSettings"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let retentionSettingsDecoded = try containerValues.decodeIfPresent(RetentionSettings.self, forKey: .retentionSettings)
        retentionSettings = retentionSettingsDecoded
        let initiateDeletionTimestampDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .initiateDeletionTimestamp)
        initiateDeletionTimestamp = initiateDeletionTimestampDecoded
    }
}