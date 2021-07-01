// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DeploymentConfig: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case concurrentDeploymentPercentage
        case downloadConditionFile
        case failureThresholdPercentage
        case robotDeploymentTimeoutInSeconds
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let concurrentDeploymentPercentage = concurrentDeploymentPercentage {
            try encodeContainer.encode(concurrentDeploymentPercentage, forKey: .concurrentDeploymentPercentage)
        }
        if let downloadConditionFile = downloadConditionFile {
            try encodeContainer.encode(downloadConditionFile, forKey: .downloadConditionFile)
        }
        if let failureThresholdPercentage = failureThresholdPercentage {
            try encodeContainer.encode(failureThresholdPercentage, forKey: .failureThresholdPercentage)
        }
        if let robotDeploymentTimeoutInSeconds = robotDeploymentTimeoutInSeconds {
            try encodeContainer.encode(robotDeploymentTimeoutInSeconds, forKey: .robotDeploymentTimeoutInSeconds)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let concurrentDeploymentPercentageDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .concurrentDeploymentPercentage)
        concurrentDeploymentPercentage = concurrentDeploymentPercentageDecoded
        let failureThresholdPercentageDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .failureThresholdPercentage)
        failureThresholdPercentage = failureThresholdPercentageDecoded
        let robotDeploymentTimeoutInSecondsDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .robotDeploymentTimeoutInSeconds)
        robotDeploymentTimeoutInSeconds = robotDeploymentTimeoutInSecondsDecoded
        let downloadConditionFileDecoded = try containerValues.decodeIfPresent(S3Object.self, forKey: .downloadConditionFile)
        downloadConditionFile = downloadConditionFileDecoded
    }
}