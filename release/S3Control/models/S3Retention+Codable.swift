// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension S3Retention: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case mode = "Mode"
        case retainUntilDate = "RetainUntilDate"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if encoder.codingPath.isEmpty {
            try container.encode("http://awss3control.amazonaws.com/doc/2018-08-20/", forKey: Key("xmlns"))
        }
        if let mode = mode {
            try container.encode(mode, forKey: Key("mode"))
        }
        if let retainUntilDate = retainUntilDate {
            try container.encode(TimestampWrapper(retainUntilDate, format: .dateTime), forKey: Key("retainUntilDate"))
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let retainUntilDateDecoded = try containerValues.decodeIfPresent(String.self, forKey: .retainUntilDate)
        var retainUntilDateBuffer:Date? = nil
        if let retainUntilDateDecoded = retainUntilDateDecoded {
            retainUntilDateBuffer = try TimestampWrapperDecoder.parseDateStringValue(retainUntilDateDecoded, format: .dateTime)
        }
        retainUntilDate = retainUntilDateBuffer
        let modeDecoded = try containerValues.decodeIfPresent(S3ObjectLockRetentionMode.self, forKey: .mode)
        mode = modeDecoded
    }
}