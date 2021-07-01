// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension Credentials: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case accessKeyId
        case secretAccessKey
        case sessionToken
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let accessKeyId = accessKeyId {
            try encodeContainer.encode(accessKeyId, forKey: .accessKeyId)
        }
        if let secretAccessKey = secretAccessKey {
            try encodeContainer.encode(secretAccessKey, forKey: .secretAccessKey)
        }
        if let sessionToken = sessionToken {
            try encodeContainer.encode(sessionToken, forKey: .sessionToken)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let accessKeyIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .accessKeyId)
        accessKeyId = accessKeyIdDecoded
        let secretAccessKeyDecoded = try containerValues.decodeIfPresent(String.self, forKey: .secretAccessKey)
        secretAccessKey = secretAccessKeyDecoded
        let sessionTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .sessionToken)
        sessionToken = sessionTokenDecoded
    }
}