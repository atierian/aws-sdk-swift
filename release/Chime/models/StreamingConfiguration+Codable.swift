// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension StreamingConfiguration: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case dataRetentionInHours = "DataRetentionInHours"
        case disabled = "Disabled"
        case streamingNotificationTargets = "StreamingNotificationTargets"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let dataRetentionInHours = dataRetentionInHours {
            try encodeContainer.encode(dataRetentionInHours, forKey: .dataRetentionInHours)
        }
        if let disabled = disabled {
            try encodeContainer.encode(disabled, forKey: .disabled)
        }
        if let streamingNotificationTargets = streamingNotificationTargets {
            var streamingNotificationTargetsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .streamingNotificationTargets)
            for streamingnotificationtargetlist0 in streamingNotificationTargets {
                try streamingNotificationTargetsContainer.encode(streamingnotificationtargetlist0)
            }
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let dataRetentionInHoursDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .dataRetentionInHours)
        dataRetentionInHours = dataRetentionInHoursDecoded
        let disabledDecoded = try containerValues.decodeIfPresent(Bool.self, forKey: .disabled)
        disabled = disabledDecoded
        let streamingNotificationTargetsContainer = try containerValues.decodeIfPresent([StreamingNotificationTarget?].self, forKey: .streamingNotificationTargets)
        var streamingNotificationTargetsDecoded0:[StreamingNotificationTarget]? = nil
        if let streamingNotificationTargetsContainer = streamingNotificationTargetsContainer {
            streamingNotificationTargetsDecoded0 = [StreamingNotificationTarget]()
            for structure0 in streamingNotificationTargetsContainer {
                if let structure0 = structure0 {
                    streamingNotificationTargetsDecoded0?.append(structure0)
                }
            }
        }
        streamingNotificationTargets = streamingNotificationTargetsDecoded0
    }
}