// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension IotAnalyticsAction: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case batchMode
        case channelArn
        case channelName
        case roleArn
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let batchMode = batchMode {
            try encodeContainer.encode(batchMode, forKey: .batchMode)
        }
        if let channelArn = channelArn {
            try encodeContainer.encode(channelArn, forKey: .channelArn)
        }
        if let channelName = channelName {
            try encodeContainer.encode(channelName, forKey: .channelName)
        }
        if let roleArn = roleArn {
            try encodeContainer.encode(roleArn, forKey: .roleArn)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let channelArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .channelArn)
        channelArn = channelArnDecoded
        let channelNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .channelName)
        channelName = channelNameDecoded
        let batchModeDecoded = try containerValues.decodeIfPresent(Bool.self, forKey: .batchMode)
        batchMode = batchModeDecoded
        let roleArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .roleArn)
        roleArn = roleArnDecoded
    }
}