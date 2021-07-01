// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ImageVersion: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case creationTime = "CreationTime"
        case failureReason = "FailureReason"
        case imageArn = "ImageArn"
        case imageVersionArn = "ImageVersionArn"
        case imageVersionStatus = "ImageVersionStatus"
        case lastModifiedTime = "LastModifiedTime"
        case version = "Version"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let creationTime = creationTime {
            try encodeContainer.encode(creationTime.timeIntervalSince1970, forKey: .creationTime)
        }
        if let failureReason = failureReason {
            try encodeContainer.encode(failureReason, forKey: .failureReason)
        }
        if let imageArn = imageArn {
            try encodeContainer.encode(imageArn, forKey: .imageArn)
        }
        if let imageVersionArn = imageVersionArn {
            try encodeContainer.encode(imageVersionArn, forKey: .imageVersionArn)
        }
        if let imageVersionStatus = imageVersionStatus {
            try encodeContainer.encode(imageVersionStatus.rawValue, forKey: .imageVersionStatus)
        }
        if let lastModifiedTime = lastModifiedTime {
            try encodeContainer.encode(lastModifiedTime.timeIntervalSince1970, forKey: .lastModifiedTime)
        }
        if let version = version {
            try encodeContainer.encode(version, forKey: .version)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let creationTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .creationTime)
        creationTime = creationTimeDecoded
        let failureReasonDecoded = try containerValues.decodeIfPresent(String.self, forKey: .failureReason)
        failureReason = failureReasonDecoded
        let imageArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .imageArn)
        imageArn = imageArnDecoded
        let imageVersionArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .imageVersionArn)
        imageVersionArn = imageVersionArnDecoded
        let imageVersionStatusDecoded = try containerValues.decodeIfPresent(ImageVersionStatus.self, forKey: .imageVersionStatus)
        imageVersionStatus = imageVersionStatusDecoded
        let lastModifiedTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .lastModifiedTime)
        lastModifiedTime = lastModifiedTimeDecoded
        let versionDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .version)
        version = versionDecoded
    }
}