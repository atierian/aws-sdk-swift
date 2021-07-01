// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension EventTracker: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case accountId
        case creationDateTime
        case datasetGroupArn
        case eventTrackerArn
        case lastUpdatedDateTime
        case name
        case status
        case trackingId
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let accountId = accountId {
            try encodeContainer.encode(accountId, forKey: .accountId)
        }
        if let creationDateTime = creationDateTime {
            try encodeContainer.encode(creationDateTime.timeIntervalSince1970, forKey: .creationDateTime)
        }
        if let datasetGroupArn = datasetGroupArn {
            try encodeContainer.encode(datasetGroupArn, forKey: .datasetGroupArn)
        }
        if let eventTrackerArn = eventTrackerArn {
            try encodeContainer.encode(eventTrackerArn, forKey: .eventTrackerArn)
        }
        if let lastUpdatedDateTime = lastUpdatedDateTime {
            try encodeContainer.encode(lastUpdatedDateTime.timeIntervalSince1970, forKey: .lastUpdatedDateTime)
        }
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
        if let status = status {
            try encodeContainer.encode(status, forKey: .status)
        }
        if let trackingId = trackingId {
            try encodeContainer.encode(trackingId, forKey: .trackingId)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let nameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .name)
        name = nameDecoded
        let eventTrackerArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .eventTrackerArn)
        eventTrackerArn = eventTrackerArnDecoded
        let accountIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .accountId)
        accountId = accountIdDecoded
        let trackingIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .trackingId)
        trackingId = trackingIdDecoded
        let datasetGroupArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .datasetGroupArn)
        datasetGroupArn = datasetGroupArnDecoded
        let statusDecoded = try containerValues.decodeIfPresent(String.self, forKey: .status)
        status = statusDecoded
        let creationDateTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .creationDateTime)
        creationDateTime = creationDateTimeDecoded
        let lastUpdatedDateTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .lastUpdatedDateTime)
        lastUpdatedDateTime = lastUpdatedDateTimeDecoded
    }
}