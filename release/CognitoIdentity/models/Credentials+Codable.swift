// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension Credentials: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case accessKeyId = "AccessKeyId"
        case expiration = "Expiration"
        case secretKey = "SecretKey"
        case sessionToken = "SessionToken"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let accessKeyId = accessKeyId {
            try encodeContainer.encode(accessKeyId, forKey: .accessKeyId)
        }
        if let expiration = expiration {
            try encodeContainer.encode(expiration.timeIntervalSince1970, forKey: .expiration)
        }
        if let secretKey = secretKey {
            try encodeContainer.encode(secretKey, forKey: .secretKey)
        }
        if let sessionToken = sessionToken {
            try encodeContainer.encode(sessionToken, forKey: .sessionToken)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let accessKeyIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .accessKeyId)
        accessKeyId = accessKeyIdDecoded
        let secretKeyDecoded = try containerValues.decodeIfPresent(String.self, forKey: .secretKey)
        secretKey = secretKeyDecoded
        let sessionTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .sessionToken)
        sessionToken = sessionTokenDecoded
        let expirationDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .expiration)
        expiration = expirationDecoded
    }
}