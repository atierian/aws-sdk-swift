// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension StreamSummary: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case description
        case streamArn
        case streamId
        case streamVersion
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let description = description {
            try encodeContainer.encode(description, forKey: .description)
        }
        if let streamArn = streamArn {
            try encodeContainer.encode(streamArn, forKey: .streamArn)
        }
        if let streamId = streamId {
            try encodeContainer.encode(streamId, forKey: .streamId)
        }
        if let streamVersion = streamVersion {
            try encodeContainer.encode(streamVersion, forKey: .streamVersion)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let streamIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .streamId)
        streamId = streamIdDecoded
        let streamArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .streamArn)
        streamArn = streamArnDecoded
        let streamVersionDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .streamVersion)
        streamVersion = streamVersionDecoded
        let descriptionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .description)
        description = descriptionDecoded
    }
}