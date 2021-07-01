// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension TimeToLiveDescription: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case attributeName = "AttributeName"
        case timeToLiveStatus = "TimeToLiveStatus"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let attributeName = attributeName {
            try encodeContainer.encode(attributeName, forKey: .attributeName)
        }
        if let timeToLiveStatus = timeToLiveStatus {
            try encodeContainer.encode(timeToLiveStatus.rawValue, forKey: .timeToLiveStatus)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let timeToLiveStatusDecoded = try containerValues.decodeIfPresent(TimeToLiveStatus.self, forKey: .timeToLiveStatus)
        timeToLiveStatus = timeToLiveStatusDecoded
        let attributeNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .attributeName)
        attributeName = attributeNameDecoded
    }
}