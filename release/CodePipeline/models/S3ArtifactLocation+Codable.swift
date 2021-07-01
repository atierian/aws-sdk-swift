// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension S3ArtifactLocation: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case bucketName
        case objectKey
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let bucketName = bucketName {
            try encodeContainer.encode(bucketName, forKey: .bucketName)
        }
        if let objectKey = objectKey {
            try encodeContainer.encode(objectKey, forKey: .objectKey)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let bucketNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .bucketName)
        bucketName = bucketNameDecoded
        let objectKeyDecoded = try containerValues.decodeIfPresent(String.self, forKey: .objectKey)
        objectKey = objectKeyDecoded
    }
}