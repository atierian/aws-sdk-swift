// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension StackResourceDriftInformationSummary: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case lastCheckTimestamp = "LastCheckTimestamp"
        case stackResourceDriftStatus = "StackResourceDriftStatus"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let lastCheckTimestamp = lastCheckTimestamp {
            try container.encode(TimestampWrapper(lastCheckTimestamp, format: .dateTime), forKey: Key("lastCheckTimestamp"))
        }
        if let stackResourceDriftStatus = stackResourceDriftStatus {
            try container.encode(stackResourceDriftStatus, forKey: Key("StackResourceDriftStatus"))
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let stackResourceDriftStatusDecoded = try containerValues.decodeIfPresent(StackResourceDriftStatus.self, forKey: .stackResourceDriftStatus)
        stackResourceDriftStatus = stackResourceDriftStatusDecoded
        let lastCheckTimestampDecoded = try containerValues.decodeIfPresent(String.self, forKey: .lastCheckTimestamp)
        var lastCheckTimestampBuffer:Date? = nil
        if let lastCheckTimestampDecoded = lastCheckTimestampDecoded {
            lastCheckTimestampBuffer = try TimestampWrapperDecoder.parseDateStringValue(lastCheckTimestampDecoded, format: .dateTime)
        }
        lastCheckTimestamp = lastCheckTimestampBuffer
    }
}