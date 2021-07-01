// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension StreamDescriptionSummary: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case consumerCount = "ConsumerCount"
        case encryptionType = "EncryptionType"
        case enhancedMonitoring = "EnhancedMonitoring"
        case keyId = "KeyId"
        case openShardCount = "OpenShardCount"
        case retentionPeriodHours = "RetentionPeriodHours"
        case streamARN = "StreamARN"
        case streamCreationTimestamp = "StreamCreationTimestamp"
        case streamName = "StreamName"
        case streamStatus = "StreamStatus"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let consumerCount = consumerCount {
            try encodeContainer.encode(consumerCount, forKey: .consumerCount)
        }
        if let encryptionType = encryptionType {
            try encodeContainer.encode(encryptionType.rawValue, forKey: .encryptionType)
        }
        if let enhancedMonitoring = enhancedMonitoring {
            var enhancedMonitoringContainer = encodeContainer.nestedUnkeyedContainer(forKey: .enhancedMonitoring)
            for enhancedmonitoringlist0 in enhancedMonitoring {
                try enhancedMonitoringContainer.encode(enhancedmonitoringlist0)
            }
        }
        if let keyId = keyId {
            try encodeContainer.encode(keyId, forKey: .keyId)
        }
        if let openShardCount = openShardCount {
            try encodeContainer.encode(openShardCount, forKey: .openShardCount)
        }
        if let retentionPeriodHours = retentionPeriodHours {
            try encodeContainer.encode(retentionPeriodHours, forKey: .retentionPeriodHours)
        }
        if let streamARN = streamARN {
            try encodeContainer.encode(streamARN, forKey: .streamARN)
        }
        if let streamCreationTimestamp = streamCreationTimestamp {
            try encodeContainer.encode(streamCreationTimestamp.timeIntervalSince1970, forKey: .streamCreationTimestamp)
        }
        if let streamName = streamName {
            try encodeContainer.encode(streamName, forKey: .streamName)
        }
        if let streamStatus = streamStatus {
            try encodeContainer.encode(streamStatus.rawValue, forKey: .streamStatus)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let streamNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .streamName)
        streamName = streamNameDecoded
        let streamARNDecoded = try containerValues.decodeIfPresent(String.self, forKey: .streamARN)
        streamARN = streamARNDecoded
        let streamStatusDecoded = try containerValues.decodeIfPresent(StreamStatus.self, forKey: .streamStatus)
        streamStatus = streamStatusDecoded
        let retentionPeriodHoursDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .retentionPeriodHours)
        retentionPeriodHours = retentionPeriodHoursDecoded
        let streamCreationTimestampDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .streamCreationTimestamp)
        streamCreationTimestamp = streamCreationTimestampDecoded
        let enhancedMonitoringContainer = try containerValues.decodeIfPresent([EnhancedMetrics?].self, forKey: .enhancedMonitoring)
        var enhancedMonitoringDecoded0:[EnhancedMetrics]? = nil
        if let enhancedMonitoringContainer = enhancedMonitoringContainer {
            enhancedMonitoringDecoded0 = [EnhancedMetrics]()
            for structure0 in enhancedMonitoringContainer {
                if let structure0 = structure0 {
                    enhancedMonitoringDecoded0?.append(structure0)
                }
            }
        }
        enhancedMonitoring = enhancedMonitoringDecoded0
        let encryptionTypeDecoded = try containerValues.decodeIfPresent(EncryptionType.self, forKey: .encryptionType)
        encryptionType = encryptionTypeDecoded
        let keyIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .keyId)
        keyId = keyIdDecoded
        let openShardCountDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .openShardCount)
        openShardCount = openShardCountDecoded
        let consumerCountDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .consumerCount)
        consumerCount = consumerCountDecoded
    }
}