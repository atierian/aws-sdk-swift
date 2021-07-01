// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension JobBookmarksEncryption: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case jobBookmarksEncryptionMode = "JobBookmarksEncryptionMode"
        case kmsKeyArn = "KmsKeyArn"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let jobBookmarksEncryptionMode = jobBookmarksEncryptionMode {
            try encodeContainer.encode(jobBookmarksEncryptionMode.rawValue, forKey: .jobBookmarksEncryptionMode)
        }
        if let kmsKeyArn = kmsKeyArn {
            try encodeContainer.encode(kmsKeyArn, forKey: .kmsKeyArn)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let jobBookmarksEncryptionModeDecoded = try containerValues.decodeIfPresent(JobBookmarksEncryptionMode.self, forKey: .jobBookmarksEncryptionMode)
        jobBookmarksEncryptionMode = jobBookmarksEncryptionModeDecoded
        let kmsKeyArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .kmsKeyArn)
        kmsKeyArn = kmsKeyArnDecoded
    }
}