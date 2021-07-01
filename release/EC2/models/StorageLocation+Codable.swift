// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension StorageLocation: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case key = "Key"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let bucket = bucket {
            try container.encode(bucket, forKey: Key("Bucket"))
        }
        if let key = key {
            try container.encode(key, forKey: Key("Key"))
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let bucketDecoded = try containerValues.decodeIfPresent(String.self, forKey: .bucket)
        bucket = bucketDecoded
        let keyDecoded = try containerValues.decodeIfPresent(String.self, forKey: .key)
        key = keyDecoded
    }
}