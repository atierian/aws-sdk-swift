// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension Project: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case arn
        case created
        case defaultJobTimeoutMinutes
        case name
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let arn = arn {
            try encodeContainer.encode(arn, forKey: .arn)
        }
        if let created = created {
            try encodeContainer.encode(created.timeIntervalSince1970, forKey: .created)
        }
        if let defaultJobTimeoutMinutes = defaultJobTimeoutMinutes {
            try encodeContainer.encode(defaultJobTimeoutMinutes, forKey: .defaultJobTimeoutMinutes)
        }
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let arnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .arn)
        arn = arnDecoded
        let nameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .name)
        name = nameDecoded
        let defaultJobTimeoutMinutesDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .defaultJobTimeoutMinutes)
        defaultJobTimeoutMinutes = defaultJobTimeoutMinutesDecoded
        let createdDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .created)
        created = createdDecoded
    }
}