// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension TransformJobSummary: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case creationTime = "CreationTime"
        case failureReason = "FailureReason"
        case lastModifiedTime = "LastModifiedTime"
        case transformEndTime = "TransformEndTime"
        case transformJobArn = "TransformJobArn"
        case transformJobName = "TransformJobName"
        case transformJobStatus = "TransformJobStatus"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let creationTime = creationTime {
            try encodeContainer.encode(creationTime.timeIntervalSince1970, forKey: .creationTime)
        }
        if let failureReason = failureReason {
            try encodeContainer.encode(failureReason, forKey: .failureReason)
        }
        if let lastModifiedTime = lastModifiedTime {
            try encodeContainer.encode(lastModifiedTime.timeIntervalSince1970, forKey: .lastModifiedTime)
        }
        if let transformEndTime = transformEndTime {
            try encodeContainer.encode(transformEndTime.timeIntervalSince1970, forKey: .transformEndTime)
        }
        if let transformJobArn = transformJobArn {
            try encodeContainer.encode(transformJobArn, forKey: .transformJobArn)
        }
        if let transformJobName = transformJobName {
            try encodeContainer.encode(transformJobName, forKey: .transformJobName)
        }
        if let transformJobStatus = transformJobStatus {
            try encodeContainer.encode(transformJobStatus.rawValue, forKey: .transformJobStatus)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let transformJobNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .transformJobName)
        transformJobName = transformJobNameDecoded
        let transformJobArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .transformJobArn)
        transformJobArn = transformJobArnDecoded
        let creationTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .creationTime)
        creationTime = creationTimeDecoded
        let transformEndTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .transformEndTime)
        transformEndTime = transformEndTimeDecoded
        let lastModifiedTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .lastModifiedTime)
        lastModifiedTime = lastModifiedTimeDecoded
        let transformJobStatusDecoded = try containerValues.decodeIfPresent(TransformJobStatus.self, forKey: .transformJobStatus)
        transformJobStatus = transformJobStatusDecoded
        let failureReasonDecoded = try containerValues.decodeIfPresent(String.self, forKey: .failureReason)
        failureReason = failureReasonDecoded
    }
}