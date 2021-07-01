// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension S3LogsConfig: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case bucketOwnerAccess
        case encryptionDisabled
        case location
        case status
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let bucketOwnerAccess = bucketOwnerAccess {
            try encodeContainer.encode(bucketOwnerAccess.rawValue, forKey: .bucketOwnerAccess)
        }
        if let encryptionDisabled = encryptionDisabled {
            try encodeContainer.encode(encryptionDisabled, forKey: .encryptionDisabled)
        }
        if let location = location {
            try encodeContainer.encode(location, forKey: .location)
        }
        if let status = status {
            try encodeContainer.encode(status.rawValue, forKey: .status)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let statusDecoded = try containerValues.decodeIfPresent(LogsConfigStatusType.self, forKey: .status)
        status = statusDecoded
        let locationDecoded = try containerValues.decodeIfPresent(String.self, forKey: .location)
        location = locationDecoded
        let encryptionDisabledDecoded = try containerValues.decodeIfPresent(Bool.self, forKey: .encryptionDisabled)
        encryptionDisabled = encryptionDisabledDecoded
        let bucketOwnerAccessDecoded = try containerValues.decodeIfPresent(BucketOwnerAccess.self, forKey: .bucketOwnerAccess)
        bucketOwnerAccess = bucketOwnerAccessDecoded
    }
}