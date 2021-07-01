// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension Deployment: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case creationTimestamp
        case deploymentId
        case deploymentName
        case deploymentStatus
        case isLatestForTarget
        case revisionId
        case targetArn
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let creationTimestamp = creationTimestamp {
            try encodeContainer.encode(creationTimestamp.timeIntervalSince1970, forKey: .creationTimestamp)
        }
        if let deploymentId = deploymentId {
            try encodeContainer.encode(deploymentId, forKey: .deploymentId)
        }
        if let deploymentName = deploymentName {
            try encodeContainer.encode(deploymentName, forKey: .deploymentName)
        }
        if let deploymentStatus = deploymentStatus {
            try encodeContainer.encode(deploymentStatus.rawValue, forKey: .deploymentStatus)
        }
        if isLatestForTarget != false {
            try encodeContainer.encode(isLatestForTarget, forKey: .isLatestForTarget)
        }
        if let revisionId = revisionId {
            try encodeContainer.encode(revisionId, forKey: .revisionId)
        }
        if let targetArn = targetArn {
            try encodeContainer.encode(targetArn, forKey: .targetArn)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let targetArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .targetArn)
        targetArn = targetArnDecoded
        let revisionIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .revisionId)
        revisionId = revisionIdDecoded
        let deploymentIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .deploymentId)
        deploymentId = deploymentIdDecoded
        let deploymentNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .deploymentName)
        deploymentName = deploymentNameDecoded
        let creationTimestampDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .creationTimestamp)
        creationTimestamp = creationTimestampDecoded
        let deploymentStatusDecoded = try containerValues.decodeIfPresent(DeploymentStatus.self, forKey: .deploymentStatus)
        deploymentStatus = deploymentStatusDecoded
        let isLatestForTargetDecoded = try containerValues.decode(Bool.self, forKey: .isLatestForTarget)
        isLatestForTarget = isLatestForTargetDecoded
    }
}