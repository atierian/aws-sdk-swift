// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension OutputDestinationSettings: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case passwordParam = "passwordParam"
        case streamName = "streamName"
        case url = "url"
        case username = "username"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let passwordParam = passwordParam {
            try encodeContainer.encode(passwordParam, forKey: .passwordParam)
        }
        if let streamName = streamName {
            try encodeContainer.encode(streamName, forKey: .streamName)
        }
        if let url = url {
            try encodeContainer.encode(url, forKey: .url)
        }
        if let username = username {
            try encodeContainer.encode(username, forKey: .username)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let passwordParamDecoded = try containerValues.decodeIfPresent(String.self, forKey: .passwordParam)
        passwordParam = passwordParamDecoded
        let streamNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .streamName)
        streamName = streamNameDecoded
        let urlDecoded = try containerValues.decodeIfPresent(String.self, forKey: .url)
        url = urlDecoded
        let usernameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .username)
        username = usernameDecoded
    }
}